package com.svalero.dao;

import com.svalero.domain.Ingredient;
import org.jdbi.v3.core.statement.StatementContext;
import org.jdbi.v3.core.mapper.RowMapper;


import java.sql.ResultSet;
import java.sql.SQLException;

public class IngredientMapper implements RowMapper<Ingredient> {

    public Ingredient map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Ingredient(rs.getInt("id"),
                rs.getString("name"),
                rs.getFloat("price")
        );
    }
}
