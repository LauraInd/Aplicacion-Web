package com.svalero.dao;

import java.util.List;

import com.svalero.domain.Users;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

@RegisterRowMapper(UsersMapper.class)
public interface UsersDao {

    @SqlQuery("SELECT * FROM users")
    List<Users> getAllUsers();

    @SqlQuery("SELECT * FROM users WHERE id = ?")
    Users getUser(int id);

    @SqlQuery("SELECT * FROM users WHERE username = ? AND password = SHA1(?)")
    Users getUser(String username, String password);

    @SqlUpdate("INSERT INTO users (name, username, password, role) VALUES (?, ?, SHA1(?), ?)")
    int addUser(String name, String username, String password, String role);

    @SqlUpdate("UPDATE users SET name = ?, username = ?, role = ? WHERE id = ?")
    int updateUser(String name, String username, String role, int id);

    @SqlUpdate("DELETE FROM users WHERE id = ?")
    int removeUser(int id);
}
