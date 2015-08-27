package com.maxboguslavskyi.service;

import com.maxboguslavskyi.model.StudentInterface;

public interface StudentService {

    StudentInterface save(StudentInterface student);

    boolean findByLogin(String userName, String password);

    boolean findByUserName(String userName);
}
