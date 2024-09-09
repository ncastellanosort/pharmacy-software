<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="flex flex-col min-h-screen">

        <section class="flex-grow flex flex-col items-center justify-center">
            <h1 class="text-8xl font-bold my-12">¡Regístrate!</h1>
            <form action="SvCreateUser" method="POST" class="w-2/3 grid grid-cols-2 gap-6">
                <div class="mb-3">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                    <input type="email" title="Por favor ingrese un correo valido" name="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="Usuario" required />
                </div>
                <div class="mb-3">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Contraseña</label>
                    <input type="password" name="password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="*******" required />
                </div>
                <div class="mb-3">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Confirmar contraseña</label>
                    <input type="password" name="confirmPassword" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="*******" required />
                </div>
                <div class="mb-3">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Nombre de la farmacia</label>
                    <input type="text" name="name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="Farmatodo" required />
                </div>
                <div class="mb-3">
                    <label class="block mb-2 text-sm font-medium text-gray-900">Número de contacto</label>
                    <input type="text" name="phoneNumber" type="tel" inputmode="numeric" pattern="[0-9]+" title="Por favor ingrese solo números" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="3112242552" required />
                </div>
                <div class="mb-3 invisible"></div>
                <div>
                    <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Registrarse</button>
                </div>
            </form>
        </section>

        <footer class="bg-blue-700 w-full">

            <div class="w-full">
                <h2 class="text-white text-center text-sm p-4">Todos los derechos reservados &copy; 2024</h2>
            </div>

        </footer>

    </body>
</html>
