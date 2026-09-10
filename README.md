[README.md](https://github.com/user-attachments/files/32064182/README.md)
# Sistema de Gestión de Ventas y Clientes - Tienda de Ropa AYB

## Evidencia
GA7-220501096-AA2-EV02 - Módulos de software codificados y probados.

## Módulo
Gestión de Productos.

## Tecnologías
- Java 17
- Servlets Jakarta
- JSP
- JSTL
- MySQL
- JDBC
- Maven
- Git/GitHub

## Funcionalidades
- Registrar productos mediante formulario JSP/HTML y POST.
- Consultar productos mediante GET.
- Editar productos mediante GET para cargar y POST para actualizar.
- Eliminar productos mediante GET.
- Persistencia en MySQL mediante JDBC y PreparedStatement.

## Instalación
1. Instalar JDK 17, Maven, MySQL y Apache Tomcat 10.1 o compatible con Jakarta Servlet 6.
2. Crear la base de datos ejecutando `database/tienda_ayb.sql`.
3. Revisar usuario y contraseña de MySQL en `ConexionBD.java`.
4. Ejecutar `mvn clean package`.
5. Copiar `target/tienda-ayb-ev02.war` a la carpeta `webapps` de Tomcat.
6. Iniciar Tomcat y abrir:
   `http://localhost:8080/tienda-ayb-ev02/`

## Versionamiento
Comandos sugeridos:
git init
git add .
git commit -m "Estructura inicial proyecto AYB EV02"
git branch -M main
git remote add origin URL_DEL_REPOSITORIO
git push -u origin main
