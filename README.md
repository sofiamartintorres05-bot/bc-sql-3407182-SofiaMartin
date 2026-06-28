# 🌾 MERCADO CAMPESINO — JOINs SQL 🌾

# 📚 Proyecto Semanal — Semana 09

Proyecto académico enfocado en el uso de consultas relacionales mediante `INNER JOIN` y `LEFT JOIN` dentro de una base de datos SQL.

El proyecto utiliza un escenario de Mercado Campesino para demostrar cómo relacionar información almacenada en múltiples tablas y generar reportes más completos a partir de datos distribuidos.

---

# 🎯 Objetivo del Proyecto

Aplicar técnicas de combinación de tablas utilizando JOINs para consultar información relacionada entre vendedores, clientes, productos y ventas.

Durante el desarrollo se trabajó con:

* Relaciones entre tablas
* Claves foráneas
* INNER JOIN
* LEFT JOIN
* Detección de registros huérfanos
* Reportes agregados
* Consultas multitabla

---

# 🧱 Estructura de la Base de Datos

El sistema está compuesto por las siguientes tablas:

| Tabla       | Descripción                   |
| ----------- | ----------------------------- |
| `vendors`   | Información de vendedores     |
| `customers` | Información de clientes       |
| `products`  | Catálogo de productos         |
| `sales`     | Registro de ventas realizadas |

---

# 🔗 Relaciones Implementadas

Las tablas están conectadas mediante claves foráneas:

### Productos → Vendedores

```sql
products.vendor_id
→ vendors.vendor_id
```

### Ventas → Productos

```sql
sales.product_id
→ products.product_id
```

### Ventas → Clientes

```sql
sales.customer_id
→ customers.customer_id
```

Estas relaciones permiten consultar información relacionada entre múltiples entidades.

---

# 📥 Datos Registrados

El proyecto incluye:

* 5 vendedores
* 5 clientes
* 11 productos
* 10 ventas

Además, se agregó intencionalmente un producto sin ventas asociadas para practicar consultas con `LEFT JOIN`.

### Producto Huérfano

```text
Cafe Organico Premium
```

---

# 🔍 Consultas SQL Implementadas

---

# ✅ CONSULTA 1 — INNER JOIN PRINCIPAL

Relaciona productos y ventas para mostrar información de cada venta junto con el producto vendido.

### Conceptos aplicados:

* INNER JOIN
* Relación entre dos tablas
* Consultas relacionales

---

# ✅ CONSULTA 2 — JOIN CON TRES TABLAS

Combina:

* Productos
* Clientes
* Ventas

Permitiendo visualizar quién compró qué producto, cuándo lo compró y cuánto pagó.

### Conceptos aplicados:

* INNER JOIN múltiple
* Relaciones complejas
* Reportes completos

---

# ✅ CONSULTA 3 — LEFT JOIN

Muestra todos los productos registrados, incluso aquellos que no tienen ventas asociadas.

### Conceptos aplicados:

* LEFT JOIN
* Inclusión de registros sin coincidencia

---

# ✅ CONSULTA 4 — DETECCIÓN DE REGISTROS HUÉRFANOS

Identifica productos que aún no han sido vendidos.

### Conceptos aplicados:

* LEFT JOIN
* IS NULL
* Auditoría de datos

---

# ✅ CONSULTA 5 — REPORTE AGREGADO

Calcula la cantidad de ventas realizadas por cada producto.

Incluye también los productos con cero ventas.

### Conceptos aplicados:

* LEFT JOIN
* COUNT()
* GROUP BY
* Reportes estadísticos

---

# 📊 Aprendizajes Desarrollados

Durante esta práctica se fortalecieron habilidades relacionadas con:

* Modelado relacional
* Integridad referencial
* Consultas multitabla
* Generación de reportes
* Análisis de datos
* Detección de registros huérfanos
* Uso de funciones de agregación

---

# 🛠️ Tecnologías Utilizadas

* SQL
* SQLite
* Git Bash
* GitHub
* Visual Studio Code

---

# ▶️ Ejecución del Proyecto

## 1️⃣ Clonar repositorio

```bash
git clone URL_DEL_REPOSITORIO
```

---

## 2️⃣ Ingresar a la carpeta del proyecto

```bash
cd week-09-joins-mercado-campesino
```

---

## 3️⃣ Ejecutar el script SQL

```bash
sqlite3 mercado.db < joins_mercado.sql
```

---

# 📂 Organización del Proyecto

```plaintext
week-09-joins-mercado-campesino/
│
├── joins_mercado.sql
├── README.md
```

---

# 🌱 Contexto del Proyecto

El sistema representa un mercado campesino donde distintos vendedores ofrecen productos agrícolas y artesanales a diferentes clientes.

Algunos productos registrados son:

* Papa criolla
* Tomate
* Fresa
* Queso campesino
* Leche fresca
* Huevos campesinos
* Pollo campesino
* Café Orgánico Premium

El proyecto demuestra cómo relacionar toda esta información mediante JOINs para obtener reportes más útiles y completos.

---

# 👩‍💻 AUTOR

# Sofia Martin Torres

📚 Estudiante en formación – Analisis y Desarrollo de Software

🚀 SENA - Formación en Analisis y Desarrollo de Software