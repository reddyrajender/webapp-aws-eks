// app/index.js
const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Hello from EKS!'));
app.listen(80);