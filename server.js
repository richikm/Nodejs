'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
<<<<<<< HEAD
  res.send('Hello world!Version is Prod\n');
=======
  res.send('Hello world!Version is Dev\n');
>>>>>>> 46e960e4eed7f265ee5bb7b21bcc3e7432056b13
});

var port = process.env.PORT||PORT;
app.listen(port);
console.log(`Running on http://${HOST}:${PORT}`);
