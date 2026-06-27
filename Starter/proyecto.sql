-- =========================================================
-- PROYECTO SEMANAL: Funciones de Agregación
-- Semana 06 — COUNT, SUM, AVG, GROUP BY, HAVING
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
    (1, 'Juan Perez', '3001234567', 'Bogota'),
    (2, 'Maria Gomez', '3019876543', 'Tunja'),
    (3, 'Carlos Ruiz', '3024567891', 'Villavicencio'),
    (4, 'Ana Torres', '3106549872', 'Pasto'),
    (5, 'Luis Martinez', '3117894561', 'Cali'),
    (6, 'Andres Silva', '3204567890', 'Neiva'),
    (7, 'Paula Rios', '3216549870', 'Ibague'),
    (8, 'Jorge Medina', '3227412589', 'Manizales'),
    (9, 'Diana Vargas', '3239517536', 'Armenia'),
    (10, 'Ricardo Lopez', '3248527416', 'Bucaramanga');

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
    (1, 'Sofia Ramirez', 'sofia@email.com', 'Bogota'),
    (2, 'Pedro Castro', 'pedro@email.com', 'Medellin'),
    (3, 'Laura Diaz', 'laura@email.com', 'Cali'),
    (4, 'Miguel Herrera', 'miguel@email.com', 'Pereira'),
    (5, 'Camila Rojas', 'camila@email.com', 'Tunja'),
    (6, 'Daniel Torres', 'daniel@email.com', 'Bogota'),
    (7, 'Valentina Mora', 'valen@email.com', 'Cucuta'),
    (8, 'Felipe Gomez', 'felipe@email.com', 'Neiva'),
    (9, 'Natalia Ruiz', 'natalia@email.com', 'Ibague'),
    (10, 'Kevin Perez', 'kevin@email.com', 'Cali');

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
-- REPORTE 1: TOTALES GLOBALES
-- =========================================================
-- Contar productos y calcular suma/promedio de precios

SELECT
    COUNT(product_id) AS "Total Productos",
    SUM(price)        AS "Suma Total Precios",
    AVG(price)        AS "Promedio Precios"
FROM products;

-- =========================================================
-- REPORTE 2: VALORES MÍNIMOS Y MÁXIMOS
-- =========================================================
-- Obtener el precio mínimo y máximo de los productos

SELECT
    MIN(price) AS "Precio Minimo",
    MAX(price) AS "Precio Maximo"
FROM products;

-- =========================================================
-- REPORTE 3: SUBTOTALES POR CATEGORÍA
-- =========================================================
-- Agrupar productos por categoría
-- y calcular cantidad y promedio de precios

SELECT
    category           AS "Categoria",
    COUNT(product_id)  AS "Cantidad Productos",
    AVG(price)         AS "Promedio Precio",
    SUM(stock)         AS "Stock Total"
FROM products
GROUP BY category
ORDER BY "Cantidad Productos" DESC;

-- =========================================================
-- REPORTE 4: FILTRO DE GRUPOS CON HAVING
-- =========================================================
-- Mostrar categorías con más de 2 productos registrados

SELECT
    category           AS "Categoria",
    COUNT(product_id)  AS "Total Productos",
    AVG(price)         AS "Precio Promedio"
FROM products
GROUP BY category
HAVING COUNT(product_id) > 2
ORDER BY "Total Productos" DESC;

-- =========================================================
-- REPORTE 5: TOTAL DE VENTAS POR CLIENTE
-- =========================================================
-- Calcular cantidad de compras y dinero gastado por cliente

SELECT
    customer_id        AS "ID Cliente",
    COUNT(sale_id)     AS "Cantidad Compras",
    SUM(total)         AS "Total Gastado",
    AVG(total)         AS "Promedio Compra"
FROM sales
GROUP BY customer_id
ORDER BY "Total Gastado" DESC;

-- =========================================================
-- REPORTE 6: STOCK TOTAL POR CATEGORÍA
-- =========================================================
-- Mostrar el stock acumulado por categoría de producto

SELECT
    category       AS "Categoria",
    SUM(stock)     AS "Stock Acumulado",
    COUNT(*)       AS "Cantidad Productos"
FROM products
GROUP BY category
HAVING SUM(stock) > 50
ORDER BY "Stock Acumulado" DESC;
