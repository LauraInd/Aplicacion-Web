package com.svalero.dao;

import com.svalero.domain.Users;

import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersMapper implements RowMapper<Users>  {

    public Users map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Users(rs.getInt("id"),
                rs.getString("name"),
                rs.getString("username"),
                rs.getString("password"),
                rs.getString("role"));

}}
