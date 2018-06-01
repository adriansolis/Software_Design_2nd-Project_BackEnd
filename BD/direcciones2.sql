DROP DATABASE heroku_373b41bf2fad8f1

INSERT INTO `provincia` (nombre) VALUES
('San José'),
('Alajuela'),
('Cartago'),
('Heredia'),
('Guanacaste'),
('Puntarenas'),
('Limón')

select * from provincia

INSERT INTO `canton` (idProvincia,nombre) VALUES
(2,'San José'),
(2,'Acosta'),
(2,'Alajuelita'),
(2,'Aserrí'),
(2,'Curridabat'),
(2,'Desamparados'),
(2,'Dota'),
(2,'Escazú'),
(2,'Goicoechea'),
(2,'Montes de Oca'),
(2,'Mora'),
(2,'Moravia'),
(2,'Pérez Zeledón'),
(2,'Puriscal'),
(2,'Santa Ana'),
(2,'Tarrazú'),
(2,'Tibás'),
(2,'Turrubares'),
(2,'Vázquez de Coronado')

select * from canton where idProvincia = 2

INSERT INTO `canton` (idProvincia,nombre) VALUES
(12,'Alajuela'),
(12,'Atenas'),
(12,'Grecia'),
(12,'Guatuso'),
(12,'Los Chiles'),
(12,'Naranjo'),
(12,'Orotina'),
(12,'Palmares'),
(12,'Poás'),
(12,'Río Cuarto'),
(12,'San Carlos'),
(12,'San Mateo'),
(12,'San Ramón'),
(12,'Upala'),
(12,'Valverde Vega'),
(12,'Zarcero')

INSERT INTO `canton` (idProvincia,nombre) VALUES
(22,'Cartago'),
(22,'Alvarado'),
(22,'El Guarco'),
(22,'Jiménez'),
(22,'La Unión'),
(22,'Oreamuno'),
(22,'Paraíso'),
(22,'Turrialba')


INSERT INTO `canton` (idProvincia,nombre) VALUES
(32,'Heredia'),
(32,'Barva'),
(32,'Belén'),
(32,'Flores'),
(32,'San Isidro'),
(32,'San Pablo'),
(32,'San Rafael'),
(32,'Santa Bárbara'),
(32,'Santo Domingo'),
(32,'Sarapiquí')

INSERT INTO `canton` (idProvincia,nombre) VALUES
(42,'Liberia'),
(42,'Abangares'),
(42,'Bagaces'),
(42,'Cañas'),
(42,'Carrillo'),
(42,'Hojancha'),
(42,'La Cruz'),
(42,'Nandayure'),
(42,'Nicoya'),
(42,'Santa Cruz'),
(42,'Tilarán')


INSERT INTO `canton` (idProvincia,nombre) VALUES
(52,'Puntarenas'),
(52,'Buenos Aires'),
(52,'Corredores'),
(52,'Coto Brus'),
(52,'Esparza'),
(52,'Garabito'),
(52,'Golfito'),
(52,'Montes de Oro'),
(52,'Osa'),
(52,'Parrita'),
(52,'Quepos')


INSERT INTO `canton` (idProvincia,nombre) VALUES
(62,'Limón'),
(62,'Guácimo'),
(62,'Matina'),
(62,'Pococí'),
(62,'Siquirres'),
(62,'Talamanca')


-- INSERCION DE DISTRITOS (EMPEZANDO POR LIMÓN)
-- LIMÓN
INSERT INTO `distrito` (idCanton,nombre) VALUES
(751,'Limón'),
(751,'Matama'),
(751,'Río Blanco'),
(751,'Valle La Estrella')

-- GUÁCIMO
select * from canton
INSERT INTO `distrito` (idCanton,nombre) VALUES
(761,'Duacarí'),
(761,'Guácimo'),
(761,'Mercedes'),
(761,'Pocora'),
(761,'Río Jiménez')

-- MATINA
select * from canton
INSERT INTO `distrito` (idCanton,nombre) VALUES
(771,'Batán'),
(771,'Carrandi'),
(771,'Matina')

-- POCOCÍ
select * from canton
INSERT INTO `distrito` (idCanton,nombre) VALUES
(781,'Cariari'),
(781,'Colorado'),
(781,'Guápiles'),
(781,'Jiménez'),
(781,'Rita'),
(781,'Roxana')


-- SIQUIRRES
select * from canton
INSERT INTO `distrito` (idCanton,nombre) VALUES
(791,'Alegría'),
(791,'Cairo'),
(791,'Florida'),
(791,'Germania'),
(791,'Pacuarito'),
(791,'Siquirres')

-- TALAMANCA
select * from canton
INSERT INTO `distrito` (idCanton,nombre) VALUES
(801,'Bratsi'),
(801,'Cahuita'),
(801,'Sixaola'),
(801,'Telire')

-- DISTRITOS DE LA PROVINCIA DE PUNTARENAS

-- CANTÓN DE PUNTARENAS
select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
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
(641,'Puntarenas')

-- BUENOS AIRES

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(651,'Biolley'),
(651,'Boruca'),
(651,'Brunka'),
(651,'Buenos Aires'),
(651,'Chánguena'),
(651,'Colinas'),
(651,'Pilas'),
(651,'Potrero Grande'),
(651,'Volcán')

-- CORREDORES

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(661,'Corredor'),
(661,'La Cuesta'),
(661,'Laurel'),
(661,'Paso Canoas')

-- COTO BRUS

INSERT INTO `distrito` (idCanton,nombre) VALUES
(671,'Aguabuena'),
(671,'Limoncito'),
(671,'Pittier'),
(671,'Sabalito'),
(671,'San Vito'),
(671,'Gutiérrez Brown')

-- ESPARZA
select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(681,'Espíritu Santo'),
(681,'Macacona'),
(681,'San Jerónimo'),
(681,'San Juan Grande'),
(681,'San Rafael')

-- GARABITO

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(691,'Jacó'),
(691,'Tárcoles')

-- GOLFITO

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(701,'Golfito'),
(701,'Guayará'),
(701,'Pavón'),
(701,'Puerto Jiménez')

-- MONTES DE ORO

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(711,'La Unión'),
(711,'Miramar'),
(711,'San Isidro')

-- OSA

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Osa'
INSERT INTO `distrito` (idCanton,nombre) VALUES
(721,'Bahía Ballena'),
(721,'Palmar'),
(721,'Piedras Blancas'),
(721,'Puerto Cortés'),
(721,'Sierpe')

-- PARRITA

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Parrita'
INSERT INTO `distrito` (idCanton,nombre) VALUES
(731,'Parrita')

-- QUEPOS

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Quepos'
INSERT INTO `distrito` (idCanton,nombre) VALUES
(741,'Quepos'),
(741,'Naranjito'),
(741,'Savegre')

-- DISTRITOS DE GUANACASTE

select p.nombre as Provincia, c.idCanton, c.nombre as Canton, d.nombre as Distrito  from provincia p inner join canton  c inner join distrito d where p.idProvincia=c.idProvincia and c.idCanton = d.idCanton

-- LIBERIA
select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Liberia' and p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(531,'Cañas Dulces'),
(531,'Curubandé'),
(531,'Liberia'),
(531,'Mayorga'),
(531,'Nacascolo')

-- ABANGARES

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Abangares' and p.idProvincia = c.idProvincia

INSERT INTO `distrito` (idCanton,nombre) VALUES
(541,'Colorado'),
(541,'Las Juntas'),
(541,'San Juan'),
(541,'Sierra')

-- BAGACES

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Bagaces' and p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(551,'Bagaces'),
(551,'La Fortuna'),
(551,'Mogote'),
(551,'Río Naranjo')

select * from distrito where idCanton = 551

-- CAÑAS

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Cañas' and p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(561,'Bebedero'),
(561,'Cañas'),
(561,'Palmira'),
(561,'Porozal'),
(561,'San Miguel')


-- CARRILLO

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Carrillo' and p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(571,'Belén'),
(571,'Filadelfia'),
(571,'Palmira'),
(571,'Sardinal')

-- HOJANCHA

select p.nombre as Provincia, c.idCanton, c.nombre as Canton  from provincia p inner join canton c where c.nombre = 'Hojancha' and p.idProvincia = c.idProvincia
INSERT INTO `distrito` (idCanton,nombre) VALUES
(581,'Hojancha'),
(581,'Huacas'),
(581,'Monte Romo'),
(581,'Puerto Carrillo')

