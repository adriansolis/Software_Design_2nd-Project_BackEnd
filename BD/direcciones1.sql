DROP DATABASE heroku_373b41bf2fad8f1

INSERT INTO `provincia` (nombre) VALUES
('San Jos�'),
('Alajuela'),
('Cartago'),
('Heredia'),
('Guanacaste'),
('Puntarenas'),
('Lim�n')

SELECT * FROM provincia
SELECT * FROM canton


INSERT INTO `canton` (idProvincia,nombre) VALUES
(1,'San Jos�'),
(1,'Acosta'),
(1,'Alajuelita'),
(1,'Aserr�'),
(1,'Curridabat'),
(1,'Desamparados'),
(1,'Dota'),
(1,'Escaz�'),
(1,'Goicoechea'),
(1,'Montes de Oca'),
(1,'Mora'),
(1,'Moravia'),
(1,'P�rez Zeled�n'),
(1,'Puriscal'),
(1,'Santa Ana'),
(1,'Tarraz�'),
(1,'Tib�s'),
(1,'Turrubares'),
(1,'V�zquez de Coronado'),

-- CANTONES DE ALAJUELA

(11,'Alajuela'),
(11,'Atenas'),
(11,'Grecia'),
(11,'Guatuso'),
(11,'Los Chiles'),
(11,'Naranjo'),
(11,'Orotina'),
(11,'Palmares'),
(11,'Po�s'),
(11,'R�o Cuarto'),
(11,'San Carlos'),
(11,'San Mateo'),
(11,'San Ram�n'),
(11,'Upala'),
(11,'Valverde Vega'),
(11,'Zarcero'),

-- CANTONES DE CARTAGO

(21,'Cartago'),
(21,'Alvarado'),
(21,'El Guarco'),
(21,'Jim�nez'),
(21,'La Uni�n'),
(21,'Oreamuno'),
(21,'Para�so'),
(21,'Turrialba'),

-- CANTONES DE HEREDIA

(31,'Heredia'),
(31,'Barva'),
(31,'Bel�n'),
(31,'Flores'),
(31,'San Isidro'),
(31,'San Pablo'),
(31,'San Rafael'),
(31,'Santa B�rbara'),
(31,'Santo Domingo'),
(31,'Sarapiqu�'),

-- CANTONES DE GUANACASTE

(41,'Liberia'),
(41,'Abangares'),
(41,'Bagaces'),
(41,'Ca�as'),
(41,'Carrillo'),
(41,'Hojancha'),
(41,'La Cruz'),
(41,'Nandayure'),
(41,'Nicoya'),
(41,'Santa Cruz'),
(41,'Tilar�n'),

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

-- CANTONES DE LIM�N

(61,'Lim�n'),
(61,'Gu�cimo'),
(61,'Matina'),
(61,'Pococ�'),
(61,'Siquirres'),
(61,'Talamanca')

-- *************************************************
-- *  INSERCION DE DISTRITOS (EMPEZANDO POR LIM�N) * 
-- *************************************************
-- LIM�N

INSERT INTO `distrito` (idCanton,nombre) VALUES
(751,'Lim�n'),
(751,'Matama'),
(751,'R�o Blanco'),
(751,'Valle La Estrella'),

-- GU�CIMO

(761,'Duacar�'),
(761,'Gu�cimo'),
(761,'Mercedes'),
(761,'Pocora'),
(761,'R�o Jim�nez'),

-- MATINA

(771,'Bat�n'),
(771,'Carrandi'),
(771,'Matina'),

-- POCOC�

(781,'Cariari'),
(781,'Colorado'),
(781,'Gu�piles'),
(781,'Jim�nez'),
(781,'Rita'),
(781,'Roxana'),


-- SIQUIRRES

(791,'Alegr�a'),
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

-- CANT�N DE PUNTARENAS

(641,'Acapulco'),
(641,'Arancibia'),
(641,'Barranca'),
(641,'Chacarita'),
(641,'Chira'),
(641,'Chomes'),
(641,'C�bano'),
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
(651,'Ch�nguena'),
(651,'Colinas'),
(651,'Pilas'),
(651,'Potrero Grande'),
(651,'Volc�n'),

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
(671,'Guti�rrez Brown'),

-- ESPARZA

(681,'Esp�ritu Santo'),
(681,'Macacona'),
(681,'San Jer�nimo'),
(681,'San Juan Grande'),
(681,'San Rafael'),

-- GARABITO

(691,'Jac�'),
(691,'T�rcoles'),

-- GOLFITO

(701,'Golfito'),
(701,'Guayar�'),
(701,'Pav�n'),
(701,'Puerto Jim�nez'),

-- MONTES DE ORO

(711,'La Uni�n'),
(711,'Miramar'),
(711,'San Isidro'),

-- OSA
(721,'Bah�a Ballena'),
(721,'Palmar'),
(721,'Piedras Blancas'),
(721,'Puerto Cort�s'),
(721,'Sierpe'),

-- PARRITA

(731,'Parrita'),

-- QUEPOS

(741,'Quepos'),
(741,'Naranjito'),
(741,'Savegre'),

-- DISTRITOS DE GUANACASTE

-- LIBERIA
(531,'Ca�as Dulces'),
(531,'Curuband�'),
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
(551,'R�o Naranjo'),

-- CA�AS

(561,'Bebedero'),
(561,'Ca�as'),
(561,'Palmira'),
(561,'Porozal'),
(561,'San Miguel'),


-- CARRILLO
(571,'Bel�n'),
(571,'Filadelfia'),
(571,'Palmira'),
(571,'Sardinal'),

-- HOJANCHA

(581,'Hojancha'),
(581,'Huacas'),
(581,'Monte Romo'),
(581,'Puerto Carrillo')