package com.svalero.dao;


import java.util.List;

import com.svalero.domain.Province;
import org.jdbi.v3.sqlobject.config.RegisterRowMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;


@RegisterRowMapper(IngredientMapper.class)
public interface ProvinceDao {

    // Seleccionar todas las provincias
    @SqlQuery("SELECT * FROM PROVINCE")
    List<Province> getProvinces();

    // Seleccionar una provincia por ID
    @SqlQuery("SELECT * FROM PROVINCE WHERE ID_PROVINCE = :id")
    Province getProvinceById(int id);

    // Insertar una nueva provincia
    @SqlUpdate("INSERT INTO PROVINCE (ID_PROVINCE, NAME, ZIP_CODE, ID_USER) VALUES (:id, :name, :zipCode, :idUser)")
    void insertProvince(int id, String name, String zipCode, int idUser);

    // Actualizar una provincia existente
    @SqlUpdate("UPDATE PROVINCE SET NAME = :name, ZIP_CODE = :zipCode, ID_USER = :idUser WHERE ID_PROVINCE = :id")
    void updateProvince(int id, String name, String zipCode, int idUser);

    // Eliminar una provincia por ID
    @SqlUpdate("DELETE FROM PROVINCE WHERE ID_PROVINCE = :id")
    void deleteProvince(int id);

}
