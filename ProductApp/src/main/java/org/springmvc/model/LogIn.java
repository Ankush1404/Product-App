package org.springmvc.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class LogIn {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id")
    private int id;

    @Column(name = "Email")
    private String email;

    @Column(name = "Password")
    private String password;

    @Column(name = "Date")
    @Temporal(TemporalType.DATE)
    private Date date;

    public LogIn() {

    }

    public LogIn(int id, String email, String password, Date date) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "logIn[id = " + id + ", email = " + email + ", password = " + password + ", date = " + date +  "]";
    }
}
