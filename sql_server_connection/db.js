const sql = require('mssql'); // Use the correct driver
require('dotenv').config();

const config = {
  server: 'localhost', // Include the instance name
  user: 'flutter2',
  password: '1230',
  database: 'RASE',
//  driver: 'msnodesqlv8',
  options: {
    trustedConnection: true,
    trustServerCertificate: true,
  },
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000,
  }
};

const poolPromise = new sql.ConnectionPool(config)
  .connect()
  .then(pool => {
    console.log('✅ Connected to SQL Server');
    return pool;
  })
  .catch(err => console.error('❌ Database Connection Failed!', err));

module.exports = {
  sql, poolPromise
};
