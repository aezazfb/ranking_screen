const express = require('express');
const { poolPromise } = require('./db');

const app = express();
const port = 3000;

app.get('/api/users', async (req, res) => {
  try {
    const pool = await poolPromise;
    const result = await pool.request().query('SELECT * FROM EventType'); // adjust table name
    res.json(result.recordset);
  } catch (err) {
    console.error('Query error:', err);
    res.status(500).send('Server error');
  }
});

app.listen(port, () => {
  console.log(`🚀 Server running at http://localhost:${port}`);
});
