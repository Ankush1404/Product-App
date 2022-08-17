package org.springmvc.dao;

import org.springmvc.model.Product;

import java.util.List;

public interface ProductDaoImpl {

    public void createAndUpdateProduct(Product product);
    public Product getProduct(int id);
    public List<Product> getAllProducts();
    public void deleteProduct(int id);

}
