package com.svalero.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data

public class Recipe {


    private int id;

    private String name;

    private String description;

    private float price;

    private int id_ingredient;

    private int id_user;

    public Recipe(int id, String name, String description, float price) {
    }

    // Constructor
    public Recipe(String name, String description, float price) {
        this.name = name;
        this.description = description;
        this.price = price;
    }

    public int getIdRecipe() {
        return id;
    }

    public String getName() {
        return name;
    }

    // Otros getters y setters
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setName(String name) {
        this.name = name;
    }
}
