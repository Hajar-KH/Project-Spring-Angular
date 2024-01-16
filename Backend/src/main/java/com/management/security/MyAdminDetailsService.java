package com.management.security;

import com.management.entities.Admin;
import com.management.services.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.ArrayList;
import java.util.List;

@Service
public class MyAdminDetailsService implements UserDetailsService{

    @Autowired
    AdminService adminService;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Admin admin=adminService.findAdminByUsername(username);
        if(admin==null)
            throw new UsernameNotFoundException("Admin not found");
        else{
            List<GrantedAuthority> authorities=new ArrayList<>();
            admin.getRoles().forEach(role->{
                GrantedAuthority authority=new SimpleGrantedAuthority(role.getRole());
                authorities.add(authority);
            });
            return new User(admin.getUsername(),admin.getPassword(),authorities);
        }

    }
}
