# 🌾 MERCADO CAMPESINO SQL PROJECT 🌾

> Sistema de gestión de datos para un mercado campesino desarrollado en SQL.

Este proyecto implementa los procesos fundamentales de una base de datos relacional con operaciones DML (`INSERT`, `UPDATE`, `DELETE`), integridad referencial y consultas de verificación.

---

## 📌 Tabla de Contenidos

- [Descripción](#descripción)
- [Estructura de la base de datos](#estructura-de-la-base-de-datos)
- [Datos de ejemplo](#datos-de-ejemplo)
- [Operaciones DML](#operaciones-dml)
- [Cómo ejecutar](#cómo-ejecutar)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Objetivos académicos](#objetivos-académicos)
- [Autor](#autor)

---

## 📌 Descripción

El proyecto simula un mercado campesino donde vendedores, clientes, productos y ventas se gestionan mediante una base de datos relacional.

El diseño contempla:

- Tablas conectadas por claves primarias y foráneas.
- Operaciones de inserción, actualización y eliminación segura.
- Consultas que permiten verificar y analizar los datos.

---

## 🧱 Estructura de la base de datos

### `vendors`

Almacena la información de los vendedores.

| Campo | Tipo |
|---|---|
| `vendor_id` | INTEGER |
| `vendor_name` | TEXT |
| `phone` | TEXT |
| `city` | TEXT |

---

### `customers`

Contiene los datos de los clientes.

| Campo | Tipo |
|---|---|
| `customer_id` | INTEGER |
| `customer_name` | TEXT |
| `email` | TEXT |
| `city` | TEXT |

---

### `products`

Registra los productos disponibles en el mercado.

| Campo | Tipo |
|---|---|
| `product_id` | INTEGER |
| `vendor_id` | INTEGER |
| `product_name` | TEXT |
| `category` | TEXT |
| `price` | REAL |
| `stock` | INTEGER |

---

### `sales`

Guarda el historial de ventas.

| Campo | Tipo |
|---|---|
| `sale_id` | INTEGER |
| `product_id` | INTEGER |
| `customer_id` | INTEGER |
| `quantity` | INTEGER |
| `sale_date` | TEXT |
| `total` | REAL |

---

## 📊 Datos de ejemplo

El repositorio incluye registros de ejemplo que muestran un flujo básico del mercado campesino:

- 5 vendedores
- 5 clientes
- 15 productos
- 15 ventas

### Productos representativos

- Papa criolla
- Tomate
- Fresa
- Queso campesino
- Huevos
- Panela
- Aguacate

---

## 🛠️ Operaciones DML

### ✅ Inserción de datos (`INSERT`)

Se cargan registros de prueba para cada tabla, incluyendo vendedores, clientes, productos y ventas.

### ✅ Actualización de datos (`UPDATE`)

Se actualizan campos clave como:

- Precio de productos
- Datos de clientes
- Stock disponible

### ✅ Eliminación segura (`DELETE`)

Antes de eliminar registros se verifica el impacto con consultas `SELECT`, lo que permite una eliminación más segura.

> Ejemplo: eliminación de ventas con total menor a 5000.

---

## ▶️ Cómo ejecutar

### 1. Clonar el repositorio

```bash
git clone URL_DEL_REPOSITORIO
```

### 2. Entrar a la carpeta del proyecto

```bash
cd Proyecto_SQL_Mercado
```

### 3. Ejecutar el script SQL

```bash
sqlite3 mercado.db < mercado_campesino.sql
```

> Si usas otra base de datos compatible, adapta el comando de ejecución.

---

## 📂 Estructura del proyecto

```plaintext
Proyecto_SQL_Mercado/
├── README.md
├── mercado_campesino.sql
└── Starter/
    └── proyecto.sql
```

---

## 🎯 Objetivos académicos

Este proyecto permite practicar:

- Diseño de bases de datos relacionales
- Creación de tablas con `DDL`
- Inserción y manipulación de datos con `DML`
- Diseño de relaciones entre tablas
- Uso de claves primarias y foráneas
- Consultas SQL de verificación
- Buenas prácticas de eliminación de datos

---

## 👩‍💻 Autor

**Sofia Martin Torres**

📚 Estudiante en formación – Análisis y Desarrollo de Software

🚀 SENA - Formación en Análisis y Desarrollo de Software
