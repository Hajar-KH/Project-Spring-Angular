package com.management.repositories;

import com.management.entities.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import java.util.List;


@RepositoryRestResource(path="rest")
public interface ClientRepository extends JpaRepository<Client, Long>{

}
