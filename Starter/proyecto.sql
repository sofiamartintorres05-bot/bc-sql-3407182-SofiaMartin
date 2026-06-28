-- =========================================================
-- PROYECTO SEMANAL: JOINs aplicados a tu dominio
-- Semana 09 — INNER JOIN y LEFT JOIN
-- Dominio: Mercado Campesino
-- =========================================================

PRAGMA foreign_keys = ON;

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
    phone          TEXT,
    city           TEXT NOT NULL
);

CREATE TABLE customers (
    customer_id    INTEGER PRIMARY KEY,
    customer_name  TEXT NOT NULL,
    email          TEXT UNIQUE,
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
(1,'Juan Perez','3001234567','Bogota'),
(2,'Maria Gomez','3019876543','Tunja'),
(3,'Carlos Ruiz','3024567891','Villavicencio'),
(4,'Ana Torres','3106549872','Pasto'),
(5,'Luis Martinez','3117894561','Cali');

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
(1,'Sofia Ramirez','sofia@email.com','Bogota'),
(2,'Pedro Castro','pedro@email.com','Medellin'),
(3,'Laura Diaz','laura@email.com','Cali'),
(4,'Miguel Herrera','miguel@email.com','Pereira'),
(5,'Camila Rojas','camila@email.com','Tunja');

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
(1,1,'Papa criolla','Tuberculos',2500,100),
(2,1,'Yuca','Tuberculos',1800,80),
(3,2,'Tomate','Verduras',3200,60),
(4,2,'Lechuga','Verduras',2000,50),
(5,3,'Mora','Frutas',4500,40),
(6,3,'Fresa','Frutas',5000,35),
(7,4,'Queso campesino','Lacteos',12000,25),
(8,4,'Leche fresca','Lacteos',4000,70),
(9,5,'Huevos campesinos','Avicolas',15000,45),
(10,5,'Pollo campesino','Carnes',28000,20);

-- =========================================================
-- PRODUCTO HUÉRFANO
-- =========================================================
-- Producto sin ventas asociadas

INSERT INTO products (
    product_id,
    vendor_id,
    product_name,
    category,
    price,
    stock
)
VALUES
(11,1,'Cafe Organico Premium','Bebidas',18000,30);

-- =========================================================
-- INSERTAR VENTAS
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
(1,1,1,3,'2026-05-01',7500),
(2,3,2,2,'2026-05-02',6400),
(3,5,3,1,'2026-05-03',4500),
(4,7,4,1,'2026-05-04',12000),
(5,9,5,2,'2026-05-05',30000),
(6,2,1,2,'2026-05-06',3600),
(7,4,2,3,'2026-05-07',6000),
(8,6,3,2,'2026-05-08',10000),
(9,8,4,1,'2026-05-09',4000),
(10,10,5,1,'2026-05-10',28000);

-- =========================================================
-- CONSULTA 1: INNER JOIN PRINCIPAL
-- =========================================================
-- Mostrar ventas con información del producto

SELECT
    p.product_id      AS "ID Producto",
    p.product_name    AS "Producto",
    s.sale_id         AS "ID Venta",
    s.quantity        AS "Cantidad",
    s.total           AS "Total Venta"
FROM products p
INNER JOIN sales s
    ON p.product_id = s.product_id;

-- =========================================================
-- CONSULTA 2: JOIN CON TRES TABLAS
-- =========================================================
-- Producto + Cliente + Venta

SELECT
    p.product_name      AS "Producto",
    c.customer_name     AS "Cliente",
    s.quantity          AS "Cantidad",
    s.sale_date         AS "Fecha Venta",
    s.total             AS "Valor Total"
FROM sales s
INNER JOIN products p
    ON s.product_id = p.product_id
INNER JOIN customers c
    ON s.customer_id = c.customer_id;

-- =========================================================
-- CONSULTA 3: LEFT JOIN
-- =========================================================
-- Todos los productos tengan o no ventas

SELECT
    p.product_id      AS "ID Producto",
    p.product_name    AS "Producto",
    s.sale_id         AS "ID Venta",
    s.sale_date       AS "Fecha Venta"
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id;

-- =========================================================
-- CONSULTA 4: DETECTAR HUÉRFANOS
-- =========================================================
-- Productos sin ventas registradas

SELECT
    p.product_id      AS "ID Producto",
    p.product_name    AS "Producto Sin Ventas",
    p.category        AS "Categoria"
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;

-- =========================================================
-- CONSULTA 5: REPORTE AGREGADO
-- =========================================================
-- Cantidad de ventas por producto
-- Incluye productos con cero ventas

SELECT
    p.product_id        AS "ID Producto",
    p.product_name      AS "Producto",
    COUNT(s.sale_id)    AS "Cantidad Ventas"
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY
    COUNT(s.sale_id) DESC;  