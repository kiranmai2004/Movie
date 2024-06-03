package com.movie.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.springboot.service.CustomerService;
import com.movie.springboot.model.Customer;
import com.movie.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl  implements CustomerService{
	@Autowired
	  private CustomerRepository customerRepository;

	  @Override
	  public Customer checkcustomerlogin(String email, String pwd) {
	    return customerRepository.checkcustomerlogin(email, pwd);
	  }

	  @Override
	  public String addcustomer(Customer cus) {
	    customerRepository.save(cus);
	    return "Registrartion Successfull";
	  }

}
