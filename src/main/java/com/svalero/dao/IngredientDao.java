package com.svalero.dao;
import com.svalero.domain.Ingredient;
import java.util.List;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;


@RegisterRowMapper(IngredientMapper.class)
public interface IngredientDao {
    // Seleccionar todos los ingredientes
    @SqlQuery("SELECT * FROM INGREDIENT")
    List<Ingredient> getIngredients();

    // Seleccionar un ingrediente por ID
    @SqlQuery("SELECT * FROM INGREDIENT WHERE ID_INGREDIENT = :id")
    Ingredient getIngredientById(int id);

    // Insertar un nuevo ingrediente
    @SqlUpdate("INSERT INTO INGREDIENT (ID_INGREDIENT, NAME, PRICE, ID_RECIPE) VALUES (:id, :name, :price, :idRecipe)")
    void insertIngredient(int id, String name, double price, int idRecipe);

    // Actualizar un ingrediente existente
    @SqlUpdate("UPDATE INGREDIENT SET NAME = :name, PRICE = :price, ID_RECIPE = :idRecipe WHERE ID_INGREDIENT = :id")
    void updateIngredient(int id, String name, double price, int idRecipe);

    // Eliminar un ingrediente por ID
    @SqlUpdate("DELETE FROM INGREDIENT WHERE ID_INGREDIENT = :id")
    void deleteIngredient(int id);
}
