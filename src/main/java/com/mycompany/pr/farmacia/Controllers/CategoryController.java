/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.Category;
import com.mycompany.pr.farmacia.Persistence.PersistenceCategoryController;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
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

    public void deleteCategoryController(int id) throws NonexistentEntityException {
        persistenceCategoryController.deleteCategory(id);
    }

    public Category getCategoryController(int id) {
        return persistenceCategoryController.getCategory(id);
    }

    public int getAmountOfCategoriesController() {
        return persistenceCategoryController.getAmountOfCategories();
    }

}
