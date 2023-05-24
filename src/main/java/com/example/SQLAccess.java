package com.example;

import io.agroal.api.AgroalDataSource;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

@ApplicationScoped
public class SQLAccess {
    @Inject
    AgroalDataSource dataSource;



    public String readTestTable(int number) throws SQLException {
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        String sqlQuery = "SELECT * FROM test WHERE spalte1='" + number + "'";
        ResultSet resultSet = statement.executeQuery(sqlQuery);
        resultSet.next();
        String res = resultSet.getString("spalte2");
        return res;
    }

    public int getPassengerClass(int passengerId) throws SQLException {
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        String sqlQuery = "SELECT * FROM titanic WHERE passengerId='" + passengerId + "'";
        ResultSet resultSet = statement.executeQuery(sqlQuery);
        resultSet.next();
        Integer res = resultSet.getInt("Pclass");
        return res;
    }

    public List<String> getPassenger(int classOfPassenger, boolean male) throws SQLException {
        String sex = male ? "male" : "female";
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        String sqlQuery = "SELECT * FROM titanic WHERE Pclass='" + classOfPassenger + "'"
                + "AND sex='" + sex + "'";
        ResultSet resultSet = statement.executeQuery(sqlQuery);
        List<String> res = new ArrayList<>();
        while (resultSet.next()) {
            res.add(resultSet.getString("Name"));
        }
        return res;
    }

    public void addPassenger(Passenger passenger) throws SQLException {
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        String sqlQuery = "INSERT INTO titanic VALUES ("
                + map(passenger.id) + ","
                + map(passenger.bookedClass) + ","
                + map(passenger.name) + ","
                + map(passenger.sex) + ","
                + map(passenger.age) + ","
                + map(passenger.sipSp) + ","
                + map(passenger.parch) + ","
                + map(passenger.ticket) + ","
                + map(passenger.fare) + ","
                + map(passenger.cabin) + ","
                + map(passenger.embarked) + ")";
        statement.execute(sqlQuery);
    }

    private String map(String input){
        if (input == null){
            return "NULL";
        } else {
            return "'" + input + "'";
        }
    }

    private String map(Integer input){
        if (input == null){
            return "NULL";
        } else {
            return Integer.toString(input);
        }
    }

    private String map(Float input){
        if (input == null){
            return "NULL";
        } else {
            return Float.toString(input);
        }
    }

}
