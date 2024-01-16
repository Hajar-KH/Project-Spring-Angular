package com.management;

import com.management.entities.Admin;
import com.management.entities.Role;

import com.management.services.AdminService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class MainApplication {
    @Autowired
    AdminService adminService;
    public static void main(String[] args) {

        SpringApplication.run(MainApplication.class, args);
    }
    @Bean
    BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }
    /*@Bean
    CommandLineRunner commandLineRunnerAdmin(AccountService accountService){
        return args -> {
            /*accountService.createAdmin("admin","123","123");
            accountService.createAdmin("assistant","123","123");
            accountService.createRole("ADMIN");
            accountService.createRole("ASSISTANT");
            accountService.addRoletoAdmin("admin","ADMIN");
           // accountService.addRoletoAdmin("admin","ASSISTANT");
            accountService.addRoletoAdmin("assistant","ASSISTANT");*/
            //System.out.println(
            //accountService.loadAdminByUsername("admin").getRoles()
          //  );

    //@PostConstruct
    void initial_users(){
        adminService.addRole(new Role(null,"ADMIN"));
        adminService.addRole(new Role(null,"ASSISTANT"));

        adminService.saveAdmin(new Admin(null,"admin","123",true,null));
        adminService.saveAdmin(new Admin(null,"assistant","123",true,null));

        adminService.addRoleToAdmin("admin","ADMIN");
        adminService.addRoleToAdmin("admin","CREATE");
        adminService.addRoleToAdmin("assistant","CREATE");
        adminService.addRoleToAdmin("assistant","ASSISTANT");

    }


        }



