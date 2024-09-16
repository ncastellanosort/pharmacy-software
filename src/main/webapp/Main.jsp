<%@page import="com.mycompany.pr.farmacia.Controllers.Controller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FarmAdmin Pro</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <%
        Controller controller = new Controller();
    %>
    <body class="flex flex-col min-h-screen bg-gray-100">
        <div class="flex-grow flex items-center justify-center">
            <div class="text-center">
                <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">FarmAdmin Pro</h1>
                <p class="mb-8 text-xl font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-400">Gestiona todos los aspectos de tu farmacia de manera sencilla, desde el manejo de productos hasta la gestión de proveedores. Nuestro sistema ofrece una solución integral para optimizar las operaciones de tu farmacia y asegurar una administración eficiente.</p>
                <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0">
                    <a href="Register.jsp" class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900">
                        Registrarse
                        <svg class="w-3.5 h-3.5 ms-2 rtl:rotate-180 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                        </svg>
                    </a>
                    <a href="Login.jsp" class="py-3 px-5 sm:ms-4 text-base font-medium ml-4 text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">
                        Iniciar sesión
                    </a>  
                </div>
            </div>
        </div>
        <footer class="bg-blue-700 w-full py-4">
            <div class="w-full text-center">
                <h2 class="text-white text-base">Todos los derechos reservados &copy; 2024</h2>
            </div>
        </footer>
    </body>
</html>
