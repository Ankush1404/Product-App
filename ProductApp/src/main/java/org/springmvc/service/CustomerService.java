package org.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springmvc.dao.CustomerDao;
import org.springmvc.model.Customer;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void saveAndUpdateCustomer(Customer customer) {

        this.customerDao.addAndUpdateCustomer(customer);
    }

    public List<Customer> getAllCustomers() {

        List<Customer> customers = this.customerDao.getAllCustomers();

        return customers;
    }

    public Customer getCustomer(String email) {

        Customer customer = this.customerDao.getCustomer(email);

        return customer;
    }

    public void deleteCustomer(String email) {

        this.customerDao.deleteCustomer(email);
    }
}
