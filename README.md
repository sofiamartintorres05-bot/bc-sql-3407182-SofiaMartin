# 🌾 Mercado Campesino — Consultas SELECT SQL

> Proyecto académico Semana 04 | SQL relacional y consultas de selección.

## 📌 Resumen del proyecto

Este repositorio contiene un conjunto de consultas `SELECT` diseñadas para extraer y analizar información de una base de datos de mercado campesino. El proyecto trabaja con tablas de vendedores, clientes, productos y ventas, aplicando filtros, ordenamientos y paginación.

## 📋 Qué se encuentra aquí

- Consultas SQL para explorar datos de un mercado campesino
- Uso práctico de `WHERE`, `ORDER BY`, `LIMIT`, `OFFSET`, `AND`, `OR` y alias con `AS`
- Definición de consultas para inventario, ventas y clientes
- Ejemplos de resultados y criterios de filtrado

---

## 📚 Tabla de contenidos

- [Objetivo](#objetivo)
- [Tablas del proyecto](#tablas-del-proyecto)
- [Consultas implementadas](#consultas-implementadas)
- [Tecnologías](#tecnologías)
- [Cómo ejecutar](#cómo-ejecutar)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Aprendizajes](#aprendizajes)
- [Autor](#autor)

---

## 🎯 Objetivo

Aplicar consultas SQL para obtener información relevante del dominio del mercado campesino, demostrando el uso de las principales operaciones de selección y filtrado en datos relacionales.

---

## 🧱 Tablas del proyecto

Las entidades principales utilizadas en el proyecto son:

| Tabla | Descripción |
|---|---|
| `vendors` | Vendedores del mercado campesino |
| `customers` | Clientes registrados |
| `products` | Productos agrícolas disponibles |
| `sales` | Registro de ventas realizadas |

---

## 🔍 Consultas implementadas

Se desarrollaron consultas para los siguientes casos de uso:

1. **Listado general de productos** con alias descriptivos.
2. **Productos con precio mayor a 5000**.
3. **Frutas con stock mayor a 30** usando `AND`.
4. **Top 5 productos más costosos** con `ORDER BY DESC` y `LIMIT`.
5. **Clientes ordenados alfabéticamente**.
6. **Productos de categoría Lácteos o Verduras** usando `OR`.
7. **Paginación primera página** con `LIMIT` y `OFFSET`.
8. **Paginación segunda página** de resultados.
9. **Ventas superiores a 10000** ordenadas de mayor a menor.
10. **Productos con bajo stock** para control de inventario.

> Estas consultas muestran cómo extraer datos útiles y estructurar resultados en escenarios reales.

---

## 🛠️ Tecnologías utilizadas

- SQL
- SQLite
- Visual Studio Code
- Git
- GitHub

---

## ▶️ Cómo ejecutar

1. Clona el repositorio:

```bash
git clone URL_DEL_REPOSITORIO
```

2. Entra a la carpeta del proyecto:

```bash
cd Proyecto_SQL_Mercado
```

3. Ejecuta el script SQL en SQLite:

```bash
sqlite3 mercado.db < consultas_select.sql
```

> Si utilizas otra herramienta SQL, carga el script en el editor y ejecútalo según su formato.

---

## 📂 Estructura del proyecto

```plaintext
Proyecto_SQL_Mercado/
├── README.md
├── consultas_select.sql
└── Starter/
    └── proyecto.sql
```

---

## 🧠 Aprendizajes

- Construcción y ejecución de consultas SQL de selección
- Filtrado de registros con condiciones múltiples
- Ordenamiento de resultados con `ORDER BY`
- Paginación de datos con `LIMIT` y `OFFSET`
- Uso de alias para mejor legibilidad de columnas
- Análisis de inventario y ventas en un dominio realista

---

## 👩‍💻 Autor

**Sofia Martin Torres**

📚 Estudiante en formación – Análisis y Desarrollo de Software

🚀 SENA - Formación en Analisis y Desarrollo de Software
