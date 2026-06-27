# 🌾 MERCADO CAMPESINO — FUNCIONES DE AGREGACIÓN SQL 🌾

## 📚 Proyecto Semanal — Semana 06

Proyecto académico desarrollado en SQL enfocado en el uso de funciones de agregación y generación de reportes dentro de una base de datos relacional.

El sistema representa un mercado campesino donde se administran productos, clientes, vendedores y ventas mediante consultas analíticas utilizando:

- `COUNT`
- `SUM`
- `AVG`
- `MIN`
- `MAX`
- `GROUP BY`
- `HAVING`

---

# 🎯 Objetivo del Proyecto

Aplicar funciones de agregación para resumir, analizar y agrupar información almacenada en una base de datos.

Durante el proyecto se trabajó con:

- Reportes estadísticos
- Agrupación de registros
- Totales acumulados
- Promedios
- Subtotales por categoría
- Filtros sobre grupos de datos

---

# 🧱 Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

| Tabla | Descripción |
|---|---|
| `vendors` | Información de vendedores |
| `customers` | Información de clientes |
| `products` | Inventario de productos |
| `sales` | Historial de ventas |

---

# 🛠️ Funcionalidades Implementadas

---

# ✅ Creación de Tablas

El sistema crea automáticamente las tablas necesarias utilizando claves primarias y foráneas para mantener la integridad relacional.

### Tablas creadas:
- `vendors`
- `customers`
- `products`
- `sales`

---

# ✅ Inserción de Datos

Se agregan registros simulando el funcionamiento real de un mercado campesino.

### Datos registrados:
- 10 vendedores
- 10 clientes
- 30 productos
- Ventas asociadas

---

# 📊 Reportes SQL Implementados

---

# ✅ REPORTE 1 — TOTALES GLOBALES

Calcula:

- Cantidad total de productos
- Suma total de precios
- Promedio general de precios

### Funciones utilizadas:
- `COUNT()`
- `SUM()`
- `AVG()`

---

# ✅ REPORTE 2 — VALORES MÍNIMOS Y MÁXIMOS

Obtiene el producto más económico y el más costoso del sistema.

### Funciones utilizadas:
- `MIN()`
- `MAX()`

---

# ✅ REPORTE 3 — SUBTOTALES POR CATEGORÍA

Agrupa productos por categoría y calcula:

- Cantidad de productos
- Precio promedio
- Stock acumulado

### Funciones utilizadas:
- `GROUP BY`
- `COUNT()`
- `AVG()`
- `SUM()`

---

# ✅ REPORTE 4 — FILTRO DE GRUPOS CON HAVING

Muestra únicamente las categorías que poseen más de 2 productos registrados.

### Funciones utilizadas:
- `GROUP BY`
- `HAVING`

---

# ✅ REPORTE 5 — TOTAL DE VENTAS POR CLIENTE

Genera un resumen de compras por cliente mostrando:

- Cantidad de compras
- Dinero total gastado
- Promedio de compra

### Funciones utilizadas:
- `COUNT()`
- `SUM()`
- `AVG()`
- `GROUP BY`

---

# ✅ REPORTE 6 — STOCK TOTAL POR CATEGORÍA

Calcula el stock acumulado de productos agrupados por categoría.

Solo se muestran categorías cuyo stock total sea mayor a 50.

### Funciones utilizadas:
- `SUM()`
- `GROUP BY`
- `HAVING`

---

# 🛠️ Tecnologías Utilizadas

- SQL
- SQLite
- Git Bash
- GitHub
- Visual Studio Code

---

# ▶️ Ejecución del Proyecto

## 1️⃣ Clonar repositorio

```bash
git clone URL_DEL_REPOSITORIO
```

---

## 2️⃣ Ingresar a la carpeta del proyecto

```bash
cd week-06-funciones_de_agregacion
```

---

## 3️⃣ Ejecutar archivo SQL

```bash
sqlite3 mercado.db < funciones_agregacion.sql
```

---

# 📂 Organización del Proyecto

```plaintext
week-06-funciones_de_agregacion/
│
├── funciones_agregacion.sql
├── README.md
```

---

# 📚 Conceptos Aplicados

Este proyecto permitió fortalecer conocimientos sobre:

- Funciones de agregación
- Consultas analíticas
- Agrupación de datos
- Generación de reportes
- Estadísticas en SQL
- Filtrado avanzado con HAVING
- Organización y resumen de información

---

# 🌱 Contexto del Proyecto

El sistema simula un mercado campesino donde diferentes vendedores comercializan productos agrícolas y artesanales a múltiples clientes.

### Productos registrados:

- Café orgánico
- Aguacate hass
- Quesillo
- Panela orgánica
- Chocolate artesanal
- Miel natural
- Huevos campesinos
- Avena artesanal

---

# 👩‍💻 AUTOR

# Sofia Martin Torres

📚 Estudiante en formación – Analisis y Desarrollo de Software.

🚀 SENA - Formación en Analisis y Desarrollo de Software.
