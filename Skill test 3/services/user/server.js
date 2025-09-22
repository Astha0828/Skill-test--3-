const express = require('express');
const app = express();
const port = process.env.PORT || 3001;
app.get('/', (req, res) => res.send('User Service Running'));
app.listen(port, () => console.log('user service on ' + port));
