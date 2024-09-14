/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pr.farmacia.Servlets;

import com.mycompany.pr.farmacia.Controllers.CategoryController;
import com.mycompany.pr.farmacia.Controllers.ProductController;
import com.mycompany.pr.farmacia.Entities.Category;
import com.mycompany.pr.farmacia.Entities.Product;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvDeleteCategory", urlPatterns = {"/SvDeleteCategory"})
public class SvDeleteCategory extends HttpServlet {

    CategoryController categoryController = new CategoryController();
    ProductController productController = new ProductController();

    List<Product> productsList = productController.getProductsController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Category category = categoryController.getCategoryController(id);

        boolean categoryInUse = false;
        int amountProductsWithCategory = 0;

        for (Product product : productsList) {
            if (product.getCategory().equals(category.getName())) {
                categoryInUse = true;
                amountProductsWithCategory++;
            }
        }

        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("amountProductsWithCategory", amountProductsWithCategory);

        if (categoryInUse) {
            response.sendRedirect("CategoryInUse.jsp");
        } else {
            try {
                categoryController.deleteCategoryController(id);
                response.sendRedirect("Categories.jsp");
            } catch (NonexistentEntityException ex) {
                Logger.getLogger(SvDeleteCategory.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
