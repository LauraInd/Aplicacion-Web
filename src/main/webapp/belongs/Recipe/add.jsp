<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.jdbi.v3.core.Jdbi" %>
<%@ page import="com.svalero.dao.RecipeDAO" %>
<%@ page import="com.svalero.domain.Recipe" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));

        Recipe recipe = new Recipe();
        recipe.setName(name);
        recipe.setDescription(description);
        recipe.setPrice(price);

        Jdbi jdbi = Database.jdbi;
        RecipeDAO recipeDao = jdbi.onDemand(RecipeDAO.class);
        recipeDao.insertRecipe(recipe);

        response.sendRedirect("index.jsp"); // Redirige al índice después de añadir la receta
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Añadir Receta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Añadir Nueva Receta</h2>
        <form action="add.jsp" method="post">
            <div class="form-group">
                <label for="name">Nombre:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="description">Descripción:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="price">Precio:</label>
                <input type="number" step="0.01" class="form-control" id="price" name="price" required>
            </div>
            <button type="submit" class="btn btn-success">Añadir Receta</button>
        </form>
    </div>
</body>
</html>
