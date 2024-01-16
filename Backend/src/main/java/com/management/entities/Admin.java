package com.management.entities;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
//generer getters et setters

@Data
//generer constructeur
@AllArgsConstructor
@NoArgsConstructor

public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long adminId;
    @Column(unique=true)
    private String username;
    private String password;
    private Boolean enabled;
    //L'ENSEMBLE
    @ManyToMany(cascade = CascadeType.ALL,fetch= FetchType.EAGER)
    @JoinTable(name = "admin_role",joinColumns = @JoinColumn(name="adminId"),
        inverseJoinColumns = @JoinColumn(name = "roleId"))
    private List<Role> roles;

}
