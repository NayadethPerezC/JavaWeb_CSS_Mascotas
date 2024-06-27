<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <h1>Ingreso de Usuarios:</h1>
    <%
      String mensaje = (String) request.getAttribute("mensaje");
    %>
    <div class="row">
      <div class="col-12 col-md-4 offset-md-4">
        <% if (mensaje != null) { %>
          <div class="alert alert-danger text-center" role="alert">
            <strong><%=mensaje %></strong>
          </div>
        <%} %>
        <form action="/Sesiones/Login" method="post">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Nombre de Usuario</label>
            <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
            <input name="password" type="password" class="form-control" id="exampleInputPassword1">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>   
      </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>