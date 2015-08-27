package com.maxboguslavskyi.client;

import javax.ws.rs.core.Response;

public interface StudentClientInterface {

    Response getSignup();

    Response postSignup(String userName, String password,
                        String firstName, String lastName, String dateOfBirth,
                        String emailAddress) throws Exception;

    Response getLogin();

    Response postLogin(String userName, String password);

}