const moment = require('moment')
moment.locale('es')
console.log('Naci ' + moment("20111031", "YYYYMMDD").fromNow());