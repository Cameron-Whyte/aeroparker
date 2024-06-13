package com.cameron.aeroparker.controllers;

import com.cameron.aeroparker.models.Customer;
import com.cameron.aeroparker.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.validation.Valid;
import java.time.LocalDateTime;

// https://medium.com/@himani.prasad016/validations-in-spring-boot-e9948aa6286b

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private CustomerRepository customerRepository; // interacts with the data store

    // displays form page
    @GetMapping
    public String showRegistrationForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "registration";
    }

    // this method validates and processes form submissions
    @PostMapping
    public String registerCustomer(@Valid @ModelAttribute Customer customer, BindingResult bindingResult, Model model) {
        // convert email to lowercase to handle case insensitivity
        String email = customer.getEmailAddress().toLowerCase();
        customer.setEmailAddress(email);

        // use JPA method to check for the email and if it exists display the error message
        if (customerRepository.existsByEmailAddressIgnoreCase(email)) {
            bindingResult.rejectValue("emailAddress", "error.customer", "Email address already exists.");
        }

        // if email doesn't exist or other error, show form again
        if (bindingResult.hasErrors()) {
            return "registration";
        }

        // save the new customer with the current time to the database and show success
        customer.setRegistered(LocalDateTime.now());
        customerRepository.save(customer);
        return "redirect:/registration/success";
    }

    // displays success page - in future may want a check that only a registered user can view it
    @GetMapping("/success")
    public String showSuccessPage() {
        return "success";
    }
}


