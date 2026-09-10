package com.tiendaayb.servlet;

import com.tiendaayb.dao.ProductoDAO;
import com.tiendaayb.modelo.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/ProductoServlet")
public class ProductoServlet extends HttpServlet {

    private ProductoDAO productoDAO;

    @Override
    public void init() {
        productoDAO = new ProductoDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if ("editar".equals(accion)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Producto producto = productoDAO.consultarPorId(id);
            request.setAttribute("producto", producto);
            request.getRequestDispatcher("editarProducto.jsp").forward(request, response);
        } else if ("eliminar".equals(accion)) {
            int id = Integer.parseInt(request.getParameter("id"));
            productoDAO.eliminarProducto(id);
            response.sendRedirect("ProductoServlet");
        } else {
            request.setAttribute("productos", productoDAO.consultarProductos());
            request.getRequestDispatcher("productos.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");

        try {
            String nombre = request.getParameter("nombre");
            String categoria = request.getParameter("categoria");
            String talla = request.getParameter("talla");
            String color = request.getParameter("color");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int stock = Integer.parseInt(request.getParameter("stock"));

            Producto producto = new Producto();
            producto.setNombre(nombre);
            producto.setCategoria(categoria);
            producto.setTalla(talla);
            producto.setColor(color);
            producto.setPrecio(precio);
            producto.setStock(stock);

            if ("actualizar".equals(accion)) {
                int id = Integer.parseInt(request.getParameter("id"));
                producto.setIdProducto(id);
                productoDAO.actualizarProducto(producto);
            } else {
                productoDAO.insertarProducto(producto);
            }

            response.sendRedirect("ProductoServlet");

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Revise los valores numéricos de precio y stock.");
            request.getRequestDispatcher("registrarProducto.jsp").forward(request, response);
        }
    }
}
