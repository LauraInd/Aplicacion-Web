<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.svalero.dao.Database" %>
<%@ page import="com.svalero.domain.Recipe" %>
<%@ page import="com.svalero.dao.RecipeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.svalero.util.CurrencyUtils" %>

<%@include file="includes/header.jsp"%>

<div class="container">
    <div class="row py-4">
        <div class="col">
          <h3 class="text-uppercase text-primary">Recetario</h3>
        </div>
        <div class="col text-end">
          <a href="Recipe/view.jsp" class="btn btn-primary btn-lg me-2">Buscar Receta</a>
          <a href="Recipe/add.jsp" class="btn btn-success btn-lg">Agregar Receta</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <%
            Database.connect();
            List<Recipe> recipes = Database.jdbi.withExtension(RecipeDAO.class, RecipeDAO::getRecipes);
            for (Recipe recipe : recipes) {
        %>
        <div class="col">
            <div class="card border-0 shadow-sm h-100">
                <img src="path/to/image/<%= recipe.getId() %>.jpg" class="card-img-top" alt="Imagen de receta" style="height: 200px; object-fit: cover;">
                <div class="card-body">
                    <h5 class="card-title text-primary"><%= recipe.getName() %></h5>
                    <p class="card-text text-muted"><%= recipe.getDescription() %></p>
                    <p class="card-text">Precio: <small class="text-secondary fw-bold"><%= CurrencyUtils.format(recipe.getPrice()) %></small></p>
                    <div class="d-flex justify-content-between align-items-center mt-4">
                        <div class="btn-group">
                            <a href="recipes/view.jsp?id=<%= recipe.getId() %>" class="btn btn-outline-primary">Ver</a>
                            <a href="recipes/edit.jsp?id=<%= recipe.getId() %>" class="btn btn-outline-warning">Editar</a>
                            <a href="recipes/remove.jsp?id=<%= recipe.getId() %>" class="btn btn-outline-danger">Eliminar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>

<%@include file="includes/footer.jsp"%>
