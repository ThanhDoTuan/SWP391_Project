/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FPTU
 */
public class DBContext {
    protected Connection connection;
    public DBContext() 
    {
        try {
            //NOTE: CHANGE VALUES OF user,pass,url TO FIT YOUR SYSTEM ENVIRONMENT
            //DO NOT CHANGE THE STRUCTURE OF THE CONSTRUCTOR
            String user = "sa";
            String pass = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Fashion_Shop_Online";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
