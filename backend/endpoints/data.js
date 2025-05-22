import { Router } from "express";
import pool from "../db.js";

const router = Router();
router.get("/datos/:idpersona", async (req, res) => {
  const { idpersona } = req.params;
  console.log("ID Persona recibido:", idpersona);
  try {
    const query = `
            SELECT a.acceso_clave, a.acceso_usuario, 
                   p.pers_cedula, p.pers_nombre, p.pers_apellido 
            FROM acceso a 
            JOIN persona p ON a.idpersona = p.idpersona 
            WHERE p.idpersona = $1`;

    const result = await pool.query(query, [idpersona]);

    if (result.rows.length > 0) {
      res.json({ success: true, data: result.rows[0] });
    } else {
      res
        .status(404)
        .json({ success: false, message: "No se encontró la cédula" });
    }
  } catch (err) {
    console.error("Error en consulta:", err);
    res.status(500).json({ success: false, message: "Error del servidor" });
  }
});
export default router;
