const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.set('view engine', 'ejs');
app.use(bodyParser.json());

const homeRouter = require('./routes/home');
const userRouter = require('./routes/user');

app.use("/", homeRouter);
app.use('/user', userRouter);

app.listen(3000, () => {
    console.log('Server nyala bro');
});