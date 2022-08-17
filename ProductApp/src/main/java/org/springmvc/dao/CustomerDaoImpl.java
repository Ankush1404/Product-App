package org.springmvc.dao;

import org.springmvc.model.Customer;

import java.util.List;

public interface CustomerDaoImpl {

    public void addAndUpdateCustomer(Customer customer);
    public List<Customer> getAllCustomers();
    public Customer getCustomer(String email);
    public void deleteCustomer(String email);

}
