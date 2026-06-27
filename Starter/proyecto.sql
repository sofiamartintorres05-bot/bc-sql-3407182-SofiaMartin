-- =========================================================
-- PROYECTO SEMANAL: DML — Manipulación de Datos
-- Semana 03
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
-- PARTE 1: INSERT INTO
-- =========================================================

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
    (5, 'Luis Martinez',   '3117894561', 'Cali');

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
    (5, 'Camila Rojas',    'camila@email.com',  'Tunja');

-- =========================================================
-- INSERTAR PRODUCTOS (15 FILAS)
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
    (1,  1, 'Papa criolla',             'Tuberculos', 2500, 100),
    (2,  1, 'Yuca',                     'Tuberculos', 1800, 80),
    (3,  2, 'Tomate',                   'Verduras',   3200, 60),
    (4,  2, 'Lechuga',                  'Verduras',   2000, 50),
    (5,  3, 'Mora',                     'Frutas',     4500, 40),
    (6,  3, 'Fresa',                    'Frutas',     5000, 35),
    (7,  4, 'Queso campesino',          'Lacteos',    12000, 25),
    (8,  4, 'Leche fresca',             'Lacteos',    4000, 70),
    (9,  5, 'Huevos campesinos',        'Avicolas',   15000, 45),
    (10, 5, 'Pollo campesino',          'Carnes',     28000, 20),
    (11, 1, 'Cebolla larga',            'Verduras',   2200, 55),
    (12, 2, 'Banano',                   'Frutas',     3000, 90),
    (13, 3, 'Aguacate hass',            'Frutas',     6000, 30),
    (14, 4, 'Mantequilla artesanal',    'Lacteos',    9000, 18),
    (15, 5, 'Panela organica',          'Dulces',     3500, 75);

-- =========================================================
-- INSERTAR VENTAS (15 FILAS)
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
    (1,  1,  1, 3, '2026-05-01',  7500),
    (2,  3,  2, 2, '2026-05-01',  6400),
    (3,  5,  3, 1, '2026-05-02',  4500),
    (4,  7,  4, 1, '2026-05-02', 12000),
    (5,  9,  5, 2, '2026-05-03', 30000),
    (6,  2,  1, 4, '2026-05-03',  7200),
    (7,  4,  2, 2, '2026-05-03',  4000),
    (8,  6,  3, 1, '2026-05-04',  5000),
    (9,  8,  4, 3, '2026-05-04', 12000),
    (10, 10, 5, 1, '2026-05-04', 28000),
    (11, 11, 1, 2, '2026-05-05',  4400),
    (12, 12, 2, 5, '2026-05-05', 15000),
    (13, 13, 3, 2, '2026-05-05', 12000),
    (14, 14, 4, 1, '2026-05-06',  9000),
    (15, 15, 5, 3, '2026-05-06', 10500);

-- =========================================================
-- PARTE 2: UPDATE
-- =========================================================

-- =========================================================
-- ACTUALIZAR EL PRECIO DE UN PRODUCTO ESPECÍFICO
-- =========================================================

UPDATE products
SET price = 2800
WHERE product_id = 1;

-- =========================================================
-- ACTUALIZAR MÚLTIPLES COLUMNAS DE UN CLIENTE
-- =========================================================

UPDATE customers
SET
    customer_name = 'Pedro Ramirez',
    city = 'Bogota'
WHERE customer_id = 2;

-- =========================================================
-- ACTUALIZAR STOCK DE TODOS LOS PRODUCTOS DE FRUTAS
-- =========================================================

UPDATE products
SET stock = stock + 20
WHERE category = 'Frutas';

-- =========================================================
-- PARTE 3: DELETE SEGURO
-- =========================================================

-- =========================================================
-- VERIFICAR LAS VENTAS QUE SERÁN ELIMINADAS
-- =========================================================

SELECT
    sale_id,
    product_id,
    customer_id,
    quantity,
    sale_date,
    total
FROM sales
WHERE total < 5000;

-- =========================================================
-- ELIMINAR VENTAS CON TOTAL MENOR A 5000
-- =========================================================

DELETE FROM sales
WHERE total < 5000;

-- =========================================================
-- VERIFICACIÓN FINAL
-- =========================================================

SELECT
    vendor_id,
    vendor_name,
    phone,
    city
FROM vendors
ORDER BY vendor_id;

SELECT
    customer_id,
    customer_name,
    email,
    city
FROM customers
ORDER BY customer_id;

SELECT
    product_id,
    vendor_id,
    product_name,
    category,
    price,
    stock
FROM products
ORDER BY product_id;

SELECT
    sale_id,
    product_id,
    customer_id,
    quantity,
    sale_date,
    total
FROM sales
ORDER BY sale_id;