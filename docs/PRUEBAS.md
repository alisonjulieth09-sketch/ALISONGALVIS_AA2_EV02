# Pruebas funcionales - EV02

## Prueba 1 - Acceso
Acción: abrir index.jsp.
Resultado esperado: se muestra la pantalla principal de AYB y el acceso a Gestión de Productos.

## Prueba 2 - Consulta (GET)
Acción: ingresar a ProductoServlet.
Resultado esperado: se muestran los productos registrados en MySQL.

## Prueba 3 - Inserción (POST)
Acción: diligenciar el formulario de registro.
Resultado esperado: el producto queda almacenado y aparece en el listado.

## Prueba 4 - Actualización (GET + POST)
Acción: seleccionar Editar, modificar precio o stock y guardar.
Resultado esperado: los datos se actualizan en MySQL.

## Prueba 5 - Eliminación (GET)
Acción: seleccionar Eliminar.
Resultado esperado: el producto desaparece del listado y de la base de datos.

## Prueba 6 - Validación
Acción: dejar campos obligatorios vacíos.
Resultado esperado: el navegador impide enviar el formulario.
