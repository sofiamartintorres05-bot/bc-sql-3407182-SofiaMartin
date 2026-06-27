-- =========================================================
-- PROYECTO SEMANAL: NULL Y CONSTRAINTS
-- Semana 07
-- Dominio: Mercado Campesino
-- =========================================================

-- =========================================================
-- ACTIVAR CLAVES FORÁNEAS EN SQLITE
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
-- CREACIÓN DE TABLAS CON CONSTRAINTS
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
    price          REAL NOT NULL CHECK(price > 0),
    stock          INTEGER NOT NULL CHECK(stock >= 0),

    FOREIGN KEY (vendor_id)
        REFERENCES vendors(vendor_id)
);

CREATE TABLE sales (
    sale_id        INTEGER PRIMARY KEY,
    product_id     INTEGER NOT NULL,
    customer_id    INTEGER NOT NULL,
    quantity       INTEGER NOT NULL CHECK(quantity > 0),
    sale_date      TEXT NOT NULL,
    total          REAL NOT NULL CHECK(total > 0),

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
    (2, 'Maria Gomez', NULL, 'Tunja'),
    (3, 'Carlos Ruiz', '3024567891', 'Villavicencio'),
    (4, 'Ana Torres', NULL, 'Pasto'),
    (5, 'Luis Martinez', '3117894561', 'Cali'),
    (6, 'Andres Silva', NULL, 'Neiva');

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
    (3, 'Laura Diaz', NULL, 'Cali'),
    (4, 'Miguel Herrera', 'miguel@email.com', 'Pereira'),
    (5, 'Camila Rojas', NULL, 'Tunja'),
    (6, 'Daniel Torres', 'daniel@email.com', 'Bogota');

-- =========================================================
-- INSERTAR PRODUCTOS
-- (30 REGISTROS)
-- =========================================================

INSERT INTO products
(product_id, vendor_id, product_name, category, price, stock)
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
(10,5,'Pollo campesino','Carnes',28000,20),
(11,1,'Cebolla larga','Verduras',2200,55),
(12,2,'Banano','Frutas',3000,90),
(13,3,'Aguacate hass','Frutas',6000,30),
(14,4,'Mantequilla artesanal','Lacteos',9000,18),
(15,5,'Panela organica','Dulces',3500,75),
(16,6,'Cafe organico','Bebidas',18000,40),
(17,6,'Chocolate artesanal','Dulces',7000,35),
(18,1,'Mandarina','Frutas',2800,60),
(19,2,'Naranja','Frutas',2600,65),
(20,3,'Espinaca','Verduras',2300,45),
(21,4,'Repollo','Verduras',3100,38),
(22,5,'Miel natural','Dulces',15000,22),
(23,6,'Maiz','Granos',4200,55),
(24,1,'Frijol rojo','Granos',6500,42),
(25,2,'Arroz integral','Granos',5800,50),
(26,3,'Pepino','Verduras',1900,70),
(27,4,'Piña','Frutas',4800,33),
(28,5,'Guayaba','Frutas',3900,41),
(29,6,'Quesillo','Lacteos',11000,27),
(30,1,'Avena artesanal','Cereales',8500,36);

-- =========================================================
-- INSERTAR VENTAS
-- =========================================================

INSERT INTO sales
(sale_id, product_id, customer_id, quantity, sale_date, total)
VALUES
(1,1,1,3,'2026-05-01',7500),
(2,3,2,2,'2026-05-01',6400),
(3,5,3,1,'2026-05-02',4500),
(4,7,4,1,'2026-05-02',12000),
(5,9,5,2,'2026-05-03',30000),
(6,12,6,5,'2026-05-04',15000);

-- =========================================================
-- CONSULTA 1: IS NULL
-- =========================================================
-- Clientes que no tienen correo registrado

SELECT
    customer_id AS "ID Cliente",
    customer_name AS "Nombre Cliente",
    email AS "Correo"
FROM customers
WHERE email IS NULL;

-- =========================================================
-- CONSULTA 2: IS NULL
-- =========================================================
-- Vendedores que no tienen teléfono registrado

SELECT
    vendor_id AS "ID Vendedor",
    vendor_name AS "Nombre Vendedor",
    phone AS "Telefono"
FROM vendors
WHERE phone IS NULL;

-- =========================================================
-- CONSULTA 3: COALESCE
-- =========================================================
-- Mostrar correo y reemplazar NULL por texto

SELECT
    customer_id AS "ID Cliente",
    customer_name AS "Nombre Cliente",
    COALESCE(email, 'Correo no registrado') AS "Correo"
FROM customers;

-- =========================================================
-- CONSULTA 4: COALESCE
-- =========================================================
-- Mostrar teléfono y reemplazar NULL por texto

SELECT
    vendor_id AS "ID Vendedor",
    vendor_name AS "Nombre Vendedor",
    COALESCE(phone, 'Sin telefono registrado') AS "Telefono"
FROM vendors;

-- =========================================================
-- CONSULTA 5: VERIFICAR PRODUCTOS VÁLIDOS
-- =========================================================
-- Los CHECK garantizan que precio y stock no sean negativos

SELECT
    product_id AS "ID Producto",
    product_name AS "Producto",
    price AS "Precio",
    stock AS "Stock"
FROM products
ORDER BY product_id;