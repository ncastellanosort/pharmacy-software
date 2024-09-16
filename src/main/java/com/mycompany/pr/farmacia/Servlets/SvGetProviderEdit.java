/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pr.farmacia.Servlets;

import com.mycompany.pr.farmacia.Controllers.ProviderController;
import com.mycompany.pr.farmacia.Entities.Provider;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SvGetProviderEdit", urlPatterns = {"/SvGetProviderEdit"})
public class SvGetProviderEdit extends HttpServlet {

    ProviderController providerController = new ProviderController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int providerId = Integer.parseInt(request.getParameter("id"));

        Provider provider = providerController.getProviderController(providerId);

        request.getSession().setAttribute("providerToEdit", provider);

        response.sendRedirect("EditProvider.jsp");

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
