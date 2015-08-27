package com.maxboguslavskyi.repository;

import com.maxboguslavskyi.model.StudentInterface;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.maxboguslavskyi.model.Student;

@Repository("studentRepository")
public interface StudentRepository extends JpaRepository<Student, Long> {

    @Query("select s from Student s where s.userName = :userName")
    StudentInterface findByUserName(@Param("userName") String userName);

}
