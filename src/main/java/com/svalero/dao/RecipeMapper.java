package com.svalero.dao;

import com.svalero.domain.Recipe;

import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RecipeMapper implements RowMapper<Recipe>{
    public Recipe map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Recipe(rs.getInt("id"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getFloat("price"));
}}
