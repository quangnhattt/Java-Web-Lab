/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Nam Ngoc
 */
public abstract class BaseDAO {

//    public Connection getConnection() throws Exception {
//        String url = "jdbc:sqlserver://localhost;database=DigitalNews;"
//                + "integratedSecurity=true;";
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        return DriverManager.getConnection(url);
//    }
    /**
     * get connection with SQL
     *
     * @return
     * @throws Exception
     */
    public Connection getConnection() throws Exception {
        String user = "sa";
        String pass = "sa";
        String url = "jdbc:sqlserver://localhost:1433;databaseName=DigitalNews1";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, user, pass);
    }

    /**
     * closeResultSet
     *
     * @param rs
     * @throws SQLException
     */
    public void closeResultSet(ResultSet rs) throws SQLException {
        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
    }

    /**
     * closePreparedStatement
     *
     * @param st
     * @throws SQLException
     */
    public void closePreparedStatement(PreparedStatement st) throws SQLException {
        if (st != null && !st.isClosed()) {
            st.close();
        }
    }

    /**
     * closeConnection
     *
     * @param con
     * @throws SQLException
     */
    public void closeConnection(Connection con) throws SQLException {
        if (con != null && !con.isClosed()) {
            con.close();
        }
    }

    /**
     * @return path of image
     */
    public String getImgPath() {
        return "resources/img/";
    }
}
