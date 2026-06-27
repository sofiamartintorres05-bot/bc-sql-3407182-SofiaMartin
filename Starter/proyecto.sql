-- ============================================
-- PROYECTO SEMANAL: DDL de tu Dominio
-- Semana 02 — DDL: Diseño de Esquemas
-- ============================================

PRAGMA foreign_keys = ON;

-- ============================================
-- LIMPIEZA: eliminar tablas si existen
-- ============================================

DROP TABLE IF EXISTS relations;
DROP TABLE IF EXISTS entities;
DROP TABLE IF EXISTS items;

-- ============================================
-- TABLA 1: Entidad principal (PRODUCTOS)
-- ============================================

CREATE TABLE IF NOT EXISTS items (
    id          INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL,
    category    TEXT    NOT NULL,
    price       REAL    NOT NULL CHECK(price > 0),
    stock       INTEGER NOT NULL DEFAULT 0 CHECK(stock >= 0),
    is_active   INTEGER NOT NULL DEFAULT 1
);

-- ============================================
-- TABLA 2: Segunda entidad (VENDEDORES)
-- ============================================

CREATE TABLE IF NOT EXISTS entities (
    id          INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL,
    farm_name   TEXT    NOT NULL,
    phone       TEXT    UNIQUE NOT NULL,
    city        TEXT    NOT NULL
);

-- ============================================
-- TABLA 3: RELACIÓN (PRODUCTO - VENDEDOR)
-- ============================================

CREATE TABLE IF NOT EXISTS relations (
    id          INTEGER PRIMARY KEY,
    item_id     INTEGER NOT NULL,
    entity_id   INTEGER NOT NULL,
    FOREIGN KEY (item_id)   REFERENCES items(id),
    FOREIGN KEY (entity_id) REFERENCES entities(id)
);

-- ============================================
-- INSERT ENTITIES (VENDEDORES - 5)
-- ============================================

INSERT INTO entities (id, name, farm_name, phone, city) VALUES
(1, 'Luis Herrera', 'Finca El Trigal', '3201111111', 'Boyacá'),
(2, 'Diana Morales', 'Huerta San José', '3202222222', 'Cundinamarca'),
(3, 'Jorge Castillo', 'Granja La Esperanza', '3203333333', 'Tolima'),
(4, 'Luisa Fernández', 'Campo Verde', '3204444444', 'Antioquia'),
(5, 'Andrés Ramos', 'Finca El Rosario', '3205555555', 'Meta');

-- ============================================
-- INSERT ITEMS (PRODUCTOS - 15)
-- ============================================

INSERT INTO items (id, name, category, price, stock) VALUES
(1, 'Tomate', 'Verduras', 1800, 50),
(2, 'Papa criolla', 'Tubérculos', 2200, 80),
(3, 'Zanahoria', 'Verduras', 1000, 60),
(4, 'Lechuga', 'Verduras', 1500, 40),
(5, 'Cebolla', 'Verduras', 1300, 70),
(6, 'Mango', 'Frutas', 2500, 30),
(7, 'Banano', 'Frutas', 1200, 90),
(8, 'Piña', 'Frutas', 3000, 25),
(9, 'Uva', 'Frutas', 4500, 20),
(10, 'Arroz', 'Granos', 3200, 100),
(11, 'Frijol', 'Granos', 4800, 60),
(12, 'Lenteja', 'Granos', 3500, 70),
(13, 'Ajo', 'Condimentos', 900, 120),
(14, 'Cilantro', 'Hierbas', 700, 200),
(15, 'Yuca', 'Tubérculos', 1700, 55);

-- ============================================
-- INSERT RELATIONS (RELACIÓN PRODUCTO-VENDEDOR)
-- ============================================

INSERT INTO relations (id, item_id, entity_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 3),
(7, 7, 4),
(8, 8, 5),
(9, 9, 1),
(10, 10, 2),
(11, 11, 3),
(12, 12, 4),
(13, 13, 5),
(14, 14, 1),
(15, 15, 2);

-- ============================================
-- VERIFICACIÓN (CONSULTAS)
-- ============================================

SELECT id, name, category, price, stock
FROM items;

SELECT id, name, farm_name, city
FROM entities;

SELECT id, item_id, entity_id
FROM relations;

SELECT COUNT(id) AS total_items
FROM items;