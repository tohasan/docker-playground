const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const { PORT } = process.env;

app.use(cors());
app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.send('I am a service!');
});

app.get('/welcome', (req, res) => {
    res.send('Hi guy!');
});

app.listen(PORT, () => {
    console.log(`Service is listening at the port ${PORT}`);
});