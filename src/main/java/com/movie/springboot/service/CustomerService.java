package com.movie.springboot.service;

import com.movie.springboot.model.Customer;

public interface CustomerService
{
  public String addcustomer(Customer cus );
  public Customer checkcustomerlogin(String email,String pwd);
  
}
