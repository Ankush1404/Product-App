package org.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springmvc.dao.ProductDao;
import org.springmvc.model.Product;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public void addAndUpdateProduct(Product product) {

        this.productDao.createAndUpdateProduct(product);
    }

    public Product getProduct(int id) {

       Product product = this.productDao.getProduct(id);

       return product;
    }

    public List<Product> getAllProducts() {

       List<Product> products = this.productDao.getAllProducts();

       return products;
    }

    public void deleteProduct(int id) {

        this.productDao.deleteProduct(id);
    }

}
