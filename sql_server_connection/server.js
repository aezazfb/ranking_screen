const express = require('express');
const sql = require('mssql');
require('dotenv').config();

const app = express();
app.use(express.json());

const dbConfig = {
  server: 'localhost',
  database: 'RASE',
  user: 'flutter',
  password: '1234',
  port: 1433,
//  driver: 'msnodesqlv8',
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000
  },
  options: {
//    encrypt: true,
    connectTimeout: 30000,
    trustedConnection: true,
    trustServerCertificate: true,
//    instanceName: 'SQLEXPRESS'
  }
};

const pool = new sql.ConnectionPool(dbConfig);
const poolConnect = pool.connect()
  .then(() => console.log('Connected to SQL Server'))
  .catch(err => console.error('Database connection failed:', err));

// Listen for global errors emitted by the pool
pool.on('error', err => {
  console.error('SQL Server Pool Error:', err);
});

app.get('/users', async (req, res) => {
  try {
    // Ensure connection is ready
    await poolConnect;
    const result = await pool.request().query('SELECT * FROM EventType');
    res.json(result.recordset);
  } catch (err) {
    console.error('Query error:', err);
    res.status(500).send('Server error');
  }
});

// Graceful shutdown: close the SQL connection pool when the app is terminated.
const gracefulShutdown = () => {
  console.log('Shutting down server...');
  pool.close()
    .then(() => {
      console.log('SQL connection pool closed');
      process.exit(0);
    })
    .catch(err => {
      console.error('Error closing connection pool:', err);
      process.exit(1);
    });
};

process.on('SIGINT', gracefulShutdown);
process.on('SIGTERM', gracefulShutdown);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running  asdasd on port ${PORT}`));
