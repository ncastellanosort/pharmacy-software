<%-- 
    Document   : Products
    Created on : Sep 8, 2024, 5:34:17 PM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.pr.farmacia.Entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body>
        <% User userSession = (User) request.getSession().getAttribute("userSession");%>
        
        <section class="flex flex-col items-center">
            <h1 class="text-8xl font-bold my-12">Productos</h1>                   
        </section>

    </body>
</html>
