const express = require('express');
const cors = require('cors');

const app = express();
app.use(cors()); // Allow frontend requests

const fonts = ['Arial', 'Verdana', 'Courier', 'Times New Roman', 'Georgia'];

app.get('/change-font', (req, res) => {
    const randomFont = fonts[Math.floor(Math.random() * fonts.length)];
    res.json({ font: randomFont });
});

app.listen(3000, () => {
    console.log('Font API running on http://localhost:3000');
});
