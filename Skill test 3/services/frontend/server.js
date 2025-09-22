const express = require('express');
const app = express();
const port = process.env.PORT || 80;
app.get('/', (req, res) => res.send('Frontend is Live'));
app.listen(port, () => console.log('frontend service on ' + port));
