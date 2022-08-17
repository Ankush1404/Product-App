package org.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springmvc.dao.AddressDao;
import org.springmvc.model.Address;

import java.util.List;

@Service
public class AddressService {

    @Autowired
    private AddressDao addressDao;

    public void saveAndUpdateAddress(Address address) {

        this.addressDao.saveAndUpdateAddress(address);
    }

    public List<Address> getAllAddresses() {

        List<Address> addresses = this.addressDao.getAllAddresses();

        return addresses;
    }

    public Address getAddress(String houseNo) {

        Address address = this.addressDao.getAddress(houseNo);

        return address;
    }

    public void deleteAddress(String houseNo) {

        this.addressDao.deleteAddress(houseNo);
    }

}
