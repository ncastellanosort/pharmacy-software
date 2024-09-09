<%-- 
    Document   : LoginSuccesful
    Created on : Sep 7, 2024, 12:17:43 AM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.pr.farmacia.Entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Felicidades</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="flex flex-col min-h-screen">

        <% User newUser = (User) request.getSession().getAttribute("newUser");%>

        <section class="flex-grow flex flex-col items-center justify-center">
            <h1 class="text-8xl font-bold my-12">¡Bienvenido <%=newUser.getName()%>!</h1>
            <h2 class="text-xl my-12">¡Ahora podrás manejar tu farmacia aquí dentro!</h2>
            <a href="Login.jsp" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Login</a>
        </section>

        <footer class="bg-blue-700 rounded-lg shadow w-full">
            <div class="w-full">
                <h2 class="text-white text-center text-sm p-4">Todos los derechos reservados &copy; 2024</h2>
            </div>
        </footer>

    </body>
</html>
