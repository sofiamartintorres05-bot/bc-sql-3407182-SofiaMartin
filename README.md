# 🌾 MERCADO CAMPESINO — OPERADORES Y FILTROS SQL 🌾

## 📚 Proyecto Semanal — Semana 05

Proyecto académico enfocado en el uso de operadores y filtros avanzados en SQL mediante consultas sobre una base de datos relacional de un mercado campesino.

Este sistema permite gestionar y consultar información relacionada con vendedores, clientes, productos y ventas utilizando filtros especializados como:

- `BETWEEN`
- `IN`
- `LIKE`

---

# 🎯 Objetivo del Proyecto

Aplicar técnicas de filtrado y búsqueda en SQL para recuperar información específica dentro de una base de datos.

Durante el desarrollo del proyecto se trabajó con:

- Consultas `SELECT`
- Filtros numéricos
- Búsquedas parciales de texto
- Rangos de valores
- Operadores lógicos
- Ordenamiento de resultados

---

# 🧱 Estructura de la Base de Datos

El sistema utiliza las siguientes tablas:

| Tabla | Descripción |
|---|---|
| `vendors` | Información de vendedores |
| `customers` | Registro de clientes |
| `products` | Inventario de productos |
| `sales` | Historial de ventas |

---

# 🛠️ Funcionalidades Implementadas

---

# ✅ Creación de Tablas

El proyecto crea automáticamente las tablas necesarias junto con sus relaciones mediante claves foráneas.

### Tablas creadas:
- `vendors`
- `customers`
- `products`
- `sales`

---

# ✅ Inserción de Datos

Se agregan registros reales simulando el funcionamiento de un mercado campesino.

### Datos incluidos:
- 10 vendedores
- 10 clientes
- 30 productos
- Registros de ventas

---

# 🔍 Consultas SQL Implementadas

---

# ✅ CONSULTA 1 — FILTRO CON `BETWEEN`

Muestra productos cuyos precios están entre 3000 y 10000.

### Conceptos aplicados:
- `BETWEEN`
- Rangos numéricos

---

# ✅ CONSULTA 2 — FILTRO CON `IN`

Obtiene productos pertenecientes a varias categorías específicas.

### Categorías:
- Frutas
- Lacteos
- Verduras

### Conceptos aplicados:
- `IN`
- Filtrado múltiple

---

# ✅ CONSULTA 3 — BÚSQUEDA CON `LIKE`

Busca productos cuyo nombre contenga la palabra “Queso”.

### Conceptos aplicados:
- `LIKE`
- Búsqueda parcial de texto

---

# ✅ CONSULTA 4 — FILTRO COMBINADO

Consulta productos de Frutas o Verduras:

- Con precios entre 2000 y 6000
- Que contengan la letra “a”

### Conceptos aplicados:
- `IN`
- `BETWEEN`
- `LIKE`
- `AND`
- `ORDER BY`

---

# ✅ CONSULTA 5 — FILTRO DE FECHAS CON `BETWEEN`

Muestra ventas realizadas entre fechas específicas.

### Conceptos aplicados:
- Rangos de fechas
- Ordenamiento cronológico

---

# ✅ CONSULTA 6 — BÚSQUEDA DE CLIENTES CON `LIKE`

Obtiene clientes cuyos nombres contienen la letra “a”.

### Conceptos aplicados:
- Coincidencias parciales
- Filtrado textual

---

# ✅ CONSULTA 7 — FILTRO DE CIUDADES CON `IN`

Muestra vendedores ubicados en:

- Bogotá
- Cali
- Tunja

### Conceptos aplicados:
- Filtros múltiples
- Consultas por ubicación

---

# ✅ CONSULTA 8 — FILTRO COMBINADO AVANZADO

Consulta productos:

- De categorías Lácteos y Dulces
- Con stock entre 20 y 80
- Que contengan la letra “o”

### Conceptos aplicados:
- `IN`
- `BETWEEN`
- `LIKE`
- Ordenamiento descendente

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
cd week-05-operadores_y_filtros
```

---

## 3️⃣ Ejecutar archivo SQL

```bash
sqlite3 mercado.db < operadores_filtros.sql
```

---

# 📂 Organización del Proyecto

```plaintext
week-05-operadores_y_filtros/
│
├── operadores_filtros.sql
├── README.md
```

---

# 📚 Aprendizajes Aplicados

Este proyecto permitió fortalecer conocimientos sobre:

- Bases de datos relacionales
- Operadores SQL
- Consultas avanzadas
- Filtrado de información
- Búsquedas parciales
- Manipulación de datos
- Organización de resultados

---

# 🌱 Contexto del Proyecto

El sistema representa un mercado campesino donde diferentes vendedores comercializan productos agrícolas y artesanales a distintos clientes.

### Productos registrados:

- Papa criolla
- Café orgánico
- Quesillo
- Chocolate artesanal
- Aguacate hass
- Panela orgánica
- Miel natural
- Arroz integral

---

# 👩‍💻 AUTOR

# Sofia Martin Torres

📚 Estudiante en formación – Analisis y Desarrollo de Software.

🚀 SENA - Formación en Analisis y Desarrollo de Software.
