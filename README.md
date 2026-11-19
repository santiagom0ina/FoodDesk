# FoodDesk

Descripción
FoodDesk es un proyecto académico que consiste en el desarrollo de una API REST para consultar productos de un sistema de gestión de alimentos.

Tecnologías utilizadas
- Node.js
- Express
- PostgreSQL
- Postman

Requisitos
- Node.js instalado
- PostgreSQL instalado
- Una herramienta para ejecutar consultas SQL, como pgAdmin.

Instalación y ejecución

1. Descargar o clonar este repositorio.
2. Abrir una terminal dentro de la carpeta `backend`.
3. Instalar las dependencias:

   `npm install`

4. Crear una base de datos en PostgreSQL llamada `fooddesk_db`.
5. Importar el archivo `fooddesk_db_compartir.sql` para crear y cargar las tablas.
6. Configurar los datos de conexión de PostgreSQL en el archivo `db.js`, utilizando las credenciales locales de cada computador.
7. Iniciar el servidor:

   `node server.js`

El servidor se ejecutará en:

`http://localhost:3000`

## Endpoints de la API

| Método | Dirección | Descripción |
|---|---|---|
| GET | `/api/productos` | Consultar todos los productos |
| GET | `/api/productos/1` | Consultar un producto por su ID |

Pruebas
Los endpoints fueron probados utilizando Postman.

- Consulta de todos los productos: respuesta 200 OK.
- Consulta de un producto existente: respuesta 200 OK.
- Consulta de un producto inexistente: respuesta 404 Not Found.

Proyecto académico
FoodDesk - Formativa 2.
