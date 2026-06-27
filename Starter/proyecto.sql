-- ============================================
-- PROYECTO SEMANA 01 - MERCADO CAMPESINO
-- ============================================

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS vendors;

-- ============================================
-- TABLA PRINCIPAL: PRODUCTS
-- ============================================
CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL,
    stock INTEGER NOT NULL
);

-- ============================================
-- TABLA: CUSTOMERS
-- ============================================
CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    city TEXT NOT NULL
);

-- ============================================
-- TABLA: VENDORS
-- ============================================
CREATE TABLE vendors (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    farm_name TEXT NOT NULL,
    phone TEXT NOT NULL
);

-- ============================================
-- INSERT PRODUCTS (50 registros)
-- ============================================
INSERT INTO products (id, name, category, price, stock) VALUES
(1, 'Tomate chonto', 'Verduras', 1800, 50),
(2, 'Papa criolla', 'Tubérculos', 2200, 80),
(3, 'Zanahoria', 'Verduras', 1000, 60),
(4, 'Lechuga crespa', 'Verduras', 1500, 40),
(5, 'Cebolla cabezona', 'Verduras', 1300, 70),
(6, 'Mango tommy', 'Frutas', 2500, 30),
(7, 'Banano bocadillo', 'Frutas', 1200, 90),
(8, 'Piña miel', 'Frutas', 3000, 25),
(9, 'Uva isabella', 'Frutas', 4500, 20),
(10, 'Arroz campesino', 'Granos', 3200, 100),
(11, 'Frijol cargamanto', 'Granos', 4800, 60),
(12, 'Lenteja roja', 'Granos', 3500, 70),
(13, 'Ajo fresco', 'Condimentos', 900, 120),
(14, 'Cilantro', 'Hierbas', 700, 200),
(15, 'Yuca', 'Tubérculos', 1700, 55),
(16, 'Mazorca', 'Verduras', 1200, 65),
(17, 'Espinaca', 'Verduras', 1400, 35),
(18, 'Pepino cohombro', 'Verduras', 1600, 45),
(19, 'Remolacha', 'Verduras', 1100, 50),
(20, 'Repollo', 'Verduras', 1800, 30),
(21, 'Fresa', 'Frutas', 5000, 20),
(22, 'Papaya', 'Frutas', 2800, 40),
(23, 'Guayaba', 'Frutas', 2000, 55),
(24, 'Maracuyá', 'Frutas', 3500, 25),
(25, 'Lulo', 'Frutas', 4200, 20),
(26, 'Panela', 'Derivados', 2500, 60),
(27, 'Miel de abeja', 'Derivados', 8000, 15),
(28, 'Queso campesino', 'Lácteos', 7000, 20),
(29, 'Leche fresca', 'Lácteos', 3000, 50),
(30, 'Huevos criollos', 'Proteína', 12000, 40),
(31, 'Pollo campesino', 'Proteína', 18000, 25),
(32, 'Carne de res', 'Proteína', 22000, 30),
(33, 'Pescado fresco', 'Proteína', 15000, 20),
(34, 'Aguacate hass', 'Frutas', 3500, 60),
(35, 'Limón', 'Frutas', 1200, 90),
(36, 'Naranja', 'Frutas', 1800, 80),
(37, 'Mandarina', 'Frutas', 2000, 70),
(38, 'Tomate cherry', 'Verduras', 4000, 25),
(39, 'Cebolla larga', 'Verduras', 1500, 65),
(40, 'Acelga', 'Verduras', 1300, 30),
(41, 'Hierbabuena', 'Hierbas', 800, 40),
(42, 'Orégano', 'Hierbas', 900, 35),
(43, 'Albahaca', 'Hierbas', 1000, 30),
(44, 'Chocolate artesanal', 'Derivados', 6000, 20),
(45, 'Café orgánico', 'Derivados', 12000, 50),
(46, 'Arepas de maíz', 'Procesados', 5000, 45),
(47, 'Tamales', 'Procesados', 8000, 30),
(48, 'Empanadas', 'Procesados', 3000, 60),
(49, 'Jugo natural', 'Bebidas', 4000, 50),
(50, 'Chicha artesanal', 'Bebidas', 3500, 40);

-- ============================================
-- INSERT CUSTOMERS (5 registros)
-- ============================================
INSERT INTO customers (id, name, phone, city) VALUES
(1, 'Juan Perez', '3101111111', 'Bogotá'),
(2, 'Maria Gomez', '3102222222', 'Soacha'),
(3, 'Carlos Ruiz', '3103333333', 'Chía'),
(4, 'Ana Torres', '3104444444', 'Cajicá'),
(5, 'Pedro Lopez', '3105555555', 'Zipaquirá');

-- ============================================
-- INSERT VENDORS (5 registros)
-- ============================================
INSERT INTO vendors (id, name, farm_name, phone) VALUES
(1, 'Luis Herrera', 'Finca El Trigal', '3201111111'),
(2, 'Diana Morales', 'Huerta San Jose', '3202222222'),
(3, 'Jorge Castillo', 'Granja La Esperanza', '3203333333'),
(4, 'Luisa Fernandez', 'Campo Verde', '3204444444'),
(5, 'Andres Ramos', 'Finca El Rosario', '3205555555');

-- ============================================
-- CONSULTAS (SIN *)
-- ============================================

SELECT id, name, category, price, stock
FROM products;

SELECT id, name, phone, city
FROM customers;

SELECT id, name, farm_name, phone
FROM vendors;

SELECT COUNT(id) AS total_products
FROM products;

SELECT COUNT(id) AS total_customers
FROM customers;

SELECT COUNT(id) AS total_vendors
FROM vendors;

-- OPCIONALES (MEJORAN NOTA)
SELECT id, name, price
FROM products
ORDER BY price DESC;

SELECT id, name, city
FROM customers
ORDER BY city ASC;