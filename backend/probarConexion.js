const pool = require('./db');

async function probarConexion() {
    try {
        const resultado = await pool.query('SELECT NOW()');

        console.log('¡Conexión exitosa con PostgreSQL!');
        console.log('Fecha y hora del servidor:', resultado.rows[0]);

    } catch (error) {
        console.log('Error al conectar con PostgreSQL:');
        console.log(error.message);

    } finally {
        await pool.end();
    }
}

probarConexion();