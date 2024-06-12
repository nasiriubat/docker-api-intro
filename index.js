// Import the Express module
const express = require('express');

// Create an instance of an Express application
const app = express();

// Define the port the application will listen on
const port = 3000;

// Define a route handler for the default home page
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Start the Express server and listen on the specified port
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
