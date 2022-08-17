package org.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springmvc.dao.LogInDao;
import org.springmvc.model.LogIn;

import java.util.List;

@Service
public class LogInService {

    @Autowired
    private LogInDao logInDao;

    public void saveAndUpdateLogInInformation(LogIn logIn) {

        this.logInDao.saveAndUpdateLogInInformation(logIn);
    }

    public List<LogIn> getAllLogInInformation() {

        List<LogIn> logIns = this.logInDao.getAllLogInInformation();

        return logIns;
    }

    public LogIn getLogInInformation(int id) {

        LogIn logIn = this.logInDao.getLogInInformation(id);

        return logIn;
    }

    public void deleteLogInInformation(int id) {

        this.logInDao.deleteLogInInformation(id);
    }



}
