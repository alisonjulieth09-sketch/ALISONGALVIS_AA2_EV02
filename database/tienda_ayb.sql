CREATE DATABASE IF NOT EXISTS tienda_ayb;
USE tienda_ayb;

CREATE TABLE IF NOT EXISTS producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    talla VARCHAR(20) NOT NULL,
    color VARCHAR(40) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO producto (nombre, categoria, talla, color, precio, stock) VALUES
('Camiseta básica', 'Camisetas', 'M', 'Blanco', 45000, 15),
('Jean clásico', 'Jeans', '32', 'Azul', 95000, 10),
('Vestido casual', 'Vestidos', 'S', 'Lila', 85000, 8);
