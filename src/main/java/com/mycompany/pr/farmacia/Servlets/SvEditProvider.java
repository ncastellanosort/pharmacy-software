/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pr.farmacia.Servlets;

import com.mycompany.pr.farmacia.Controllers.ProviderController;
import com.mycompany.pr.farmacia.Entities.Provider;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SvEditProvider", urlPatterns = {"/SvEditProvider"})
public class SvEditProvider extends HttpServlet {

    ProviderController providerController = new ProviderController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Provider providerToEdit = (Provider) request.getSession().getAttribute("providerToEdit");

        String newName = request.getParameter("newName");
        String newContactName = request.getParameter("newContactName");
        String newPhone = request.getParameter("newPhone");
        String newEmail = request.getParameter("newEmail");
        String newAddress = request.getParameter("newAddress");

        providerToEdit.setName(newName);
        providerToEdit.setContactName(newContactName);
        providerToEdit.setPhone(newPhone);
        providerToEdit.setEmail(newEmail);
        providerToEdit.setAddress(newAddress);

        try {
            providerController.editProviderController(providerToEdit);
        } catch (Exception ex) {
            Logger.getLogger(SvEditProvider.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("Providers.jsp");

        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
