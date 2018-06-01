
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser'); 
const app = express();
const jade = require('jade');

app.set('views', __dirname + '/pages');
app.set('view engine', 'jade');

app.use(cors());  
app.use(cors({origin: 'http://localhost:4200'}));
app.use(cors({origin: 'https://super-daj.herokuapp.com/'}));

  app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", '*');
    res.header("Access-Control-Allow-Credentials", true);
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
    res.header("Access-Control-Allow-Headers", 'Origin,X-Requested-With,Content-Type,Accept,content-type,application/json');
    next();
});

app.use(express.static(__dirname));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

var db  = mysql.createPool({
    connectionLimit : 10,
    host            : 'us-cdbr-iron-east-05.cleardb.net',
    user            : 'b686ade786fe7c',
    password        : 'd59ed826',
    database        : 'heroku_373b41bf2fad8f1'
  });


//RUTA PRINCIPAL
app.get('/',(req,res) => {
    res.render("index");
});

app.get('/Provincias',(req,res) => {
  let sql = 'select * from provincia ';
  let query = db.query(sql,(err,result) => {
    if(err) throw err;
    res.send(JSON.stringify(result));
  });
});

app.get('/Cantones',(req,res) => {
  let sql = 'select * from canton';
  let query = db.query(sql,(err,result) => {
    if(err) throw err;
    res.send(JSON.stringify(result));
  });
});

app.get('/Distritos',(req,res)=>{
  let sql = 'select * from distrito';
  let query = db.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(JSON.stringify(result));
  });
});

//CARGAR LUGARES REGISTRADOS
app.get('/Lugares',(req,res) => {
  let sql = 'CALL sp_cargarLugares();';
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});

//TODOS LOS PRODUCTOS
app.get('/Productos',(req,res) => {
  let sql = `CALL sp_cargarProductos();`;
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});

// PRODUCTOS DISPONIBLES
app.get('/ProductosDisponibles',(req,res) => {
  let sql = `CALL sp_cargarProductosDisponibles();`;
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});

//VENDEDORES
app.get('/Vendedores',(req,res) => {
  let sql = `CALL sp_cargarVendedores();`;
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});

//MARCAS
app.get('/Marcas',(req,res) => {
  let sql = 'CALL sp_cargarMarcas();';
  let query = db.query(sql, (err, result) => {
      if(err) throw err;``
      res.send(JSON.stringify(result));
  });
});

// CATEGORIAS
app.get('/Categorias',(req,res) => {
  let sql = 'SELECT * FROM categoria ORDER BY nombre ASC';
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});


//INSERCION DE PRODUCTOS

app.post('/insertarProducto', (req,res) => {
  console.log(req.body);
  var idCategoria = parseInt(req.body.categoria,10);
  var precio = parseInt(req.body.precio,10);
  var existencia = parseInt(req.body.existencia,10); 
  var tarifaEnvio = parseInt(req.body.tarifaEnvio,10);                       //(idVendedor, idCategoria, marca, nombre, descripcion, precio, existencia, duracionEnvio, tarifaEnvio, imagen)
  let sql = `CALL sp_insertarProducto('${req.body.idVendedor}',${idCategoria},'${req.body.marca}','${req.body.producto}','${req.body.descripcion}',${precio},${existencia},'${req.body.duracionEnvio}',${tarifaEnvio},'${req.body.imagen}')`;
  let query = db.query(sql, (err, result) => {
      if(err){
          return false;
          throw err;
      }
      res.send(result);
      console.log("Producto insertado. "+result);
      return true;
  });
});

// EDITAR PRODUCTOS
// -- idProducto,idCategoria,marca,nombre,descripcion,precio,existencia,duracionEnvio,tarifaEnvio,imagen
app.post('/editarProducto', (req,res) => {
  console.log(req.body);
  var idProducto = parseInt(req.body.idProducto,10);
  var idCategoria = parseInt(req.body.idCategoria,10);
  var precio = parseInt(req.body.precio,10);
  var existencia = parseInt(req.body.existencia,10); 
  var tarifaEnvio = parseInt(req.body.tarifaEnvio,10);                       
  let sql = `CALL sp_editarProducto(${idProducto},${idCategoria},'${req.body.marca}','${req.body.producto}','${req.body.descripcion}',${precio},${existencia},'${req.body.duracionEnvio}',${tarifaEnvio},'${req.body.imagen}')`;
  let query = db.query(sql, (err, result) => {
      if(err){
          return false;
          throw err;
      }
      res.send(result);
      console.log("Producto insertado. "+result);
      return true;
  });
});

// BORRAR PRODUCTO
app.post('/eliminarProducto', (req,res) => {
  console.log(req.body);
  var idProducto = parseInt(req.body.idProducto,10);                    
  let sql = `CALL sp_eliminarProducto(${idProducto})`;
  let query = db.query(sql, (err, result) => {
      if(err){
          return false;
          throw err;
      }
      res.send(result);
      console.log("Producto insertado. "+result);
      return true;
  });
});



// CARGAR SOLICITUDES
app.get('/Solicitudes',(req,res) => {
  let sql = 'CALL sp_cargarSolicitudVendedor();';
  let query = db.query(sql, (err, result) => {
      if(err) throw err;
      res.send(JSON.stringify(result));
  });
});

//INSERTAR SOLICITUDES
app.post('/SolicitarVender', (req,res) => {
  console.log(req.body);              //(idVendedor, idCategoria, marca, nombre, descripcion, precio, existencia, duracionEnvio, tarifaEnvio, imagen)
  let sql = `CALL sp_insertarSolicitudVendedor('${req.body.idVendedor}','${req.body.descripcion}','${req.body.nComercio}')`;
  let query = db.query(sql, (err, result) => {
      if(err){
          return false;
          throw err;
      }
      res.send(result);
      console.log("Solicitud insertada. "+result);
      return true;
  });
});

//DECIDIR SOLICITUDES DE VENDEDOR
app.post('/decidirVendedor', (req,res) => {
  console.log(req.body);
  var decision = parseInt(req.body.decision,10);
  var idSolicitud = parseInt(req.body.idSolicitud,10);
  let sql = `CALL sp_decidirVendedor(${idSolicitud},'${req.body.idUsuario}',${decision})`;
  let query = db.query(sql, (err, result) => {
      if(err){
          return false;
          throw err;
      }
      res.send(result);
      console.log("Solicitud resuelta. "+result);
      return true;
  });
});


// INICIAR SERVIDOR

app.listen(process.env.PORT || 3000, function(){
  console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
});