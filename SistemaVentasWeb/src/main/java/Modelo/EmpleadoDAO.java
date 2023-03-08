/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author juanjo
 */
@ApplicationScoped
public class EmpleadoDAO {
    @Inject
    private DataSource dataSource;
    private static final Logger LOG = Logger.getLogger(EmpleadoDAO.class.getName());
    
    public Empleado validar(String user, String dni){
        Empleado em = new Empleado();    
        String sql = "SELECT * FROM empleado WHERE User='"+user+"' AND Dni='"+dni+"'";
        try(Connection conn = dataSource.getConnection()){
            try(Statement stmt = conn.createStatement()){            
                try(ResultSet rs = stmt.executeQuery(sql)){
                    while(rs.next()){
                        em.setId(rs.getInt("IdEmpleado"));
                        em.setDni(rs.getString("Dni"));                        
                        em.setNom(rs.getString("Nombres"));
                        em.setTel(rs.getString("Telefono"));
                        em.setEstado(rs.getString("Estado"));
                        em.setUser(rs.getString("User"));
                    }
                }
            }
        }catch(Exception e){
            LOG.log(Level.SEVERE, null, e);
        }
            
        return em;
    }
}
