Crear la base de datos:
Abre PostgreSQL (pgAdmin o terminal) y crea una base de datos con el nombre que figura en el archivo bd_accesso.sql (o el que desees).
Ejecuta el script SQL (bd_accesso.sql) en tu base de datos para crear las tablas necesarias.

Configurar credenciales:
Abre el archivo backend/db.js y modifica las credenciales para que coincidan con tu configuración de PostgreSQL

Instrucciones para Ejecutar el Proyecto
Este proyecto está dividido en dos partes principales: backend (servidor) y frontend (cliente). A continuación, se detallan los pasos necesarios para configurar y ejecutar ambas partes.

1. Configuración Inicial
Antes de iniciar el proyecto, asegúrate de tener instalados:
Node.js (v16 o superior recomendado).
npm (viene con Node.js) o yarn (opcional).

2. Instalar Dependencias
Es necesario instalar las dependencias tanto en el backend como en el frontend.
Backend:
Abre una terminal en la raíz del proyecto.
Navega a la carpeta backend: cd backend
Instala las dependencias: npm install

Frontend:

En otra terminal, navega a la carpeta frontend: cd frontend
Instala las dependencias: npm install

3. Ejecutar el Proyecto
Backend:
Asegúrate de estar en la carpeta backend (si seguiste los pasos anteriores, ya estarás allí).
Inicia el servidor: npm start

Frontend:
En otra terminal, navega a la carpeta frontend.
Inicia la aplicación: npm run dev

