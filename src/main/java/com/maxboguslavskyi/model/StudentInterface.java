package com.maxboguslavskyi.model;

import java.util.Date;

public interface StudentInterface {

    Long getId();

    void setId(Long id);

    String getUserName();

    void setUserName(String userName);

    String getFirstName();

    void setFirstName(String firstName);

    String getLastName();

    void setLastName(String lastName);

    String getPassword();

    void setPassword(String password);

    String getEmailAddress();

    void setEmailAddress(String emailAddress);

    Date getDateOfBirth();

    void setDateOfBirth(Date dateOfBirth);

}