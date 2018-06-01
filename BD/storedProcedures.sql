

-- INSERTAR USUARIO

DROP PROCEDURE IF EXISTS `sp_insertarComprador`;

DELIMITER $
CREATE PROCEDURE sp_insertarComprador 
(
IN p_nombre VARCHAR(30),
IN p_apellido VARCHAR(30),
IN p_nComercio VARCHAR(60),
IN p_email VARCHAR(30))
BEGIN
	INSERT INTO usuario (nombre, apellido, nComercio, email, tipoUsuario) VALUES
    (p_nombre, p_apellido, p_nComercio, p_email,0);
END $

-- INSERTAR CATEGORIA

DROP PROCEDURE IF EXISTS `sp_insertarCategoria`;

DELIMITER $
CREATE PROCEDURE sp_insertarCategoria
(
IN p_nombre VARCHAR(50)
)
BEGIN
	INSERT INTO categoria (nombre) VALUES
    (p_nombre);
END $


-- INSERTAR PRODUCTO

DROP PROCEDURE IF EXISTS `sp_insertarProducto`;

DELIMITER $
CREATE PROCEDURE sp_insertarProducto
(
IN p_idVendedor VARCHAR(30),
IN p_idCategoria SMALLINT,
IN p_marca VARCHAR(60),
IN p_nombre VARCHAR(60),
IN p_descripcion VARCHAR(200),
IN p_precio INT,
IN p_existencia INT,
IN p_duracionEnvio VARCHAR(12),
IN p_tarifaEnvio INT,
IN p_imagen VARCHAR(300)
)
BEGIN
	INSERT INTO producto (idVendedor, idCategoria, marca, nombre, descripcion, precio, existencia, duracionEnvio, tarifaEnvio, imagen) VALUES
    (p_idVendedor, p_idCategoria, p_marca, p_nombre, p_descripcion, p_precio, p_existencia, p_duracionEnvio, p_tarifaEnvio, p_imagen);
END $

 
-- EDITAR PRODUCTO

DROP PROCEDURE IF EXISTS `sp_editarProducto`;

DELIMITER $
CREATE PROCEDURE sp_editarProducto (IN p_idProducto SMALLINT,IN p_idCategoria SMALLINT, IN p_marca VARCHAR(60),IN p_nombre VARCHAR(60),IN p_descripcion VARCHAR(200),IN p_precio INT,IN p_existencia INT,IN p_duracionEnvio VARCHAR(12),IN p_tarifaEnvio INT,IN p_imagen VARCHAR(300))
BEGIN
	UPDATE producto 
    SET 
		idCategoria = p_idCategoria,
        marca=p_marca,
        nombre=p_nombre,
        descripcion=p_descripcion,
        precio=p_precio,
        existencia=p_existencia,
        duracionEnvio=p_duracionEnvio,
        tarifaEnvio=p_tarifaEnvio,
        imagen=p_imagen
    WHERE idProducto = p_idProducto;
END $
 
 -- p_idProducto,p_idCategoria,p_marca,p_nombre,p_descripcion,p_precio,p_existencia,p_duracionEnvio,p_tarifaEnvio,p_imagen
 
 CALL sp_editarProducto(41,1,'Light Source','Libro AngularJS en 20 dias','Este es otro libro de AngularJS. Descripcion editada.',26400,18,'20-24 Horas',4175,'http://res.cloudinary.com/ddzutuizv/image/upload/v1527130802/JS_fma0yx.jpg');
 CALL sp_cargarProductos()
 
-- BORRAR PRODUCTO

DROP PROCEDURE IF EXISTS `sp_eliminarProducto`;

DELIMITER $
CREATE PROCEDURE sp_eliminarProducto (IN p_idProducto SMALLINT)
BEGIN
	UPDATE 
		producto 
    SET
		estado=0
	WHERE 
		idProducto=p_idProducto;
END $

CALL sp_cargarProductos();
CALL sp_eliminarProducto(251)

-- INSERTAR DIRECCION

DROP PROCEDURE IF EXISTS `sp_insertarDireccion`;

DELIMITER $
CREATE PROCEDURE sp_insertarDireccion
(
IN p_idUsuario VARCHAR(30),
IN p_idDistrito SMALLINT,
IN p_dExacta VARCHAR(150)
)
BEGIN
	INSERT INTO direccion (idUsuario,idDistrito,dExacta) VALUES
    (p_idUsuario,p_idDistrito,p_dExacta);
END $


-- INSERTAR SOLICITUD

DROP PROCEDURE IF EXISTS `sp_insertarSolicitudVendedor`;

DELIMITER $
CREATE PROCEDURE sp_insertarSolicitudVendedor
(
IN p_idVendedor VARCHAR(30),
IN p_descripcion VARCHAR(150),
IN p_nComercio VARCHAR(60)
)
BEGIN
    INSERT INTO solicitud (idVendedor,descripcion,tipoSolicitud) 
    VALUES
		(p_idVendedor,p_descripcion,0);
    UPDATE 
		usuario 
	SET 
		nComercio=p_nComercio 
	WHERE 
		idUsuario=p_idVendedor;
END $

SELECT * FROM solicitud

DROP PROCEDURE IF EXISTS `sp_cargarSolicitudVendedor`;

DELIMITER $
CREATE PROCEDURE sp_cargarSolicitudVendedor()
BEGIN
		SELECT 
			s.idSolicitud, s.idVendedor, u.nComercio, s.tipoSolicitud, s.descripcion, s.estado 
        FROM 
			solicitud s INNER JOIN usuario u ON s.idVendedor=u.idUsuario 
		ORDER BY 
			s.tipoSolicitud ASC; 
END $

CALL sp_cargarSolicitudVendedor();


-- CALL sp_insertarSolicitarVendedor('116481658024149298998')


-- CARGAR TODAS LAS SOLICITUDES


-- ACTUALIZA EL TIPO DE USUARIO CUANDO SE APRUEBA SU SOLICITUD Y ELIMINA LA SOLICITUD

DROP PROCEDURE IF EXISTS `sp_decidirVendedor`;

DELIMITER $
CREATE PROCEDURE sp_decidirVendedor (IN p_idSolicitud SMALLINT,IN p_idUsuario VARCHAR(30), IN p_decision SMALLINT)
BEGIN
	UPDATE usuario SET tipoUsuario = p_decision WHERE idUsuario = p_idUsuario;
    UPDATE solicitud SET estado = 0 WHERE idSolicitud = p_idSolicitud;
END $


-- CARGAR INFORMACION DE TODOS LOS PRODUCTOS

DROP PROCEDURE IF EXISTS `sp_cargarProductos`;

DELIMITER $
CREATE PROCEDURE sp_cargarProductos()
BEGIN
	SELECT p.idProducto,p.idVendedor, u.nComercio,c.nombre AS categoria, p.marca, p.nombre AS producto, p.descripcion AS descripcion, p.precio, p.existencia,p.duracionEnvio, p.tarifaEnvio,p.imagen,p.estado from usuario u inner join producto p on u.idUsuario=p.idVendedor inner join categoria c on p.idCategoria=c.idCategoria;
END $


-- CARGAR INFORMACION DE LOS PRODUCTOS DISPONIBLES

DROP PROCEDURE IF EXISTS `sp_cargarProductosDisponibles`;

DELIMITER $
CREATE PROCEDURE sp_cargarProductosDisponibles()
BEGIN
	SELECT p.idProducto,p.idVendedor, u.nComercio,c.nombre AS categoria, p.marca, p.nombre AS producto, p.descripcion AS descripcion, p.precio, p.existencia,p.duracionEnvio, p.tarifaEnvio,p.imagen,p.estado from usuario u inner join producto p on u.idUsuario=p.idVendedor inner join categoria c on p.idCategoria=c.idCategoria WHERE p.estado=1;
END $

CALL sp_cargarProductos();

CALL sp_cargarProductosDisponibles();


-- CARGAR INFORMACION DE VENDEDORES

DROP PROCEDURE IF EXISTS `sp_cargarVendedores`;

DELIMITER $
CREATE PROCEDURE sp_cargarVendedores()
BEGIN
	SELECT nComercio AS comercio, CONCAT(nombre,' ',apellido) AS representante, email, CAST(fechaRegistro AS DATE) AS fechaRegistro FROM usuario WHERE(tipoUsuario=1 AND estado=1) ORDER BY nombre ASC AS OUTPUT;
END $


-- CARGAR INFORMACION DE TODOS LOS LUGARES

DROP PROCEDURE IF EXISTS `sp_cargarLugares`;

DELIMITER $
CREATE PROCEDURE sp_cargarLugares()
BEGIN
	SELECT p.nombre AS Provincia, c.idCanton, c.nombre AS Canton, d.nombre AS Distrito  FROM provincia p INNER JOIN canton  c INNER JOIN distrito d WHERE p.idProvincia=c.idProvincia and c.idCanton = d.idCanton;
END $

-- CARGAR INFORMACION DE TODAS LAS MARCAS

DROP PROCEDURE IF EXISTS `sp_cargarMarcas`;

DELIMITER $
CREATE PROCEDURE sp_cargarMarcas()
BEGIN
	SELECT DISTINCT marca FROM producto ORDER BY marca ASC;
END $


