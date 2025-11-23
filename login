<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Iniciar sesión — MamaFlor</title>

  <style>
    :root{
      --bg:#0f1320;
      --panel:#ffffff;
      --muted:#6b7280;
      --brand:#16a34a;
      --brand-2:#22c55e;
      --stroke:rgba(0,0,0,.12);
      --ring:rgba(34,197,94,.35);
      --shadow:0 10px 30px rgba(0,0,0,.25);
      --radius:18px;
    }

    *,*::before,*::after{box-sizing:border-box}
    html,body{height:100%}

    /* ----------------------------------------------- */
    /*          FONDO + EFECTO PARALLAX                */
    /* ----------------------------------------------- */
    body{
      margin:0;
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto;
      background: radial-gradient(1200px 800px at 10% 10%, #111936 0%, transparent 60%),
                  radial-gradient(1000px 800px at 90% 20%, #0c1024 0%, transparent 60%),
                  var(--bg);
      display:grid;
      place-items:center;
      padding:24px;
      transition:background-position .05s ease-out;
      animation: subtleMove 22s ease-in-out infinite;
    }

    body.parallax-moving{
      background-position: calc(var(--x)/75) calc(var(--y)/75);
    }

    @keyframes subtleMove{
      0%{background-position:0 0;}
      50%{background-position:18px 22px;}
      100%{background-position:0 0;}
    }

    /* ----------------------------------------------- */
    /*                    CONTENEDOR                    */
    /* ----------------------------------------------- */
    .shell{
      width:min(520px, 94vw);
      animation: fadeUp .8s ease;
    }

    @keyframes fadeUp{
      from{opacity:0; transform:translateY(40px);}
      to{opacity:1; transform:translateY(0);}
    }

    header{text-align:center; margin-bottom:18px;}
    .brand{display:inline-flex; align-items:center; gap:12px; font-weight:800}
    .logo{
      width:40px; height:40px; border-radius:12px;
      display:grid; place-items:center; color:white;
      background:linear-gradient(135deg, var(--brand), var(--brand-2));
      box-shadow:0 4px 16px rgba(34,197,94,0.4);
      animation: smoothFade 1.2s ease;
    }

    @keyframes smoothFade{
      from{opacity:0;} to{opacity:1;}
    }

    /* ----------------------------------------------- */
    /*                    TARJETA                       */
    /* ----------------------------------------------- */
    .card{
      background:var(--panel);
      border-radius:var(--radius);
      border:1px solid var(--stroke);
      box-shadow:var(--shadow);
      animation: floatCard 4s ease-in-out infinite;
    }

    @keyframes floatCard{
      0%,100%{transform:translateY(0);}
      50%{transform:translateY(-5px);}
    }

    .card-content{padding:26px}
    h1{text-align:center; margin:0 0 .4rem;}
    p.lead{text-align:center; color:var(--muted);}

    /* ----------------------------------------------- */
    /*                 FORMULARIO                       */
    /* ----------------------------------------------- */
    form{display:grid; gap:14px; margin-top:12px;}

    .field{display:grid; gap:8px}

    label{font-weight:700}

    .control{
      display:flex;
      align-items:center;
      gap:8px;
      border:1px solid var(--stroke);
      border-radius:14px;
      padding:10px 12px;
      background:#fff;
      transition:all .25s ease;
    }

    .control:focus-within{
      outline:2px solid var(--ring);
      outline-offset:2px;
      transform:scale(1.02);
      box-shadow:0 0 12px rgba(34,197,94,.35);
    }

    input{
      border:none; outline:none; flex:1; font-size:1rem; background:transparent;
    }

    /* ----------------------------------------------- */
    /*                  BOTONES                         */
    /* ----------------------------------------------- */
    .actions{
      display:flex;
      justify-content:space-between;
      align-items:center;
      flex-wrap:wrap;
      gap:10px;
    }

    .btn{
      display:inline-flex; align-items:center; gap:8px;
      padding:11px 16px;
      border-radius:14px;
      font-weight:800; cursor:pointer;
      border:1px solid var(--stroke);
      background:white;
      transition:all .35s cubic-bezier(.22,1.24,.32,1);
    }

    .btn:hover{
      transform:translateY(-4px) scale(1.06);
      box-shadow:0 12px 26px rgba(34,197,94,.28);
    }

    .btn:active{
      transform:translateY(1px) scale(.95);
    }

    .primary{
      background:linear-gradient(135deg, var(--brand), var(--brand-2));
      color:white;
      border:none;
      box-shadow:0 5px 15px rgba(34,197,94,.4);
    }

    /* ojo contraseña */
    .toggle-pass{
      background:transparent;
      border:none;
      cursor:pointer;
      font-size:1.1rem;
      transition:.2s ease;
    }
    .toggle-pass:hover{
      transform:scale(1.15);
      filter:brightness(1.2);
    }

    .links{
      text-align:center;
      display:grid;
      gap:6px;
      margin-top:10px;
    }
    .links a:hover{
      background:rgba(255,255,255,.7);
      border-radius:12px;
      padding:6px 12px;
      transition:.25s;
    }

    footer{text-align:center; margin-top:16px;}
    .small{color:#d1d5db}
  </style>

</head>

<body>

  <div class="shell">

    <header>
      <div class="brand">
        <div class="logo">MF</div>
        <span>MamaFlor</span>
      </div>
    </header>

    <main class="card">
      <div class="card-content">
        <h1>Iniciar sesión</h1>
        <p class="lead">Accede a tu cuenta para gestionar tus pedidos.</p>

        <form id="loginForm">

          <div class="field">
            <label for="usuario">Usuario</label>
            <div class="control">
              <input id="usuario" type="text" required placeholder="Tu usuario" />
            </div>
          </div>

          <div class="field">
            <label for="password">Contraseña</label>
            <div class="control">
              <input id="password" type="password" required placeholder="••••••••" />
              <button class="toggle-pass" type="button" onclick="togglePass()">👁️</button>
            </div>
          </div>

          <div class="actions">
            <button type="submit" class="btn primary">Ingresar</button>

            <label class="muted" style="display:flex; align-items:center; gap:8px">
              <input type="checkbox" /> Recordarme
            </label>
          </div>

          <div class="links">
            <a href="registrar.html">¿No tienes cuenta? Registrar usuario</a>
            <a href="index.html">← Volver al inicio</a>
          </div>

        </form>

      </div>
    </main>

    <footer>
      <p class="small">© 2025 MamaFlor</p>
    </footer>

  </div>

  <script>
    /* --------------------------------------- */
    /*       MOSTRAR / OCULTAR CONTRASEÑA       */
    /* --------------------------------------- */
    function togglePass(){
      const input = document.getElementById("password");
      input.type = input.type === "password" ? "text" : "password";
    }

    /* --------------------------------------- */
    /*         VALIDACIÓN ANIMADA              */
    /* --------------------------------------- */
    document.getElementById("loginForm").addEventListener("submit", function(e){
      e.preventDefault();

      const user = document.getElementById("usuario");
      const pass = document.getElementById("password");

      if(user.value.trim()==="" || pass.value.trim()===""){
        animateShake(document.querySelector(".card"));
        return;
      }

      /* GUARDAR USUARIO */
      localStorage.setItem("usuario", user.value);

      window.location.href = "index.html";
    });

    /* Animación de temblor */
    function animateShake(element){
      element.style.animation = "shake .4s ease";
      setTimeout(()=> element.style.animation = "", 400);
    }

    /* Shake KEYFRAMES */
    const style = document.createElement('style');
    style.textContent = `
      @keyframes shake{
        0%{transform:translateX(0)}
        25%{transform:translateX(-6px)}
        50%{transform:translateX(6px)}
        75%{transform:translateX(-4px)}
        100%{transform:translateX(0)}
      }
    `;
    document.head.appendChild(style);

    /* --------------------------------------- */
    /*          FONDO PARALLAX                 */
    /* --------------------------------------- */
    document.addEventListener("mousemove", e=>{
      document.body.style.setProperty("--x", e.clientX);
      document.body.style.setProperty("--y", e.clientY);
      document.body.classList.add("parallax-moving");

      clearTimeout(window.bgTimeout);
      window.bgTimeout = setTimeout(()=>{
        document.body.classList.remove("parallax-moving");
      },120);
    });

  </script>

</body>
</html>
