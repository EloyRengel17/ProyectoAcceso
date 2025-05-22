
import { Pool } from "pg";


const pool= new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'bd_acceso',
    password: 'admin',
    port: 5432,
});

export default pool;