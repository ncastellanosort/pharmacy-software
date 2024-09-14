/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Persistence;

import com.mycompany.pr.farmacia.Entities.Category;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class PersistenceCategoryController {

    CategoryJpaController categoryJpaController = new CategoryJpaController();

    public void createCategory(Category category) {
        categoryJpaController.create(category);
    }

    public List<Category> getCategories() {
        return categoryJpaController.findCategoryEntities();
    }
}
