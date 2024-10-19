PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE `tours` (
  `ID` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `tournaam` varchar(100) DEFAULT NULL
,  `actief` integer DEFAULT 1
,  `duur` decimal(2,1) DEFAULT NULL
,  `omschrijving` longtext DEFAULT NULL
,  `soort` text  DEFAULT NULL
,  `timestamp` timestamp NULL DEFAULT current_timestamp
,  `tblLink` longtext DEFAULT NULL
,  `volgorde` integer DEFAULT NULL
,  `header` varchar(255) DEFAULT NULL
,  `prijs` decimal(5,2) DEFAULT NULL
,  `pprijs` decimal(3,2) DEFAULT NULL
,  `maxpers` integer DEFAULT 1
);
INSERT INTO tours VALUES(1,'Eerste keer in Amsterdam',1,2.5,'Wandel over de oudste straten en pleinen van Amsterdam en leer hoe de stad is ontstaan en zich ontwikkelde in 750 jaar.','Stad','2023-01-06 18:30:30','https://www.toursbylocals.com/Amsterdam-FirstTime-WalkingTour',1,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(2,'Jordaan Wandeling',0,3.5,'Een wandeling door deze bijzondere buurt is altijd weer verrassend. Inclusief bezoek aan één of twee karakteristieke hofjes.','Stad','2023-01-06 18:30:46','https://www.toursbylocals.com/amsterdam-jordaan-walkingtour',2,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(3,'Amsterdam Highlights',0,3.5,'Wandeling door het centrum. Nieuwmarkt, Waterlooplein, Begijnenhof, Dam, langs de grachten, de Westertoren en door de Jordaan.','Stad','2023-01-06 18:30:49','https://www.toursbylocals.com/AmsterdamWalkingTourhighlights',3,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(4,'Grote Amsterdam Dag tour',1,7.5,'Centrum wandeling, Bezoek aan Onze Lieve heer op Zolder, Anne Frank Huis, Jordaan en het Rijksmuseum in één. Boek ruim vantevoren!','Stad','2023-01-06 18:35:30','https://www.toursbylocals.com/canal-tour-amsterdam-with-museums',10,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(5,'Langs de Amstel',1,4,'Fietsen naar Oudekerk aan de Amstel met bezoek aan de Rembrandthoeve. Bij regen gaan we wandelen of het museum in!','Land','2023-01-06 17:37:28','https://www.toursbylocals.com/amstelbikeride',5,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(6,'Fietsen naar de Zaanse Schans',1,5.5,'Fietsen door het Twiske naar dit speciale dorp. Inclusief Bezoek aan twee molens. Eventueel lunch (pannenkoeken!).','Land','2023-01-06 17:39:41','https://www.toursbylocals.com/amsterdamcountrybike',6,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(7,'Beemster tour',1,7,'Met de auto naar de Zaanse Schans en de Museummolen in Schermerhorn. Lunch in de Rijp en bezoek aan kaasboerderij.','Land','2023-01-06 17:41:02','https://www.toursbylocals.com/daytrip-amsterdam',7,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(8,'Kastelen van Amsterdam',1,7,'Bezoek het Muiderslot, loop over de vesting in Naarden, lunchen in Weesp en daarna nog een bezoek aan het uitbundige kasteel De Haar.','Land','2023-01-06 17:42:30','https://www.toursbylocals.com/amsterdamcastles',8,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(9,'Wandel met de Meesters',0,4.5,'Wandeling door het oude centrum en een bezoek aan het Rijks Museum','Stad','2023-01-06 17:57:10','https://www.toursbylocals.com/walkandrijksmuseum',9,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(10,'Anne Frank Wandeling',1,1.5,'Vanaf het Merwedeplein lopen we door de buurt waar de familie Frank woonde voor ze in onderduik gingen. LET OP: Dit is géén bezoek aan het Anne Frank Museum','Stad','2024-06-03 15:10:05','https://www.toursbylocals.com/tours/netherlands/amsterdam/tour-details/anne-frank-walking-tour-664d27ad1bbe5b817c456118',4,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(11,'intern',0,NULL,NULL,'Stad','2024-06-14 10:34:11',NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(12,'Herfstbloemen bij Amsterdam',0,4,'Rond het Keukenhof kasteel in Lisse is een prachtig park met een Dahlia tuin. Na een bezoek aan deze plaats rijden we naar de Tulperij, een familiebedrijf, met een prachtige pluktuin. Open vanaf  8 augustus tot 10 oktober.','Land','2024-07-16 07:54:20','https://www.toursbylocals.com/tours/netherlands/amsterdam/tour-details/autumn-flowers-in-amsterdam-664d240817832fdc0db736e9',6,NULL,NULL,NULL,1);
INSERT INTO tours VALUES(13,'Private tour Rijksmuseum',1,2,'We bezoeken het fantastische Rijksmuseum in Amsterdam, met meer dan 7000 objecten in 80 zalen. We hebben natuurlijk niet de tijd om alles te zien, maar alle belangwekkende werken van de grote Hollandse meesters komen aan bod.','Stad','2024-10-12 05:25:56','https://www.toursbylocals.com/tours/amsterdam/netherlands/tour-details/private-tour-at-the-rijksmuseum-66ffdf57e1298df7ca33bc96',6,NULL,NULL,NULL,1);
CREATE TABLE `fotos` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `filenaam` varchar(100) DEFAULT NULL
);
INSERT INTO fotos VALUES(1,'./img/Amsterdam-Dam-Square.jpg');
INSERT INTO fotos VALUES(2,'./img/paleis.jpg');
INSERT INTO fotos VALUES(3,'./img/waag.jpg');
INSERT INTO fotos VALUES(4,'./img/Schreiers2.jpg');
INSERT INTO fotos VALUES(5,'./img/dewaag.jpg');
INSERT INTO fotos VALUES(6,'./img/schreiers-toren.jpg');
INSERT INTO fotos VALUES(7,'./img/wester.jpg');
INSERT INTO fotos VALUES(8,'./img/Johnnyjordaanplein.jpg');
INSERT INTO fotos VALUES(9,'./img/RijksmuseumAmsterdam-main.jpg');
INSERT INTO fotos VALUES(10,'./img/amsterdam012.jpg');
INSERT INTO fotos VALUES(11,'./img/canalcruise2.jpg');
INSERT INTO fotos VALUES(12,'./img/centraal_station.jpg');
INSERT INTO fotos VALUES(13,'./img/rembrandthuis01.jpg');
INSERT INTO fotos VALUES(14,'./img/Anne_Frank.jpg');
INSERT INTO fotos VALUES(15,'./img/rijks.png');
INSERT INTO fotos VALUES(16,'./img/melkmeisje.jpg');
INSERT INTO fotos VALUES(17,'./img/ouderkerk aan de amstel.jpg');
INSERT INTO fotos VALUES(18,'./img/fietsenAmstel01.jpg');
INSERT INTO fotos VALUES(19,'./img/rembrandthoeve.jpg');
INSERT INTO fotos VALUES(20,'./img/rembrandt_molen.jpg');
INSERT INTO fotos VALUES(21,'./img/twiske-amsterdam-2020-©-lily-heaton-3.jpg');
INSERT INTO fotos VALUES(22,'./img/jongeschaap_1.jpg');
INSERT INTO fotos VALUES(23,'./img/twiske02.jpg');
INSERT INTO fotos VALUES(24,'./img/zaanseschan002.jpg');
INSERT INTO fotos VALUES(25,'./img/beemster001.jpg');
INSERT INTO fotos VALUES(26,'./img/beemster002.jpg');
INSERT INTO fotos VALUES(27,'./img/beemster003.jpg');
INSERT INTO fotos VALUES(28,'./img/zaanseschan001.jpg');
INSERT INTO fotos VALUES(29,'./img/zaanseschan002.jpg');
INSERT INTO fotos VALUES(30,'./img/zaanseschan001.jpg');
INSERT INTO fotos VALUES(31,'./img/Museummolen-Schermerhorn.jpg');
INSERT INTO fotos VALUES(32,'./img/derijp_raadhuis.jpg');
INSERT INTO fotos VALUES(33,'./img/img_bij-ernst2.jpg');
INSERT INTO fotos VALUES(34,'./img/beemster004.jpg');
INSERT INTO fotos VALUES(35,'./img/muiderslot.jpg');
INSERT INTO fotos VALUES(36,'./img/naarden01.jpg');
INSERT INTO fotos VALUES(37,'./img/dehaar01.jpg');
INSERT INTO fotos VALUES(38,'./img/dehaar02.jpg');
INSERT INTO fotos VALUES(39,'./img/claeszhofje.jpg');
INSERT INTO fotos VALUES(41,'./img/rembrandt_nachtwacht.jpg');
INSERT INTO fotos VALUES(42,'./img/rembrandt_paulus.jpg');
INSERT INTO fotos VALUES(43,'./img/Steen_Zelfportret.jpg');
INSERT INTO fotos VALUES(44,'./img/OLHOZ_buitenkant.jpg');
INSERT INTO fotos VALUES(45,'./img/OLHOZ_kachel.jpg');
INSERT INTO fotos VALUES(46,'./img/OLHOZ_kerk.jpg');
INSERT INTO fotos VALUES(47,'./img/OLHOZ_keuken.jpg');
INSERT INTO fotos VALUES(48,'./img/Anne_Frank,_Merwedeplein_Amsterdam.jpeg');
INSERT INTO fotos VALUES(49,'./img/anne.jpg');
INSERT INTO fotos VALUES(50,'./img/anne_frank_dagboek_getty.jpg');
INSERT INTO fotos VALUES(51,'./img/Anne_Frank_Schule_Rivierenbuurt.jpg');
INSERT INTO fotos VALUES(52,'./img/kasteelkeukenhof.jpg');
INSERT INTO fotos VALUES(53,'./img/kasteelkeukenhof_tuin.jpg');
INSERT INTO fotos VALUES(54,'./img/tulperij01.jpg');
INSERT INTO fotos VALUES(55,'./img/tulperij02.jpg');
INSERT INTO fotos VALUES(56,'./img/tulperij03.jpg');
INSERT INTO fotos VALUES(57,'./img/tulperij04.jpg');
INSERT INTO fotos VALUES(58,'./img/tulperij05.jpg');
CREATE TABLE `tourFotoList` (
  `tourID` integer NOT NULL
,  `fotoID` integer NOT NULL
,  `volgorde` integer DEFAULT NULL
,  PRIMARY KEY (`tourID`,`fotoID`)
,  CONSTRAINT `fk_tourFoto_foto` FOREIGN KEY (`fotoID`) REFERENCES `fotos` (`id`)
,  CONSTRAINT `fk_tourFoto_tour` FOREIGN KEY (`tourID`) REFERENCES `tours` (`ID`)
);
INSERT INTO tourFotoList VALUES(1,1,1);
INSERT INTO tourFotoList VALUES(1,2,3);
INSERT INTO tourFotoList VALUES(1,3,2);
INSERT INTO tourFotoList VALUES(1,4,4);
INSERT INTO tourFotoList VALUES(2,7,1);
INSERT INTO tourFotoList VALUES(2,8,3);
INSERT INTO tourFotoList VALUES(2,39,2);
INSERT INTO tourFotoList VALUES(3,5,1);
INSERT INTO tourFotoList VALUES(3,6,2);
INSERT INTO tourFotoList VALUES(3,7,3);
INSERT INTO tourFotoList VALUES(3,9,4);
INSERT INTO tourFotoList VALUES(4,10,11);
INSERT INTO tourFotoList VALUES(4,11,2);
INSERT INTO tourFotoList VALUES(4,12,3);
INSERT INTO tourFotoList VALUES(4,13,4);
INSERT INTO tourFotoList VALUES(4,14,5);
INSERT INTO tourFotoList VALUES(4,15,6);
INSERT INTO tourFotoList VALUES(4,16,7);
INSERT INTO tourFotoList VALUES(4,44,8);
INSERT INTO tourFotoList VALUES(4,45,9);
INSERT INTO tourFotoList VALUES(4,46,10);
INSERT INTO tourFotoList VALUES(4,47,1);
INSERT INTO tourFotoList VALUES(5,17,1);
INSERT INTO tourFotoList VALUES(5,18,2);
INSERT INTO tourFotoList VALUES(5,19,3);
INSERT INTO tourFotoList VALUES(5,20,4);
INSERT INTO tourFotoList VALUES(6,21,2);
INSERT INTO tourFotoList VALUES(6,22,4);
INSERT INTO tourFotoList VALUES(6,23,1);
INSERT INTO tourFotoList VALUES(6,24,3);
INSERT INTO tourFotoList VALUES(7,25,3);
INSERT INTO tourFotoList VALUES(7,26,4);
INSERT INTO tourFotoList VALUES(7,27,1);
INSERT INTO tourFotoList VALUES(7,28,2);
INSERT INTO tourFotoList VALUES(7,29,5);
INSERT INTO tourFotoList VALUES(7,30,6);
INSERT INTO tourFotoList VALUES(7,31,8);
INSERT INTO tourFotoList VALUES(7,32,7);
INSERT INTO tourFotoList VALUES(7,33,9);
INSERT INTO tourFotoList VALUES(7,34,10);
INSERT INTO tourFotoList VALUES(8,35,1);
INSERT INTO tourFotoList VALUES(8,36,2);
INSERT INTO tourFotoList VALUES(8,37,3);
INSERT INTO tourFotoList VALUES(8,38,4);
INSERT INTO tourFotoList VALUES(9,13,3);
INSERT INTO tourFotoList VALUES(9,15,2);
INSERT INTO tourFotoList VALUES(9,16,1);
INSERT INTO tourFotoList VALUES(9,41,4);
INSERT INTO tourFotoList VALUES(9,42,5);
INSERT INTO tourFotoList VALUES(9,43,6);
INSERT INTO tourFotoList VALUES(10,48,1);
INSERT INTO tourFotoList VALUES(10,49,4);
INSERT INTO tourFotoList VALUES(10,50,2);
INSERT INTO tourFotoList VALUES(11,1,1);
INSERT INTO tourFotoList VALUES(11,4,2);
INSERT INTO tourFotoList VALUES(11,13,3);
INSERT INTO tourFotoList VALUES(11,32,4);
INSERT INTO tourFotoList VALUES(11,36,5);
INSERT INTO tourFotoList VALUES(11,41,6);
INSERT INTO tourFotoList VALUES(12,52,1);
INSERT INTO tourFotoList VALUES(12,53,4);
INSERT INTO tourFotoList VALUES(12,54,2);
INSERT INTO tourFotoList VALUES(12,55,3);
INSERT INTO tourFotoList VALUES(12,56,5);
INSERT INTO tourFotoList VALUES(13,15,1);
INSERT INTO tourFotoList VALUES(13,16,2);
INSERT INTO tourFotoList VALUES(13,41,3);
INSERT INTO tourFotoList VALUES(13,42,4);
INSERT INTO tourFotoList VALUES(13,43,5);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('tours',13);
INSERT INTO sqlite_sequence VALUES('fotos',58);
CREATE VIEW tourfotos AS select l.tourID AS tourID, f.filenaam AS foto,l.volgorde AS volgorde from tourFotoList l left join fotos f on l.fotoID = f.id order by l.tourID, l.volgorde;
COMMIT;
