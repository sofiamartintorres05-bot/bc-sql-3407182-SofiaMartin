-- =========================================================
-- PROYECTO SEMANAL: CONSULTAS SELECT
-- Semana 04 — SELECT, WHERE, ORDER BY, LIMIT/OFFSET
-- Dominio: Mercado Campesino
-- =========================================================

-- =========================================================
-- ELIMINAR TABLAS SI EXISTEN
-- =========================================================

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS vendors;

-- =========================================================
-- CREACIÓN DE TABLAS
-- =========================================================

CREATE TABLE vendors (
    vendor_id      INTEGER PRIMARY KEY,
    vendor_name    TEXT NOT NULL,
    phone          TEXT NOT NULL,
    city           TEXT NOT NULL
);

CREATE TABLE customers (
    customer_id    INTEGER PRIMARY KEY,
    customer_name  TEXT NOT NULL,
    email          TEXT NOT NULL,
    city           TEXT NOT NULL
);

CREATE TABLE products (
    product_id     INTEGER PRIMARY KEY,
    vendor_id      INTEGER NOT NULL,
    product_name   TEXT NOT NULL,
    category       TEXT NOT NULL,
    price          REAL NOT NULL,
    stock          INTEGER NOT NULL,

    FOREIGN KEY (vendor_id)
        REFERENCES vendors(vendor_id)
);

CREATE TABLE sales (
    sale_id        INTEGER PRIMARY KEY,
    product_id     INTEGER NOT NULL,
    customer_id    INTEGER NOT NULL,
    quantity       INTEGER NOT NULL,
    sale_date      TEXT NOT NULL,
    total          REAL NOT NULL,

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- =========================================================
-- INSERTAR VENDEDORES
-- =========================================================

INSERT INTO vendors (
    vendor_id,
    vendor_name,
    phone,
    city
)
VALUES
    (1, 'Juan Perez',      '3001234567', 'Bogota'),
    (2, 'Maria Gomez',     '3019876543', 'Tunja'),
    (3, 'Carlos Ruiz',     '3024567891', 'Villavicencio'),
    (4, 'Ana Torres',      '3106549872', 'Pasto'),
    (5, 'Luis Martinez',   '3117894561', 'Cali'),
    (6, 'Andres Silva',    '3204567890', 'Neiva'),
    (7, 'Paula Rios',      '3216549870', 'Ibague'),
    (8, 'Jorge Medina',    '3227412589', 'Manizales'),
    (9, 'Diana Vargas',    '3239517536', 'Armenia'),
    (10, 'Ricardo Lopez',  '3248527416', 'Bucaramanga');

-- =========================================================
-- INSERTAR CLIENTES
-- =========================================================

INSERT INTO customers (
    customer_id,
    customer_name,
    email,
    city
)
VALUES
    (1, 'Sofia Ramirez',   'sofia@email.com',   'Bogota'),
    (2, 'Pedro Castro',    'pedro@email.com',   'Medellin'),
    (3, 'Laura Diaz',      'laura@email.com',   'Cali'),
    (4, 'Miguel Herrera',  'miguel@email.com',  'Pereira'),
    (5, 'Camila Rojas',    'camila@email.com',  'Tunja'),
    (6, 'Daniel Torres',   'daniel@email.com',  'Bogota'),
    (7, 'Valentina Mora',  'valen@email.com',   'Cucuta'),
    (8, 'Felipe Gomez',    'felipe@email.com',  'Neiva'),
    (9, 'Natalia Ruiz',    'natalia@email.com', 'Ibague'),
    (10, 'Kevin Perez',    'kevin@email.com',   'Cali');

-- =========================================================
-- INSERTAR PRODUCTOS (30 FILAS)
-- =========================================================

INSERT INTO products (
    product_id,
    vendor_id,
    product_name,
    category,
    price,
    stock
)
VALUES
    (1, 1, 'Papa criolla', 'Tuberculos', 2500, 100),
    (2, 1, 'Yuca', 'Tuberculos', 1800, 80),
    (3, 2, 'Tomate', 'Verduras', 3200, 60),
    (4, 2, 'Lechuga', 'Verduras', 2000, 50),
    (5, 3, 'Mora', 'Frutas', 4500, 40),
    (6, 3, 'Fresa', 'Frutas', 5000, 35),
    (7, 4, 'Queso campesino', 'Lacteos', 12000, 25),
    (8, 4, 'Leche fresca', 'Lacteos', 4000, 70),
    (9, 5, 'Huevos campesinos', 'Avicolas', 15000, 45),
    (10, 5, 'Pollo campesino', 'Carnes', 28000, 20),
    (11, 1, 'Cebolla larga', 'Verduras', 2200, 55),
    (12, 2, 'Banano', 'Frutas', 3000, 90),
    (13, 3, 'Aguacate hass', 'Frutas', 6000, 30),
    (14, 4, 'Mantequilla artesanal', 'Lacteos', 9000, 18),
    (15, 5, 'Panela organica', 'Dulces', 3500, 75),
    (16, 6, 'Cafe organico', 'Bebidas', 18000, 40),
    (17, 6, 'Chocolate artesanal', 'Dulces', 7000, 35),
    (18, 7, 'Mandarina', 'Frutas', 2800, 60),
    (19, 7, 'Naranja', 'Frutas', 2600, 65),
    (20, 8, 'Espinaca', 'Verduras', 2300, 45),
    (21, 8, 'Repollo', 'Verduras', 3100, 38),
    (22, 9, 'Miel natural', 'Dulces', 15000, 22),
    (23, 9, 'Maiz', 'Granos', 4200, 55),
    (24, 10, 'Frijol rojo', 'Granos', 6500, 42),
    (25, 10, 'Arroz integral', 'Granos', 5800, 50),
    (26, 6, 'Pepino', 'Verduras', 1900, 70),
    (27, 7, 'Piña', 'Frutas', 4800, 33),
    (28, 8, 'Guayaba', 'Frutas', 3900, 41),
    (29, 9, 'Quesillo', 'Lacteos', 11000, 27),
    (30, 10, 'Avena artesanal', 'Cereales', 8500, 36);

-- =========================================================
-- INSERTAR VENTAS (30 FILAS)
-- =========================================================

INSERT INTO sales (
    sale_id,
    product_id,
    customer_id,
    quantity,
    sale_date,
    total
)
VALUES
    (1, 1, 1, 3, '2026-05-01', 7500),
    (2, 3, 2, 2, '2026-05-01', 6400),
    (3, 5, 3, 1, '2026-05-02', 4500),
    (4, 7, 4, 1, '2026-05-02', 12000),
    (5, 9, 5, 2, '2026-05-03', 30000),
    (6, 2, 6, 4, '2026-05-03', 7200),
    (7, 4, 7, 2, '2026-05-03', 4000),
    (8, 6, 8, 1, '2026-05-04', 5000),
    (9, 8, 9, 3, '2026-05-04', 12000),
    (10, 10, 10, 1, '2026-05-04', 28000),
    (11, 11, 1, 2, '2026-05-05', 4400),
    (12, 12, 2, 5, '2026-05-05', 15000),
    (13, 13, 3, 2, '2026-05-05', 12000),
    (14, 14, 4, 1, '2026-05-06', 9000),
    (15, 15, 5, 3, '2026-05-06', 10500),
    (16, 16, 6, 1, '2026-05-06', 18000),
    (17, 17, 7, 2, '2026-05-07', 14000),
    (18, 18, 8, 4, '2026-05-07', 11200),
    (19, 19, 9, 3, '2026-05-07', 7800),
    (20, 20, 10, 2, '2026-05-08', 4600),
    (21, 21, 1, 1, '2026-05-08', 3100),
    (22, 22, 2, 1, '2026-05-08', 15000),
    (23, 23, 3, 3, '2026-05-09', 12600),
    (24, 24, 4, 2, '2026-05-09', 13000),
    (25, 25, 5, 2, '2026-05-09', 11600),
    (26, 26, 6, 5, '2026-05-10', 9500),
    (27, 27, 7, 1, '2026-05-10', 4800),
    (28, 28, 8, 2, '2026-05-10', 7800),
    (29, 29, 9, 1, '2026-05-11', 11000),
    (30, 30, 10, 2, '2026-05-11', 17000);

-- =========================================================
-- CONSULTA 1: LISTADO GENERAL CON COLUMNAS EXPLÍCITAS
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio",
    stock          AS "Cantidad Disponible"
FROM products;

-- =========================================================
-- CONSULTA 2: FILTRO POR CONDICIÓN SIMPLE
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
WHERE price > 5000;

-- =========================================================
-- CONSULTA 3: FILTRO COMBINADO CON AND
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    stock          AS "Stock Disponible",
    price          AS "Precio"
FROM products
WHERE category = 'Frutas'
AND stock > 30;

-- =========================================================
-- CONSULTA 4: TOP 5 PRODUCTOS MÁS COSTOSOS
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
ORDER BY price DESC
LIMIT 5;

-- =========================================================
-- CONSULTA 5: CLIENTES ORDENADOS ALFABÉTICAMENTE
-- =========================================================

SELECT
    customer_id    AS "ID Cliente",
    customer_name  AS "Nombre Cliente",
    email          AS "Correo Electronico",
    city           AS "Ciudad"
FROM customers
ORDER BY customer_name ASC;

-- =========================================================
-- CONSULTA 6: FILTRO CON OPERADOR OR
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
WHERE category = 'Lacteos'
OR category = 'Verduras';

-- =========================================================
-- CONSULTA 7: PAGINACIÓN — PÁGINA 1
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
ORDER BY product_name ASC
LIMIT 3 OFFSET 0;

-- =========================================================
-- CONSULTA 8: PAGINACIÓN — PÁGINA 2
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
ORDER BY product_name ASC
LIMIT 3 OFFSET 3;

-- =========================================================
-- CONSULTA 9: VENTAS MAYORES A 10000
-- =========================================================

SELECT
    sale_id        AS "ID Venta",
    product_id     AS "ID Producto",
    customer_id    AS "ID Cliente",
    quantity       AS "Cantidad",
    sale_date      AS "Fecha Venta",
    total          AS "Valor Total"
FROM sales
WHERE total > 10000
ORDER BY total DESC;

-- =========================================================
-- CONSULTA 10: PRODUCTOS CON BAJO STOCK
-- =========================================================

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Producto",
    stock          AS "Cantidad Disponible"
FROM products
WHERE stock < 40
ORDER BY stock ASC;