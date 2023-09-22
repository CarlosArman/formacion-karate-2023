package bdd.helpers;

import com.github.javafaker.Faker;

public class DataGenrator {
    public static String getName(){
        Faker faker = new Faker();
        String name = faker.name().firstName();
        return name;
    }

    public static String getLastName(){
        Faker faker = new Faker();
        String lastName = faker.name().lastName();
        return lastName;
    }

    public static Integer getNumber(){
        Integer num = (int) (Math.random()*9000)+1000;
        return num;
    }
}
