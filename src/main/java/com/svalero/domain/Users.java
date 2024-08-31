package com.svalero.domain;

//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;

//@NoArgsConstructor
//@AllArgsConstructor
//@Data

public class Users {

    private int id;
    private String name;
    private String username;
    private String password;
    private String role;

    public Users(int id, String name, String username, String password, String role) {
    }
}
