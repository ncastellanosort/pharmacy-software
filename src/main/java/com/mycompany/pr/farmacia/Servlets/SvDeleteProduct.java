/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pr.farmacia.Servlets;

import com.mycompany.pr.farmacia.Controllers.ProductController;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvDeleteProduct", urlPatterns = {"/SvDeleteProduct"})
public class SvDeleteProduct extends HttpServlet {

    ProductController productController = new ProductController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try {
            productController.deleteProductController(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(SvDeleteProduct.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("Products.jsp");
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
