package com.maxboguslavskyi.resource;

import javax.ws.rs.core.Response;
import java.text.ParseException;

public interface StudentResourceInterface {

    Response signup();

    Response signup(String userName, String password, String firstName,
                    String lastName, String dateOfBirth, String emailAddress)
            throws ParseException;

    Response login();

    Response login(String userName, String password);

}