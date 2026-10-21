CREATE DATABASE IF NOT EXISTS reto;

USE reto;

-- 1. Tabla de Usuarios
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);

-- 2. Tabla de Productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio FLOAT NOT NULL
);

-- 3. Tabla de Compras
CREATE TABLE compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_producto INT NOT NULL,
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Relaciones (Claves Foráneas)
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON DELETE CASCADE
);

-- Insertar 20 productos (Componentes y Periféricos)
INSERT INTO productos (nombre, categoria, precio) VALUES
-- Componentes
('NVIDIA GeForce RTX 4070 Ti Super', 'Tarjeta Gráfica', 899.99),
('AMD Radeon RX 7800 XT', 'Tarjeta Gráfica', 529.99),
('Intel Core i7-14700K', 'Procesador', 419.50),
('AMD Ryzen 7 7800X3D', 'Procesador', 389.00),
('Corsair Vengeance DDR5 32GB (2x16GB) 6000MHz', 'Memoria RAM', 124.99),
('Kingston FURY Beast DDR4 16GB (2x8GB) 3200MHz', 'Memoria RAM', 45.00),
('Samsung 990 PRO 2TB NVMe M.2', 'Almacenamiento', 179.99),
('Crucial BX500 1TB SSD SATA', 'Almacenamiento', 62.50),
('ASUS ROG Strix B650-A Gaming WiFi', 'Placa Base', 239.90),
('MSI MAG A850GL PCIE5 850W 80 Plus Gold', 'Fuente de Alimentación', 119.99),

-- Periféricos
('LG Ultragear 27GP850-B 27" QHD 185Hz', 'Monitor', 299.00),
('AOC 24G2SP 23.8" FHD 165Hz', 'Monitor', 139.99),
('Logitech G PRO X SUPERLIGHT 2', 'Ratón', 149.00),
('Razer DeathAdder V3 Pro', 'Ratón', 129.50),
('Keychron V1 QMK Mechanical Keyboard', 'Teclado', 89.99),
('Corsair K70 RGB PRO Mechanical', 'Teclado', 159.99),
('HyperX Cloud III Wireless', 'Auriculares', 129.99),
('Logitech G435 Lightspeed Wireless', 'Auriculares', 59.90),
('Elgato Wave:3', 'Micrófono', 149.99),
('SteelSeries QCK Heavy XXL', 'Alfombrilla', 29.99);