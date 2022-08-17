package org.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springmvc.model.Address;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class AddressDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveAndUpdateAddress(Address address) {

        this.hibernateTemplate.saveOrUpdate(address);
    }

    public List<Address> getAllAddresses() {

        List<Address> addresses = this.hibernateTemplate.loadAll(Address.class);

        return addresses;
    }

    public Address getAddress(String houseNo) {

        Address address = this.hibernateTemplate.get(Address.class, houseNo);

        return address;
    }

    @Transactional
    public void deleteAddress(String houseNo) {

        this.hibernateTemplate.delete(houseNo);
    }
}
