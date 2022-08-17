package org.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springmvc.model.Customer;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class CustomerDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void addAndUpdateCustomer(Customer customer) {

        this.hibernateTemplate.saveOrUpdate(customer);
    }

    public List<Customer> getAllCustomers() {

        List<Customer> customers = this.hibernateTemplate.loadAll(Customer.class);

        return customers;
    }

    public Customer getCustomer(String email) {

        Customer customer = this.hibernateTemplate.get(Customer.class, email);

        return customer;
    }

    @Transactional
    public void deleteCustomer(String email) {

        this.hibernateTemplate.delete(email);
    }
}
