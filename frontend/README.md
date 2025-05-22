
1. Configurar la base de datos en pgAdmin
Para usar la base de datos, sigue estos pasos:
- Ubica el archivo .sql en la raíz del proyecto.
- Abre pgAdmin 4 y conéctate al servidor PostgreSQL.
- Crea una nueva base de datos con el nombre deseado.
- Abre el archivo .sql en un editor de texto, copia su contenido.
- En pgAdmin, abre la pestaña Query Tool, pega el contenido copiado y ejecuta el script para crear la base de datos con su estructura y datos.
- Verifica las credenciales en el archivo db.js.
- Si los datos no coinciden con los de tu PostgreSQL local, ajústalos.

2. Instalar dependencias del proyecto
Antes de ejecutar el código, instala los paquetes necesarios:
- Abre la terminal en Visual Studio Code.
- Ejecuta el siguiente comando en la raíz del proyecto:
npm install


- Si el proyecto no tiene un archivo package.json, primero ejecuta:
npm init


- y luego instala las dependencias con npm install.

3. Iniciar el backend
Para que el servidor backend funcione correctamente:
- Abre la terminal cmd y navega hasta la carpeta del proyecto:
cd ruta-del-proyecto
- Accede a la carpeta del backend:
cd backend
- Inicia el backend con Express y Node.js:
npm start



4. Iniciar el frontend
Para ejecutar la parte visual del proyecto:
- En Visual Studio Code, abre una nueva terminal.
- Navega hasta la carpeta frontend:
cd frontend
- Ejecuta el comando para correr el frontend:
npm run dev




