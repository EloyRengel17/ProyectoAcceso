// src/index.ts
import express from 'express';
import cors from 'cors';

import router from './endpoints/auth.js';
import data from './endpoints/data.js';

const app = express();

app.use(cors());
app.use(express.json());

app.use('/api/auth', router);
app.use('/api', data);

app.listen(4000, ()=>{
    console.log("esta corriendo en el puerto 4000")
})