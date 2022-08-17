package org.springmvc.model;

import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.Date;

@Entity
@Proxy(lazy = false)
public class Customer {

    @Column(name = "FirstName")
    private String firstName;

    @Column(name = "SurName")
    private String surName;

    @Column(name = "DateOfBirth")
    private String dob;

    @Column(name = "Gender")
    private String gender;

    @Column(name = "Date")
    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(name = "PhoneNumber")
    private String phoneNumber;

    @Id
    @Column(name = "Email")
    private String email;

    @Column(name = "Password")
    private String password;

    @OneToOne(mappedBy = "customer")
    @JoinColumn(name = "Address")
    private Address address;

    public Customer() {

    }

    public Customer(String firstName, String surName, String dob, String gender, Date date, String phoneNumber, String email,
                    String password, Address address) {
        this.firstName = firstName;
        this.surName = surName;
        this.dob = dob;
        this.gender = gender;
        this.date = date;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.address = address;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String fullName) {
        this.firstName = fullName;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer[firstName = " + firstName + ", surName = " + surName + ", dob = " + dob + ", gender = " +
                gender + ", date = " + date + ", phoneNumber = " + phoneNumber + ", email = " + email + ", password = "
                + password + ", address = " + address + "]";
    }
}
