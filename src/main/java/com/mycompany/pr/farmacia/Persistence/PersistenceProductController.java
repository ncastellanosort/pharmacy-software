/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Persistence;

import com.mycompany.pr.farmacia.Entities.Product;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class PersistenceProductController {

    ProductJpaController productJpaController = new ProductJpaController();

    public void createProduct(Product product) {
        productJpaController.create(product);
    }

    public List<Product> getProducts() {
        return productJpaController.findProductEntities();
    }

    public void deleteProduct(int id) throws NonexistentEntityException {
        productJpaController.destroy(id);
    }

    public int getAmountOfProducts() {
        return productJpaController.getProductCount();
    }

    public void editProduct(Product product) throws Exception {
        productJpaController.edit(product);
    }

    public Product getProduct(int id) {
        return productJpaController.findProduct(id);
    }

}
