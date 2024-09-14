/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.Category;
import com.mycompany.pr.farmacia.Persistence.PersistenceCategoryController;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class CategoryController {

    PersistenceCategoryController persistenceCategoryController = new PersistenceCategoryController();

    public void createCategoryController(Category category) {
        persistenceCategoryController.createCategory(category);
    }

    public List<Category> getCategoriesController() {
        return persistenceCategoryController.getCategories();
    }
}
