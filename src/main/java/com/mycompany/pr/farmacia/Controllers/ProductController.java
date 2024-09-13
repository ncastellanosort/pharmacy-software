/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.Product;
import com.mycompany.pr.farmacia.Persistence.PersistenceProductController;

/**
 *
 * @author Nicolas
 */
public class ProductController {
    
    PersistenceProductController persistenceProductController = new PersistenceProductController();
    
    public void createProductController(Product product) {
        persistenceProductController.createProduct(product);
    }
}
