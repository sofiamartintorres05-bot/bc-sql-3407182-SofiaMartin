# 🌾 Mercado Campesino - Base de Datos

> Proyecto Semana 01 | Bases de Datos Relacionales

## 👋 Bienvenido

Este proyecto presenta el diseño y la implementación de una base de datos para un mercado campesino, donde se gestionan productos, clientes y vendedores de manera sencilla y organizada.

✨ El objetivo es practicar la creación de tablas, la inserción de datos y la elaboración de consultas SQL en un contexto realista y cercano al mundo agrícola.

### 🧩 Entidades principales

| Entidad | Descripción |
|---------|-------------|
| 👨‍🌾 Vendedores | Productores agrícolas que participan en el mercado |
| 🥕 Productos | Artículos disponibles para la venta |
| 🧍 Clientes | Compradores registrados en el sistema |

---

## 🧱 Estructura de la base de datos

### 📦 Tabla: Products

Almacena los productos disponibles en el mercado.

| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | INTEGER | Identificador único |
| name | TEXT | Nombre del producto |
| category | TEXT | Categoría |
| price | REAL | Precio |
| stock | INTEGER | Cantidad disponible |

### 🧍 Tabla: Customers

Contiene información de los clientes.

| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | INTEGER | Identificador |
| name | TEXT | Nombre |
| phone | TEXT | Teléfono |
| city | TEXT | Ciudad |

### 👨‍🌾 Tabla: Vendors

Registra los vendedores del mercado.

| Campo | Tipo | Descripción |
|-------|------|-------------|
| id | INTEGER | Identificador |
| name | TEXT | Nombre |
| farm_name | TEXT | Nombre de la finca |
| phone | TEXT | Teléfono |

---

## 📊 Datos incluidos

- 🥕 50 productos
- 🧍 5 clientes
- 👨‍🌾 5 vendedores

> ✅ Todos los datos fueron diseñados con valores realistas del contexto colombiano.

---

## ⚙️ ¿Cómo usar este script?

Puedes ejecutar el archivo SQL en herramientas como:

- SQLite
- DB Browser for SQLite
- Visual Studio Code con extensión SQLite

### Pasos recomendados

1. Eliminar tablas existentes si es necesario.
2. Crear las tablas.
3. Insertar los datos.
4. Ejecutar las consultas propuestas.

---

## 🔍 Consultas incluidas

### 📌 Listar productos

```sql
SELECT id, name, category, price, stock
FROM products;
```

### 📌 Listar clientes

```sql
SELECT id, name, phone, city
FROM customers;
```

### 📌 Listar vendedores

```sql
SELECT id, name, farm_name, phone
FROM vendors;
```

### 📌 Contar registros

```sql
SELECT COUNT(id) AS total_products FROM products;
SELECT COUNT(id) AS total_customers FROM customers;
SELECT COUNT(id) AS total_vendors FROM vendors;
```

---

## ⭐ Consultas adicionales

### 🔹 Productos más caros

```sql
SELECT id, name, price
FROM products
ORDER BY price DESC;
```

### 🔹 Clientes ordenados por ciudad

```sql
SELECT id, name, city
FROM customers
ORDER BY city ASC;
```

---

## 🧠 Lo que se aprende con este proyecto

- Creación de tablas con DDL
- Inserción de datos con DML
- Consultas básicas con SELECT
- Uso de ORDER BY
- Uso de COUNT
- Organización de scripts SQL

---

## ⚠️ Notas importantes

- No se usan relaciones con FOREIGN KEY en esta versión.
- Aún no existe una tabla de ventas.
- Es una base inicial para proyectos más avanzados.

---

## 🔥 Próximos pasos

- Crear una tabla de ventas con relaciones
- Implementar claves foráneas
- Integrar el proyecto con una API
- Realizar consultas más complejas con JOIN

---

## 👩‍💻 Autor

Sofía Martín Torres

📚 Estudiante en formación – Análisis y Desarrollo de Software

🚀 Proyecto académico SENA