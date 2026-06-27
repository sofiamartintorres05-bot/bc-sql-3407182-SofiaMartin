# 🌾🌾🌾 MERCADO CAMPESINO — CONSULTAS SELECT SQL 🌾🌾🌾

## 📚 Proyecto Semanal — Semana 04

Proyecto académico desarrollado en SQL enfocado en la utilización de consultas `SELECT` para la extracción y organización de información dentro de una base de datos relacional.

El sistema representa un mercado campesino donde se administran productos, clientes, vendedores y ventas mediante consultas estructuradas.

---

## 📌 Resumen del proyecto

Este repositorio contiene un conjunto de consultas SQL diseñadas para explorar y analizar los datos de un mercado campesino. La base de datos incluye tablas de vendedores, clientes, productos y ventas, y el script muestra distintos métodos para obtener información útil mediante filtros, ordenamientos y paginación.

## 📋 Qué se encuentra aquí

- Consultas `SELECT` para extraer datos de un mercado campesino.
- Ejemplos de `WHERE`, `ORDER BY`, `LIMIT`, `OFFSET`, `AND`, `OR` y alias `AS`.
- Consultas de inventario, análisis de ventas y gestión de clientes.
- Buena práctica en consultas SELECT con criterios reales.

---

## 📚 Tabla de contenidos

- [Objetivo General](#🎯-objetivo-general)
- [Tablas Utilizadas](#🧱-tablas-utilizadas)
- [Consultas Implementadas](#🔍-consultas-implementadas)
- [Tecnologías Utilizadas](#🛠️-tecnologías-utilizadas)
- [Cómo Ejecutar el Proyecto](#▶️-ejecución-del-proyecto)
- [Organización del Proyecto](#📂-organización-del-proyecto)
- [Aprendizajes Aplicados](#📚-aprendizajes-aplicados)
- [Contexto del Proyecto](#🌱-contexto-del-proyecto)
- [Autor](#👩‍💻-autor)

---

## 🎯 Objetivo General

Aplicar consultas SQL utilizando herramientas fundamentales del lenguaje:

- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `OFFSET`
- Alias con `AS`
- Operadores lógicos `AND` y `OR`

---

## 🧱 Tablas Utilizadas

La base de datos utiliza las siguientes entidades:

| Tabla | Función |
|---|---|
| `vendors` | Registro de vendedores |
| `customers` | Registro de clientes |
| `products` | Inventario de productos |
| `sales` | Historial de ventas |

---

## 🔍 Consultas Implementadas

---

## ✅ CONSULTA 1 — LISTADO GENERAL DE PRODUCTOS

Muestra todos los productos registrados utilizando nombres descriptivos en español.

### Conceptos aplicados:
- `SELECT`
- Alias con `AS`

---

## ✅ CONSULTA 2 — FILTRO POR PRECIO

Consulta los productos cuyo precio es mayor a 5000.

### Conceptos aplicados:
- `WHERE`
- Comparaciones numéricas

---

## ✅ CONSULTA 3 — FILTRO COMBINADO CON AND

Muestra productos de categoría frutas con stock superior a 30 unidades.

### Conceptos aplicados:
- `AND`
- Condiciones múltiples

---

## ✅ CONSULTA 4 — TOP 5 PRODUCTOS MÁS COSTOSOS

Obtiene los cinco productos con mayor precio.

### Conceptos aplicados:
- `ORDER BY DESC`
- `LIMIT`

---

## ✅ CONSULTA 5 — CLIENTES ORDENADOS ALFABÉTICAMENTE

Organiza la lista de clientes por nombre ascendente.

### Conceptos aplicados:
- `ORDER BY ASC`

---

## ✅ CONSULTA 6 — FILTRO CON OPERADOR OR

Muestra productos pertenecientes a las categorías Lácteos o Verduras.

### Conceptos aplicados:
- Operador lógico `OR`

---

## ✅ CONSULTA 7 — PAGINACIÓN (PÁGINA 1)

Visualiza los primeros tres productos ordenados alfabéticamente.

### Conceptos aplicados:
- `LIMIT`
- `OFFSET`

---

## ✅ CONSULTA 8 — PAGINACIÓN (PÁGINA 2)

Muestra los siguientes tres productos del listado.

### Conceptos aplicados:
- Paginación SQL
- Navegación de registros

---

## ✅ CONSULTA 9 — CONSULTA DE VENTAS

Muestra ventas superiores a 10000 ordenadas de mayor a menor.

### Conceptos aplicados:
- Filtrado numérico
- Orden descendente

---

## ✅ CONSULTA 10 — PRODUCTOS CON BAJO STOCK

Permite identificar productos con menos de 40 unidades disponibles.

### Conceptos aplicados:
- Control básico de inventario
- Ordenamiento ascendente

---

## 🛠️ Tecnologías Utilizadas

- SQL
- SQLite
- Git Bash
- GitHub
- Visual Studio Code

---

## ▶️ Ejecución del Proyecto

## 1️⃣ Clonar repositorio

```bash
git clone URL_DEL_REPOSITORIO
```

---

## 2️⃣ Ingresar a la carpeta

```bash
cd mercado-campesino-select
```

---

## 3️⃣ Ejecutar el archivo SQL

```bash
sqlite3 mercado.db < consultas_select.sql
```

---

## 📂 Organización del Proyecto

```plaintext
mercado-campesino-select/
│
├── consultas_select.sql
├── README.md
```

---

## 📚 Aprendizajes Aplicados

Durante el desarrollo del proyecto se aplicaron conocimientos sobre:

- Bases de datos relacionales
- Consultas SQL
- Filtrado de datos
- Ordenamiento de registros
- Paginación
- Buenas prácticas en consultas SELECT

---

## 🌱 Contexto del Proyecto

El sistema simula el funcionamiento de un mercado campesino donde diferentes vendedores ofrecen productos agrícolas y alimenticios a distintos clientes.

### Productos registrados:

- Papa criolla
- Aguacate
- Mora
- Fresa
- Leche fresca
- Huevos
- Panela
- Queso campesino

---

## 👩‍💻 AUTOR

# Sofia Martin Torres

📚 Estudiante en formación – Analisis y Desarrollo de Software

🚀 SENA - Formación en Analisis y Desarrollo de Software
