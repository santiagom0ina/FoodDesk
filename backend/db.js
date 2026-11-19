const { Pool } = require('pg');

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'fooddesk_db',
    password: 'TU_CONTRASEÑA',
    port: 5432
});

module.exports = pool;