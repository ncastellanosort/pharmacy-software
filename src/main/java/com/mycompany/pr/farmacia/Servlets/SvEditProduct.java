/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pr.farmacia.Servlets;

import com.mycompany.pr.farmacia.Controllers.ProductController;
import com.mycompany.pr.farmacia.Entities.Product;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SvEditProduct", urlPatterns = {"/SvEditProduct"})
public class SvEditProduct extends HttpServlet {
    
    ProductController productController = new ProductController();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Product productToEdit = (Product) request.getSession().getAttribute("productToEdit");
        String newCode = request.getParameter("newCode");
        String newProvider = request.getParameter("newProvider");
        String newName = request.getParameter("newName");
        String newBrand = request.getParameter("newBrand");
        int newStock = Integer.parseInt(request.getParameter("newStock"));
        double newPrice = Double.parseDouble(request.getParameter("newPrice"));
        String newCategory = request.getParameter("newCategory");
        String newDescription = request.getParameter("newDescription");
        
        productToEdit.setCode(newCode);
        productToEdit.setName(newName);
        productToEdit.setProvider(newProvider);
        productToEdit.setBrand(newBrand);
        productToEdit.setStock(newStock);
        productToEdit.setPrice(newPrice);
        productToEdit.setCategory(newCategory);
        productToEdit.setDescription(newDescription);
        
        try {
            productController.editProductController(productToEdit);
        } catch (Exception ex) {
            Logger.getLogger(SvEditProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("Products.jsp");
        
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
