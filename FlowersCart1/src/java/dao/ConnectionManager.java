/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.driver.OracleDriver;
//import oracle.jdbc.
/**
 *
 * @author Sheko
 */
public class ConnectionManager {

    public ConnectionManager() {
        try {
            DriverManager.registerDriver(new OracleDriver());
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection()
    {
        return null;
    }
}