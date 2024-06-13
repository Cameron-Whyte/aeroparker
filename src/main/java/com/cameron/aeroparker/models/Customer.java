package com.cameron.aeroparker.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import java.time.LocalDateTime;

// https://jakarta.ee/specifications/bean-validation/3.0/apidocs/jakarta/validation/constraints/package-summary
// https://www.codejava.net/frameworks/spring-boot/spring-boot-form-validation-tutorial

/*
 This class provides the layout for the customer model, it uses the column annotation
 to map the fields correctly to the database.
*/

@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private LocalDateTime registered;

    @Email
    @Size(max = 255) // limited by client side so may not be needed
    @NotEmpty
    @Column(name = "email_address", nullable = false, unique = true)
    private String emailAddress;

    // title doesn't need other annotations as its size is fixed by options on dropdown
    @Column(nullable = false, length = 5)
    private String title;

    @NotEmpty
    @Size(max = 50)
    @Column(name = "first_name", nullable = false, length = 50)
    private String firstName;

    @NotEmpty
    @Size(max = 50)
    @Column(name = "last_name", nullable = false, length = 50)
    private String lastName;

    @NotEmpty
    @Size(max = 255)
    @Column(name = "address_line_1", nullable = false)
    private String addressLine1;

    @Size(max = 255)
    @Column(name = "address_line_2")
    private String addressLine2;

    @Size(max = 255)
    @Column
    private String city;

    @NotEmpty
    @Size(max = 10)
    @Column(nullable = false, length = 10)
    private String postcode;

    @Size(max = 20)
    @Column(name = "phone_number", length = 20)
    private String phoneNumber;

    // could remove getters and setters except email - however may be useful for further functionality
    public Long getId() {
        return id;
    }

    public void setId(Long id){
        this.id = id;
    }

    public LocalDateTime getRegistered(){
        return registered;
    }

    public void setRegistered(LocalDateTime registered) {
        this.registered = registered;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}