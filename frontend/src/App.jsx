import { useState } from "react";
import axios from "axios";
import "./App.css";

function App() {
  const [usuario, setUsuario] = useState("");
  const [clave, setClave] = useState("");
  //usario y clave ya le estoy mandando el valor desde el return porque ahi ya esta el input
  const [datos, setDatos] = useState(null);
  const [mensaje, setMensaje] = useState("");

  const handleLogin = async () => {
    try {
      const response = await axios.post(
        "http://localhost:4000/api/auth/login",
        {
          usuario,
          clave,
        }
      );

      if (response.data.success) {
        const idpersona = response.data.idpersona;
        const datosResponse = await axios.get(
          `http://localhost:4000/api/datos/${idpersona}`
        );

        if (datosResponse.data.success) {
          setDatos(datosResponse.data.data);
          setMensaje("");
        } else {
          setMensaje("No se encuentran los datos");
          setDatos(null);
        }
      } else {
        setMensaje("Credenciales inválidas");
        setDatos(null);
      }
    } catch (err) {
      setMensaje("Error en la conexión");
      setDatos(null);
    }
  };

  return (
    <div className="general">
      <h2>Inicio de Sesión</h2>

      <div className="divUsuario">
        <label>Usuario:</label>
        <input
          type="text"
          value={usuario}
          onChange={(e) => setUsuario(e.target.value)}
        />
      </div>

      <div>
        <label className="clave">Clave:</label>
        <input
          type="password"
          value={clave}
          onChange={(e) => setClave(e.target.value)}
        />
      </div>

      <button onClick={handleLogin}>Ingresar</button>
      {/*&& segnifica que si existe, se supone que lo que esta netes de && es una variable ya creada*/}
      {mensaje && <p style={{ color: "red" }}>{mensaje}</p>}

      {datos && (
        <div>
          <h3>Datos del Usuario</h3>
          <p>Usuario: {datos.acceso_usuario}</p>
          <p>Cédula: {datos.pers_cedula}</p>

          <h3>Datos Personales</h3>
          <p>Nombre: {datos.pers_nombre}</p>
          <p>Apellido: {datos.pers_apellido}</p>
        </div>
      )}
    </div>
  );
}

export default App;
