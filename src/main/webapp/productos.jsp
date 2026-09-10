<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><title>Productos - AYB</title>
<style>
body{font-family:Arial;background:#f1edf5;margin:0}
header{background:#b89acb;color:white;padding:22px;text-align:center}
.container{width:94%;margin:25px auto;background:white;padding:20px;border-radius:15px}
.btn{background:#a9d6b8;color:#26352b;padding:9px 13px;border-radius:7px;text-decoration:none}
table{width:100%;border-collapse:collapse;margin-top:20px}
th{background:#b89acb;color:white;padding:12px}td{padding:10px;border-bottom:1px solid #ddd;text-align:center}
.edit{background:#ddd1ec;padding:7px;border-radius:5px;text-decoration:none}
.delete{background:#f2c5c5;padding:7px;border-radius:5px;text-decoration:none}
</style>
</head>
<body>
<header><h1>Tienda de Ropa AYB</h1><p>Gestión de Productos</p></header>
<div class="container">
<a class="btn" href="registrarProducto.jsp">+ Registrar producto</a>
<table>
<tr><th>ID</th><th>Nombre</th><th>Categoría</th><th>Talla</th><th>Color</th><th>Precio</th><th>Stock</th><th>Acciones</th></tr>
<c:forEach var="p" items="${productos}">
<tr>
<td>${p.idProducto}</td><td>${p.nombre}</td><td>${p.categoria}</td><td>${p.talla}</td>
<td>${p.color}</td><td>$ ${p.precio}</td><td>${p.stock}</td>
<td>
<a class="edit" href="ProductoServlet?accion=editar&id=${p.idProducto}">Editar</a>
<a class="delete" href="ProductoServlet?accion=eliminar&id=${p.idProducto}" onclick="return confirm('¿Eliminar este producto?')">Eliminar</a>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
