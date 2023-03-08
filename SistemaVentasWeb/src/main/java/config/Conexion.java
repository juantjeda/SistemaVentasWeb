/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import javax.sql.DataSource;
import jakarta.annotation.Resource;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.inject.Produces;

/**
 *
 * @author juanjo
 */
@ApplicationScoped
public class Conexion {
    @Produces
    @Resource(lookup = "java:app/jdbc/bd_ventas")
    private DataSource dataSource;
}
