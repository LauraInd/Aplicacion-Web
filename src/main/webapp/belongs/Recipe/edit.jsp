<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.jdbi.v3.core.Jdbi" %>
<%@ page import="com.svalero.dao.RecipeDAO" %>
<%@ page import="com.svalero.domain.Recipe" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Jdbi jdbi = Database.jdbi;
    RecipeDAO recipeDao = jdbi.onDemand(RecipeDAO.class);
    Recipe recipe = recipeDao.getRecipeById(id);

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        recipe.setName(request.getParameter("name"));
        recipe.setDescription(request.getParameter("description"));
        recipe.setPrice(Double.parseDouble(request.getParameter("price")));

        recipeDao.updateRecipe(recipe);

        response.sendRedirect("index.jsp"); // Redirige al índice después de modificar la receta
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar Receta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Modificar Receta</h2>
        <form action="edit.jsp?id=<%= id %>" method="post">
            <div class="form-group">
                <label for="name">Nombre:</label>
                <input type="text" class="form-control" id="name" name="name" value="<%= recipe.getName() %>" required>
            </div>
            <div class="form-group">
                <label for="description">Descripción:</label>
                <textarea class="form-control" id="description" name="description" required><%= recipe.getDescription() %></textarea>
            </div>
            <div class="form-group">
                <label for="price">Precio:</label>
                <input type="number" step="0.01" class="form-control" id="price" name="price" value="<%= recipe.getPrice() %>" required>
            </div>
            <button type="submit" class="btn btn-warning">Guardar Cambios</button>
        </form>
    </div>
</body>
</html>
