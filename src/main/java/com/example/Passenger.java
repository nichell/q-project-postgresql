package com.example;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.context.Dependent;
import jakarta.enterprise.context.RequestScoped;

@Dependent
public class Passenger {
    public int id;
    public int bookedClass;
    public String name;
    public String sex;
    public float age;
    public int sipSp;
    public int parch;
    public String ticket;
    public float fare;
    public String cabin;
    public String embarked;

}
