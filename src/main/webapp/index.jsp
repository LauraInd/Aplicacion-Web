<html>
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ page import="java.util.Objects"
%>

<html lang="es">
<head>
     <!-- Para usar la hoja de estilos de  Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" /> <!--Estilos de CSS-->
    <title>RECETARIO</title>
    <style>
            body {
                padding: 50px;
                text-align: center;
                background-color:#fff0db;
            }
        </style>
</head>

<body>
<h2>Fogones Ibericos</h2>
</br>

<button type="button" class="btn btn-outline-primary">Anadir Receta</button>
<button type="button" class="btn btn-outline-success">Modificar Receta</button>
<button type="button" class="btn btn-outline-danger">Eliminar Receta</button>

<img src=".src/main/java/webapp/images/foto.jpg" alt="Descripción de la imagen" width="500">
</body>
</html>
