package org.springmvc.dao;

import org.springmvc.model.LogIn;

import java.util.List;

public interface LogInDaoImpl {

    public void saveAndUpdateLogInInformation(LogIn logIn);
    public List<LogIn> getAllLogInInformation();
    public LogIn getLogInInformation(String email);
    public void deleteLogInInformation(String email);

}
