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
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import oracle.jdbc.OracleDriver;
//import oracle.jdbc.
/**
 *
 * @author Sheko
 */
public class ConnectionManager {
private DataSource dataSource; 
    public ConnectionManager() {
        try { 
            Context context=(Context) new InitialContext().lookup("java:comp/env");
             dataSource=(DataSource) context.lookup("jdbc/TestDB"); 
        
        } catch (NamingException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public Connection getConnection()
    {
<<<<<<< HEAD
        try {
            return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","jsp","jsp");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
=======
    try { 
      return dataSource.getConnection();
    } catch (SQLException ex) {
        Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
>>>>>>> 6b39b212ad776002df1a2b8d5f20778b7c5fd504
    }
}
