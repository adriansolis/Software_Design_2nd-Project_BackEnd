INSERT INTO `provincia` (nombre) VALUES
('San José'),
('Alajuela'),
('Cartago'),
('Heredia'),
('Guanacaste'),
('Puntarenas'),
('Limón');


SELECT * FROM provincia;

INSERT INTO `canton` (idProvincia,nombre) VALUES
(1,'San José'),
(1,'Acosta'),
(1,'Alajuelita'),
(1,'Aserrí'),
(1,'Curridabat'),
(1,'Desamparados'),
(1,'Dota'),
(1,'Escazú'),
(1,'Goicoechea'),
(1,'Montes de Oca'),
(1,'Mora'),
(1,'Moravia'),
(1,'Pérez Zeledón'),
(1,'Puriscal'),
(1,'Santa Ana'),
(1,'Tarrazú'),
(1,'Tibás'),
(1,'Turrubares'),
(1,'Vázquez de Coronado'),

-- CANTONES DE ALAJUELA

(11,'Alajuela'),
(11,'Atenas'),
(11,'Grecia'),
(11,'Guatuso'),
(11,'Los Chiles'),
(11,'Naranjo'),
(11,'Orotina'),
(11,'Palmares'),
(11,'Poás'),
(11,'Río Cuarto'),
(11,'San Carlos'),
(11,'San Mateo'),
(11,'San Ramón'),
(11,'Upala'),
(11,'Valverde Vega'),
(11,'Zarcero'),

-- CANTONES DE CARTAGO

(21,'Cartago'),
(21,'Alvarado'),
(21,'El Guarco'),
(21,'Jiménez'),
(21,'La Unión'),
(21,'Oreamuno'),
(21,'Paraíso'),
(21,'Turrialba'),

-- CANTONES DE HEREDIA

(31,'Heredia'),
(31,'Barva'),
(31,'Belén'),
(31,'Flores'),
(31,'San Isidro'),
(31,'San Pablo'),
(31,'San Rafael'),
(31,'Santa Bárbara'),
(31,'Santo Domingo'),
(31,'Sarapiquí'),

-- CANTONES DE GUANACASTE

(41,'Liberia'),
(41,'Abangares'),
(41,'Bagaces'),
(41,'Cañas'),
(41,'Carrillo'),
(41,'Hojancha'),
(41,'La Cruz'),
(41,'Nandayure'),
(41,'Nicoya'),
(41,'Santa Cruz'),
(41,'Tilarán'),

-- CANTONES DE PUNTARENAS

(51,'Puntarenas'),
(51,'Buenos Aires'),
(51,'Corredores'),
(51,'Coto Brus'),
(51,'Esparza'),
(51,'Garabito'),
(51,'Golfito'),
(51,'Montes de Oro'),
(51,'Osa'),
(51,'Parrita'),
(51,'Quepos'),

-- CANTONES DE LIMÓN

(61,'Limón'),
(61,'Guácimo'),
(61,'Matina'),
(61,'Pococí'),
(61,'Siquirres'),
(61,'Talamanca');



INSERT INTO `distrito` (idCanton,nombre) VALUES
(751,'Limón'),
(751,'Matama'),
(751,'Río Blanco'),
(751,'Valle La Estrella'),

-- GUÁCIMO

(761,'Duacarí'),
(761,'Guácimo'),
(761,'Mercedes'),
(761,'Pocora'),
(761,'Río Jiménez'),

-- MATINA

(771,'Batán'),
(771,'Carrandi'),
(771,'Matina'),

-- POCOCÍ

(781,'Cariari'),
(781,'Colorado'),
(781,'Guápiles'),
(781,'Jiménez'),
(781,'Rita'),
(781,'Roxana'),


-- SIQUIRRES

(791,'Alegría'),
(791,'Cairo'),
(791,'Florida'),
(791,'Germania'),
(791,'Pacuarito'),
(791,'Siquirres'),

-- TALAMANCA

(801,'Bratsi'),
(801,'Cahuita'),
(801,'Sixaola'),
(801,'Telire'),

-- DISTRITOS DE LA PROVINCIA DE PUNTARENAS

-- CANTÓN DE PUNTARENAS

(641,'Acapulco'),
(641,'Arancibia'),
(641,'Barranca'),
(641,'Chacarita'),
(641,'Chira'),
(641,'Chomes'),
(641,'Cóbano'),
(641,'El Roble'),
(641,'Guacimal'),
(641,'Isla del Coco'),
(641,'Lepanto'),
(641,'Manzanillo'),
(641,'Monteverde'),
(641,'Paquera'),
(641,'Pitahaya'),
(641,'Puntarenas'),

-- BUENOS AIRES

(651,'Biolley'),
(651,'Boruca'),
(651,'Brunka'),
(651,'Buenos Aires'),
(651,'Chánguena'),
(651,'Colinas'),
(651,'Pilas'),
(651,'Potrero Grande'),
(651,'Volcán'),

-- CORREDORES

(661,'Corredor'),
(661,'La Cuesta'),
(661,'Laurel'),
(661,'Paso Canoas'),

-- COTO BRUS

(671,'Aguabuena'),
(671,'Limoncito'),
(671,'Pittier'),
(671,'Sabalito'),
(671,'San Vito'),
(671,'Gutiérrez Brown'),

-- ESPARZA

(681,'Espíritu Santo'),
(681,'Macacona'),
(681,'San Jerónimo'),
(681,'San Juan Grande'),
(681,'San Rafael'),

-- GARABITO

(691,'Jacó'),
(691,'Tárcoles'),

-- GOLFITO

(701,'Golfito'),
(701,'Guayará'),
(701,'Pavón'),
(701,'Puerto Jiménez'),

-- MONTES DE ORO

(711,'La Unión'),
(711,'Miramar'),
(711,'San Isidro'),

-- OSA
(721,'Bahía Ballena'),
(721,'Palmar'),
(721,'Piedras Blancas'),
(721,'Puerto Cortés'),
(721,'Sierpe'),

-- PARRITA

(731,'Parrita'),

-- QUEPOS

(741,'Quepos'),
(741,'Naranjito'),
(741,'Savegre'),

-- DISTRITOS DE GUANACASTE

-- LIBERIA
(531,'Cañas Dulces'),
(531,'Curubandé'),
(531,'Liberia'),
(531,'Mayorga'),
(531,'Nacascolo'),

-- ABANGARES

(541,'Colorado'),
(541,'Las Juntas'),
(541,'San Juan'),
(541,'Sierra'),

-- BAGACES

(551,'Bagaces'),
(551,'La Fortuna'),
(551,'Mogote'),
(551,'Río Naranjo'),

-- CAÑAS

(561,'Bebedero'),
(561,'Cañas'),
(561,'Palmira'),
(561,'Porozal'),
(561,'San Miguel'),


-- CARRILLO
(571,'Belén'),
(571,'Filadelfia'),
(571,'Palmira'),
(571,'Sardinal'),

-- HOJANCHA

(581,'Hojancha'),
(581,'Huacas'),
(581,'Monte Romo'),
(581,'Puerto Carrillo');


INSERT INTO usuario (idUsuario,nombre,apellido,nComercio,email,tipoUsuario)
VALUES
('108079872134218159098','Josué','Arce',null,'chepillo96@gmail.com',2),
('116481658024149298998','Daniel','Montero',null,'d.montero95@gmail.com',0),
('102446220861016704671','Adrián','Solís','Servicios automotrices Pochos','solaz92@gmail.com',1);



INSERT INTO categoria (nombre) VALUES
('Automotor');


INSERT INTO producto (idVendedor,idCategoria,marca,nombre,descripcion,precio,existencia,duracionEnvio,tarifaEnvio,imagen)
VALUES
('102446220861016704671',1,'AutoCool','A/C Automotriz - Abanico universal 14"','Abanico universal de 14" para aire acondicionado automotriz con patillas y gasas plásticas para instalación rápida. Envíos a todo el país por Correos de C.R.',18500,15,'6-12 horas',3000,'https://res.cloudinary.com/ddzutuizv/image/upload/v1526569878/ventilador1.jpg'),

('102446220861016704671',1,'Michelin','Llanta Primacy 3 A/T','Llanta Michelin Primacy 3 A/T en todos los tamaños desde 225 75 R13-250 80 R18. Envíos a través de bodega ANAY.',84350,240,'24-48 horas',6000,'https://res.cloudinary.com/ddzutuizv/image/upload/v1526622602/llantaMichelin.jpg'),

('102446220861016704671',1,'Garret','Caracol Turbo 30lb','Caracol para turbo de 30lb con válvula de alivio reforzada. Envíos a través de correos de C.R.',130925,56,'12-24 horas',8000,'https://res.cloudinary.com/ddzutuizv/image/upload/v1526622602/turboCarros.jpg');


-- CONSULTA PARA EXTRACCION DE PRODUCTOS
select p.idProducto, u.nComercio as vendedor,c.nombre as categoria,p.marca AS Marca, p.nombre as producto, p.descripcion as descripcion, p.precio as precio, p.existencia as existencia,p.duracionEnvio, p.tarifaEnvio,p.imagen,p.fechaRegistro,p.estado from usuario u inner join producto p on u.idUsuario=p.idVendedor inner join categoria c on p.idCategoria=c.idCategoria;

