<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.jdbi.v3.core.Jdbi" %>
<%@ page import="com.svalero.dao.RecipeDAO" %>
<%@ page import="com.svalero.domain.Recipe" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Jdbi jdbi = Database.jdbi;
    RecipeDAO recipeDao = jdbi.onDemand(RecipeDAO.class);
    Recipe recipe = recipeDao.getRecipeById(id);
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ver Receta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Detalles de la Receta</h2>
        <div class="card border-0 shadow-sm">
            <img src="path/to/image/<%= recipe.getIdRecipe() %>.jpg" class="card-img-top" alt="Imagen de receta">
            <div class="card-body">
                <h5 class="card-title text-primary"><%= recipe.getName() %></h5>
                <p class="card-text text-muted"><%= recipe.getDescription() %></p>
                <p class="card-text">Precio: <%= recipe.getPrice() %></p>
                <a href="index.jsp" class="btn btn-primary">Volver</a>
            </div>
        </div>
    </div>
</body>
</html>
