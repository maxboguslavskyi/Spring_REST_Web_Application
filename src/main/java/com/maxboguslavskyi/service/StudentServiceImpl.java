package com.maxboguslavskyi.service;

import com.maxboguslavskyi.model.Student;
import com.maxboguslavskyi.model.StudentInterface;
import com.maxboguslavskyi.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Qualifier("studentRepository")
    @Autowired
    private StudentRepository studentRepository;

    @Transactional
    public StudentInterface save(StudentInterface student) {
        return studentRepository.save((Student) student);
    }

    public boolean findByLogin(String userName, String password) {
        StudentInterface studentInterface = studentRepository.findByUserName(userName);

        return studentInterface != null && studentInterface.getPassword().equals(password);

    }

    public boolean findByUserName(String userName) {
        StudentInterface studentInterface = studentRepository.findByUserName(userName);

        return studentInterface != null;

    }
}
