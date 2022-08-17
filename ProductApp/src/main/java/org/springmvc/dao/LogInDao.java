package org.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springmvc.model.LogIn;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class LogInDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveAndUpdateLogInInformation(LogIn logIn) {

        this.hibernateTemplate.saveOrUpdate(logIn);
    }

    public List<LogIn> getAllLogInInformation() {

        List<LogIn> logIns = this.hibernateTemplate.loadAll(LogIn.class);

        return logIns;
    }


    public LogIn getLogInInformation(int id) {

        LogIn logIn = this.hibernateTemplate.get(LogIn.class, id);

        return logIn;
    }

    @Transactional
    public void deleteLogInInformation(int id) {

        this.hibernateTemplate.delete(id);
    }
}
