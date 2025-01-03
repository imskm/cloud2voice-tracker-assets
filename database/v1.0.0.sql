/*
In entire database status 1-> Active/enable/allowed/yes
0->Inactive/disable/not allowed/no

DIDs table does not required any foreign key because when we are doing import at that time it may cause an issue.
*/

DROP TABLE IF EXISTS timezones CASCADE;
CREATE TABLE timezones (
  id BIGSERIAL PRIMARY KEY,
  gmttime varchar(255) DEFAULT NULL,
  gmtoffset INTEGER NOT NULL DEFAULT '0',
  timezone_name varchar(255) DEFAULT NULL,
  timezone_digit SMALLINT NOT NULL DEFAULT '0'
);
INSERT INTO timezones VALUES (1,'GMT+01:00',3600,'Europe/Andorra','1'),(2,'GMT+04:00',14400,'Asia/Dubai','4'),(3,'GMT+04:30',16200,'Asia/Kabul','4'),(4,'GMT-04:00',-14400,'America/Antigua','-4'),(5,'GMT-04:00',-14400,'America/Anguilla','-4'),(6,'GMT+01:00',3600,'Europe/Tirane','1'),(7,'GMT+04:00',14400,'Asia/Yerevan','4'),(8,'GMT+01:00',3600,'Africa/Luanda','1'),(9,'GMT+08:00',28800,'Antarctica/Casey','8'),(10,'GMT+07:00',25200,'Antarctica/Davis','7'),(11,'GMT+10:00',36000,'Antarctica/DumontDUrville','10'),(12,'GMT+05:00',18000,'Antarctica/Mawson','5'),(13,'GMT+13:00',46800,'Antarctica/McMurdo','13'),(14,'GMT-03:00',-10800,'Antarctica/Palmer','-3'),(15,'GMT-03:00',-10800,'Antarctica/Rothera','-3'),(16,'GMT+03:00',10800,'Antarctica/Syowa','3'),(17,'GMT+00:00',0,'Antarctica/Troll','0'),(18,'GMT+05:00',18000,'Antarctica/Vostok','5'),(19,'GMT-03:00',-10800,'America/Argentina/Buenos_Aires','-3'),(20,'GMT-03:00',-10800,'America/Argentina/Catamarca','-3'),(21,'GMT-03:00',-10800,'America/Argentina/Cordoba','-3'),(22,'GMT-03:00',-10800,'America/Argentina/Jujuy','-3'),(23,'GMT-03:00',-10800,'America/Argentina/La_Rioja','-3'),(24,'GMT-03:00',-10800,'America/Argentina/Mendoza','-3'),(25,'GMT-03:00',-10800,'America/Argentina/Rio_Gallegos','-3'),(26,'GMT-03:00',-10800,'America/Argentina/Salta','-3'),(27,'GMT-03:00',-10800,'America/Argentina/San_Juan','-3'),(28,'GMT-03:00',-10800,'America/Argentina/San_Luis','-3'),(29,'GMT-03:00',-10800,'America/Argentina/Tucuman','-3'),(30,'GMT-03:00',-10800,'America/Argentina/Ushuaia','-3'),(31,'GMT-11:00',-39600,'Pacific/Pago_Pago','-11'),(32,'GMT+01:00',3600,'Europe/Vienna','1'),(33,'GMT+11:00',39600,'Antarctica/Macquarie','11'),(34,'GMT+10:30',37800,'Australia/Adelaide','10'),(35,'GMT+10:00',36000,'Australia/Brisbane','10'),(36,'GMT+10:30',37800,'Australia/Broken_Hill','10'),(37,'GMT+11:00',39600,'Australia/Currie','11'),(38,'GMT+09:30',34200,'Australia/Darwin','9'),(39,'GMT+08:45',31500,'Australia/Eucla','8'),(40,'GMT+11:00',39600,'Australia/Hobart','11'),(41,'GMT+10:00',36000,'Australia/Lindeman','10'),(42,'GMT+11:00',39600,'Australia/Lord_Howe','11'),(43,'GMT+11:00',39600,'Australia/Melbourne','11'),(44,'GMT+08:00',28800,'Australia/Perth','8'),(45,'GMT+11:00',39600,'Australia/Sydney','11'),(46,'GMT-04:00',-14400,'America/Aruba','-4'),(47,'GMT+02:00',7200,'Europe/Mariehamn','2'),(48,'GMT+04:00',14400,'Asia/Baku','4'),(49,'GMT+01:00',3600,'Europe/Sarajevo','1'),(50,'GMT-04:00',-14400,'America/Barbados','-4'),(51,'GMT+06:00',21600,'Asia/Dhaka','6'),(52,'GMT+01:00',3600,'Europe/Brussels','1'),(53,'GMT+00:00',0,'Africa/Ouagadougou','0'),(54,'GMT+02:00',7200,'Europe/Sofia','2'),(55,'GMT+03:00',10800,'Asia/Bahrain','3'),(56,'GMT+02:00',7200,'Africa/Bujumbura','2'),(57,'GMT+01:00',3600,'Africa/Porto-Novo','1'),(58,'GMT-04:00',-14400,'America/St_Barthelemy','-4'),(59,'GMT-04:00',-14400,'Atlantic/Bermuda','-4'),(60,'GMT+08:00',28800,'Asia/Brunei','8'),(61,'GMT-04:00',-14400,'America/La_Paz','-4'),(62,'GMT-04:00',-14400,'America/Kralendijk','-4'),(63,'GMT-03:00',-10800,'America/Araguaina','-3'),(64,'GMT-03:00',-10800,'America/Bahia','-3'),(65,'GMT-03:00',-10800,'America/Belem','-3'),(66,'GMT-04:00',-14400,'America/Boa_Vista','-4'),(67,'GMT-04:00',-14400,'America/Campo_Grande','-4'),(68,'GMT-04:00',-14400,'America/Cuiaba','-4'),(69,'GMT-05:00',-18000,'America/Eirunepe','-5'),(70,'GMT-03:00',-10800,'America/Fortaleza','-3'),(71,'GMT-03:00',-10800,'America/Maceio','-3'),(72,'GMT-04:00',-14400,'America/Manaus','-4'),(73,'GMT-02:00',-7200,'America/Noronha','-2'),(74,'GMT-04:00',-14400,'America/Porto_Velho','-4'),(75,'GMT-03:00',-10800,'America/Recife','-3'),(76,'GMT-05:00',-18000,'America/Rio_Branco','-5'),(77,'GMT-03:00',-10800,'America/Santarem','-3'),(78,'GMT-03:00',-10800,'America/Sao_Paulo','-3'),(79,'GMT-05:00',-18000,'America/Nassau','-5'),(80,'GMT+06:00',21600,'Asia/Thimphu','6'),(81,'GMT+02:00',7200,'Africa/Gaborone','2'),(82,'GMT+03:00',10800,'Europe/Minsk','3'),(83,'GMT-06:00',-21600,'America/Belize','-6'),(84,'GMT-05:00',-18000,'America/Atikokan','-5'),(85,'GMT-04:00',-14400,'America/Blanc-Sablon','-4'),(86,'GMT-07:00',-25200,'America/Cambridge_Bay','-7'),(87,'GMT-07:00',-25200,'America/Creston','-7'),(88,'GMT-07:00',-25200,'America/Dawson','-7'),(89,'GMT-07:00',-25200,'America/Dawson_Creek','-7'),(90,'GMT-07:00',-25200,'America/Edmonton','-7'),(91,'GMT-07:00',-25200,'America/Fort_Nelson','-7'),(92,'GMT-04:00',-14400,'America/Glace_Bay','-4'),(93,'GMT-04:00',-14400,'America/Goose_Bay','-4'),(94,'GMT-04:00',-14400,'America/Halifax','-4'),(95,'GMT-07:00',-25200,'America/Inuvik','-7'),(96,'GMT-05:00',-18000,'America/Iqaluit','-5'),(97,'GMT-04:00',-14400,'America/Moncton','-4'),(98,'GMT-05:00',-18000,'America/Nipigon','-5'),(99,'GMT-05:00',-18000,'America/Pangnirtung','-5'),(100,'GMT-06:00',-21600,'America/Rainy_River','-6'),(101,'GMT-06:00',-21600,'America/Rankin_Inlet','-6'),(102,'GMT-06:00',-21600,'America/Regina','-6'),(103,'GMT-06:00',-21600,'America/Resolute','-6'),(104,'GMT-03:30',-12600,'America/St_Johns','-4'),(105,'GMT-06:00',-21600,'America/Swift_Current','-6'),(106,'GMT-05:00',-18000,'America/Thunder_Bay','-5'),(107,'GMT-05:00',-18000,'America/Toronto','-5'),(108,'GMT-08:00',-28800,'America/Vancouver','-8'),(109,'GMT-07:00',-25200,'America/Whitehorse','-7'),(110,'GMT-06:00',-21600,'America/Winnipeg','-6'),(111,'GMT-07:00',-25200,'America/Yellowknife','-7'),(112,'GMT+06:30',23400,'Indian/Cocos','6'),(113,'GMT+01:00',3600,'Africa/Kinshasa','1'),(114,'GMT+02:00',7200,'Africa/Lubumbashi','2'),(115,'GMT+01:00',3600,'Africa/Bangui','1'),(116,'GMT+01:00',3600,'Africa/Brazzaville','1'),(117,'GMT+01:00',3600,'Europe/Zurich','1'),(118,'GMT+00:00',0,'Africa/Abidjan','0'),(119,'GMT-10:00',-36000,'Pacific/Rarotonga','-10'),(120,'GMT-03:00',-10800,'America/Punta_Arenas','-3'),(121,'GMT-03:00',-10800,'America/Santiago','-3'),(122,'GMT-05:00',-18000,'Pacific/Easter','-5'),(123,'GMT+01:00',3600,'Africa/Douala','1'),(124,'GMT+08:00',28800,'Asia/Shanghai','8'),(125,'GMT+06:00',21600,'Asia/Urumqi','6'),(126,'GMT-05:00',-18000,'America/Bogota','-5'),(127,'GMT-06:00',-21600,'America/Costa_Rica','-6'),(128,'GMT-05:00',-18000,'America/Havana','-5'),(129,'GMT-01:00',-3600,'Atlantic/Cape_Verde','-1'),(130,'GMT-04:00',-14400,'America/Curacao','-4'),(131,'GMT+07:00',25200,'Indian/Christmas','7'),(132,'GMT+02:00',7200,'Asia/Famagusta','2'),(133,'GMT+02:00',7200,'Asia/Nicosia','2'),(134,'GMT+01:00',3600,'Europe/Prague','1'),(135,'GMT+01:00',3600,'Europe/Berlin','1'),(136,'GMT+01:00',3600,'Europe/Busingen','1'),(137,'GMT+03:00',10800,'Africa/Djibouti','3'),(138,'GMT+01:00',3600,'Europe/Copenhagen','1'),(139,'GMT-04:00',-14400,'America/Dominica','-4'),(140,'GMT-04:00',-14400,'America/Santo_Domingo','-4'),(141,'GMT+01:00',3600,'Africa/Algiers','1'),(142,'GMT-05:00',-18000,'America/Guayaquil','-5'),(143,'GMT-06:00',-21600,'Pacific/Galapagos','-6'),(144,'GMT+02:00',7200,'Europe/Tallinn','2'),(145,'GMT+02:00',7200,'Africa/Cairo','2'),(146,'GMT+01:00',3600,'Africa/El_Aaiun','1'),(147,'GMT+03:00',10800,'Africa/Asmara','3'),(148,'GMT+01:00',3600,'Africa/Ceuta','1'),(149,'GMT+00:00',0,'Atlantic/Canary','0'),(150,'GMT+01:00',3600,'Europe/Madrid','1'),(151,'GMT+03:00',10800,'Africa/Addis_Ababa','3'),(152,'GMT+02:00',7200,'Europe/Helsinki','2'),(153,'GMT+12:00',43200,'Pacific/Fiji','12'),(154,'GMT-03:00',-10800,'Atlantic/Stanley','-3'),(155,'GMT+10:00',36000,'Pacific/Chuuk','10'),(156,'GMT+11:00',39600,'Pacific/Kosrae','11'),(157,'GMT+11:00',39600,'Pacific/Pohnpei','11'),(158,'GMT+00:00',0,'Atlantic/Faroe','0'),(159,'GMT+01:00',3600,'Europe/Paris','1'),(160,'GMT+01:00',3600,'Africa/Libreville','1'),(161,'GMT+00:00',0,'Europe/London','0'),(162,'GMT-04:00',-14400,'America/Grenada','-4'),(163,'GMT+04:00',14400,'Asia/Tbilisi','4'),(164,'GMT-03:00',-10800,'America/Cayenne','-3'),(165,'GMT+00:00',0,'Europe/Guernsey','0'),(166,'GMT+00:00',0,'Africa/Accra','0'),(167,'GMT+01:00',3600,'Europe/Gibraltar','1'),(168,'GMT+00:00',0,'America/Danmarkshavn','0'),(169,'GMT-02:00',-7200,'America/Nuuk','-2'),(170,'GMT-02:00',-7200,'America/Scoresbysund','-2'),(171,'GMT-04:00',-14400,'America/Thule','-4'),(172,'GMT+00:00',0,'Africa/Banjul','0'),(173,'GMT+00:00',0,'Africa/Conakry','0'),(174,'GMT-04:00',-14400,'America/Guadeloupe','-4'),(175,'GMT+01:00',3600,'Africa/Malabo','1'),(176,'GMT+02:00',7200,'Europe/Athens','2'),(177,'GMT-02:00',-7200,'Atlantic/South_Georgia','-2'),(178,'GMT-06:00',-21600,'America/Guatemala','-6'),(179,'GMT+10:00',36000,'Pacific/Guam','10'),(180,'GMT+00:00',0,'Africa/Bissau','0'),(181,'GMT-04:00',-14400,'America/Guyana','-4'),(182,'GMT+08:00',28800,'Asia/Hong_Kong','8'),(183,'GMT-06:00',-21600,'America/Tegucigalpa','-6'),(184,'GMT+01:00',3600,'Europe/Zagreb','1'),(185,'GMT-05:00',-18000,'America/Port-au-Prince','-5'),(186,'GMT+01:00',3600,'Europe/Budapest','1'),(187,'GMT+07:00',25200,'Asia/Jakarta','7'),(188,'GMT+09:00',32400,'Asia/Jayapura','9'),(189,'GMT+08:00',28800,'Asia/Makassar','8'),(190,'GMT+07:00',25200,'Asia/Pontianak','7'),(191,'GMT+00:00',0,'Europe/Dublin','0'),(192,'GMT+02:00',7200,'Asia/Jerusalem','2'),(193,'GMT+00:00',0,'Europe/Isle_of_Man','0'),(194,'GMT+05:30',19800,'Asia/Kolkata','5'),(195,'GMT+06:00',21600,'Indian/Chagos','6'),(196,'GMT+03:00',10800,'Asia/Baghdad','3'),(197,'GMT+03:30',12600,'Asia/Tehran','3'),(198,'GMT+00:00',0,'Atlantic/Reykjavik','0'),(199,'GMT+01:00',3600,'Europe/Rome','1'),(200,'GMT+00:00',0,'Europe/Jersey','0'),(201,'GMT-05:00',-18000,'America/Jamaica','-5'),(202,'GMT+03:00',10800,'Asia/Amman','3'),(203,'GMT+09:00',32400,'Asia/Tokyo','9'),(204,'GMT+03:00',10800,'Africa/Nairobi','3'),(205,'GMT+06:00',21600,'Asia/Bishkek','6'),(206,'GMT+07:00',25200,'Asia/Phnom_Penh','7'),(207,'GMT+13:00',46800,'Pacific/Enderbury','13'),(208,'GMT+14:00',50400,'Pacific/Kiritimati','14'),(209,'GMT+12:00',43200,'Pacific/Tarawa','12'),(210,'GMT+03:00',10800,'Indian/Comoro','3'),(211,'GMT-04:00',-14400,'America/St_Kitts','-4'),(212,'GMT+09:00',32400,'Asia/Pyongyang','9'),(213,'GMT+09:00',32400,'Asia/Seoul','9'),(214,'GMT+03:00',10800,'Asia/Kuwait','3'),(215,'GMT-05:00',-18000,'America/Cayman','-5'),(216,'GMT+05:00',18000,'Asia/Almaty','5'),(217,'GMT+05:00',18000,'Asia/Aqtau','5'),(218,'GMT+05:00',18000,'Asia/Aqtobe','5'),(219,'GMT+05:00',18000,'Asia/Atyrau','5'),(220,'GMT+05:00',18000,'Asia/Oral','5'),(221,'GMT+05:00',18000,'Asia/Qostanay','5'),(222,'GMT+05:00',18000,'Asia/Qyzylorda','5'),(223,'GMT+07:00',25200,'Asia/Vientiane','7'),(224,'GMT+02:00',7200,'Asia/Beirut','2'),(225,'GMT-04:00',-14400,'America/St_Lucia','-4'),(226,'GMT+01:00',3600,'Europe/Vaduz','1'),(227,'GMT+05:30',19800,'Asia/Colombo','5'),(228,'GMT+00:00',0,'Africa/Monrovia','0'),(229,'GMT+02:00',7200,'Africa/Maseru','2'),(230,'GMT+02:00',7200,'Europe/Vilnius','2'),(231,'GMT+01:00',3600,'Europe/Luxembourg','1'),(232,'GMT+02:00',7200,'Europe/Riga','2'),(233,'GMT+02:00',7200,'Africa/Tripoli','2'),(234,'GMT+01:00',3600,'Africa/Casablanca','1'),(235,'GMT+01:00',3600,'Europe/Monaco','1'),(236,'GMT+02:00',7200,'Europe/Chisinau','2'),(237,'GMT+01:00',3600,'Europe/Podgorica','1'),(238,'GMT-04:00',-14400,'America/Marigot','-4'),(239,'GMT+03:00',10800,'Indian/Antananarivo','3'),(240,'GMT+12:00',43200,'Pacific/Kwajalein','12'),(241,'GMT+12:00',43200,'Pacific/Majuro','12'),(242,'GMT+01:00',3600,'Europe/Skopje','1'),(243,'GMT+00:00',0,'Africa/Bamako','0'),(244,'GMT+06:30',23400,'Asia/Yangon','6'),(245,'GMT+08:00',28800,'Asia/Choibalsan','8'),(246,'GMT+07:00',25200,'Asia/Hovd','7'),(247,'GMT+08:00',28800,'Asia/Ulaanbaatar','8'),(248,'GMT+08:00',28800,'Asia/Macau','8'),(249,'GMT+10:00',36000,'Pacific/Saipan','10'),(250,'GMT-04:00',-14400,'America/Martinique','-4'),(251,'GMT+00:00',0,'Africa/Nouakchott','0'),(252,'GMT-04:00',-14400,'America/Montserrat','-4'),(253,'GMT+01:00',3600,'Europe/Malta','1'),(254,'GMT+04:00',14400,'Indian/Mauritius','4'),(255,'GMT+05:00',18000,'Indian/Maldives','5'),(256,'GMT+02:00',7200,'Africa/Blantyre','2'),(257,'GMT-06:00',-21600,'America/Bahia_Banderas','-6'),(258,'GMT-05:00',-18000,'America/Cancun','-5'),(259,'GMT-06:00',-21600,'America/Chihuahua','-6'),(260,'GMT-07:00',-25200,'America/Hermosillo','-7'),(261,'GMT-06:00',-21600,'America/Matamoros','-6'),(262,'GMT-07:00',-25200,'America/Mazatlan','-7'),(263,'GMT-06:00',-21600,'America/Merida','-6'),(264,'GMT-06:00',-21600,'America/Mexico_City','-6'),(265,'GMT-06:00',-21600,'America/Monterrey','-6'),(266,'GMT-06:00',-21600,'America/Ojinaga','-6'),(267,'GMT-08:00',-28800,'America/Tijuana','-8'),(268,'GMT+08:00',28800,'Asia/Kuala_Lumpur','8'),(269,'GMT+08:00',28800,'Asia/Kuching','8'),(270,'GMT+02:00',7200,'Africa/Maputo','2'),(271,'GMT+02:00',7200,'Africa/Windhoek','2'),(272,'GMT+11:00',39600,'Pacific/Noumea','11'),(273,'GMT+01:00',3600,'Africa/Niamey','1'),(274,'GMT+12:00',43200,'Pacific/Norfolk','12'),(275,'GMT+01:00',3600,'Africa/Lagos','1'),(276,'GMT-06:00',-21600,'America/Managua','-6'),(277,'GMT+01:00',3600,'Europe/Amsterdam','1'),(278,'GMT+01:00',3600,'Europe/Oslo','1'),(279,'GMT+05:45',20700,'Asia/Kathmandu','5'),(280,'GMT+12:00',43200,'Pacific/Nauru','12'),(281,'GMT-11:00',-39600,'Pacific/Niue','-11'),(282,'GMT+13:00',46800,'Pacific/Auckland','13'),(283,'GMT+13:45',49500,'Pacific/Chatham','13'),(284,'GMT+04:00',14400,'Asia/Muscat','4'),(285,'GMT-05:00',-18000,'America/Panama','-5'),(286,'GMT-05:00',-18000,'America/Lima','-5'),(287,'GMT-09:00',-32400,'Pacific/Gambier','-9'),(288,'GMT-09:30',-34200,'Pacific/Marquesas','-10'),(289,'GMT-10:00',-36000,'Pacific/Tahiti','-10'),(290,'GMT+11:00',39600,'Pacific/Bougainville','11'),(291,'GMT+10:00',36000,'Pacific/Port_Moresby','10'),(292,'GMT+08:00',28800,'Asia/Manila','8'),(293,'GMT+05:00',18000,'Asia/Karachi','5'),(294,'GMT+01:00',3600,'Europe/Warsaw','1'),(295,'GMT-03:00',-10800,'America/Miquelon','-3'),(296,'GMT-08:00',-28800,'Pacific/Pitcairn','-8'),(297,'GMT-04:00',-14400,'America/Puerto_Rico','-4'),(298,'GMT+02:00',7200,'Asia/Gaza','2'),(299,'GMT+02:00',7200,'Asia/Hebron','2'),(300,'GMT-01:00',-3600,'Atlantic/Azores','-1'),(301,'GMT+00:00',0,'Atlantic/Madeira','0'),(302,'GMT+00:00',0,'Europe/Lisbon','0'),(303,'GMT+09:00',32400,'Pacific/Palau','9'),(304,'GMT-03:00',-10800,'America/Asuncion','-3'),(305,'GMT+03:00',10800,'Asia/Qatar','3'),(306,'GMT+04:00',14400,'Indian/Reunion','4'),(307,'GMT+02:00',7200,'Europe/Bucharest','2'),(308,'GMT+01:00',3600,'Europe/Belgrade','1'),(309,'GMT+12:00',43200,'Asia/Anadyr','12'),(310,'GMT+07:00',25200,'Asia/Barnaul','7'),(311,'GMT+09:00',32400,'Asia/Chita','9'),(312,'GMT+08:00',28800,'Asia/Irkutsk','8'),(313,'GMT+12:00',43200,'Asia/Kamchatka','12'),(314,'GMT+09:00',32400,'Asia/Khandyga','9'),(315,'GMT+07:00',25200,'Asia/Krasnoyarsk','7'),(316,'GMT+11:00',39600,'Asia/Magadan','11'),(317,'GMT+07:00',25200,'Asia/Novokuznetsk','7'),(318,'GMT+07:00',25200,'Asia/Novosibirsk','7'),(319,'GMT+06:00',21600,'Asia/Omsk','6'),(320,'GMT+11:00',39600,'Asia/Sakhalin','11'),(321,'GMT+11:00',39600,'Asia/Srednekolymsk','11'),(322,'GMT+07:00',25200,'Asia/Tomsk','7'),(323,'GMT+10:00',36000,'Asia/Ust-Nera','10'),(324,'GMT+10:00',36000,'Asia/Vladivostok','10'),(325,'GMT+09:00',32400,'Asia/Yakutsk','9'),(326,'GMT+05:00',18000,'Asia/Yekaterinburg','5'),(327,'GMT+04:00',14400,'Europe/Astrakhan','4'),(328,'GMT+02:00',7200,'Europe/Kaliningrad','2'),(329,'GMT+03:00',10800,'Europe/Kirov','3'),(330,'GMT+03:00',10800,'Europe/Moscow','3'),(331,'GMT+04:00',14400,'Europe/Samara','4'),(332,'GMT+04:00',14400,'Europe/Saratov','4'),(333,'GMT+04:00',14400,'Europe/Ulyanovsk','4'),(334,'GMT+03:00',10800,'Europe/Volgograd','3'),(335,'GMT+02:00',7200,'Africa/Kigali','2'),(336,'GMT+03:00',10800,'Asia/Riyadh','3'),(337,'GMT+11:00',39600,'Pacific/Guadalcanal','11'),(338,'GMT+04:00',14400,'Indian/Mahe','4'),(339,'GMT+02:00',7200,'Africa/Khartoum','2'),(340,'GMT+01:00',3600,'Europe/Stockholm','1'),(341,'GMT+08:00',28800,'Asia/Singapore','8'),(342,'GMT+00:00',0,'Atlantic/St_Helena','0'),(343,'GMT+01:00',3600,'Europe/Ljubljana','1'),(344,'GMT+01:00',3600,'Arctic/Longyearbyen','1'),(345,'GMT+01:00',3600,'Europe/Bratislava','1'),(346,'GMT+00:00',0,'Africa/Freetown','0'),(347,'GMT+01:00',3600,'Europe/San_Marino','1'),(348,'GMT+00:00',0,'Africa/Dakar','0'),(349,'GMT+03:00',10800,'Africa/Mogadishu','3'),(350,'GMT-03:00',-10800,'America/Paramaribo','-3'),(351,'GMT+02:00',7200,'Africa/Juba','2'),(352,'GMT+00:00',0,'Africa/Sao_Tome','0'),(353,'GMT-06:00',-21600,'America/El_Salvador','-6'),(354,'GMT-04:00',-14400,'America/Lower_Princes','-4'),(355,'GMT+03:00',10800,'Asia/Damascus','3'),(356,'GMT+02:00',7200,'Africa/Mbabane','2'),(357,'GMT-05:00',-18000,'America/Grand_Turk','-5'),(358,'GMT+01:00',3600,'Africa/Ndjamena','1'),(359,'GMT+05:00',18000,'Indian/Kerguelen','5'),(360,'GMT+00:00',0,'Africa/Lome','0'),(361,'GMT+07:00',25200,'Asia/Bangkok','7'),(362,'GMT+05:00',18000,'Asia/Dushanbe','5'),(363,'GMT+13:00',46800,'Pacific/Fakaofo','13'),(364,'GMT+09:00',32400,'Asia/Dili','9'),(365,'GMT+05:00',18000,'Asia/Ashgabat','5'),(366,'GMT+01:00',3600,'Africa/Tunis','1'),(367,'GMT+13:00',46800,'Pacific/Tongatapu','13'),(368,'GMT+03:00',10800,'Europe/Istanbul','3'),(369,'GMT-04:00',-14400,'America/Port_of_Spain','-4'),(370,'GMT+12:00',43200,'Pacific/Funafuti','12'),(371,'GMT+08:00',28800,'Asia/Taipei','8'),(372,'GMT+03:00',10800,'Africa/Dar_es_Salaam','3'),(373,'GMT+02:00',7200,'Europe/Kiev','2'),(374,'GMT+03:00',10800,'Europe/Simferopol','3'),(375,'GMT+02:00',7200,'Europe/Uzhgorod','2'),(376,'GMT+02:00',7200,'Europe/Zaporozhye','2'),(377,'GMT+03:00',10800,'Africa/Kampala','3'),(378,'GMT-11:00',-39600,'Pacific/Midway','-11'),(379,'GMT+12:00',43200,'Pacific/Wake','12'),(380,'GMT-10:00',-36000,'America/Adak','-10'),(381,'GMT-09:00',-32400,'America/Anchorage','-9'),(382,'GMT-07:00',-25200,'America/Boise','-7'),(383,'GMT-06:00',-21600,'America/Chicago','-6'),(384,'GMT-07:00',-25200,'America/Denver','-7'),(385,'GMT-05:00',-18000,'America/Detroit','-5'),(386,'GMT-05:00',-18000,'America/Indiana/Indianapolis','-5'),(387,'GMT-06:00',-21600,'America/Indiana/Knox','-6'),(388,'GMT-05:00',-18000,'America/Indiana/Marengo','-5'),(389,'GMT-05:00',-18000,'America/Indiana/Petersburg','-5'),(390,'GMT-06:00',-21600,'America/Indiana/Tell_City','-6'),(391,'GMT-05:00',-18000,'America/Indiana/Vevay','-5'),(392,'GMT-05:00',-18000,'America/Indiana/Vincennes','-5'),(393,'GMT-05:00',-18000,'America/Indiana/Winamac','-5'),(394,'GMT-09:00',-32400,'America/Juneau','-9'),(395,'GMT-05:00',-18000,'America/Kentucky/Louisville','-5'),(396,'GMT-05:00',-18000,'America/Kentucky/Monticello','-5'),(397,'GMT-08:00',-28800,'America/Los_Angeles','-8'),(398,'GMT-06:00',-21600,'America/Menominee','-6'),(399,'GMT-09:00',-32400,'America/Metlakatla','-9'),(400,'GMT-05:00',-18000,'America/New_York','-5'),(401,'GMT-09:00',-32400,'America/Nome','-9'),(402,'GMT-06:00',-21600,'America/North_Dakota/Beulah','-6'),(403,'GMT-06:00',-21600,'America/North_Dakota/Center','-6'),(404,'GMT-06:00',-21600,'America/North_Dakota/New_Salem','-6'),(405,'GMT-07:00',-25200,'America/Phoenix','-7'),(406,'GMT-09:00',-32400,'America/Sitka','-9'),(407,'GMT-09:00',-32400,'America/Yakutat','-9'),(408,'GMT-10:00',-36000,'Pacific/Honolulu','-10'),(409,'GMT-03:00',-10800,'America/Montevideo','-3'),(410,'GMT+05:00',18000,'Asia/Samarkand','5'),(411,'GMT+05:00',18000,'Asia/Tashkent','5'),(412,'GMT+01:00',3600,'Europe/Vatican','1'),(413,'GMT-04:00',-14400,'America/St_Vincent','-4'),(414,'GMT-04:00',-14400,'America/Caracas','-4'),(415,'GMT-04:00',-14400,'America/Tortola','-4'),(416,'GMT-04:00',-14400,'America/St_Thomas','-4'),(417,'GMT+07:00',25200,'Asia/Ho_Chi_Minh','7'),(418,'GMT+11:00',39600,'Pacific/Efate','11'),(419,'GMT+12:00',43200,'Pacific/Wallis','12'),(420,'GMT+13:00',46800,'Pacific/Apia','13'),(421,'GMT+03:00',10800,'Asia/Aden','3'),(422,'GMT+03:00',10800,'Indian/Mayotte','3'),(423,'GMT+02:00',7200,'Africa/Johannesburg','2'),(424,'GMT+02:00',7200,'Africa/Lusaka','2'),(425,'GMT+02:00',7200,'Africa/Harare','2');
/*
This table is required to connect FreeSWITCH from the GUI to display live calls.
*/
DROP TABLE IF EXISTS freeswitch_servers CASCADE;
CREATE TABLE freeswitch_servers (
  id BIGSERIAL PRIMARY KEY,
  host varchar(100) NOT NULL,
  public_ip varchar(255) DEFAULT NULL,
  password varchar(50) NOT NULL,
  port varchar(10) NOT NULL,
  status SMALLINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO freeswitch_servers VALUES (1,'127.0.0.1','5.223.52.36/32','ClueCon','8021',1,'2024-12-17 19:16:00','2024-12-17 19:16:00');

DROP TABLE IF EXISTS countrycode CASCADE;
CREATE TABLE countrycode (
  id BIGSERIAL PRIMARY KEY,
  iso VARCHAR(2) NOT NULL,
  country VARCHAR(80) NOT NULL,
  nicename VARCHAR(80) NOT NULL,
  iso3 VARCHAR(3) DEFAULT NULL,
  countrycode INTEGER NOT NULL,
  UNIQUE (iso)
);

INSERT INTO countrycode VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',93),(2,'AL','ALBANIA','Albania','ALB',355),(3,'DZ','ALGERIA','Algeria','DZA',213),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',1684),(5,'AD','ANDORRA','Andorra','AND',376),(6,'AO','ANGOLA','Angola','AGO',244),(7,'AI','ANGUILLA','Anguilla','AIA',1264),(8,'AG','ANTIGUA & BARBUDA','Antigua_&_Barbuda','ATG',1268),(9,'AR','ARGENTINA','Argentina','ARG',54),(10,'AM','ARMENIA','Armenia','ARM',374),(11,'AW','ARUBA','Aruba','ABW',297),(12,'AU','AUSTRALIA','Australia','AUS',61),(13,'AT','AUSTRIA','Austria','AUT',43),(14,'AZ','AZERBAIJAN','Azerbaijan','AZE',994),(15,'BS','BAHAMAS','Bahamas','BHS',1242),(16,'BH','BAHRAIN','Bahrain','BHR',973),(17,'BD','BANGLADESH','Bangladesh','BGD',880),(18,'BB','BARBADOS','Barbados','BRB',1246),(19,'BY','BELARUS','Belarus','BLR',375),(20,'BE','BELGIUM','Belgium','BEL',32),(21,'BZ','BELIZE','Belize','BLZ',501),(22,'BJ','BENIN','Benin','BEN',229),(23,'BM','BERMUDA','Bermuda','BMU',1441),(24,'BT','BHUTAN','Bhutan','BTN',975),(25,'BO','BOLIVIA','Bolivia','BOL',591),(26,'BA','BOSNIA AND HERZEGOVINA','Bosnia_and_Herzegovina','BIH',387),(27,'BW','BOTSWANA','Botswana','BWA',267),(28,'BR','BRAZIL','Brazil','BRA',55),(29,'VG','BRITISH VIRGIN ISLANDS','British Virgin Islands','VGB',1284),(30,'BN','BRUNEI','Brunei','BRN',673),(31,'BG','BULGARIA','Bulgaria','BGR',359),(32,'BF','BURKINA FASO','Burkina_Faso','BFA',226),(33,'BI','BURUNDI','Burundi','BDI',257),(34,'KH','CAMBODIA','Cambodia','KHM',855),(35,'CM','CAMEROON','Cameroon','CMR',237),(36,'CA','CANADA','Canada','CAN',1),(37,'CV','CAPE VERDE','Cape Verde','CPV',238),(38,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',1345),(39,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',236),(40,'TD','CHAD','Chad','TCD',235),(41,'CL','CHILE','Chile','CHL',56),(42,'CN','CHINA','China','CHN',86),(43,'CO','COLOMBIA','Colombia','COL',57),(44,'KM','COMOROS','Comoros','COM',269),(45,'CG','CONGO','Congo','COG',242),(46,'CR','COSTA RICA','Costa Rica','CRI',506),(47,'HR','CROATIA','Croatia','HRV',385),(48,'CU','CUBA','Cuba','CUB',53),(49,'CY','CYPRUS','Cyprus','CYP',357),(50,'CZ','CZECH REPUBLIC','Czech Republic','CZE',420),(51,'CD','DEMOCRATIC REPUBLIC','Democratic Republic','COD',243),(52,'DK','DENMARK','Denmark','DNK',45),(53,'DJ','DJIBOUTI','Djibouti','DJI',253),(54,'DM','DOMINICA','Dominica','DMA',1767),(55,'DO','DOMINICAN REPUBLIC','Dominican republic','DOM',1809),(56,'EC','ECUADOR','Ecuador','ECU',593),(57,'EG','EGYPT','Egypt','EGY',20),(58,'SV','EL SALVADOR','El Salvador','SLV',503),(59,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',240),(60,'ER','ERITREA','Eritrea','ERI',291),(61,'EE','ESTONIA','Estonia','EST',372),(62,'ET','ETHIOPIA','Ethiopia','ETH',251),(63,'FO','FAEROE ISLANDS','Faeroe Islands','FRO',298),(64,'FJ','FIJI ISLANDS','Fiji Islands','FJI',67970),(65,'FI','FINLAND','Finland','FIN',358),(66,'FR','FRANCE','France','FRA',33),(67,'GF','FRENCH GUIANA','French Guiana','GUF',594),(68,'PF','FRENCH POLYNESIA','French Polynesia','PYF',689),(69,'GA','GABON','Gabon','GAB',241),(70,'GM','GAMBIA','Gambia','GMB',220),(71,'GE','GEORGIA','Georgia','GEO',995),(72,'DE','GERMANY','Germany','DEU',49),(73,'GH','GHANA','Ghana','GHA',233),(74,'GI','GIBRALTAR','Gibraltar','GIB',350),(75,'GR','GREECE','Greece','GRC',30),(76,'GD','GRENADA','Grenada','GRD',1473),(77,'GP','GUADELOUPE','Guadeloupe','GLP',590),(78,'GU','GUAM','Guam','GUM',1671),(79,'GT','GUATEMALA','Guatemala','GTM',502),(80,'GN','GUINEA','Guinea','GIN',224),(81,'GW','GUINEA BISSAU','Guinea Bissau','GNB',245),(82,'GY','GUYANA','Guyana','GUY',592),(83,'HT','HAITI','Haiti','HTI',509),(84,'HN','HONDURAS','Honduras','HND',504),(85,'HK','HONG KONG','Hong Kong','HKG',852),(86,'HU','HUNGARY','Hungary','HUN',36),(87,'IS','ICELAND','Iceland','ISL',354),(88,'IN','INDIA','India','IND',91),(89,'ID','INDONESIA','Indonesia','IDN',62),(90,'IR','IRAN','Iran','IRN',98),(91,'IQ','IRAQ','Iraq','IRQ',964),(92,'IE','IRELAND','Ireland','IRL',353),(93,'IL','ISRAEL','Israel','ISR',972),(94,'IT','ITALY','Italy','ITA',39),(95,'CI','IVORY COAST','Ivory Coast','CIV',225),(96,'JM','JAMAICA','Jamaica','JAM',1876),(97,'JP','JAPAN','Japan','JPN',81),(98,'JO','JORDAN','Jordan','JOR',962),(99,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',7),(100,'KE','KENYA','Kenya','KEN',254),(101,'KS','KOSOVO','Kosovo','KSV',38128),(102,'KW','KUWAIT','Kuwait','KWT',965),(103,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',996),(104,'LA','LAOS','Laos','LAO',856),(105,'LV','LATVIA','Latvia','LVA',371),(106,'LB','LEBANON','Lebanon','LBN',961),(107,'LS','LESOTHO','Lesotho','LSO',266),(108,'LR','LIBERIA','Liberia','LBR',231),(109,'LY','LIBYA','Libya','LBY',218),(110,'LI','LIECHTENSTEIN','Liechtenstein','LIE',423),(111,'LT','LITHUANIA','Lithuania','LTU',370),(112,'LU','LUXEMBOURG','Luxembourg','LUX',352),(113,'MO','MACAU','Macau','MAC',853),(114,'MK','MACEDONIA','Macedonia','MKD',389),(115,'MG','MADAGASCAR','Madagascar','MDG',261),(116,'MW','MALAWI','Malawi','MWI',265),(117,'MY','MALAYSIA','Malaysia','MYS',60),(118,'ML','MALI','Mali','MLI',223),(119,'MT','MALTA','Malta','MLT',356),(120,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',692),(121,'MQ','MARTINIQUE','Martinique','MTQ',596),(122,'MR','MAURITANIA','Mauritania','MRT',222),(123,'MU','MAURITIUS','Mauritius','MUS',230),(124,'MX','MEXICO','Mexico','MEX',52),(125,'FM','MICRONESIA','Micronesia','FSM',691),(126,'MD','MOLDOVA','Moldova','MDA',373),(127,'MC','MONACO','Monaco','MCO',377),(128,'MN','MONGOLIA','Mongolia','MNG',976),(129,'ME','MONTENEGRO','Montenegro','MNE',382),(130,'MS','MONTSERRAT','Montserrat','MSR',1664),(131,'MA','MOROCCO','Morocco','MAR',212),(132,'MZ','MOZAMBIQUE','Mozambique','MOZ',258),(133,'MM','MYANMAR','Myanmar','MMR',95),(134,'NA','NAMIBIA','Namibia','NAM',264),(135,'NP','NEPAL','Nepal','NPL',977),(136,'NL','NETHERLANDS','Netherlands','NLD',31),(137,'NC','NEW CALEDONIA','New Caledonia','NCL',687),(138,'NZ','NEW ZEALAND','New Zealand','NZL',64),(139,'NI','NICARAGUA','Nicaragua','NIC',505),(140,'NE','NIGER','Niger','NER',227),(141,'NG','NIGERIA','Nigeria','NGA',234),(142,'MP','NO. MARIANA ISLANDS','No. Mariana Islands','MNP',1670),(143,'KP','NORTH KOREA','North Korea','PRK',850),(144,'NO','NORWAY','Norway','NOR',47),(145,'OM','OMAN','Oman','OMN',968),(146,'PK','PAKISTAN','Pakistan','PAK',92),(147,'PW','PALAU','Palau','PLW',680),(149,'PA','PANAMA','Panama','PAN',507),(150,'PY','PARAGUAY','Paraguay','PRY',595),(151,'PE','PERU','Peru','PER',51),(152,'PH','PHILIPPINES','Philippines','PHL',63),(153,'PL','POLAND','Poland','POL',48),(154,'PT','PORTUGAL','Portugal','PRT',351),(155,'PR','PUERTO RICO','Puerto Rico','PRI',1787),(156,'QA','QATAR','Qatar','QAT',974),(157,'RE','REUNION ISLAND','Reunion Island','REU',262),(158,'RO','ROMANIA','Romania','ROM',40),(159,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',70),(160,'RW','RWANDA','Rwanda','RWA',250),(161,'SM','SAN MARINO','San Marino','SMR',378),(162,'SA','SAUDI ARABIA','Saudi Arabia','SAU',966),(163,'SN','SENEGAL','Senegal','SEN',221),(164,'RS','SERBIA','Serbia','SRB',381),(165,'SC','SEYCHELLES ISLANDS','Seychelles Islands','SYC',248),(166,'SL','SIERRA LEONE','Sierra Leone','SLE',232),(167,'SG','SINGAPORE','Singapore','SGP',65),(168,'SK','SLOVAKIA','Slovakia','SVK',421),(169,'SI','SLOVENIA','Slovenia','SVN',386),(170,'SO','SOMALIA','Somalia','SOM',252),(171,'ZA','SOUTH AFRICA','South Africa','ZAF',27),(172,'KR','SOUTH KOREA','South Korea','KOR',82),(173,'SS','SOUTH SUDAN','South Sudan','SSD',211),(174,'ES','SPAIN','Spain','ESP',34),(175,'LK','SRI LANKA','Sri Lanka','LKA',94),(176,'KN','ST. KITTS','St. Kitts','KNA',1869),(177,'LC','ST. LUCIA','St. Lucia','LCA',1758),(178,'MF','ST. MARTIN','St. Martin','MAF',1721),(179,'PM','ST. PIERRE & MIQUELON','St. Pierre & Miquelon','SPM',508),(180,'VC','ST. VINCENT','St. Vincent','VCT',1784),(181,'SD','SUDAN','Sudan','SDN',249),(182,'SR','SURINAME','Suriname','SUR',597),(183,'SZ','SWAZILAND','Swaziland','SWZ',268),(184,'SE','SWEDEN','Sweden','SWE',46),(185,'CH','SWITZERLAND','Switzerland','CHE',41),(186,'SY','SYRIA','Syria','SYR',963),(187,'TW','TAIWAN','Taiwan','TWN',886),(188,'TJ','TAJIKISTAN','Tajikistan','TJK',992),(189,'TZ','TANZANIA','Tanzania','TZA',255),(190,'TH','THAILAND','Thailand','THA',66),(192,'TT','TRINIDAD & TOBAGO','Trinidad & Tobago','TTO',1868),(193,'TN','TUNISIA','Tunisia','TUN',216),(194,'TR','TURKEY','Turkey','TUR',90),(195,'TM','TURKMENISTAN','Turkmenistan','TKM',7370),(196,'TC','TURKS & CAICOS ISLANDS','Turks & Caicos Islands','TCA',1649),(197,'UG','UGANDA','Uganda','UGA',256),(198,'UA','UKRAINE','Ukraine','UKR',380),(199,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',971),(200,'GB','UNITED KINGDOM','United Kingdom','GBR',44),(201,'UY','URUGUAY','Uruguay','URY',598),(202,'VI','US VIRGIN ISLANDS','Us Virgin Islands','VIR',1340),(203,'US','UNITED STATES OF AMERICA','United States Of America','USA',1),(204,'UZ','UZBEKISTAN','Uzbekistan','UZB',998),(205,'VE','VENEZUELA','Venezuela','VEN',58),(206,'VN','VIETNAM','Vietnam','VNM',84),(207,'YE','YEMEN','Yemen','YEM',967),(208,'ZM','ZAMBIA','Zambia','ZMB',260),(209,'ZW','ZIMBABWE','Zimbabwe','ZWE',263),(211,'A','ASCENSION','Ascension','ASC',247),(212,'CK','COOK ISLANDS','Cook Islands','COK',682),(213,'TL','EAST TIMOR','EastTimor','TLS',670),(214,'FK','FALKLAND ISLANDS','FalklandIslands','FLK',500),(215,'GL','GREENLAND','GreenLand','GRL',299),(216,'KI','KIRIBATI','Kiribati','KIR',686),(217,'MV','MALDIVES','Maldives','MDV',960),(218,'NR','NAURU','Nauru','NRU',674),(223,'IO','DIEGO GARCIA','Diego Garcia','IOT',246),(224,'NU','NIUE','Niue','NIU',683),(225,'PS','PALESTINE','Palestine','PSE',970),(226,'TK','TOKELAU','Tokelau','TKL',690),(227,'TV','TUVALU','Tuvalu','TUV',688),(228,'VU','VANUATU','Vanuatu','VUT',678),(229,'VA','VATICAN','Vatican','VAT',379),(230,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',681),(231,'SH','SAINT HELENA','Saint Helena','SHN',290),(232,'AQ','ANTARCTICA','antarctica','ATA',672),(233,'ST','SAO TOME AND PRINCIPE','Sao Tome And Principe','STP',239);

DROP TABLE IF EXISTS configuration CASCADE;
CREATE TABLE configuration (
  id BIGSERIAL PRIMARY KEY,
  name varchar(100) NOT NULL,
  display_name VARCHAR(255) NOT NULL DEFAULT 1,
  value varchar(255) DEFAULT NULL,
  field_type varchar(255) NOT NULL DEFAULT '',
  info text NOT NULL DEFAULT '',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  display_gui SMALLINT NOT NULL DEFAULT 1,
  group_title varchar(50) NOT NULL DEFAULT '',
  sub_group VARCHAR(50) NOT NULL DEFAULT '',
  validation varchar(50) NOT NULL DEFAULT ''
);

COMMENT ON COLUMN configuration.display_gui IS '1->Display in GUI.,0-> Not display into the GUI.';

INSERT INTO configuration VALUES (1,'email','Email Notifications','0','enable_disable_option','Set enable to send email notifications','2024-12-17 20:35:31',0,'notifications','Email',''),(2,'decimal_points','Decimal Points','4','get_decimal_points','Set decimal points to use through out system (Max 5)','2024-12-17 20:35:31',0,'global','General','integer'),(3,'pin_retries','Pin retries','3','default_system_input','Set number of retries to validate pin number','2024-12-17 20:35:31',0,'calls','Calling Card','integer'),(4,'base_currency','Base Currency','USD','base_currency','Set base currency of system.','2024-12-17 20:35:31',0,'global','General',''),(5,'default_timezone','Timezone','49','default_timezone','Set default timezone for accounts','2013-05-06 19:34:39',0,'signup','',''),(6,'country','Country','88','country','Set default country for accounts','2024-12-17 20:35:31',0,'signup','',''),(7,'version','Version','1.0','default_system_input','Current version of Call-forwarding','2024-12-17 20:35:31',1,'global','',''),(8,'ivr_count','IVR Count','3','default_system_input','Number of time IVR should play in call','2024-12-17 20:35:31',0,'calls','Calling Card','integer'),(9,'smtp','SMTP','0','enable_disable_option','Set yes to use SMTP connection to send email and no to use sendmail connection to send email','2024-12-17 20:35:31',0,'notifications','Email',''),(10,'default_signup_rategroup','Rate Group','','default_signup_rategroup','Set default rategroup for singup customers','2024-12-17 20:35:31',0,'signup','',''),(11,'enable_signup','Enable Signup','0','enable_disable_option','Set enable to add signup module','2024-12-17 20:35:31',0,'signup','',''),(12,'create_sipdevice','Create SIP Device','0','enable_disable_option','Set yes to create sip device when customer will do singup in system','2024-12-17 20:35:31',0,'signup','',''),(13,'balance','Initial Balance','0','default_system_input','Set balance for newly created customer','2024-12-17 20:35:31',0,'signup','','integer'),(14,'minimum_fund_transfer','Minimum Fund Transfer','1','default_system_input','Set minimum amount for fund transfer','2024-12-17 20:35:31',0,'global','General','integer'),(15,'log_path','Log Path','/var/log/cloud2voice/','default_system_input','Cloud2Voice log files path','2024-12-17 20:35:31',0,'global','General',''),(16,'notifications','Account Notification','0','enable_disable_option','Set enable to account notification','2024-12-17 20:35:31',0,'signup','',''),(17,'stripe_permission','Payment Gateway Permission','0','enable_disable_option','Set stripe permission','2024-12-17 20:35:31',0,'signup','',''),(18,'maxchannels','Concurrent Calls','0','default_system_input','Allow to Concurrent Calls','2024-12-17 20:35:31',0,'signup','','integer'),(19,'voicemail_number','Voicemail Number','*97','default_system_input','Voicemail listen number','2024-12-17 20:35:31',0,'calls','General',''),(20,'enable_database','Archive','1','enable_disable_option','Set enable to activate CDR archive feature','2024-12-17 20:35:31',0,'database','',''),(21,'default_database_type','Interval','1','default_system_type','Select Interval of archive cdrs. Example: If Half Year selected then older than 6 Months records will be archived automatically.','2024-12-17 20:35:31',0,'database','',''),(22,'purge_recordings','Recording Files Older Than Days','-1','default_system_input','Remove recordings from directory older than defined days','2024-12-17 20:35:31',0,'purge','','integer_with_sign'),(23,'purge_cdrs','CDRs Older Than Days','-1','default_system_input','Remove CDRs from table older than defined days','2024-12-17 20:35:31',0,'purge','','integer_with_sign'),(24,'sms_notications','SMS Notifications','1','enable_disable_option','Set Enable To Use SMS Notification ','2024-12-17 20:35:31',0,'notifications','SMS',''),(25,'sms_api_key','API Key','Enter API Key','default_system_input','Set your API Key for SMS','2024-12-17 20:35:31',0,'notifications','SMS',''),(26,'sms_secret_key','Secret Key','Enter Secret Key','default_system_input','Set your API Secret Key ','2024-12-17 20:35:31',0,'notifications','SMS',''),(27,'alert_notications','Push Notifications','1','enable_disable_option','Set enable to send notifications to accounts','2024-12-17 20:35:31',0,'notifications','Push Notifications',''),(28,'debug','Debug','1','enable_disable_option','To enable call debug, set it to Enable. Logs will appear at /var/log/astpp/astpp.log','2024-12-17 20:35:31',0,'calls','General',''),(29,'call_max_length','Call Max Length','100','default_system_input','Set maximum length (in minute) for call.','2024-12-17 20:35:31',0,'calls','General','integer'),(30,'number_of_default_rows','Number Of Default Rows','10','default_pagination_size','Set your pagination size','2019-04-01 00:00:00',0,'global','General','');
DROP TABLE IF EXISTS sip_profiles CASCADE;
CREATE TABLE sip_profiles (
  id BIGSERIAL PRIMARY KEY,
  name varchar(20) NOT NULL DEFAULT '',
  sip_ip varchar(39) NOT NULL DEFAULT '',
  sip_port varchar(6) NOT NULL DEFAULT '',
  profile_data text NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status SMALLINT DEFAULT 1
);

INSERT INTO sip_profiles VALUES (1,'default','$${local_ip_v4}','5060','{"rtp-ip":"$${local_ip_v4}","dialplan":"XML","user-agent-string":"CLOUD2VOICE","debug":"0","sip-trace":"no","tls":"false","inbound-reg-force-matching-username":"true","disable-transcoding":"true","all-reg-options-ping":"false","unregister-on-options-fail":"true","log-auth-failures":"true","status":"0","inbound-bypass-media":"false","inbound-proxy-media":"false","disable-transfer":"false","enable-100rel":"false","rtp-timeout-sec":"300","dtmf-duration":"2000","manual-redirect":"true","aggressive-nat-detection":"true","enable-timer":"false","minimum-session-expires":"120","session-timeout-pt":"1800","auth-calls":"true","apply-inbound-acl":"default","inbound-codec-prefs":"PCMA,PCMU","outbound-codec-prefs":"PCMA,PCMU","inbound-late-negotiation":"false","sip-capture":"no","forward-unsolicited-mwi-notify":"false","context":"default","rfc2833-pt":"101","rtp-timer-name":"soft","hold-music":"$${hold_music}","manage-presence":"true","presence-hosts":"$${domain},$${local_ip_v4}","presence-privacy":"$${presence_privacy}","inbound-codec-negotiation":"generous","auth-all-packets":"false","ext-rtp-ip":"$${local_ip_v4}","ext-sip-ip":"$${local_ip_v4}","rtp-hold-timeout-sec":"1800","challenge-realm":"auto_from","nonce-ttl":"60","pass-callee-id":"false", "dtmf_type":"rfc2833"}','2015-01-21 17:25:01','2019-03-05 08:25:47',1);

DROP TABLE IF EXISTS invoice_conf CASCADE;
CREATE TABLE invoice_conf (
  id BIGSERIAL PRIMARY KEY,
  parent_id BIGINT NOT NULL DEFAULT 1,
  company_name varchar(100) NOT NULL,
  address varchar(300) NOT NULL,
  city varchar(20) NOT NULL,
  province varchar(20) NOT NULL,
  country varchar(20) NOT NULL,
  zipcode varchar(10) NOT NULL,
  telephone varchar(20) NOT NULL,
  fax varchar(20) NOT NULL,
  emailaddress varchar(100) NOT NULL,
  website varchar(100) NOT NULL,
  invoice_prefix varchar(11) NOT NULL DEFAULT 'INV_',
  invoice_start_from int NOT NULL DEFAULT '1',
  logo varchar(100) NOT NULL,
  favicon varchar(100) NOT NULL,
  invoice_note text NOT NULL,
  invoice_taxes_number varchar(100) NOT NULL DEFAULT 'ABN 12 345 678 901',
  domain varchar(100) NOT NULL,
  website_title varchar(100) NOT NULL,
  website_footer varchar(100) NOT NULL,
  smtp_host varchar(255) NOT NULL,
  smtp_port int NOT NULL,
  smtp_user varchar(255) NOT NULL,
  smtp_pass varchar(255) NOT NULL,
  smtp_status SMALLINT NOT NULL DEFAULT '1'
);

INSERT INTO invoice_conf VALUES (1,1,'Inextrix Technologies Pvt. Ltd','Lilamani Corporate Heights, Nava vadaj','Ahmedabad','Gujarat','88','380014','+1-855-580-1802','', 'sales@inextrix.com','www.inextrix.com','INV_',1,'title.png','favicon.icon','This is test note for invoice.','','cloud2voice.com','Call-Forwarding','Call-Forwarding Footer','smtp.gmail.com','25','test@gmail.com','testpassword',1);
/*
This table will be used for the FreeSWITCH.
*/
DROP TABLE IF EXISTS ip_map CASCADE;
CREATE TABLE ip_map (
  id BIGSERIAL PRIMARY KEY,
  name varchar(20) NOT NULL DEFAULT '',
  ip INET NOT NULL,
  user_id BIGINT NOT NULL DEFAULT '1',
  parent_id BIGINT NOT NULL DEFAULT '1',
  prefix varchar(20) NOT NULL DEFAULT '',
  status SMALLINT DEFAULT 1,
  created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*
This table will be used to create report into the system.
In this table, We don't have any single foreign key or reference key
*/
DROP TABLE IF EXISTS cdrs CASCADE;
CREATE TABLE cdrs (
    id BIGSERIAL PRIMARY KEY,
    uniqueid VARCHAR(60) NOT NULL DEFAULT '',
    user_id BIGINT NOT NULL DEFAULT 0,
    parent_id BIGINT NOT NULL DEFAULT 0,
    callerid VARCHAR(120) NOT NULL,
    callednum VARCHAR(30) NOT NULL DEFAULT '',
    billseconds SMALLINT NOT NULL DEFAULT 0,
    trunkip INET NOT NULL DEFAULT '0.0.0.0',
    callerip INET NOT NULL DEFAULT '0.0.0.0',
    disposition VARCHAR(45) NOT NULL DEFAULT '',
    callstart TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    debit NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    rategroup_id BIGINT DEFAULT 0,
    package_id BIGINT NOT NULL DEFAULT 0,
    pattern VARCHAR(20) NOT NULL,
    notes VARCHAR(80) NOT NULL,
    invoiceid INT NOT NULL DEFAULT 0,
    rate_cost NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    fraud_score SMALLINT NOT NULL DEFAULT 0,
    spam_score SMALLINT NOT NULL DEFAULT 0,
    carrier varchar(50) NOT NULL DEFAULT '',
    line_type varchar(15) NOT NULL DEFAULT '',
    parent_code VARCHAR(20) NOT NULL,
    parent_code_destination VARCHAR(80) DEFAULT '',
    parent_cost NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    call_direction VARCHAR(8) NOT NULL DEFAULT 'inbound',
    calltype VARCHAR(11) CHECK (calltype IN ('STANDARD', 'DID', 'FREE')) NOT NULL DEFAULT 'STANDARD',
    is_recording SMALLINT NOT NULL DEFAULT 0,
    country_id BIGINT NOT NULL DEFAULT 0,
    hangup_by VARCHAR(20) NOT NULL DEFAULT 'system'
);
/*
This table will be used to create total calls on the dashboard.
*/
DROP TABLE IF EXISTS cdrs_total_calls CASCADE;
CREATE TABLE cdrs_total_calls (
    id BIGSERIAL PRIMARY KEY,
    total_calls INTEGER NOT NULL DEFAULT 0,
    total_duration INTEGER NOT NULL DEFAULT 0,
    call_year INTEGER DEFAULT EXTRACT(YEAR FROM CURRENT_DATE)::INT,
    call_month INTEGER DEFAULT EXTRACT(MONTH FROM CURRENT_DATE)::INT,
    call_date INTEGER DEFAULT EXTRACT(DAY FROM CURRENT_DATE)::INT,
    total_answered_call INTEGER NOT NULL DEFAULT 0
);
/*
This table will be used to create unanswered calls on the dashboard.
*/
DROP TABLE IF EXISTS cdrs_unanswered_calls CASCADE;
CREATE TABLE cdrs_unanswered_calls (
    id BIGSERIAL PRIMARY KEY,
    total_unanswered_calls INTEGER NOT NULL DEFAULT 0,
    call_year INTEGER DEFAULT EXTRACT(YEAR FROM CURRENT_DATE)::INT,
    call_month INTEGER DEFAULT EXTRACT(MONTH FROM CURRENT_DATE)::INT,
    call_date INTEGER DEFAULT EXTRACT(DAY FROM CURRENT_DATE)::INT
);
/*
This table will be used to create answered calls on the dashboard.
*/
DROP TABLE IF EXISTS cdrs_answered_calls CASCADE;
CREATE TABLE cdrs_answered_calls (
    id BIGSERIAL PRIMARY KEY,
    total_calls INTEGER NOT NULL DEFAULT 0,
    total_answered_calls INTEGER NOT NULL DEFAULT 0,
    total_call_duration INTEGER NOT NULL DEFAULT 0,
    call_year INTEGER DEFAULT EXTRACT(YEAR FROM CURRENT_DATE)::INT,
    call_month INTEGER DEFAULT EXTRACT(MONTH FROM CURRENT_DATE)::INT,
    call_date INTEGER DEFAULT EXTRACT(DAY FROM CURRENT_DATE)::INT
);
/*
This table will be used to create the graph on the dashboard.
*/
DROP TABLE IF EXISTS cdrs_total_graph CASCADE;
CREATE TABLE cdrs_total_graphs (
    id BIGSERIAL PRIMARY KEY,
    total_calls INTEGER NOT NULL DEFAULT 0,
    type VARCHAR(30) NOT NULL DEFAULT 'NOT_MAIN',
    dispositions JSON DEFAULT '{}',
    call_year INTEGER DEFAULT EXTRACT(YEAR FROM CURRENT_DATE)::INT,
    call_month INTEGER DEFAULT EXTRACT(MONTH FROM CURRENT_DATE)::INT,
    call_date INTEGER DEFAULT EXTRACT(DAY FROM CURRENT_DATE)::INT
);

/*
In below table, We are going to store entire month data. 
In this table, We are going to remove data on every 1st day of the month,Past month data.
*/
DROP TABLE IF EXISTS cdrs_monthly CASCADE;
CREATE TABLE cdrs_monthly (
    id BIGSERIAL PRIMARY KEY,
    uniqueid VARCHAR(60) NOT NULL DEFAULT '',
    user_id BIGINT DEFAULT 0,
    parent_id BIGINT DEFAULT 0,
    type SMALLINT NOT NULL DEFAULT 0,
    callerid VARCHAR(120) NOT NULL,
    callednum VARCHAR(30) NOT NULL DEFAULT '',
    billseconds SMALLINT NOT NULL DEFAULT 0,
    trunkip INET NOT NULL DEFAULT '0.0.0.0',
    callerip INET NOT NULL DEFAULT '0.0.0.0',
    disposition VARCHAR(45) NOT NULL DEFAULT '',
    callstart TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    debit NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    rategroup_id BIGINT NOT NULL DEFAULT 0,
    package_id BIGINT NOT NULL DEFAULT 0,
    pattern VARCHAR(20) NOT NULL,
    notes VARCHAR(80) NOT NULL,
    invoiceid INT NOT NULL DEFAULT 0,
    rate_cost NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    parent_code VARCHAR(20) NOT NULL,
    parent_code_destination VARCHAR(80) DEFAULT NULL,
    parent_cost NUMERIC(20,6) NOT NULL DEFAULT 0.000000,
    call_direction VARCHAR(8) NOT NULL DEFAULT 'inbound',
    calltype VARCHAR(11) CHECK (calltype IN ('STANDARD', 'DID', 'FREE')) NOT NULL DEFAULT 'STANDARD',
    is_recording SMALLINT NOT NULL DEFAULT 1 CHECK (is_recording IN (0, 1)),
    country_id BIGINT NOT NULL DEFAULT 0,
    hangup_by VARCHAR(20) NOT NULL DEFAULT 'System'
);

/*
A Rate group have bunch of customer rates. This rate group will be assigned to the customer.
*/
DROP TABLE IF EXISTS rategroups CASCADE;
CREATE TABLE rategroups (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL DEFAULT '',
    includedseconds SMALLINT NOT NULL DEFAULT '0',
    init_inc SMALLINT NOT NULL DEFAULT 60,
    inc SMALLINT NOT NULL DEFAULT 60,
    status SMALLINT NOT NULL DEFAULT 1,
    parent_id BIGINT NOT NULL DEFAULT 1,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
insert into rategroups values(1,'default',0,60,60,1,1,'2024-12-09 12:01:25','2024-12-09 12:01:25');

DROP TABLE IF EXISTS customer_rates CASCADE;
CREATE TABLE customer_rates (
    id BIGSERIAL PRIMARY KEY,
    prefix VARCHAR(40) DEFAULT '',
    description VARCHAR(80) DEFAULT '',
    connectcost NUMERIC(20,10) NOT NULL DEFAULT 0.0000000000,
    includedseconds SMALLINT NOT NULL DEFAULT 0,
    cost NUMERIC(10,5) NOT NULL DEFAULT 0.00000,
    init_inc SMALLINT NOT NULL DEFAULT 60,
    inc SMALLINT DEFAULT 60,
    rategroup_id BIGINT DEFAULT 1,
    parent_id BIGINT DEFAULT 1,
    status SMALLINT NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (prefix,rategroup_id)
);

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id BIGSERIAL PRIMARY KEY,
  username VARCHAR(30) DEFAULT NULL,
  password VARCHAR(64) DEFAULT NULL,
  contact_number VARCHAR(15) DEFAULT NULL,
  address VARCHAR(255) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  balance NUMERIC(15,5) DEFAULT 0,
  credit_limit NUMERIC(10,5) DEFAULT NULL,
  posttoexternal SMALLINT DEFAULT 2,
  user_type SMALLINT DEFAULT 0,
  parent_id BIGINT DEFAULT 1,
  company_name VARCHAR(50) DEFAULT NULL,
  timezone_id BIGINT DEFAULT 1,
  localization_id BIGINT DEFAULT 1,
  rategroup_id BIGINT DEFAULT 1,
  notifications SMALLINT DEFAULT 1,
  enable_ivr SMALLINT DEFAULT 0,
  ivr_pin INTEGER DEFAULT NULL,
  login_permission SMALLINT DEFAULT 0,
  exten_limit SMALLINT NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted SMALLINT NOT NULL DEFAULT 0,
  status SMALLINT NOT NULL DEFAULT 1
);

insert into users values 
(1,'admin','test@123','919191919191','','admin@gmail.com',1,0,1,1,1,'cloud2voice','194',1,1,1,0,0,1,0,'2024-12-09 12:01:25',0,1),
(2,'customer','test@123','919191919191','','customer@gmail.com',10,0,2,3,1,'cloud2voice','194',1,1,1,1,998888,1,2,'2024-12-18 12:01:25',0,1);

COMMENT ON COLUMN users.user_type IS '1->Admin,2->Reseller,3->User,4->Provider';
COMMENT ON COLUMN users.login_permission IS '0->No, 1->Yes';
COMMENT ON COLUMN users.exten_limit IS 'User extension creation limit. It can be maximum 999';
COMMENT ON COLUMN users.enable_ivr IS '0->Inactive, 1->Active';
COMMENT ON COLUMN users.ivr_pin IS 'Pin number for IVR. Range 0 to 999999';
COMMENT ON COLUMN users.deleted IS '0->Not-Deleted,1->Deleted';
COMMENT ON COLUMN users.posttoexternal IS '1->Postpaid,2->Prepaid';
COMMENT ON COLUMN users.notifications IS '1->Yes,0->No';

DROP TABLE IF EXISTS dids CASCADE;
CREATE TABLE dids (
  id BIGSERIAL PRIMARY KEY,
  number VARCHAR(15) DEFAULT NULL,
  user_id BIGINT NOT NULL DEFAULT 0,
  parent_id BIGINT NOT NULL DEFAULT 0,
  gateway_id BIGINT NOT NULL DEFAULT 1,
  campaign_id BIGINT NOT NULL DEFAULT 1,
  country_id BIGINT NOT NULL DEFAULT 1,
  arecode VARCHAR(100) NOT NULL DEFAULT 1,
  cost NUMERIC(15,5) DEFAULT 0.000000,
  init_inc SMALLINT DEFAULT 60,
  inc SMALLINT DEFAULT 60,
  type SMALLINT DEFAULT 1,
  monthly_cost NUMERIC(15,5) DEFAULT 0.00000,
  setup_cost NUMERIC(15,5) DEFAULT 0.00000,
  voip_shield SMALLINT DEFAULT 1,
  status SMALLINT DEFAULT 1,
  did_created_by SMALLINT NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON COLUMN dids.voip_shield IS '1->Enable,2->Disable';
COMMENT ON COLUMN dids.did_created_by IS '1->Admin,2->Reseller,3->User';
COMMENT ON COLUMN dids.type IS '1->Regular,2->TFN';

DROP TABLE IF EXISTS campaigns CASCADE;
CREATE TABLE campaigns (
  id BIGSERIAL PRIMARY KEY,
  campaign_name VARCHAR(100) DEFAULT NULL,
  campaign_description VARCHAR(256) DEFAULT NULL,
  campaign_timeout SMALLINT DEFAULT 0,
  user_id BIGINT NOT NULL DEFAULT 1,
  parent_id BIGINT NOT NULL DEFAULT 1,
  ivr_id BIGINT NOT NULL DEFAULT 0,
  recording SMALLINT DEFAULT 0,
  status SMALLINT DEFAULT 1,
  deleted SMALLINT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON COLUMN campaigns.campaign_timeout IS 'This column is in seconds.';

insert into campaigns values(1,'Test_Campaign','This is test campaign',60,2,1,0,0,1,0,'2024-12-10 00:00:09');

DROP TABLE IF EXISTS targets CASCADE;
CREATE TABLE targets (
  id BIGSERIAL PRIMARY KEY,
  target_name varchar(50) DEFAULT NULL,
  target_number varchar(15) DEFAULT NULL,
  monthly_flag SMALLINT DEFAULT 0,
  monthly_cap INTEGER DEFAULT 1 CHECK (monthly_cap BETWEEN 1 AND 99999),
  monthly_current INTEGER DEFAULT 0,
  daily_flag SMALLINT DEFAULT 0,
  daily_cap SMALLINT DEFAULT 1 CHECK (daily_cap BETWEEN 1 AND 9999),
  daily_current SMALLINT DEFAULT 0,
  hourly_flag SMALLINT DEFAULT 0,
  hourly_cap SMALLINT DEFAULT 1 CHECK (hourly_cap BETWEEN 1 AND 999),
  hourly_current SMALLINT DEFAULT 0,
  cc SMALLINT DEFAULT 1 CHECK (cc BETWEEN 1 AND 999),
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  status SMALLINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS campaign_assignments cascade;
CREATE TABLE campaign_assignments (
  id BIGSERIAL PRIMARY KEY,
  did_id BIGINT DEFAULT 1,
  campaign_id BIGINT DEFAULT 1,
  target_id BIGINT DEFAULT 1,
  weightage SMALLINT DEFAULT 9,
  priority SMALLINT DEFAULT 9,
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  target_status SMALLINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS callerids CASCADE;
CREATE TABLE callerids (
  id BIGSERIAL PRIMARY KEY,
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  did_id BIGINT DEFAULT 1,
  target_id BIGINT DEFAULT 1,
  campaign_id BIGINT DEFAULT 1,
  caller_id VARCHAR(15),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (parent_id) REFERENCES users(id),
  FOREIGN KEY (campaign_id) REFERENCES campaigns(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (target_id) REFERENCES targets(id) ON UPDATE CASCADE,
  FOREIGN KEY (did_id) REFERENCES dids(id) ON UPDATE CASCADE
);


DROP TABLE IF EXISTS gateways CASCADE;
CREATE TABLE gateways (
  id BIGSERIAL PRIMARY KEY,
  sipprofile_id BIGINT NOT NULL DEFAULT 1,
  name VARCHAR(50) NOT NULL DEFAULT '',
  gateway_data TEXT NOT NULL,
  dialplan_variable VARCHAR(500) NOT NULL,
  status SMALLINT NOT NULL DEFAULT 0,
  created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by SMALLINT NOT NULL DEFAULT 1
);
COMMENT ON COLUMN gateways.created_by IS '1->Admin,2->Provider';

INSERT INTO gateways VALUES (1,1,'YourProvider','{"proxy":"1.1.1.1","register":"false","caller-id-in-from":"true","extension-in-contact":"true"}','',1,'2024-12-19 15:59:26','2024-12-19 15:59:26',1);

DROP TABLE IF EXISTS sip_devices CASCADE;
CREATE TABLE sip_devices (
  id BIGSERIAL PRIMARY KEY,
  username varchar(50) DEFAULT NULL,
  dir_params JSON DEFAULT '{}',
  dir_vars JSON DEFAULT '{}',
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  status SMALLINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into sip_devices values (1,'ankitdoshi','{"password":"nRK46dloTv241C32hGPipA","vm-enabled":"true","vm-password":"29584","vm-mailto":"","vm-attach-file":"true","vm-keep-local-after-email":"true","vm-email-all-messages":"true"}','{"effective_caller_id_name":"","effective_caller_id_number":"","user_context":"default"}',2,1,1,'2024-12-09 12:01:25','2024-12-09 12:01:25');

DROP TABLE IF EXISTS ivrs CASCADE;
CREATE TABLE ivrs (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(100) DEFAULT NULL,
  description varchar(200) DEFAULT NULL,
  status SMALLINT DEFAULT 1,
  welcome_file BIGINT DEFAULT 0,
  invalid_file BIGINT DEFAULT 0,
  exit_file BIGINT DEFAULT 0,
  timeout SMALLINT DEFAULT 0,
  invalid_retries SMALLINT DEFAULT 0,
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE,
  FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ivr_press CASCADE;
CREATE TABLE ivr_press (
  id BIGSERIAL PRIMARY KEY,
  ivr_id INTEGER DEFAULT 1,
  digits SMALLINT DEFAULT 0,
  type VARCHAR(100) NOT NULL DEFAULT '',
  destination VARCHAR(30),
  description varchar(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (ivr_id) REFERENCES ivrs(id) ON UPDATE CASCADE ON DELETE CASCADE
);

COMMENT ON COLUMN ivr_press.type IS 'Transfer,Hold,Hangup';

DROP TABLE IF EXISTS recordings CASCADE;
CREATE TABLE recordings (
  id BIGSERIAL PRIMARY KEY,
  ivr_id INTEGER DEFAULT 1,
  user_id BIGINT DEFAULT 1,
  parent_id BIGINT DEFAULT 1,
  file_name varchar(255) DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE,
  FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE,
  FOREIGN KEY (ivr_id) REFERENCES ivrs (id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS menu_modules CASCADE;
CREATE TABLE menu_modules (
  id BIGSERIAL PRIMARY KEY,
  menu_label varchar(25) NOT NULL,
  module_name varchar(50) NOT NULL,
  module_url varchar(100) NOT NULL,
  menu_title varchar(20) NOT NULL,
  menu_title_bgcolor text NOT NULL,
  menu_image varchar(80) DEFAULT NULL,
  menu_subtitle varchar(20) NOT NULL,
  priority float NOT NULL,
  UNIQUE (module_url,module_name,menu_label)
);

DROP TABLE IF EXISTS userlevels CASCADE;
CREATE TABLE userlevels (
  id BIGSERIAL PRIMARY KEY,
  type SMALLINT NOT NULL DEFAULT 1,
  menu_id BIGINT NOT NULL DEFAULT 1
);

DROP TABLE IF EXISTS invoices CASCADE;
CREATE TABLE invoices (
  id BIGSERIAL PRIMARY KEY,
  prefix VARCHAR(20),
  number varchar(30),
  user_id BIGINT NOT NULL DEFAULT 1,
  parent_id BIGINT NOT NULL DEFAULT 1,
  from_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  to_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  due_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status SMALLINT NOT NULL DEFAULT 1,
  payment_gateway_id BIGINT NOT NULL DEFAULT 0,
  type SMALLINT NOT NULL DEFAULT 1,
  deleted SMALLINT NOT NULL DEFAULT 0,
  generate_type SMALLINT NOT NULL DEFAULT 1,
  confirm SMALLINT NOT NULL DEFAULT 1
);	
COMMENT ON COLUMN invoices.status IS '1->Paid,2->Unpaid';
COMMENT ON COLUMN invoices.type IS '1->receipt,2->Invoice';
COMMENT ON COLUMN invoices.deleted IS '0->Not-deleted,1->Delete';
COMMENT ON COLUMN invoices.generate_type IS '1->Automatic,2->Manually';
COMMENT ON COLUMN invoices.confirm IS '1->Confirmed,2->Draft';

DROP TABLE IF EXISTS payment_transactions CASCADE;
CREATE TABLE payment_transactions(
	id BIGSERIAL PRIMARY KEY,
	payment_gateway VARCHAR(30) NOT NULL DEFAULT '',
	transaction_id VARCHAR(50) NOT NULL DEFAULT '',
	user_id BIGINT NOT NULL DEFAULT 1,
	parent_id BIGINT NOT NULL DEFAULT 1,
	payment_amount NUMERIC(10,5) NOT NULL DEFAULT '0.00000'
);

DROP TABLE IF EXISTS stripe_customers CASCADE;
CREATE TABLE stripe_customers(
	id BIGSERIAL PRIMARY KEY,
	user_id BIGINT NOT NULL DEFAULT 1,
	parent_id BIGINT NOT NULL DEFAULT 1,
	stripe_customer_id VARCHAR(50) NOT NULL DEFAULT '',
	status SMALLINT NOT NULL DEFAULT 1
);

COMMENT ON COLUMN stripe_customers.status IS '1->Working,2->Not-working';

CREATE TABLE localizations (
  id BIGSERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  country_id BIGINT NOT NULL,
  dst_originate varchar(200) NOT NULL,
  status SMALLINT NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE customer_rates ADD FOREIGN KEY (rategroup_id) REFERENCES rategroups(id) ON UPDATE CASCADE;
ALTER TABLE customer_rates ADD FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE;

ALTER TABLE ip_map ADD FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE;
ALTER TABLE ip_map ADD FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE;

ALTER TABLE customer_rates ADD FOREIGN KEY (rategroup_id) REFERENCES rategroups(id) ON UPDATE CASCADE;
ALTER TABLE customer_rates ADD FOREIGN KEY (parent_id) REFERENCES users(id) ON UPDATE CASCADE;

ALTER TABLE rategroups ADD FOREIGN KEY (parent_id) REFERENCES users(id) ON UPDATE CASCADE;

ALTER TABLE users ADD FOREIGN KEY (parent_id) REFERENCES users(id);
ALTER TABLE users ADD FOREIGN KEY (timezone_id) REFERENCES timezones(id) ON UPDATE CASCADE;
ALTER TABLE users ADD FOREIGN KEY (rategroup_id) REFERENCES rategroups(id) ON UPDATE CASCADE;

ALTER TABLE gateways ADD FOREIGN KEY(sipprofile_id) REFERENCES sip_profiles(id);

ALTER TABLE campaigns ADD FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE;
ALTER TABLE campaigns ADD FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE;

ALTER TABLE targets ADD FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE;
ALTER TABLE targets ADD FOREIGN KEY (parent_id) REFERENCES users(id) ON UPDATE CASCADE;

ALTER TABLE campaign_assignments ADD FOREIGN KEY (campaign_id) REFERENCES campaigns(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE campaign_assignments ADD FOREIGN KEY (target_id) REFERENCES targets(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE campaign_assignments ADD FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE;
ALTER TABLE campaign_assignments ADD FOREIGN KEY (parent_id) REFERENCES users(id) ON UPDATE CASCADE;

ALTER TABLE sip_devices ADD FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE;
ALTER TABLE sip_devices ADD FOREIGN KEY (parent_id) REFERENCES users (id) ON UPDATE CASCADE;

CREATE OR REPLACE FUNCTION delete_campaigns()
RETURNS TRIGGER AS $$
BEGIN
    DELETE from campaign_assignments where campaign_id= NEW.id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_delete_campaigns BEFORE DELETE ON campaigns FOR EACH ROW EXECUTE FUNCTION delete_campaigns();

CREATE OR REPLACE FUNCTION delete_targets()
RETURNS TRIGGER AS $$
BEGIN
    DELETE from campaign_assignments where target_id= NEW.id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_delete_target AFTER DELETE ON targets FOR EACH ROW EXECUTE FUNCTION delete_targets();

CREATE OR REPLACE FUNCTION delete_rategroups()
RETURNS TRIGGER AS $$
BEGIN
    DELETE from customer_rates where rategroup_id= NEW.id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_delete_rategroups BEFORE DELETE ON rategroups FOR EACH ROW EXECUTE FUNCTION delete_rategroups();


CREATE OR REPLACE FUNCTION update_users()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.deleted = 0 AND NEW.deleted = 1 THEN
        UPDATE dids set user_id=0,parent_id=1 where user_id=NEW.id;
	DELETE from campaign_assignments where user_id=NEW.id;
        UPDATE campaigns SET deleted = 1 WHERE user_id = NEW.id;
        DELETE from ip_map where user_id= NEW.id;
        DELETE from callerids where user_id=NEW.id;
        DELETE from sip_devices where user_id=NEW.id;
        DELETE from ivrs where user_id=NEW.id;
        DELETE from recordings where user_id=NEW.id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_user BEFORE UPDATE ON users FOR EACH ROW EXECUTE FUNCTION update_users();

CREATE OR REPLACE FUNCTION update_parent()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.deleted = 0 AND NEW.deleted = 1 THEN
        DELETE from campaign_assignments where parent_id = NEW.id;
        UPDATE campaigns SET deleted = 1 WHERE parent_id = NEW.id;
        UPDATE dids set user_id=0,parent_id=0 where parent_id=NEW.id;
        DELETE from ip_map where parent_id= NEW.id;
        DELETE from callerids where parent_id=NEW.id;
        DELETE from sip_devices where parent_id=NEW.id;
        DELETE from ivrs where parent_id=NEW.id;
        DELETE from recordings where parent_id=NEW.id;
        DELETE from rategroups where parent_id=NEW.id;
        UPDATE users set deleted=1 where parent_id=NEW.id;
    END IF;
    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_parent BEFORE UPDATE ON users FOR EACH ROW EXECUTE FUNCTION update_parent();
