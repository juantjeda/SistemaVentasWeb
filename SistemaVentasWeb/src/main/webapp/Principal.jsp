<%-- 
    Document   : Principal.jsp
    Created on : 1/03/2023, 12:42:11
    Author     : juanjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?accion=Producto" target="myFrame">Producto</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?accion=Empleado" target="myFrame">Empleado</a>
                        </li>         
                        <li class="nav-item">
                            <a style="margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?accion=Clientes" target="myFrame">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?accion=NuevaVenta" target="myFrame">Nueva Venta</a>
                        </li>                        
                    </ul>
                </div>
                <div class="dropdown">
                    <button style="border: none;" class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                      ${usuario.getNom()}
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark text-center">
                      <li><a class="dropdown-item active" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">${usuario.getUser()}</a></li>
                      <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li>
                          <form action="Validar" method="POST">
                              <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                          </form>
                      </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 550px ">
            <iframe name="myFrame" style="height: 100%; width: 100%"></iframe>
        </div>
    </body>
</html>