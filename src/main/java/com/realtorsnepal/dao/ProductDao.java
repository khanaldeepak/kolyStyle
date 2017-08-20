package com.realtorsnepal.dao;

import com.realtorsnepal.model.Product;

import java.util.List;

/**
 * Created by Samima on 1/15/2017.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}
