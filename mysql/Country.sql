-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: FBT
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `FBTCountries`
--

DROP TABLE IF EXISTS `FBTCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FBTCountries` (
  `idCountries` smallint(5) NOT NULL AUTO_INCREMENT,
  `iso_num` int(3) NOT NULL,
  `iso_alpha2` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_alpha3` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name_fr` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `continent` enum('AFRIQUE','AMERIQUE','ASIE','EUROPE','OCEANIE') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCountries`),
  UNIQUE KEY `idCountries_UNIQUE` (`idCountries`),
  UNIQUE KEY `iso_num_UNIQUE` (`iso_num`),
  UNIQUE KEY `iso_alpha2_UNIQUE` (`iso_alpha2`),
  UNIQUE KEY `iso_alpha3_UNIQUE` (`iso_alpha3`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FBTCountries`
--

LOCK TABLES `FBTCountries` WRITE;
/*!40000 ALTER TABLE `FBTCountries` DISABLE KEYS */;
INSERT INTO `FBTCountries` VALUES (1,4,'AF','AFG','Afghanistan','Afghanistan','ASIE'),(2,8,'AL','ALB','Albanie','Albania','EUROPE'),(3,12,'DZ','DZA','Algérie','Algeria','AFRIQUE'),(4,16,'AS','ASM','Samoa Américaines','American Samoa','AMERIQUE'),(5,20,'AD','AND','Andorre','Andorra','EUROPE'),(6,24,'AO','AGO','Angola','Angola','AFRIQUE'),(7,28,'AG','ATG','Antigua-et-Barbuda','Antigua and Barbuda','AMERIQUE'),(8,31,'AZ','AZE','Azerbaïdjan','Azerbaijan','ASIE'),(9,32,'AR','ARG','Argentine','Argentina','AMERIQUE'),(10,36,'AU','AUS','Australie','Australia','OCEANIE'),(11,40,'AT','AUT','Autriche','Austria','EUROPE'),(12,44,'BS','BHS','Bahamas','Bahamas','AMERIQUE'),(13,48,'BH','BHR','Bahreïn','Bahrain','ASIE'),(14,50,'BD','BGD','Bangladesh','Bangladesh','ASIE'),(15,51,'AM','ARM','Arménie','Armenia','ASIE'),(16,52,'BB','BRB','Barbade','Barbados','AMERIQUE'),(17,56,'BE','BEL','Belgique','Belgium','EUROPE'),(18,60,'BM','BMU','Bermudes','Bermuda','AMERIQUE'),(19,64,'BT','BTN','Bhoutan','Bhutan','ASIE'),(20,68,'BO','BOL','Bolivie','Bolivia','AMERIQUE'),(21,70,'BA','BIH','Bosnie-Herzégovine','Bosnia and Herzegovina','EUROPE'),(22,72,'BW','BWA','Botswana','Botswana','AFRIQUE'),(23,76,'BR','BRA','Brésil','Brazil','AMERIQUE'),(24,84,'BZ','BLZ','Belize','Belize','AMERIQUE'),(25,90,'SB','SLB','Îles Salomon','Solomon Islands','OCEANIE'),(26,92,'VG','VGB','Îles Vierges Britanniques','British Virgin Islands','AMERIQUE'),(27,96,'BN','BRN','Brunéi Darussalam','Brunei Darussalam','ASIE'),(28,100,'BG','BGR','Bulgarie','Bulgaria','EUROPE'),(29,108,'BI','BDI','Burundi','Burundi','AFRIQUE'),(30,112,'BY','BLR','Bélarus','Belarus','EUROPE'),(31,116,'KH','KHM','Cambodge','Cambodia','ASIE'),(32,120,'CM','CMR','Cameroun','Cameroon','AFRIQUE'),(33,124,'CA','CAN','Canada','Canada','AMERIQUE'),(34,132,'CV','CPV','Cap-vert','Cape Verde','AFRIQUE'),(35,136,'KY','CYM','Îles Caïmanes','Cayman Islands','AMERIQUE'),(36,140,'CF','CAF','République Centrafricaine','Central African','AFRIQUE'),(37,144,'LK','LKA','Sri Lanka','Sri Lanka','ASIE'),(38,148,'TD','TCD','Tchad','Chad','AFRIQUE'),(39,152,'CL','CHL','Chili','Chile','AMERIQUE'),(40,156,'CN','CHN','Chine','China','ASIE'),(41,158,'TW','TWN','Taïwan','Taiwan','ASIE'),(42,170,'CO','COL','Colombie','Colombia','AMERIQUE'),(43,174,'KM','COM','Comores','Comoros','AFRIQUE'),(44,175,'YT','MYT','Mayotte','Mayotte','AFRIQUE'),(45,178,'CG','COG','République du Congo','Republic of the Congo','AFRIQUE'),(46,180,'CD','COD','République Démocratique du Congo','The Democratic Republic Of The Congo','AFRIQUE'),(47,184,'CK','COK','Îles Cook','Cook Islands','OCEANIE'),(48,188,'CR','CRI','Costa Rica','Costa Rica','AMERIQUE'),(49,191,'HR','HRV','Croatie','Croatia','EUROPE'),(50,192,'CU','CUB','Cuba','Cuba','AMERIQUE'),(51,196,'CY','CYP','Chypre','Cyprus','EUROPE'),(52,203,'CZ','CZE','République Tchèque','Czech Republic','EUROPE'),(53,204,'BJ','BEN','Bénin','Benin','AFRIQUE'),(54,208,'DK','DNK','Danemark','Denmark','EUROPE'),(55,212,'DM','DMA','Dominique','Dominica','AMERIQUE'),(56,214,'DO','DOM','République Dominicaine','Dominican Republic','AMERIQUE'),(57,218,'EC','ECU','Équateur','Ecuador','AMERIQUE'),(58,222,'SV','SLV','El Salvador','El Salvador','AMERIQUE'),(59,226,'GQ','GNQ','Guinée Équatoriale','Equatorial Guinea','AFRIQUE'),(60,231,'ET','ETH','Éthiopie','Ethiopia','AFRIQUE'),(61,232,'ER','ERI','Érythrée','Eritrea','AFRIQUE'),(62,233,'EE','EST','Estonie','Estonia','EUROPE'),(63,239,'GS','SGS','Géorgie du Sud et les Îles Sandwich du Sud','South Georgia and the South Sandwich Islands','AMERIQUE'),(64,242,'FJ','FJI','Fidji','Fiji','OCEANIE'),(65,246,'FI','FIN','Finlande','Finland','EUROPE'),(66,250,'FR','FRA','France','France','EUROPE'),(67,254,'GF','GUF','Guyane Française','French Guiana','AMERIQUE'),(68,258,'PF','PYF','Polynésie Française','French Polynesia','OCEANIE'),(69,262,'DJ','DJI','Djibouti','Djibouti','AFRIQUE'),(70,266,'GA','GAB','Gabon','Gabon','AFRIQUE'),(71,268,'GE','GEO','Géorgie','Georgia','ASIE'),(72,270,'GM','GMB','Gambie','Gambia','AFRIQUE'),(73,276,'DE','DEU','Allemagne','Germany','EUROPE'),(74,288,'GH','GHA','Ghana','Ghana','AFRIQUE'),(75,296,'KI','KIR','Kiribati','Kiribati','OCEANIE'),(76,300,'GR','GRC','Grèce','Greece','EUROPE'),(77,308,'GD','GRD','Grenade','Grenada','AMERIQUE'),(78,312,'GP','GLP','Guadeloupe','Guadeloupe','AMERIQUE'),(79,316,'GU','GUM','Guam','Guam','OCEANIE'),(80,320,'GT','GTM','Guatemala','Guatemala','AMERIQUE'),(81,324,'GN','GIN','Guinée','Guinea','AFRIQUE'),(82,328,'GY','GUY','Guyana','Guyana','AMERIQUE'),(83,332,'HT','HTI','Haïti','Haiti','AMERIQUE'),(84,336,'VA','VAT','Saint-Siège (état de la Cité du Vatican)','Vatican City State','EUROPE'),(85,340,'HN','HND','Honduras','Honduras','AMERIQUE'),(86,344,'HK','HKG','Hong-Kong','Hong Kong','ASIE'),(87,348,'HU','HUN','Hongrie','Hungary','EUROPE'),(88,352,'IS','ISL','Islande','Iceland','EUROPE'),(89,356,'IN','IND','Inde','India','ASIE'),(90,360,'ID','IDN','Indonésie','Indonesia','ASIE'),(91,364,'IR','IRN','République Islamique d\'Iran','Islamic Republic of Iran','ASIE'),(92,368,'IQ','IRQ','Iraq','Iraq','ASIE'),(93,372,'IE','IRL','Irlande','Ireland','EUROPE'),(94,376,'IL','ISR','Israël','Israel','ASIE'),(95,380,'IT','ITA','Italie','Italy','EUROPE'),(96,384,'CI','CIV','Côte d\'Ivoire','Côte d\'Ivoire','AFRIQUE'),(97,388,'JM','JAM','Jamaïque','Jamaica','AMERIQUE'),(98,392,'JP','JPN','Japon','Japan','ASIE'),(99,398,'KZ','KAZ','Kazakhstan','Kazakhstan','ASIE'),(100,400,'JO','JOR','Jordanie','Jordan','ASIE'),(101,404,'KE','KEN','Kenya','Kenya','AFRIQUE'),(102,408,'KP','PRK','République Populaire Démocratique de Corée','Democratic People\'s Republic of Korea','ASIE'),(103,410,'KR','KOR','République de Corée','Republic of Korea','ASIE'),(104,414,'KW','KWT','Koweït','Kuwait','ASIE'),(105,417,'KG','KGZ','Kirghizistan','Kyrgyzstan','ASIE'),(106,418,'LA','LAO','République Démocratique Populaire Lao','Lao People\'s Democratic Republic','ASIE'),(107,422,'LB','LBN','Liban','Lebanon','ASIE'),(108,426,'LS','LSO','Lesotho','Lesotho','AFRIQUE'),(109,428,'LV','LVA','Lettonie','Latvia','EUROPE'),(110,430,'LR','LBR','Libéria','Liberia','AFRIQUE'),(111,434,'LY','LBY','Jamahiriya Arabe Libyenne','Libyan Arab Jamahiriya','AFRIQUE'),(112,438,'LI','LIE','Liechtenstein','Liechtenstein','EUROPE'),(113,440,'LT','LTU','Lituanie','Lithuania','EUROPE'),(114,442,'LU','LUX','Luxembourg','Luxembourg','EUROPE'),(115,450,'MG','MDG','Madagascar','Madagascar','AFRIQUE'),(116,454,'MW','MWI','Malawi','Malawi','AFRIQUE'),(117,458,'MY','MYS','Malaisie','Malaysia','ASIE'),(118,462,'MV','MDV','Maldives','Maldives','ASIE'),(119,466,'ML','MLI','Mali','Mali','AFRIQUE'),(120,470,'MT','MLT','Malte','Malta','EUROPE'),(121,474,'MQ','MTQ','Martinique','Martinique','AMERIQUE'),(122,478,'MR','MRT','Mauritanie','Mauritania','AFRIQUE'),(123,480,'MU','MUS','Maurice','Mauritius','AFRIQUE'),(124,484,'MX','MEX','Mexique','Mexico','AMERIQUE'),(125,492,'MC','MCO','Monaco','Monaco','EUROPE'),(126,496,'MN','MNG','Mongolie','Mongolia','ASIE'),(127,498,'MD','MDA','République de Moldova','Republic of Moldova','EUROPE'),(128,500,'MS','MSR','Montserrat','Montserrat','AMERIQUE'),(129,504,'MA','MAR','Maroc','Morocco','AFRIQUE'),(130,508,'MZ','MOZ','Mozambique','Mozambique','AFRIQUE'),(131,512,'OM','OMN','Oman','Oman','ASIE'),(132,516,'NA','NAM','Namibie','Namibia','AFRIQUE'),(133,520,'NR','NRU','Nauru','Nauru','OCEANIE'),(134,524,'NP','NPL','Népal','Nepal','ASIE'),(135,528,'NL','NLD','Pays-Bas','Netherlands','EUROPE'),(136,533,'AW','ABW','Aruba','Aruba','AMERIQUE'),(137,540,'NC','NCL','Nouvelle-Calédonie','New Caledonia','OCEANIE'),(138,548,'VU','VUT','Vanuatu','Vanuatu','OCEANIE'),(139,554,'NZ','NZL','Nouvelle-Zélande','New Zealand','OCEANIE'),(140,558,'NI','NIC','Nicaragua','Nicaragua','AMERIQUE'),(141,562,'NE','NER','Niger','Niger','AFRIQUE'),(142,566,'NG','NGA','Nigéria','Nigeria','AFRIQUE'),(143,570,'NU','NIU','Niué','Niue','OCEANIE'),(144,578,'NO','NOR','Norvège','Norway','EUROPE'),(145,580,'MP','MNP','Îles Mariannes du Nord','Northern Mariana Islands','OCEANIE'),(146,583,'FM','FSM','États Fédérés de Micronésie','Federated States of Micronesia','OCEANIE'),(147,584,'MH','MHL','Îles Marshall','Marshall Islands','OCEANIE'),(148,585,'PW','PLW','Palaos','Palau','OCEANIE'),(149,586,'PK','PAK','Pakistan','Pakistan','ASIE'),(150,591,'PA','PAN','Panama','Panama','AMERIQUE'),(151,598,'PG','PNG','Papouasie-Nouvelle-Guinée','Papua New Guinea','OCEANIE'),(152,600,'PY','PRY','Paraguay','Paraguay','AMERIQUE'),(153,604,'PE','PER','Pérou','Peru','AMERIQUE'),(154,608,'PH','PHL','Philippines','Philippines','ASIE'),(155,612,'PN','PCN','Pitcairn','Pitcairn','OCEANIE'),(156,616,'PL','POL','Pologne','Poland','EUROPE'),(157,620,'PT','PRT','Portugal','Portugal','EUROPE'),(158,624,'GW','GNB','Guinée-Bissau','Guinea-Bissau','AFRIQUE'),(159,626,'TL','TLS','Timor-Leste','Timor-Leste','ASIE'),(160,630,'PR','PRI','Porto Rico','Puerto Rico','AMERIQUE'),(161,634,'QA','QAT','Qatar','Qatar','ASIE'),(162,642,'RO','ROU','Roumanie','Romania','EUROPE'),(163,643,'RU','RUS','Fédération de Russie','Russian Federation','EUROPE'),(164,646,'RW','RWA','Rwanda','Rwanda','AFRIQUE'),(165,654,'SH','SHN','Sainte-Hélène','Saint Helena','AFRIQUE'),(166,660,'AI','AIA','Anguilla','Anguilla','AMERIQUE'),(167,662,'LC','LCA','Sainte-Lucie','Saint Lucia','AMERIQUE'),(168,666,'PM','SPM','Saint-Pierre-et-Miquelon','Saint-Pierre and Miquelon','AMERIQUE'),(169,670,'VC','VCT','Saint-Vincent-et-les Grenadines','Saint Vincent and the Grenadines','AMERIQUE'),(170,674,'SM','SMR','Saint-Marin','San Marino','EUROPE'),(171,678,'ST','STP','Sao Tomé-et-Principe','Sao Tome and Principe','AFRIQUE'),(172,682,'SA','SAU','Arabie Saoudite','Saudi Arabia','ASIE'),(173,686,'SN','SEN','Sénégal','Senegal','AFRIQUE'),(174,690,'SC','SYC','Seychelles','Seychelles','AFRIQUE'),(175,694,'SL','SLE','Sierra Leone','Sierra Leone','AFRIQUE'),(176,702,'SG','SGP','Singapour','Singapore','ASIE'),(177,703,'SK','SVK','Slovaquie','Slovakia','EUROPE'),(178,704,'VN','VNM','Viet Nam','Vietnam','ASIE'),(179,705,'SI','SVN','Slovénie','Slovenia','EUROPE'),(180,706,'SO','SOM','Somalie','Somalia','AFRIQUE'),(181,710,'ZA','ZAF','Afrique du Sud','South Africa','AFRIQUE'),(182,716,'ZW','ZWE','Zimbabwe','Zimbabwe','AFRIQUE'),(183,724,'ES','ESP','Espagne','Spain','EUROPE'),(184,736,'SD','SDN','Soudan','Sudan','AFRIQUE'),(185,740,'SR','SUR','Suriname','Suriname','AMERIQUE'),(186,748,'SZ','SWZ','Swaziland','Swaziland','AFRIQUE'),(187,752,'SE','SWE','Suède','Sweden','EUROPE'),(188,756,'CH','CHE','Suisse','Switzerland','EUROPE'),(189,760,'SY','SYR','République Arabe Syrienne','Syrian Arab Republic','ASIE'),(190,762,'TJ','TJK','Tadjikistan','Tajikistan','ASIE'),(191,764,'TH','THA','Thaïlande','Thailand','ASIE'),(192,768,'TG','TGO','Togo','Togo','AFRIQUE'),(193,776,'TO','TON','Tonga','Tonga','OCEANIE'),(194,780,'TT','TTO','Trinité-et-Tobago','Trinidad and Tobago','AMERIQUE'),(195,784,'AE','ARE','Émirats Arabes Unis','United Arab Emirates','ASIE'),(196,788,'TN','TUN','Tunisie','Tunisia','AFRIQUE'),(197,792,'TR','TUR','Turquie','Turkey','ASIE'),(198,795,'TM','TKM','Turkménistan','Turkmenistan','ASIE'),(199,798,'TV','TUV','Tuvalu','Tuvalu','OCEANIE'),(200,800,'UG','UGA','Ouganda','Uganda','AFRIQUE'),(201,804,'UA','UKR','Ukraine','Ukraine','EUROPE'),(202,807,'MK','MKD','L\'ex-République Yougoslave de Macédoine','The Former Yugoslav Republic of Macedonia','EUROPE'),(203,818,'EG','EGY','Égypte','Egypt','AFRIQUE'),(204,826,'GB','GBR','Royaume-Uni','United Kingdom','EUROPE'),(205,833,'IM','IMN','Île de Man','Isle of Man','EUROPE'),(206,834,'TZ','TZA','République-Unie de Tanzanie','United Republic Of Tanzania','AFRIQUE'),(207,840,'US','USA','États-Unis','United States','AMERIQUE'),(208,850,'VI','VIR','Îles Vierges des États-Unis','U.S. Virgin Islands','AMERIQUE'),(209,854,'BF','BFA','Burkina Faso','Burkina Faso','AFRIQUE'),(210,858,'UY','URY','Uruguay','Uruguay','AMERIQUE'),(211,860,'UZ','UZB','Ouzbékistan','Uzbekistan','ASIE'),(212,862,'VE','VEN','Venezuela','Venezuela','AMERIQUE'),(213,876,'WF','WLF','Wallis et Futuna','Wallis and Futuna','OCEANIE'),(214,882,'WS','WSM','Samoa','Samoa','OCEANIE'),(215,887,'YE','YEM','Yémen','Yemen','ASIE'),(216,891,'CS','SCG','Serbie-et-Monténégro','Serbia and Montenegro','EUROPE'),(217,894,'ZM','ZMB','Zambie','Zambia','AFRIQUE');
/*!40000 ALTER TABLE `FBTCountries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-26 21:26:46
