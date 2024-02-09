var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();
var pool = require('./models/bd');
var session = require('express-session');
var fileUpload = require('express-fileupload');
var cors = require('cors');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/admin/login');
var adminRouter = require('./routes/admin/precios');
var apiRouter = require('./routes/api');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use(session ({
  secret: 'PW2021awqyeudj',
  cookie: { maxAge: null },
  resave: false,
  saveUnintialized: true
}));


secured = async (req, res, next) => {
  try {
    console.log(req.session.id_usuario);
    if(req.session.id_usuario) {
      next();
    } else {
      res.redirect('/admin/login');
    } //cierro else
  } catch (error) {
    console.log(error);
  } //cierro catch error
}; //cierro secured

app.use(fileUpload ({
  useTempFiles: true,
  tempFileDir: '/tmp/'
}));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/precios', secured, adminRouter);
app.use('/api', cors(), apiRouter);

// select
pool.query('select * from precios').then(function (resultados) {
  console.log(resultados)
});


//update
// var id = 26
// var obj = {
//   precio: 4500
// }

// pool.query('update precios set ? where id_producto=?', [obj,id]).then(function (resultados) {
//   console.log(resultados)
// });

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
