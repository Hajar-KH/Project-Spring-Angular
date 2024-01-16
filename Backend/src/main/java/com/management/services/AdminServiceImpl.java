package com.management.services;

import com.management.entities.Admin;
import com.management.entities.Role;
import com.management.repositories.AdminRepository;
import com.management.repositories.RoleRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Transactional
@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    AdminRepository adminRepository;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
    @Override
    public Admin saveAdmin(Admin admin) {
        admin.setPassword(bCryptPasswordEncoder.encode(admin.getPassword()));
        return adminRepository.save(admin);
    }

    @Override
    public Admin findAdminByUsername(String username) {
        return adminRepository.findByUsername(username);
    }

    @Override
    public Role addRole(Role role) {

        return roleRepository.save(role);
    }

    @Override
    public Admin addRoleToAdmin(String username, String rolename) {
        Admin admin=adminRepository.findByUsername(username);
        Role role=roleRepository.findByRole(rolename);
        admin.getRoles().add(role);
        return admin;
    }

    @Override
    public List<Admin> findAllAdmins() {
        return adminRepository.findAll();
    }
}
