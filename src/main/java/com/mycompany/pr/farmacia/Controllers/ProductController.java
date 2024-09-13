/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.Product;
import com.mycompany.pr.farmacia.Persistence.PersistenceProductController;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class ProductController {

    PersistenceProductController persistenceProductController = new PersistenceProductController();

    public void createProductController(Product product) {
        persistenceProductController.createProduct(product);
    }

    public List<Product> getProductsController() {
        return persistenceProductController.getProducts();
    }

    public void deleteProductController(int id) throws NonexistentEntityException {
        persistenceProductController.deleteProduct(id);
    }

    public int getAmountOfProductsController() {
        return persistenceProductController.getAmountOfProducts();
    }

    public void editProductController(Product product) throws Exception {
        persistenceProductController.editProduct(product);
    }

    public Product getProductController(int id) {
        return persistenceProductController.getProduct(id);
    }

}
