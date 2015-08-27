package com.maxboguslavskyi.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Component
public class StudentLogin {

    @NotEmpty
    @Size(min = 5, max = 20,
            message = "Username must be between 4 and 20 characters long")
    @Pattern(regexp = "^[a-zA-Z0-9]+$",
            message = "Username must be alphanumeric with no spaces")
    private String userName;

    @NotEmpty
    @Size(min = 5, max = 20,
            message = "Password must be at least 5 characters long")
    private String password;

    public String getPassword() {
        return password;
    }

    public String getUserName() {
        return userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
