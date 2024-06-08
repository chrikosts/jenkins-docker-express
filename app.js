// app.js
const express = require('express');
const app = express();
const port = 3000;

const username = process.env.MYAPP_USERNAME || 'default-username';
const password = process.env.MYAPP_PASSWORD || 'default-password';


// Define a route for the "hello world" endpoint
app.get('/hello', (req, res) => {
  res.send('Hello World  with username: ' + username +' and password: '+ password + '!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});

