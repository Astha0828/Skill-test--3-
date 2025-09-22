const express = require('express');
const app = express();
const port = process.env.PORT || 3004;
app.get('/', (req, res) => res.send('Cart Service Running'));
app.listen(port, () => console.log('cart service on ' + port));
