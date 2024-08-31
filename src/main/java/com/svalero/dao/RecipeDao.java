package com.svalero.dao;
import com.svalero.domain.Recipe;

import java.util.List;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;



@RegisterRowMapper(RecipeMapper.class)
public interface RecipeDao {

    @SqlQuery("SELECT * FROM RECIPE")
    @RegisterBeanMapper(RecipeMapper.class)
    List<Recipe> getRecipes();

    @SqlQuery("SELECT * FROM RECIPE WHERE ID_RECIPE = :id")
    Recipe getRecipeById(int id);

    @SqlUpdate("INSERT INTO RECIPE (ID_RECIPE, ID_INGREDIENT, ID_USER, NAME, DESCRIPTION, PRICE) VALUES (:idRecipe, :idIngredient, :idUser, :name, :description, :price)")
    void insertRecipe(int idRecipe, int idIngredient, int idUser, String name, String description, double price);

    @SqlUpdate("UPDATE RECIPE SET ID_INGREDIENT = :idIngredient, ID_USER = :idUser, NAME = :name, DESCRIPTION = :description, PRICE = :price WHERE ID_RECIPE = :idRecipe")
    void updateRecipe(int idRecipe, int idIngredient, int idUser, String name, String description, double price);

    @SqlUpdate("DELETE FROM RECIPE WHERE ID_RECIPE = :idRecipe")
    void deleteRecipe(int idRecipe);
}
