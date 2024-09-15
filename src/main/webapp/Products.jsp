<%-- 
    Document   : Products
    Created on : Sep 8, 2024, 5:34:17 PM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.pr.farmacia.Entities.Category"%>
<%@page import="com.mycompany.pr.farmacia.Controllers.CategoryController"%>
<%@page import="com.mycompany.pr.farmacia.Controllers.ProductController"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pr.farmacia.Entities.Product"%>
<%@page import="com.mycompany.pr.farmacia.Entities.Product"%>
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
        <%
            User userSession = (User) request.getSession().getAttribute("userSession");
            ProductController productController = new ProductController();
        %>
        <aside id="logo-sidebar" class="fixed top-0 left-0 z-40 w-48 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
            <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
                <a href="https://flowbite.com/" class="flex items-center ps-2.5 mb-5">
                    <img src="https://flowbite.com/docs/images/logo.svg" class="h-6 me-3 sm:h-7" alt="Flowbite Logo" />
                    <span class="self-center text-xl ml-2 font-semibold whitespace-nowrap dark:text-white"><%= userSession.getName()%></span>
                </a>
                <ul class="space-y-2 font-medium">
                    <li>
                        <a href="Index.jsp" class="flex items-center px-1 py-1 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="w-7 h-7 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 3l9 8h-3v8h-4v-5h-4v5H6v-8H3l9-8z"/>
                            </svg>
                            <span class="ml-1 text-base">Inicio</span>
                        </a>

                    </li>
                    <li>
                        <a href="Products.jsp" class="flex items-center pr-2 py-2 pl-1.5 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M18.045 3.007 12.31 3a1.965 1.965 0 0 0-1.4.585l-7.33 7.394a2 2 0 0 0 0 2.805l6.573 6.631a1.957 1.957 0 0 0 1.4.585 1.965 1.965 0 0 0 1.4-.585l7.409-7.477A2 2 0 0 0 21 11.479v-5.5a2.972 2.972 0 0 0-2.955-2.972Zm-2.452 6.438a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"/>
                            </svg>

                            <span class="ms-3 ml-1.5 text-base">Productos</span>
                        </a>
                    </li>
                    <li>
                        <a href="Categories.jsp" class="flex items-center pr-2 py-2 pl-1.5 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">

                            <svg class="w-[22px] h-[22px] text-gray-500 dark:text-white transition duration-75 dark:text-gray-400 group-hover:text-gray-900" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M5.005 10.19a1 1 0 0 1 1 1v.233l5.998 3.464L18 11.423v-.232a1 1 0 1 1 2 0V12a1 1 0 0 1-.5.866l-6.997 4.042a1 1 0 0 1-1 0l-6.998-4.042a1 1 0 0 1-.5-.866v-.81a1 1 0 0 1 1-1ZM5 15.15a1 1 0 0 1 1 1v.232l5.997 3.464 5.998-3.464v-.232a1 1 0 1 1 2 0v.81a1 1 0 0 1-.5.865l-6.998 4.042a1 1 0 0 1-1 0L4.5 17.824a1 1 0 0 1-.5-.866v-.81a1 1 0 0 1 1-1Z" clip-rule="evenodd"/>
                            <path d="M12.503 2.134a1 1 0 0 0-1 0L4.501 6.17A1 1 0 0 0 4.5 7.902l7.002 4.047a1 1 0 0 0 1 0l6.998-4.04a1 1 0 0 0 0-1.732l-6.997-4.042Z"/>
                            </svg>


                            <span class="ms-3 ml-1.5 text-base">Categorías</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">

                            <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 18">
                            <path d="M14 2a3.963 3.963 0 0 0-1.4.267 6.439 6.439 0 0 1-1.331 6.638A4 4 0 1 0 14 2Zm1 9h-1.264A6.957 6.957 0 0 1 15 15v2a2.97 2.97 0 0 1-.184 1H19a1 1 0 0 0 1-1v-1a5.006 5.006 0 0 0-5-5ZM6.5 9a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM8 10H5a5.006 5.006 0 0 0-5 5v2a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-2a5.006 5.006 0 0 0-5-5Z"/>
                            </svg>
                            <span class="flex-1 ms-3 whitespace-nowrap ml-2 text-base">Clientes</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                            <path d="m17.418 3.623-.018-.008a6.713 6.713 0 0 0-2.4-.569V2h1a1 1 0 1 0 0-2h-2a1 1 0 0 0-1 1v2H9.89A6.977 6.977 0 0 1 12 8v5h-2V8A5 5 0 1 0 0 8v6a1 1 0 0 0 1 1h8v4a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-4h6a1 1 0 0 0 1-1V8a5 5 0 0 0-2.582-4.377ZM6 12H4a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Z"/>
                            </svg>
                            <span class="flex-1 ms-3 whitespace-nowrap ml-2 text-base">Compras</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center pr-2 py-2 pl-1.5 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M5.535 7.677c.313-.98.687-2.023.926-2.677H17.46c.253.63.646 1.64.977 2.61.166.487.312.953.416 1.347.11.42.148.675.148.779 0 .18-.032.355-.09.515-.06.161-.144.3-.243.412-.1.111-.21.192-.324.245a.809.809 0 0 1-.686 0 1.004 1.004 0 0 1-.324-.245c-.1-.112-.183-.25-.242-.412a1.473 1.473 0 0 1-.091-.515 1 1 0 1 0-2 0 1.4 1.4 0 0 1-.333.927.896.896 0 0 1-.667.323.896.896 0 0 1-.667-.323A1.401 1.401 0 0 1 13 9.736a1 1 0 1 0-2 0 1.4 1.4 0 0 1-.333.927.896.896 0 0 1-.667.323.896.896 0 0 1-.667-.323A1.4 1.4 0 0 1 9 9.74v-.008a1 1 0 0 0-2 .003v.008a1.504 1.504 0 0 1-.18.712 1.22 1.22 0 0 1-.146.209l-.007.007a1.01 1.01 0 0 1-.325.248.82.82 0 0 1-.316.08.973.973 0 0 1-.563-.256 1.224 1.224 0 0 1-.102-.103A1.518 1.518 0 0 1 5 9.724v-.006a2.543 2.543 0 0 1 .029-.207c.024-.132.06-.296.11-.49.098-.385.237-.85.395-1.344ZM4 12.112a3.521 3.521 0 0 1-1-2.376c0-.349.098-.8.202-1.208.112-.441.264-.95.428-1.46.327-1.024.715-2.104.958-2.767A1.985 1.985 0 0 1 6.456 3h11.01c.803 0 1.539.481 1.844 1.243.258.641.67 1.697 1.019 2.72a22.3 22.3 0 0 1 .457 1.487c.114.433.214.903.214 1.286 0 .412-.072.821-.214 1.207A3.288 3.288 0 0 1 20 12.16V19a2 2 0 0 1-2 2h-6a1 1 0 0 1-1-1v-4H8v4a1 1 0 0 1-1 1H6a2 2 0 0 1-2-2v-6.888ZM13 15a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-2Z" clip-rule="evenodd"/>
                            </svg>

                            <span class="flex-1 ms-3 whitespace-nowrap ml-1.5 text-base">Proveedores</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center pr-2 py-2 pl-1.5 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M7 2a2 2 0 0 0-2 2v1a1 1 0 0 0 0 2v1a1 1 0 0 0 0 2v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1a2 2 0 0 0 2 2h11a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H7Zm3 8a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm-1 7a3 3 0 0 1 3-3h2a3 3 0 0 1 3 3 1 1 0 0 1-1 1h-6a1 1 0 0 1-1-1Z" clip-rule="evenodd"/>
                            </svg>

                            <span class="flex-1 ms-3 whitespace-nowrap ml-1.5 text-base">Empleados</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M5 8a4 4 0 1 1 7.796 1.263l-2.533 2.534A4 4 0 0 1 5 8Zm4.06 5H7a4 4 0 0 0-4 4v1a2 2 0 0 0 2 2h2.172a2.999 2.999 0 0 1-.114-1.588l.674-3.372a3 3 0 0 1 .82-1.533L9.06 13Zm9.032-5a2.907 2.907 0 0 0-2.056.852L9.967 14.92a1 1 0 0 0-.273.51l-.675 3.373a1 1 0 0 0 1.177 1.177l3.372-.675a1 1 0 0 0 .511-.273l6.07-6.07a2.91 2.91 0 0 0-.944-4.742A2.907 2.907 0 0 0 18.092 8Z" clip-rule="evenodd"/>
                            </svg>

                            <span class="flex-1 ms-3 whitespace-nowrap ml-1 text-base">Cuenta</span>
                        </a>
                    </li>
                    <li>
                        <a href="Main.jsp" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 16">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 8h11m0 0L8 4m4 4-4 4m4-11h3a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-3"/>
                            </svg>
                            <span class="flex-1 ms-3 whitespace-nowrap ml-2 text-base">Salir</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>
        <section class="p-4 sm:ml-48">
            <div class="bg-whitedark:bg-gray-900 p-4">

                <div class="flex flex-row justify-between items-center p-8 md:p-12 bg-gray-50 border border-gray-200 rounded-lg overflow-hidden">

                    <h1 class="text-3xl text-gray-900 md:text-5xl font-extrabold tracking-tight leading-none text-black dark:text-white">Productos</h1>

                    <button type="submit" class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        <a href="CreateProduct.jsp" class="text-base">Agregar un nuevo producto</a>
                        <svg class="me-1 -ms-1 w-5 h-5 ml-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd"></path></svg>
                    </button>

                </div>


                <div class="flex flex-row p-4 mt-8">

                    <form class="w-full max-w-md mx-auto flex flex-row items-center justify-between">
                        <label for="countries" class="text-base font-medium text-gray-900 dark:text-white mr-2">Ordenar por:</label>
                        <select id="countries" class="bg-gray-50 border border-gray-300 text-gray-900 text-base rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                            <option selected class="text-base font-normal">ID</option>
                            <option class="text-base font-normal" value="name">Nombre</option>
                            <option class="text-base font-normal" value="brand">Marca</option>
                            <option class="text-base font-normal" value="price_asc">Precio Menor a Mayor</option>
                            <option class="text-base font-normal" value="price_desc">Precio Mayor a Menor</option>
                            <option class="text-base font-normal" value="stock_asc">Stock Menor a Mayor</option>
                            <option class="text-base font-normal" value="stock_desc">Stock Mayor a Menor</option>
                        </select>
                    </form>


                    <form class="w-full max-w-md mx-auto flex flex-row items-center justify-between">
                        <label for="countries" class="text-base font-medium text-gray-900 dark:text-white mr-2">Categoría:</label>
                        <select id="countries" class="bg-gray-50 border border-gray-300 text-gray-900 text-base rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                            <option selected class="text-base font-normal">Aleatorio</option>
                            <%
                                CategoryController categoryController = new CategoryController();
                                List<Category> categoriesList = categoryController.getCategoriesController();
                                for (Category category : categoriesList) {

                            %>
                            <option class="text-base font-normal" value="<%= category.getName()%>"><%= category.getName()%></option>
                            <%}%>
                        </select>
                    </form>
                </div>

                <div class="mx-auto mt-8 max-w-screen-xl flex flex-wrap justify-center">
                    <div class="relative overflow-x-auto sm:rounded-lg border border-gray-200">
                        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                            <caption class="p-5 text-lg font-semibold text-left rtl:text-right text-gray-900 bg-white dark:text-white dark:bg-gray-800">
                                Cantidad total de productos: <%= productController.getAmountOfProductsController()%>                             
                            </caption>
                            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                <tr>
                                    <th scope="col" class="px-6 py-3">
                                        ID
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Código
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Categoría
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Marca
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Nombre
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Descripción
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Precio
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Stock
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Editar
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Eliminar
                                    </th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    List<Product> productsList = productController.getProductsController();
                                    for (Product product : productsList) {
                                %>

                                <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <%= product.getId()%>
                                    </th>
                                    <td class="px-6 py-4">
                                        <%= product.getCode()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getCategory()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getBrand()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getName()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getDescription()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getPrice()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%= product.getStock()%>
                                    </td>
                                    <td class="px-6 py-4">
                                        <a href=href="SvGetProductEdit?id=<%= product.getId()%>" class="font-medium text-green-700 dark:text-green-700 hover:underline">Editar</a>
                                    </td>
                                    <td class="px-6 py-4">
                                        <a href="SvDeleteProduct?id=<%=product.getId()%>" class="font-medium text-red-500 hover:text-red-500 hover:underline">Eliminar</a>
                                    </td>
                                </tr>

                                <%}%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
