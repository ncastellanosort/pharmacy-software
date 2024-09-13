/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Persistence;

import com.mycompany.pr.farmacia.Entities.Product;

/**
 *
 * @author Nicolas
 */
public class PersistenceProductController {

    ProductJpaController productJpaController = new ProductJpaController();

    public void createProduct(Product product) {
        productJpaController.create(product);
    }

}
