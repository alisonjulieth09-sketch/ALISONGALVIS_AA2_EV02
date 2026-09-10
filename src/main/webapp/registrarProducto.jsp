<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><title>Registrar producto</title>
<style>
body{font-family:Arial;background:#f1edf5}.form{width:500px;margin:40px auto;background:white;padding:30px;border-radius:15px}
h1{color:#8b6b9d}label{display:block;margin-top:12px}input{width:96%;padding:10px;margin-top:5px}
button,.back{margin-top:20px;padding:11px 18px;border:0;border-radius:7px;background:#a9d6b8;text-decoration:none;color:#26352b}
.error{color:#a33}
</style></head>
<body>
<div class="form">
<h1>Registrar producto</h1>
<% if(request.getAttribute("error") != null){ %><p class="error">${error}</p><% } %>
<form action="ProductoServlet" method="post">
<label>Nombre</label><input type="text" name="nombre" required>
<label>Categoría</label><input type="text" name="categoria" required>
<label>Talla</label><input type="text" name="talla" required>
<label>Color</label><input type="text" name="color" required>
<label>Precio</label><input type="number" name="precio" step="0.01" min="0" required>
<label>Stock</label><input type="number" name="stock" min="0" required>
<button type="submit">Guardar</button>
<a class="back" href="ProductoServlet">Cancelar</a>
</form>
</div>
</body></html>
