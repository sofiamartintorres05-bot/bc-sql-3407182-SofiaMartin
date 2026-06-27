# 🌾 MERCADO CAMPESINO — NULL Y CONSTRAINTS SQL 🌾

# 📚 Proyecto Semanal — Semana 07

Proyecto académico enfocado en la implementación de restricciones de integridad y manejo de valores nulos dentro de una base de datos relacional utilizando SQL.

Este proyecto permite comprender cómo garantizar la calidad y consistencia de los datos mediante el uso de:

- `NOT NULL`
- `UNIQUE`
- `CHECK`
- `FOREIGN KEY`
- `IS NULL`
- `COALESCE`

---

# 🎯 Objetivo del Proyecto

Aplicar mecanismos de validación y control de datos para asegurar la integridad de la información almacenada en una base de datos.

Durante el desarrollo del proyecto se trabajó con:

- Restricciones de integridad
- Validación de datos
- Manejo de valores nulos
- Relaciones entre tablas
- Consultas sobre datos incompletos
- Sustitución de valores NULL

---

# 🧱 Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

| Tabla | Descripción |
|--------|------------|
| `vendors` | Información de vendedores |
| `customers` | Información de clientes |
| `products` | Inventario de productos |
| `sales` | Registro de ventas |

---

# 🔒 Constraints Implementados

Este proyecto incorpora diferentes restricciones para proteger la calidad de los datos.

## ✅ PRIMARY KEY

Garantiza que cada registro tenga un identificador único.

Ejemplos:

- `vendor_id`
- `customer_id`
- `product_id`
- `sale_id`

---

## ✅ NOT NULL

Impide que determinados campos queden vacíos.

Aplicado en:

- Nombres de vendedores
- Nombres de clientes
- Categorías de productos
- Fechas de venta
- Cantidades
- Totales

---

## ✅ UNIQUE

Evita la duplicación de información crítica.

Aplicado en:

- `email` de los clientes

---

## ✅ CHECK

Valida que los datos cumplan reglas específicas.

Reglas implementadas:

- El precio debe ser mayor que 0.
- El stock no puede ser negativo.
- La cantidad vendida debe ser mayor que 0.
- El total de la venta debe ser mayor que 0.

---

## ✅ FOREIGN KEY

Mantiene la integridad referencial entre tablas.

Relaciones:

- Productos → Vendedores
- Ventas → Productos
- Ventas → Clientes

---

# 📥 Inserción de Datos

Se registraron datos de prueba para simular el funcionamiento de un mercado campesino.

### Registros incluidos

- 6 vendedores
- 6 clientes
- 30 productos
- 6 ventas

Además, algunos registros contienen valores `NULL` de forma intencional para practicar consultas especializadas.

---

# 🔍 Consultas SQL Implementadas

---

# ✅ CONSULTA 1 — IS NULL

Muestra los clientes que no tienen correo electrónico registrado.

### Conceptos aplicados:

- `IS NULL`
- Detección de información faltante

---

# ✅ CONSULTA 2 — IS NULL

Muestra los vendedores que no tienen número telefónico registrado.

### Conceptos aplicados:

- `IS NULL`
- Validación de registros incompletos

---

# ✅ CONSULTA 3 — COALESCE

Reemplaza los correos electrónicos nulos por un texto descriptivo.

### Resultado esperado:

```sql
Correo no registrado
```

### Conceptos aplicados:

- `COALESCE`
- Sustitución de valores NULL

---

# ✅ CONSULTA 4 — COALESCE

Reemplaza los teléfonos nulos por un mensaje informativo.

### Resultado esperado:

```sql
Sin telefono registrado
```

### Conceptos aplicados:

- `COALESCE`
- Presentación amigable de datos

---

# ✅ CONSULTA 5 — VALIDACIÓN DE PRODUCTOS

Verifica que los productos almacenados cumplen con las restricciones definidas mediante `CHECK`.

### Validaciones:

- Precio positivo
- Stock mayor o igual a cero

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
cd week-07-null-y-constraints
```

---

## 3️⃣ Ejecutar el archivo SQL

```bash
sqlite3 mercado.db < null_constraints.sql
```

---

# 📂 Organización del Proyecto

```plaintext
week-07-null-y-constraints/
│
├── null_constraints.sql
├── README.md
```

---

# 📚 Conceptos Aprendidos

Este proyecto fortalece conocimientos sobre:

- Integridad de datos
- Restricciones SQL
- Claves foráneas
- Validación de registros
- Manejo de valores NULL
- Uso de COALESCE
- Buenas prácticas de diseño relacional

---

# 🌱 Contexto del Proyecto

El sistema simula un mercado campesino donde se administran productos agrícolas y artesanales comercializados por distintos vendedores.

### Productos registrados

- Papa criolla
- Café orgánico
- Aguacate hass
- Quesillo
- Panela orgánica
- Chocolate artesanal
- Miel natural
- Arroz integral
- Huevos campesinos
- Avena artesanal

---

# 👩‍💻 AUTOR

# Sofia Martin Torres

📚 Estudiante en formación – Analisis y Desarrollo de Software

🚀 SENA - Formación en Analisis y Desarrollo de Software
