package com.management.repositories;

import com.management.entities.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin,Long> {
    /*@Query("SELECT a FROM Admin a WHERE a.username = :username")
    Admin findByAdmin(@Param("username") String username);*/

    Admin findByUsername(String username);

}
