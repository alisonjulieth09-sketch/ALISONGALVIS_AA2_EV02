<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.tiendaayb.modelo.Producto" %>
<%
Producto p = (Producto) request.getAttribute("producto");
%>
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><title>Editar producto</title>
<style>
body{font-family:Arial;background:#f1edf5}.form{width:500px;margin:40px auto;background:white;padding:30px;border-radius:15px}
h1{color:#8b6b9d}label{display:block;margin-top:12px}input{width:96%;padding:10px;margin-top:5px}
button,.back{margin-top:20px;padding:11px 18px;border:0;border-radius:7px;background:#a9d6b8;text-decoration:none;color:#26352b}
</style></head>
<body><div class="form">
<h1>Editar producto</h1>
<form action="ProductoServlet" method="post">
<input type="hidden" name="accion" value="actualizar">
<input type="hidden" name="id" value="<%=p.getIdProducto()%>">
<label>Nombre</label><input type="text" name="nombre" value="<%=p.getNombre()%>" required>
<label>Categoría</label><input type="text" name="categoria" value="<%=p.getCategoria()%>" required>
<label>Talla</label><input type="text" name="talla" value="<%=p.getTalla()%>" required>
<label>Color</label><input type="text" name="color" value="<%=p.getColor()%>" required>
<label>Precio</label><input type="number" name="precio" step="0.01" value="<%=p.getPrecio()%>" required>
<label>Stock</label><input type="number" name="stock" value="<%=p.getStock()%>" required>
<button type="submit">Actualizar</button>
<a class="back" href="ProductoServlet">Cancelar</a>
</form>
</div></body></html>
