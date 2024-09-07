<%@page import="com.mycompany.pr.farmacia.Controllers.UserController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="flex flex-col min-h-screen">
        <% UserController userController = new UserController();%>

        <section class="flex-grow flex flex-col items-center justify-center">
            <h1 class="text-8xl font-bold my-12">¡Bienvenido!</h1>
            <form class="w-1/3" action="SvValidateUser" method="POST">
                <div class="mb-5">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                    <input type="text" name="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="Usuario" required />
                </div>
                <div class="mb-5">
                    <label for="password" class="block mb-2 text-sm font-medium text-gray-900">Contraseña</label>
                    <input type="password" name="password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="*******" required />
                </div>
                <div class="flex items-start mb-5">
                    <label class="text-sm text-gray-900">¿No tienes una cuenta? <a href="Register.jsp" class="text-blue-500 underline"> Regístrate ahora</a></label>
                </div>
                <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Ingresar</button>
            </form>
        </section>

        <footer class="bg-blue-700 text-white text-center py-4 mt-auto">
            <p>Todos los derechos reservados &copy; 2024</p>
        </footer>
    </body>
</html>
