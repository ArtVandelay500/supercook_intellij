package com.vandelay.app.infra.controller;

import lombok.RequiredArgsConstructor;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
@RequiredArgsConstructor
public class MyClass {
    private static final Logger logger = Logger.getLogger(MyClass.class);

    public static void main(String[] args) {
        // Configure the JDBC connection
        String url = "jdbc:mysql://database-1.cl9nvrrke5cl.ap-northeast-2.rds.amazonaws.com:33066/vandelay_db";
        String username = "adminXX";
        String password = "Bu95311Le2#";

        try {
            // Register the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create the connection
            Connection connection = DriverManager.getConnection(url, username, password);

            // Create a statement
            Statement statement = connection.createStatement();

            // Execute a MySQL query
            String query = "SELECT * FROM code";
            ResultSet resultSet = statement.executeQuery(query);

            // Process the result set
            while (resultSet.next()) {
                int id = resultSet.getInt("seq");
                String name = resultSet.getString("name");
                // ... Retrieve other columns as needed

                // Log the result data
                logger.debug("Row: id=" + id + ", name=" + name);
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}