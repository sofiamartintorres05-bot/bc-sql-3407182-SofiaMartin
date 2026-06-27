# 🌾 Mercado Campesino - Base de Datos

> *Proyecto Semana 02* | DDL: Diseño de Esquemas

## 👋 Bienvenido

Este proyecto implementa una base de datos para un mercado campesino colombiano, gestionando la relación entre productos agrícolas y vendedores.

| Entidad | Descripción | Registros |
|---------|-------------|-----------|
| 🥕 *Items (productos)* | Productos agrícolas disponibles | 15 |
| 👨‍🌾 *Entities (vendedores)* | Vendedores del mercado | 5 |
| 🔗 *Relations (relaciones)* | Relación producto-vendedor | 15 |

Incluye creación de tablas con claves foráneas, restricciones CHECK y consultas básicas.

---

## 🧱 Estructura de la Base de Datos

### 🥕 Tabla: Items (Productos)

Almacena los productos agrícolas disponibles en el mercado.

| Campo | Tipo | Restricciones | Descripción |
|-------|------|---------------|-------------|
| id | INTEGER | PRIMARY KEY | Identificador único |
| name | TEXT | NOT NULL | Nombre del producto |
| category | TEXT | NOT NULL | Categoría (Verduras, Frutas, Granos, etc.) |
| price | REAL | NOT NULL, CHECK(price > 0) | Precio unitario |
| stock | INTEGER | NOT NULL, DEFAULT 0, CHECK(stock >= 0) | Cantidad en inventario |
| is_active | INTEGER | NOT NULL, DEFAULT 1 | Estado activo/inactivo |

### 👨‍🌾 Tabla: Entities (Vendedores)

Registra los vendedores del mercado campesino.

| Campo | Tipo | Restricciones | Descripción |
|-------|------|---------------|-------------|
| id | INTEGER | PRIMARY KEY | Identificador único |
| name | TEXT | NOT NULL | Nombre del vendedor |
| farm_name | TEXT | NOT NULL | Nombre de la finca |
| phone | TEXT | UNIQUE, NOT NULL | Teléfono de contacto |
| city | TEXT | NOT NULL | Ciudad de origen |

### 🔗 Tabla: Relations (Relaciones)

Tabla intermedia que relaciona productos con vendedores (muchos a muchos).

| Campo | Tipo | Restricciones | Descripción |
|-------|------|---------------|-------------|
| id | INTEGER | PRIMARY KEY | Identificador único |
| item_id | INTEGER | NOT NULL, FOREIGN KEY | Referencia a items |
| entity_id | INTEGER | NOT NULL, FOREIGN KEY | Referencia a entities |

---

## 🔗 Diagrama de Relaciones

┌─────────────┐ ┌─────────────┐ ┌─────────────┐
│ items │ │ relations │ │ entities │
├─────────────┤ ├─────────────┤ ├─────────────┤
│ id (PK) │◄──────│ item_id │ │ id (PK) │
│ name │ │ (FK) │───────│ entity_id │
│ category │ │ id (PK) │ │ (FK) │
│ price │ │ entity_id │ │ name │
│ stock │ │ │ │ farm_name │
│ is_active │ └─────────────┘ │ phone │
└─────────────┘ │ city │
└─────────────┘


> ✅ Relación muchos a muchos: Un producto puede ser vendido por múltiples vendedores.

---

## 📊 Datos del Proyecto

### 👨‍🌾 Vendedores (5)

| ID | Nombre | Finca | Ciudad |
|----|--------|-------|--------|
| 1 | Luis Herrera | Finca El Trigal | Boyacá |
| 2 | Diana Morales | Huerta San José | Cundinamarca |
| 3 | Jorge Castillo | Granja La Esperanza | Tolima |
| 4 | Luisa Fernández | Campo Verde | Antioquia |
| 5 | Andrés Ramos | Finca El Rosario | Meta |

### 🥕 Productos (15)

| Categoría | Productos |
|-----------|------------|
| *Verduras* | Tomate, Zanahoria, Lechuga, Cebolla |
| *Frutas* | Mango, Banano, Piña, Uva |
| *Granos* | Arroz, Frijol, Lenteja |
| *Tubérculos* | Papa criolla, Yuca |
| *Condimentos* | Ajo, Cilantro |

> ✅ Todos los datos fueron diseñados con valores realistas del contexto colombiano.

---

## ⚙️ ¿Cómo usar este script?

### 1️⃣ Ejecutar el archivo SQL

bash
sqlite3 mercado.db < proyecto.sql


### 2️⃣ Herramientas recomendadas

- *SQLite* (línea de comandos)
- *DB Browser for SQLite*
- *Visual Studio Code* (extensión SQLite)

### 3️⃣ El script se ejecuta en orden

1. Activa claves foráneas (PRAGMA foreign_keys = ON)
2. Limpia tablas existentes
3. Crea las tablas
4. Inserta los datos
5. Ejecuta consultas de verificación

---

## 🔍 Consultas incluidas

### 📌 Listar todos los productos

sql
SELECT id, name, category, price, stock
FROM items;


### 📌 Listar vendedores

sql
SELECT id, name, farm_name, city
FROM entities;


### 📌 Listar relaciones

sql
SELECT id, item_id, entity_id
FROM relations;


### 📌 Contar total de productos

sql
SELECT COUNT(id) AS total_items
FROM items;


---

## 🛡️ Restricciones Implementadas

| Restricción            | Tabla / Campo     | Descripción                    |
|----------------------|------------------|--------------------------------|
| PRIMARY KEY          | Todas            | Identificador único           |
| NOT NULL             | Varios campos    | Campo obligatorio             |
| UNIQUE               | entities.phone   | Teléfono sin duplicados       |
| CHECK (price > 0)    | items.price      | Precio mayor a cero           |
| CHECK (stock >= 0)   | items.stock      | Stock no negativo             |
| DEFAULT 1            | items.is_active  | Activo por defecto            |
| FOREIGN KEY          | relations        | Integridad referencial        |
---

## 🧠 Lo que se aprende con este proyecto

- ✔️ Creación de tablas con DDL
- ✔️ Definición de claves primarias y foráneas
- ✔️ Restricciones CHECK
- ✔️ Restricciones UNIQUE
- ✔️ Valores por defecto (DEFAULT)
- ✔️ Diseño de relaciones muchos a muchos
- ✔️ Inserción de datos (DML)
- ✔️ Consultas básicas con SELECT
- ✔️ Uso de COUNT

---

## ⚠️ Notas importantes

- Este es un proyecto de *DDL* (Data Definition Language)
- Se implementan *claves foráneas* para integridad referencial
- La tabla relations permite relación muchos a muchos
- Los datos son del *contexto colombiano*

---

## 🔥 Próximos pasos

- 🔹 Agregar tabla de *clientes*
- 🔹 Crear tabla de *ventas*
- 🔹 Implementar consultas con *JOIN*
- 🔹 Agregar *categorías* como tabla independiente
- 🔹 Integrar con API (FastAPI)

---

## 👩‍💻 Autor

*Sofia Martin Torres*

📚 Estudiante en formación – Analisis y Desarrollo de Software

🚀 SENA - Formación en Analisis y Desarrollo de Software