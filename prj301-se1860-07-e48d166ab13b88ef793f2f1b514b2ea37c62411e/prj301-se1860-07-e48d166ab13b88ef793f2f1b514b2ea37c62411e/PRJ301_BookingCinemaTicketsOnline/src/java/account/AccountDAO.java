/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

import dal.DBUtils;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class AccountDAO implements Serializable {

    public AccountDTO updateProfileAccount(String fullName, int phoneNumber, String gender, String userName) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        StringBuilder query = new StringBuilder("UPDATE ACCOUNT SET FULLNAME = ?, PHONENUMBER = ?, GENDER = ?"
                + " WHERE USERNAME = ?");
        try {
            String sql = null;
            sql = String.valueOf(query);
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);

            stm.setString(1, fullName);
            stm.setInt(2, phoneNumber);
            stm.setString(3, gender);
            stm.setString(4, userName);

            stm.executeUpdate();

            stm = con.prepareStatement("Select * from account where username = ?");
            stm.setString(1, userName);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String password = rs.getString("password");
                String googleID = rs.getString("googleID");
                String googleName = rs.getString("googleName");
                String email = rs.getString("email");
                boolean role = rs.getBoolean("role");

                AccountDTO accountDTO = new AccountDTO(userName, password, fullName, googleID, googleName, email, phoneNumber + "", gender, role);
                return accountDTO;
            }
        } catch (SQLException e) {
            System.out.println("An SQL error occurred: ");
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public AccountDTO createAnNormalAccount(String userNameK, String passwordK, String email) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        StringBuilder query = new StringBuilder("INSERT INTO ACCOUNT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query.toString());

            stm.setString(1, userNameK);
            stm.setString(2, passwordK);
            stm.setString(3, null);
            stm.setString(4, null);
            stm.setString(5, null);
            stm.setString(6, email);
            stm.setString(7, null);
            stm.setString(8, null);
            stm.setBoolean(9, false);

            stm.executeUpdate();

        } catch (SQLException e) {
            System.out.println("An SQL error occurred: ");
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public AccountDTO checkExistAccount(String userNameK, String passwordK) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        StringBuilder query = new StringBuilder("SELECT * FROM ACCOUNT WHERE USERNAME = ? AND PASSWORD = ?");
        try {
            String sql = null;
            sql = String.valueOf(query);
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, userNameK);
            stm.setString(2, passwordK);
            rs = stm.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("userName");
                String password = rs.getString("password");
                String fullName = rs.getString("fullName");
                String googleID = rs.getString("googleID");
                String googleName = rs.getString("googleName");
                String email = rs.getString("email");
                String phoneNumber = rs.getString("phoneNumber");
                String gender = rs.getString("gender");
                boolean role = rs.getBoolean("role");

                AccountDTO accountDTO = new AccountDTO(userName, password, fullName, googleID, googleName, email, phoneNumber, gender, role);
                return accountDTO;
            }
        } catch (SQLException e) {
            System.out.println("SQL: ");
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public AccountDTO createAccountGG(String googleID, String googleName) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        StringBuilder query = new StringBuilder("INSERT INTO ACCOUNT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
//        String tokens[] = googleName.trim().split("@");
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(query.toString());

            stm.setString(1, googleName);
            stm.setString(2, "null");
            stm.setString(3, googleName);
            stm.setString(4, googleID);
            stm.setString(5, googleName);
            stm.setString(6, googleName);
            stm.setString(7, null);
            stm.setString(8, null);
            stm.setBoolean(9, false);

            stm.executeUpdate();

        } catch (SQLException e) {
            System.out.println("An SQL error occurred: ");
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public AccountDTO checkAccountGG(String userName) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        StringBuilder query = new StringBuilder("SELECT * FROM ACCOUNT WHERE USERNAME = ?");
        try {
            String sql = null;
            sql = String.valueOf(query);
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, userName);
            rs = stm.executeQuery();
            while (rs.next()) {
                userName = rs.getString("userName");
                String password = rs.getString("password");
                String fullName = rs.getString("fullName");
                String googleID = rs.getString("googleID");
                String googleName = rs.getString("googleName");
                String email = rs.getString("email");
                String phoneNumber = rs.getString("phoneNumber");
                String gender = rs.getString("gender");
                boolean role = rs.getBoolean("role");

                AccountDTO accountDTO = new AccountDTO(userName, password, fullName, googleID, googleName, email, phoneNumber, gender, role);
                return accountDTO;
            }
        } catch (SQLException e) {
            System.out.println("SQL: ");
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }
    
        public AccountDTO findAccountByEmail(String email) {
        AccountDTO acc = null;
        Connection con = DBUtils.getConnection();
        String sql = "SELECT * FROM ACCOUNT WHERE email = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
          
            if (rs.next()) {
                acc = new AccountDTO(rs.getString("userName"), rs.getString("password"), null, null, null, rs.getString("email"), null, null, true);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return acc;
    }

}
