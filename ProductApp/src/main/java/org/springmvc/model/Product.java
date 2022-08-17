package org.springmvc.model;

import javax.persistence.*;

@Entity
@Table(name = "Product_Details")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id")
    private int id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Description")
    private String description;

    @Column(name = "Company")
    private String company;

    @Column(name = "Price")
    private long price;

    @Column(name = "Owner_PhoneNumber")
    private String ownerPhoneNumber;

    @Column(name = "Owner_Email")
    private String ownerEmail;

    public Product() {

    }

    public Product(String name, String description, String company, long price, String ownerPhoneNumber, String ownerEmail) {
        this.name = name;
        this.description = description;
        this.company = company;
        this.price = price;
        this.ownerPhoneNumber = ownerPhoneNumber;
        this.ownerEmail = ownerEmail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getOwnerPhoneNumber() {
        return ownerPhoneNumber;
    }

    public void setOwnerPhoneNumber(String ownerPhoneNumber) {
        this.ownerPhoneNumber = ownerPhoneNumber;
    }

    public String getOwnerEmail() {
        return ownerEmail;
    }

    public void setOwnerEmail(String ownerEmail) {
        this.ownerEmail = ownerEmail;
    }

    @Override
    public String toString() {
        return "Product[id = " + id + ", name = " + name + ", description = " + description + ", company = " + company +
               ", price = " + price + ", ownerPhoneNumber = " + ownerPhoneNumber + ", ownerEmail = " + ownerEmail + "]";
    }
}
