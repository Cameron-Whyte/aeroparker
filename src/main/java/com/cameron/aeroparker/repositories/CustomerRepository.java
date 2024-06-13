package com.cameron.aeroparker.repositories;

import com.cameron.aeroparker.models.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/*
   This repository interface allows us to perform CRUD operations on Customer entities and
   check for the existence of a customer by email address without case sensitivity. The
   provided types match the entity, and the type of the primary key.
*/

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long > {
    // method provided by JPA
    boolean existsByEmailAddressIgnoreCase(String emailAddress);
}
