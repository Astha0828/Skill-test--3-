const express = require('express');
const app = express();
const port = process.env.PORT || 3003;
app.get('/', (req, res) => res.send('Orders Service Running'));
app.listen(port, () => console.log('orders service on ' + port));
