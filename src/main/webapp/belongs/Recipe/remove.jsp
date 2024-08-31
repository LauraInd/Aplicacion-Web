<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.jdbi.v3.core.Jdbi" %>
<%@ page import="com.svalero.dao.RecipeDAO" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Jdbi jdbi = Database.jdbi;
    RecipeDAO recipeDao = jdbi.onDemand(RecipeDAO.class);
    recipeDao.deleteRecipe(id);

    response.sendRedirect("index.jsp"); // Redirige al índice después de eliminar la receta
%>
