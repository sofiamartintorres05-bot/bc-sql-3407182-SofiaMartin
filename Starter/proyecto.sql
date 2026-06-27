-- =========================================================
-- PROYECTO SEMANAL: Operadores y Filtros
-- Semana 05 — BETWEEN, IN, LIKE
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
-- INSERTAR PRODUCTOS
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
-- CONSULTA 1: FILTRO CON BETWEEN
-- =========================================================
-- Mostrar productos con precios entre 3000 y 10000

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
WHERE price BETWEEN 3000 AND 10000;

-- =========================================================
-- CONSULTA 2: FILTRO CON IN
-- =========================================================
-- Mostrar productos de las categorías Frutas, Lacteos y Verduras

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Producto",
    category       AS "Categoria",
    stock          AS "Stock"
FROM products
WHERE category IN ('Frutas', 'Lacteos', 'Verduras');

-- =========================================================
-- CONSULTA 3: BÚSQUEDA CON LIKE
-- =========================================================
-- Mostrar productos cuyo nombre contenga la palabra 'Queso'

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio"
FROM products
WHERE product_name LIKE '%Queso%';

-- =========================================================
-- CONSULTA 4: FILTRO COMBINADO
-- =========================================================
-- Mostrar productos de Frutas o Verduras
-- con precio entre 2000 y 6000
-- y cuyo nombre contenga la letra 'a'

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Nombre Producto",
    category       AS "Categoria",
    price          AS "Precio",
    stock          AS "Stock"
FROM products
WHERE category IN ('Frutas', 'Verduras')
AND price BETWEEN 2000 AND 6000
AND product_name LIKE '%a%'
ORDER BY price ASC;

-- =========================================================
-- CONSULTA 5: BETWEEN CON FECHAS
-- =========================================================
-- Mostrar ventas realizadas entre el 3 y el 8 de mayo

SELECT
    sale_id        AS "ID Venta",
    product_id     AS "ID Producto",
    customer_id    AS "ID Cliente",
    sale_date      AS "Fecha Venta",
    total          AS "Valor Total"
FROM sales
WHERE sale_date BETWEEN '2026-05-03' AND '2026-05-08'
ORDER BY sale_date ASC;

-- =========================================================
-- CONSULTA 6: LIKE CON NOMBRES DE CLIENTES
-- =========================================================
-- Mostrar clientes cuyo nombre contenga la letra 'a'

SELECT
    customer_id    AS "ID Cliente",
    customer_name  AS "Nombre Cliente",
    city           AS "Ciudad"
FROM customers
WHERE customer_name LIKE '%a%';

-- =========================================================
-- CONSULTA 7: FILTRO IN CON CIUDADES
-- =========================================================
-- Mostrar vendedores ubicados en Bogota, Cali o Tunja

SELECT
    vendor_id      AS "ID Vendedor",
    vendor_name    AS "Nombre Vendedor",
    city           AS "Ciudad"
FROM vendors
WHERE city IN ('Bogota', 'Cali', 'Tunja');

-- =========================================================
-- CONSULTA 8: FILTRO COMBINADO AVANZADO
-- =========================================================
-- Mostrar productos Lacteos y Dulces
-- con stock entre 20 y 80
-- y nombre que contenga la letra 'o'

SELECT
    product_id     AS "ID Producto",
    product_name   AS "Producto",
    category       AS "Categoria",
    stock          AS "Cantidad Disponible",
    price          AS "Precio"
FROM products
WHERE category IN ('Lacteos', 'Dulces')
AND stock BETWEEN 20 AND 80
AND product_name LIKE '%o%'
ORDER BY stock DESC;

