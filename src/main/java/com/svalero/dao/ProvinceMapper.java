package com.svalero.dao;

import com.svalero.domain.Province;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.jdbi.v3.core.statement.StatementContext;
import org.jdbi.v3.core.mapper.RowMapper;

public class ProvinceMapper implements RowMapper<Province> {

    public Province map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Province(rs.getInt("id"),
                rs.getString("name"),
                rs.getString("zip_code"));

}}
