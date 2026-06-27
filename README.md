# 🌾 Mercado Campesino - Base de Datos

> Proyecto Semana 02 | DDL: Diseño de Esquemas

## 👋 Bienvenida

Este repositorio documenta el diseño de una base de datos para un mercado campesino colombiano. El objetivo es practicar DDL, integridad referencial y consultas SQL con un caso práctico de productos agrícolas y vendedores.

## 🔥 Qué incluye

- Diseño de tablas con claves primarias y foráneas
- Restricciones `NOT NULL`, `UNIQUE` y `CHECK`
- Modelo de relación muchos a muchos
- Datos de prueba realistas del contexto colombiano
- Consultas SQL de verificación

---

## 🧱 Estructura de la base de datos

### 🥕 Tabla `items`

Registra los productos agrícolas que se venden en el mercado.

| Campo | Tipo | Restricciones | Descripción |
|------|------|---------------|-------------|
| `id` | INTEGER | `PRIMARY KEY` | Identificador único |
| `name` | TEXT | `NOT NULL` | Nombre del producto |
| `category` | TEXT | `NOT NULL` | Categoría del producto |
| `price` | REAL | `NOT NULL`, `CHECK(price > 0)` | Precio unitario |
| `stock` | INTEGER | `NOT NULL`, `DEFAULT 0`, `CHECK(stock >= 0)` | Cantidad disponible |
| `is_active` | INTEGER | `NOT NULL`, `DEFAULT 1` | Estado activo/inactivo |

### 👨‍🌾 Tabla `entities`

Registra los vendedores que participan en el mercado.

| Campo | Tipo | Restricciones | Descripción |
|------|------|---------------|-------------|
| `id` | INTEGER | `PRIMARY KEY` | Identificador único |
| `name` | TEXT | `NOT NULL` | Nombre del vendedor |
| `farm_name` | TEXT | `NOT NULL` | Nombre de la finca |
| `phone` | TEXT | `UNIQUE`, `NOT NULL` | Teléfono de contacto |
| `city` | TEXT | `NOT NULL` | Ciudad de origen |

### 🔗 Tabla `relations`

Relaciona productos con vendedores para modelar una relación muchos a muchos.

| Campo | Tipo | Restricciones | Descripción |
|------|------|---------------|-------------|
| `id` | INTEGER | `PRIMARY KEY` | Identificador único |
| `item_id` | INTEGER | `NOT NULL`, `FOREIGN KEY` | Referencia a `items(id)` |
| `entity_id` | INTEGER | `NOT NULL`, `FOREIGN KEY` | Referencia a `entities(id)` |

---

## 🔗 Diagrama de relaciones

```txt
items          relations       entities
------         ----------      -------
id (PK)  <---  item_id         id (PK)
name               id (PK)      name
category          entity_id  ---> farm_name
price                           phone
stock                           city
is_active
```

> ✅ Relación muchos a muchos: un producto puede ser ofrecido por varios vendedores.

---

## 📊 Datos incluidos

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
| Verduras | Tomate, Zanahoria, Lechuga, Cebolla |
| Frutas | Mango, Banano, Piña, Uva |
| Granos | Arroz, Frijol, Lenteja |
| Tubérculos | Papa criolla, Yuca |
| Condimentos | Ajo, Cilantro |

> ✅ Los datos fueron creados pensando en un contexto agrícola colombiano.

---

## ⚙️ Cómo usarlo

### 1. Ejecutar el script SQL

```bash
sqlite3 mercado.db < proyecto.sql
```

### 2. Herramientas recomendadas

- SQLite (línea de comandos)
- DB Browser for SQLite
- Visual Studio Code con extensión SQLite

### 3. Flujo del script

1. Activa las restricciones de clave foránea: `PRAGMA foreign_keys = ON`
2. Limpia tablas existentes si existen
3. Crea las tablas
4. Inserta los datos
5. Ejecuta consultas de verificación

---

## 🔍 Consultas incluidas

### 📌 Listar productos

```sql
SELECT id, name, category, price, stock
FROM items;
```

### 📌 Listar vendedores

```sql
SELECT id, name, farm_name, city
FROM entities;
```

### 📌 Listar relaciones

```sql
SELECT id, item_id, entity_id
FROM relations;
```

### 📌 Contar productos

```sql
SELECT COUNT(id) AS total_items
FROM items;
```

---

## 🛡️ Restricciones implementadas

| Restricción | Tabla / Campo | Descripción |
|------------|---------------|-------------|
| `PRIMARY KEY` | Todas | Identificador único |
| `NOT NULL` | Varios campos | Campo obligatorio |
| `UNIQUE` | `entities.phone` | Teléfonos únicos |
| `CHECK(price > 0)` | `items.price` | Precio mayor a cero |
| `CHECK(stock >= 0)` | `items.stock` | Stock no negativo |
| `DEFAULT 1` | `items.is_active` | Activo por defecto |
| `FOREIGN KEY` | `relations` | Integridad referencial |

---

## 🧠 Lo que se aprende

- Creación de tablas con DDL
- Diseño de claves primarias y foráneas
- Uso de restricciones `CHECK`, `UNIQUE` y `DEFAULT`
- Modelado de relaciones muchos a muchos
- Inserción de datos con DML
- Consultas básicas con `SELECT`
- Conteo de registros con `COUNT`

---

## ⚠️ Notas importantes

- Este proyecto se centra en DDL y diseño de esquemas.
- Se utiliza integridad referencial con claves foráneas.
- La tabla `relations` modela la relación entre productos y vendedores.
- Los datos están pensados en un contexto colombiano.

---

## 🔮 Próximos pasos

- Agregar tabla de `clientes`
- Crear tabla de `ventas`
- Añadir consultas con `JOIN`
- Separar categorías en su propia tabla
- Integrar con una API en Python o FastAPI

---

## 👩‍💻 Autor

Sofía Martín Torres

📚 Estudiante en formación – Análisis y Desarrollo de Software

🚀 SENA - Formación en Análisis y Desarrollo de Software
