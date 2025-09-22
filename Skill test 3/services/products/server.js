const express = require('express');
const app = express();
const port = process.env.PORT || 3002;
app.get('/', (req, res) => res.send('Products Service Running'));
app.listen(port, () => console.log('products service on ' + port));
