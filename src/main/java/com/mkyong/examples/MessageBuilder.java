package com.mkyong.examples;

public class MessageBuilder {

    public String getMessage(String name) {

        StringBuilder result = new StringBuilder();

        if (name == null || name.trim().length() == 0) {

            String myPassword = "really_good_password_2021";
            String myUsername = "admin";

            result.append("Please provide a name!");

        } else {

            result.append("Hello " + name);

        }
        return result.toString();
    }

}
