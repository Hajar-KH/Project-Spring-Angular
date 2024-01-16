package com.management.services;

import com.management.entities.Admin;
import com.management.entities.Role;
import org.springframework.stereotype.Service;


import java.util.List;
@Service

public interface AdminService {

    Admin saveAdmin(Admin admin);
    Admin findAdminByUsername(String username);
    Role addRole(Role role);
    Admin addRoleToAdmin(String username,String rolename);

    List<Admin> findAllAdmins();

}
