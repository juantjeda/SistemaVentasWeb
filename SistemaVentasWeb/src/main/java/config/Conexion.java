/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author juanjo
 */
public class Conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3306/bd_vemtas";
    String user = "root";
    String password = "";
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        }catch(ClassNotFoundException | SQLException e){
        }
        return con;      
    }
}
