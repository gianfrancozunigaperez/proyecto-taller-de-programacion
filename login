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
      --radius:18px; --radius-sm:12px; --maxw:1100px;
    }

    *,*::before,*::after{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0; font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, "Helvetica Neue", Arial;
      background: radial-gradient(1200px 800px at 10% 10%, #111936 0%, transparent 60%),
                  radial-gradient(1000px 800px at 90% 20%, #0c1024 0%, transparent 60%),
                  var(--bg);
      color:#0b1020; line-height:1.5;
      display:grid; place-items:center; padding:24px;
    }

    a{color:inherit; text-decoration:none}

    .shell{width:min(520px, 94vw)}

    header{
      margin-bottom:18px; text-align:center;
    }
    .brand{display:inline-flex; align-items:center; gap:12px; font-weight:800}
    .brand .logo{width:40px; height:40px; border-radius:12px; display:grid; place-items:center; color:#fff;
      background:linear-gradient(135deg, var(--brand), var(--brand-2)); font-weight:900}

    .card{background:var(--panel); border-radius:var(--radius); border:1px solid var(--stroke); box-shadow:var(--shadow)}
    .card-content{padding:26px}
    h1{margin:0 0 .4rem; text-align:center; font-size:clamp(1.4rem, 2.2vw + .9rem, 2rem)}
    p.lead{margin:.2rem 0 1rem; color:var(--muted); text-align:center}

    form{display:grid; gap:14px; margin-top:8px}
    .field{display:grid; gap:8px}
    label{font-weight:700}
    .control{display:flex; align-items:center; gap:8px; border:1px solid var(--stroke); border-radius:14px; padding:10px 12px; background:#fff}
    .control:focus-within{outline:2px solid var(--ring); outline-offset:2px}
    input[type="text"], input[type="password"], input[type="email"]{
      border:none; outline:none; flex:1; font-size:1rem; background:transparent
    }

    .actions{display:flex; gap:10px; align-items:center; justify-content:space-between; flex-wrap:wrap}

    .btn{
      display:inline-flex; align-items:center; gap:8px; padding:11px 16px; border-radius:14px; font-weight:800; cursor:pointer;
      border:1px solid var(--stroke); background:white; transition:transform .06s ease, box-shadow .15s ease, background .2s ease;
    }
    .btn:hover{box-shadow:0 8px 20px rgba(34,197,94,.18)}
    .btn:active{transform:translateY(1px)}
    .btn.primary{background:linear-gradient(135deg, var(--brand), var(--brand-2)); color:white; border-color:transparent}

    .links{display:grid; gap:6px; margin-top:10px; text-align:center}
    .links a{display:inline-block; padding:8px 10px; border-radius:12px}
    .links a:hover{background:rgba(255,255,255,.7)}

    .muted{color:var(--muted)}

    .toggle-pass{border:none; background:transparent; cursor:pointer; font-weight:700}

    footer{margin-top:14px; text-align:center}
    .small{font-size:.92rem; color:#e5e7eb}

    @media (max-width:460px){
      .actions{gap:8px}
      .btn{width:100%; justify-content:center}
    }
  </style>
</head>
<body>
  <div class="shell">
    <header>
      <div class="brand">
        <div class="logo" aria-hidden="true">MF</div>
        <span>MamaFlor</span>
      </div>
    </header>

    <main class="card" aria-labelledby="title">
      <div class="card-content">
        <h1 id="title">Iniciar sesión</h1>
        <p class="lead">Accede a tu cuenta para gestionar pedidos y ver tu historial.</p>

        <form action="#" method="post" autocomplete="on" novalidate>
          <div class="field">
            <label for="usuario">Usuario</label>
            <div class="control">
              <input id="usuario" name="usuario" type="text" inputmode="text" autocomplete="username" required placeholder="Tu usuario" />
            </div>
          </div>

          <div class="field">
            <label for="password">Contraseña</label>
            <div class="control">
              <input id="password" name="password" type="password" autocomplete="current-password" required placeholder="••••••••" />
              <button class="toggle-pass" type="button" aria-label="Mostrar u ocultar contraseña" title="Mostrar/Ocultar" onclick="togglePass()">👁️</button>
            </div>
          </div>

          <div class="actions">
            <button type="submit" class="btn primary">Ingresar</button>
            <label class="muted" style="display:flex; align-items:center; gap:8px">
              <input type="checkbox" name="remember" /> Recordarme
            </label>
          </div>

          <div class="links">
            <a href="registrar.html">¿No tienes cuenta? Registrar usuario</a>
            <a href="index.html">← Ir al Inicio</a>
          </div>
        </form>
      </div>
    </main>

    <footer>
      <p class="small">© 2025 MamaFlor</p>
    </footer>
  </div>

  <script>
    function togglePass(){
      const i = document.getElementById('password');
      i.type = i.type === 'password' ? 'text' : 'password';
    }
  </script>
</body>
</html>
