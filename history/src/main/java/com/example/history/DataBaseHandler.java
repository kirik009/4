package com.example.history;

import javafx.scene.control.TextArea;

import java.sql.*;

public class DataBaseHandler extends Config {
    Connection dbConnection;

    public Connection getDbConnection()
            throws ClassNotFoundException, SQLException {
        String connectionStrings = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName;
        Class.forName("com.mysql.cj.jdbc.Driver");
        dbConnection = DriverManager.getConnection(connectionStrings, dbUser, dbPass);
        return dbConnection;
    }

    public String getContext(int num) throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + Const.THEMES_TABLE);
        String res = "Ошибочка возникла";
        while (resultSet.next()) {
            if (num == resultSet.getInt(1)) {
                res = resultSet.getString(2);
                break;
            }

        }
        return res;
    }

    public int getUserID(User user) throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + Const.USER_TABLE);
        int id = 1;
        while (resultSet.next()) {
            if (user.getName().equals(resultSet.getString(2))) {
                id = resultSet.getInt(1);
                break;
            }

        }
        return id;
    }

    public boolean ThereIsName(User user) throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + Const.USER_TABLE);
        while (resultSet.next()) {
            if (user.getName().equals(resultSet.getString(2)))
                return true;
        }
        return false;
    }

    public boolean PasswordFits(User user) throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + Const.USER_TABLE);
        while (resultSet.next()) {
            if (user.getPassword().equals(resultSet.getString(3)))
                return true;
        }
        return false;
    }

    public void showMessages(TextArea messageArea) throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        Statement statement = conn.createStatement();
        Statement statement2 = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + Const.MESSAGE_TABLE);
        ResultSet resultSet2;
        while (resultSet.next()) {
            resultSet2 = statement2.executeQuery("SELECT * FROM " + Const.USER_TABLE);
            while (resultSet2.next()) {
                if (resultSet2.getInt(1) == resultSet.getInt(3)) {
                    String temp = resultSet2.getString(2) + ": " + resultSet.getString(2);
                    messageArea.setText(messageArea.getText() + temp + "\n");
                }
            }
        }
    }


    public void signUpUser(User user) throws SQLException, ClassNotFoundException {
        String insert = "INSERT INTO " + Const.USER_TABLE + "(" + Const.USERS_NAME + "," + Const.USERS_PASSWORD + ")" + " VALUES(?,?)";
        PreparedStatement prSt = getDbConnection().prepareStatement(insert);
        prSt.setString(1, user.getName());
        prSt.setString(2, user.getPassword());
        prSt.executeUpdate();
    }

    public void sendMessage(Message message) throws SQLException, ClassNotFoundException {
        String insert = "INSERT INTO " + Const.MESSAGE_TABLE + "(" + Const.MESSAGE_TEXT + "," + Const.USERS_ID + ")" + " VALUES(?,?)";
        PreparedStatement prSt = getDbConnection().prepareStatement(insert);
        prSt.setString(1, message.getTexxt());
        prSt.setInt(2, message.getUserId());
        prSt.executeUpdate();
    }
}
