package org.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springmvc.model.Product;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void createAndUpdateProduct(Product product) {

        this.hibernateTemplate.saveOrUpdate(product);
    }

    public Product getProduct(int id) {

        Product product = this.hibernateTemplate.get(Product.class, id);

        return product;
    }

    public List<Product> getAllProducts() {

        List<Product> products = this.hibernateTemplate.loadAll(Product.class);

        return products;
    }

    @Transactional
    public void deleteProduct(int id) {

        Product product = this.hibernateTemplate.load(Product.class, id);

        this.hibernateTemplate.delete(product);
    }
}
