import { Router } from "express";
import pool from "../db.js";

const data = Router();

data.post("/login", async (req, res) => {
  const { usuario, clave } = req.body;
  try {
    const result = await pool.query(
      `SELECT idacceso, idpersona 
        FROM acceso 
        WHERE acceso_usuario = $1 AND acceso_clave = $2`,
      [usuario, clave]
    );

    if (result.rows.length > 0) {
      res.json({ success: true, idpersona: result.rows[0].idpersona });
    } else {
      res.json({ success: false, message: "credenciales invalidas" });
    }
  } catch (err) {
    console.log("erro en la conexion");
  }
});

export default data;
