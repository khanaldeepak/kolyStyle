package com.realtorsnepal.service;

import com.realtorsnepal.model.Product;

import java.util.List;

/**
 * Created by Samima on 1/22/2017.
 */
public interface ProductService {

    List<Product> getProductList();
    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
