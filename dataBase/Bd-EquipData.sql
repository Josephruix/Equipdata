-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `idEquipos` int(11) NOT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Estado` enum('uso','Guardado','Mantenimiento') DEFAULT NULL,
  `Empresa` enum('Bs','Politecnico') DEFAULT NULL,
  `Tipo_de_Equipo` enum('Pantalla','Mouse','Cpu','Teclado') DEFAULT NULL,
  `fkidsalas` int(11) DEFAULT NULL,
  `img` blob DEFAULT NULL,
  PRIMARY KEY (`idEquipos`),
  KEY `Fk_Salas_Equipos_idx` (`fkidsalas`),
  CONSTRAINT `Fk_Salas_Equipos` FOREIGN KEY (`fkidsalas`) REFERENCES `salas` (`idsalas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (90,'Hp','aafafafa','Mantenimiento','Bs','Cpu',53,_binary 'RIFF>\0\0WEBPVP8 \n>\0\0°4*\è\è>m6–I$&%$#Ph¨À\r‰in\Üdı\ã3\äÍ‘l½+?§\î\ØW\×<|²ªˆ‹>· \'œ•-»k1\ßoù\×\Î\Z™òÄ±\Ô3 õôMó/ó<	ü\ã\î|P‚›¼P\\\ÓÄ\í#‰gJ¯v®†ÿ¥\È\êU}\Úı.GR«\î\ĞG\ér:•_v‚?K‘Ôªû´ú\\bšNò=ü‡O!\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\ÈuH\ãuc\ŞC§¿\é\ï\ä:{ùşC§¿\é\ï\ä:{ù«‚!\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\Èt÷ò=ü‡O8V=\ä:{ùşC§¿\é\ï\ä:{ùşC§¿\éñÂ¨}=ü‡O!\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\Èt÷òfy\ŞC§¿\é\ï\ä:{ùşC§¿\é\ï\ä:{ùşG\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\Èt÷ò=ü‡O!\Ó\à€ú{ùıGX.P\äyÜª\å²<|¥\ä\Â\Ñ\"ã‡’-tZ˜µ,\é¼X¡\ÌÓZ¯LeÀm¼â›„É¦xl\É\Æ\ßG5.ıg{¦“¼‡O!\Ó\ß\ÎÕyş1j\ìN\åŞjöô,\Êq2\r‹–Bp_%ñeğ—\ÕF‡¢mfüõ£}\Ì×©k_1 À\Ş\î\Õó\ËDg°]dõ^„j«§hyH\éê­Œ)!Ê£\ÆÇûn*I\Ş%+ğ•™\nªP}=ü‡O8V=\ä:{ø\Ä\êxSA\È.f\åm¡±Ê€“\Ä\ë£I%o\Ì¤`\ÔJ¶K\×\è¸Ü¼]¼\æI,\Õ÷„!–“7\çk6Ÿ-‰\É\\\Úş\Ë	÷n\Æ!F\ê\Zœ.&T\ÌJñjû=«‰G7Dù–1–“#*á°¥\\–+;\Èt÷òA8\İX÷\é\æ;\Ë\ÕQ\Ågúó\Çj\\\ß\ÍgGü;Ï‹\é¿3gºô\æ”r\nÀ>Œ“Š\ns%\Ñw¬;ZN\Ï\Ò(°,ü{S\ß\Èt÷òA8\İX÷\é\å2¨Yô\Ød\Ü\ÛR\Ä*vÖŸx\ÃŞ…{À\"Œ\Ò\Ó{!a½\ÌLrã‚Ÿ\æU\Ç\ËøVˆ\Ñ\è¼ñ-ÂŸg*\Ñg\ád°589RaBl\ï!\Ó\ß\Èu™\çyşC¥¢Rx\\„™rq\r¬\ßWbfù0—Q’L%øO\Òó˜`¯±\ä¡™Ï™\í´¡÷x_\â/v=§òµˆ\äMê¾‚M–\ZJÊ¶ğ÷f\ÎòWşC§¿\âù\Ù\åiDÄ¤òQ\Ô*fş~u\ê*»šŸ1\æñ\ÒxÓƒ6Ÿ@7X­\Ì]K>R\'orõ5c\ŞC§¿ú¸\'ò=ü‡EIğ†uß¢\ä˜IMN™ÇƒŞ$º›Kzjx‚\å\ç`Ç§\á³8Ô\'ÿ49a‡Êªor»3û%O\0\Z¡¥Gİµ»6w\éğÀ}=ü‡O~¢z`»«\×ûŸk7õ\ÑÖŠ-f#7¹\Òñ\Ù\'œˆ\ìf†ü|A\n¾¾\Ø\Æ\Ò\Ì;P®S\ä„Ä¿	®\ä8gIª\êÇ¼‡O#‰\é\ï\ä:{ù	A3E9ò®´’|r\Zó(Xj\Ë\Ñ,`A‚$\"‚o	E›+¥`Ú¤Mã•&\\i¢	&÷\'\Ùy¬yŒ\ï!\Ó\ß\ÈuH\ãuc\ŞC§”¢\äO’¸JnSºR¢\ÎòLˆœ|Œ&©\İN\ä÷’İ¢d\\Ô˜”¿2›\æfv,]+^, \ã-v?&\\ƒ\äLDô\0Œò$¦“¼\'§¿\é\ï\ä%\0\ÜG0õo2“w’vªk°;tŞ§c~…8gœP–Q.\"ˆ-€ \ê¹R˜€<X·X\ë#vl\ï!\Ó\ß\È\âz{ùşB\'Me)\áÒ³ˆqŸ”\Ømm2\é¥\èR6/K\ÏQe„oM\ê\ìù\ÒNô\ĞU=\ÑB\n\Õ\Ê\Æ-$°\îFÙ—\ÛS²\×T‰)¤\ï!\Ó\ã…Pú{ùñØ¨Nvc\Úûûk2\È\Ş$§\Í.\ã\Íd¬´¥CSôÇ¤¯Q\Ö¥<‘\â\Ô¹?zı\ç\Í ¢!\Ó\ß\ÈuH\ãuc\ŞC§–_T4xD˜]«µ{\Ì~\ÓZK	”şÅ‡T4Á/\Z½\Ô\à\ÛAòú,\Û\ë`\å W\n[gøx„\æ¡ySI\ŞC\ê\àŸ\Èt÷ò^4u [$®+v\ÖójYt‹\"Eˆ»^\Â\ÛEL o€M&d6öRb³\ï%(N;Ş˜;‘¾W\ìrÌ­ß€b”7M\à9Š3|™¢½¢\Î\è}=ü‡O8V=\ä:{ø\ÉD\è–jUˆ­³¹ş–6“š˜PÏ«ôwú±\×\\\Z?ò\Zù\Î;Qµ\×Í§\Ä(ıJ¡Eo°¢%2\\wĞySIü*‡\Ó\ß\Èt÷˜XjŠ¾¯\Ü…M]œCz\'7\ì1\İ%V~…:\é\ç\\C\ÒÀ\0€Ru%(©oJŸ\å\r\0„ \êG¡ô÷ò>§¿\é\ï\×\Îb\Î\Õï³œ±üşq\êYv?[K;Q¶¾(ó+[¶²yj‡û2‡	Zu[Kl©¡¦\Âü”\ÛN,@ò£6w\é\ï\äq==ü‡O!=Œ\è#·¢‡n*\Z8ù½ù€òób	{\á3£¸²«“„3”v5\Ğ7#`$I\ÊG•¬&Ğ¼Ÿ\ç\Ù_.>Ÿt)\">,\Ûb\Ş5\ï\Îwd\ÕX.¬{\Èt÷ó€µc\ŞC§¿Œ\nM,<\Ô6v!?ñ\í\"\Ñ\Ãj?w\Â\Ş9ÿ(z\0u\îdº°GXbQ\Ùz\İ^\Ø!F4›V²^`-fš÷\Ò\íú—/ğ4%˜	\0 \Ïó‘Iø3t&ÁwKÕy ‰n¬{\Ètò\Ó÷\İ\è°\ÍèŒµ™sšj,…\İ\ß„¢	\Íú>Q¿+\İ5ƒ.Ÿ±\Øz,]¼t\æ‘[M\ì›D:cÅ¬dşú\ÆVß°>†úß¤\\Ç¡2+Ax¡²Ah=<C}¯œô÷ò=ü\'§¿\é\ï\ä#”]\ĞI\é!¼„g\Ã\ì\Ó{…0b’Ø·9\ìøls¦_Y¸±\Æv~\êªª¥j0–\á\ØqÙ‹‚¹D8)@:@ı]\Ød\ÈG\ÔVõ\ÖiA\Ó\áD”\Òw‘\Äô÷ò=ü„rŸ)Ò¢¤\ÈS(\Â—7‘\ìnK\ĞQŸÑ³ş„n\ÇO)W:Pü\ÚJ\È\âöB\ç\r÷NJ<\åpı·ú¢½\äè™)î¦—‹œL\Ñ¥\çAş\êd\n\Ç2\Ø$\\¤IM\'y ‰n¬{\Ètò\Éq•T\İ#Cf\äø\ËX,Cd4Dğp\ïL\ç–C–,»M=;á£\ã¹7­Ã›0¡\ÒU™ªÇŠ¡‡!J\Ãü‡ºQ\ÉN>L½‚q?üF\ì\Ù\ŞC§¿‘\Äô÷ò=ü„nj\à\Â\ä\İ{”¬ºXQ48õf\è\Ç\×Q¨\Í\n‹ˆœC—m\È&À6\Èj/òieqhFÃˆ\Õp·\ÄX\nv~g¿şwõ°K0ÿ£ÕyŸ\0Œ\Ó\ß\Èt÷\êjƒL­Pô¢0Dûri\ßX:ş—SN§\Õ%Ë² ,0£4\ÇÙ³90¥mŒ°\íj³\çX\è\Ï|\\\×=6\ÊH-O\Ú\â@/†r\ãuc\ŞC§À#ô÷ò=úŸû#û˜!¡ù‘…/’ò@`v’ó#,\ÄõdKóE—\ÜU{=CqKe\×uœƒOe]óÀ9=\n‚ù4{\Ë)´§\'Tü‰yRw„3f Œò$¦“¼\'§¿\é\ï\ä#sB\ÃM¿BıM¬ú½ß´õ\É\Æù“õO8 Ê¬…t¿\İj¸Q„¬j8B´\ãÜˆÿ\Ñ\í\èLXÏˆfƒ{Â»k¿\'!Pš\Í\r 27e.¹õT·)\è‚W“\ß\Èt÷òfy\ŞC§¿\égE\çp`¼A\Ç\çm”L1QÏ©©C¡Ä½(²\rª\Ô\çoÚŠK–\ZŒ\ß\çMV=\Öhõˆ•m\ÂÜ¯\ÛfzÃ¸ûv\áûp¯,÷W\Êr /\rp\Ù0j8)a.ğŸù;F½\ä:{ù³<\ï!\Ó\ß\Èt³¥XO}¥\Ë#‡\ÜV‰²c\n†š\ï CXõ>ª\"—¢\"k\\û}@[\ïË…%t*ıÚ‰º\ê„\"VúG<øˆ#,Ñ¡\Ï7=\nRİ’\íŠ\Z\ì\Ë3dn7V=\ä:|pªO!\Ó\ŞO«„A Q¸@×‰Kê‰›’§ªŸp&œ+L@BAüz\Ş%b8\Ñ\áü\Ó\ë_8T\ØRU+*\"\íP\Í\ì¯2Ï¼`º\äl[\ÑjşZ²\ã\ä²G^²½°Q\è}=ü‡O€F\é\ï\ä:{õñ(Ÿ¸Ö±\Í~\æA§•\ró\Å\Ì\Â\Ø*$Hæ¯ª€\ÕT_5{HMRü\êG\\®@™.¢\Ì%£^I\×-\àr¢\ïOw„\é\ï¶ZdR¼_K\çr‘%4\ä:‚$qº±\ï!\Ó\Ë9GšUÁ\È@?Tœ®\Ş\Í.\'O\î=¬±/•\ÍOC\Ñs?~¸¦XÎ›\î2¯\nö \Ë`;Ÿ$Hn\Ï\Ï\î¹8\ãwğ	\åÕŠ?G™´J\á¡[#qº±\ï!\Ó\ã…Pú{ùón5†VgúZˆ\Ğui¬\Óvµf\Õ,n¼\Â:\Ì@6^š‚œûBG­\Ô\Z\é­\á¬&•‘ç³y\è¦\n¡-\0,Z–\Èj¬#Z1ú‚˜\':”n\'ò=ü‡Yw\é\ï\ä:^d;\ÃQøÕ€\â\È\ÌHw“¯ôˆC»+\Ê	P\ÒsO‘R”qx2±1¿#^&b\ëg³‡R–F®¾\á¶X|Cy ’m\Ç\ÛAÅ¼(8®Á\çœ\à]|$l\Æ\êÇ¼‡OC\é\ï\ä:{Í·¯qƒ¡\\®…\'…÷æœºqºÂ¥Ÿ[‡f›B‰\r¯\ÇÍ¥\Ô\Ô\Æø\İ\Ôˆ\0}\Ô!(\Z:œ¨¯ıÀıo½Ú®„\ê•³¼‡O#‰\é\ï\ä:{ù	 Kmb3¡’1 \r\\­\à\\\Ö_\Öj.Ğ‡«xĞ´ƒ>ˆ*™p\ëòc\Ó\ÎEbüZ\ÛB.,gµŠZP\íµ†5\í‡ycBu?ÁfŠ÷†¶û8\éÈ’šNòfy\ŞC§¿\éz\0T;&MMÏ¬\êa\Ñ>p™%BWõ	B¶)¡Q>H|—qn~\í¹\É\'5ºTa·©„\0\ì©Np#=\Ö·¤\Ò\é\Æ.\áj\Ş\ì\Ù\ŞC¬\Ï;\Èt÷ò<²\Zp˜L f\à^¤‡F¼÷µZ±ƒ\Ñ\ï—<pn·¤;\ïg®.k\İ$\Ä„\0C¸Cñõ(-ù\Ú\ä±h•)6>9\æ0«\Ãİ›;\Ètø\áT>şC§¿ŒB8esRşo\"9\é5¢\åòLºS;\å+3v¶Tmªbù6\âTrÇ®ì¹‰M­º\îQ\Ë^üsovl\ï!\Ög\ä:{ùıI·h¥\ØA\Í\ä0øş°C©\êsE\ÑSBw”c,.¼zóX‘\ä:{ù³<\ï!\Ó\ß\Èt÷ô,wŠ.Ó´z=¢\\6Ç¶\×?‰;HZ†ÀK\ß\Èt÷òA8\İX÷\é\ï\ä8²u¿¬0«J\ím½i\Ş>s^–\Ã\ì_y¨øŸ\ã7ş\ì\Ù\ŞC§¿œ«ò=ü‡O~¤Ë¶ÀUË\Æ\rü:˜r*\×hG‘Zœ0­«\ß\Èt÷òA8\İX÷\é\ï\ä:yY\î\×>”–[ˆ€‡NÁûm\Ç:\ï\Å\Ï\ËùÕ¼\Ù#¢ôxX#„LcR\áD”\Òwú¸\'ò=ü‡O!\ÒÊ k\É\ÍgR²”}ô IY\"ÿòS==\Éf‘\\§\Ù|‰\ì°h÷u˜\ËL°ø\Zj\ê€ôó]s˜·_\Ö=\ä:{ùŸ\0Œ\Ó\ß\Èt÷ò=ü„«—&qGBğ\Ût\ßË¶ƒø¬6õÆ‚€øa\ÂJi;\Èt÷ò>§¿\é\ï\ä:{ùşE“i;\Èt÷ò=ü‡O!õpO\ä:{ùşC§¿\é\ï\ä:{ùşC§¿\é\ï\çjÇ¼‡O!\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\Èt÷ò>8U§¿\é\ï\ä:{ùşC§¿\é\ï\ä:{ùşC¬\Ï;\Èt÷ò=ü‡O!\Ó\ß\Èt÷ò=ü‡O!\Ó\ß\È\âz{ùşC§¿\é\ï\ä:{ùşC§¿\é\ï\ä:|\0\àKùU}\Úı.GR«\î\ĞG\ér:•_v‚?K‘Ôªû´ú\\¥Wİ xò\0\0şÿiKwH¡rP\0\0\0\0\Äş\Õ\á¿\È;İN–°GŠğ\0\0\0\0	{„\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‚\Ö=®qdŒ^/&\ÄO¨V\ï\Êó•4­ ]\ãı‰>˜e\ë™1\Ñ\'Nºpg\Ï\Ëû»ªñ•ø\ëv¤¹–F\éÎ´I¤ŠVª\nW\å]Û®*\å*¯jmŒóõ\×E¥ù<Ê»,¸Z\ÄwE÷i\ÏG—\Z\ì·\ë%@A\Ö.ø\íÍ¡‚½5\Ê\Åk¾UÀL\àõ”¾y+½¸wÛò\0\á¦@˜\Ì}²T8gbä¹—:†`…w\ìtöT-;Á\åaq¡\Ù+^<-Y¾T@wpú¬dEa.&)\à†/\Ğª\Ó\Ù\Î\Ñ,\ÔK„À\ïô£\ÏP Wo\Í\ìN\ä+‹@\0\0\0\Ö3\âX|BL†«}‹\Ìÿ\Ğ~>Ÿ†J›\é)ˆ\Ï\Ş\ÓY\rŒ91ÿ½ŒúÅ¤\Ï\'Œ7K¿_ªV§2¯$´“öb\Æ!\ï\Â\r\åT´\Ùì­²3¦‚V\Óöm%ŞŠˆTtk­€\äEq\r\ØÜ‚P3i2:•`‘R¯HŠ\ÎoÀ;™ŒoÁ\ÃzJ\Z³¸‰—¹™.f=L¼3¦\é)NV¿Jm‚{\"XWFòI‰ç—¼Á\Üñg\Şü\ĞK?\Äa\ZM¶»%,’Y›;’Â¼\Çw\ìtgµ®@7	\É\Æ~Y0À\na¡‡\êuO\æ“&[n\Z•v\Ï;x\ëkr\æ»¬+ W®øÈ¸\åÁw\0­¦$\Û#Šk MŞ©‹o§G	÷/SJ±cmHº\Í)(>Ÿ\ËQ;\ÚÍ°òL4÷‹\Ã\à\Ô	\ÖK¾m\Å4\ë\0$¯\àœ\ÂP	²#¾`¿:ôÀ\0m	\ä…^\è\Äd¨8JR\ZK®±²}òùù¿$\ìÕšd…©¤\0\Zÿ\É\æ9Sñû\Ò@L©\ßı\×Å¬·’@r1±›#\ê†\ÛÀ¬[Lrp8\ÇiŸX£¢IÊœó0\n\ßo)<\ÃÏ²Wú»\Øm‡9œ¿\Ã\Ó\íPzGì¿…öi\î~HU ;\êI¾¯\âÿF˜—›£–q>\Í \\_{GVñ‚(¾Aü‰\ç_\âü4\n\İ3–q\ÌUu\×\ã+\Ş\âHá®‚‚B­1s\Ü~Ëh ·ˆœ«€\Ñf£O\ÍrŠ(÷¼\Å\éı·\Ğ!zm\Ï÷Qù\Èp­\Ã0\Ç5mg45Á\ÅkÛ¨wÿ\Ü\Ô\Åú¦1²&Q\Å>\ÎÍ¹&T’¥sŒZ\æE‚O	I-3[i\Ñ\Ï%¦%„>~C\Û2ş\'œüıõ6G [V%¯\ÍÑ P›X\rö)ù«”À\06\ÈJ0@xe-Ks2°\Íf{™ûı§|\ÍwX\ë \ë6\r/B›c„>:³\Ê\0\İwô·Ğœ¡t\ÇP*8Vù”ö\á¸AW)G\èj\r4%&K\06DõIŒ(@\Å\å2\Æ\'ö]ù¹ü“pjj·¿Uch…[“–°÷§d]d\ZaaÔ°\ï.¢¡\İi¬&±.7q¬cÑ“ø–\×ğ&\è˜E\çLH\Zª\ÕÛ¿mpPg/\ĞC¬¦njò#\ÏZ¯¾\á\Üf![3lP‰õ›\å;²n±V,ö+:ÿR\ït­Z‡‘@0v\Úr\Ş\Şq…‰\0\0AR±\\YetA*¡û\ÅıN\ïxŸ¦úºdDG\Ï\Â\Æ@\Z}õÊƒ\È\è¾ò¬’Éµûÿ÷¢µcxø£µri¦óQ¤eÁFzg2±\àò;÷“K¡\ëv5³\ÌU\æü\\¯§xG•\âl\×a)ƒ+\Ë9«E\ê£EºN\\\ç/Hr®\\*\ç\Î)\ÆN\Ú\Z\Ä\çÛ›Á“—V…kkT­-jú¸›L¬$á©µ\Ôù¿7Ù§Š6U}\íuvñ»+£\Ó(~`ü³ß£E&C³\Ì~fsy<{‹aFYÿ_\İ\Ñ$˜»Œ\ï“¡_û¶›\İ~;O±\Èş\ÊZõõg(pg\ëºIºÀsº\á\ÃÎ2\Íò\â\à\çxD\İc”\È	\\usüŸ\ç *Ø“\Ï$\Ò—´Ÿ4ˆüq\İ[\ÕmS>½ªWp“~³fy³|ı/¿²\éÚ¾¿ô(Ë‹4İ9¢(]*Ô¿\Öi\éjğ\äõ¯2Wş³h>7º¤Ó£ò\Øw\å\æyÎ—2yƒ4z\í\r\Ä\àÿ>?JK?ÿ^\ç2õ„QqL0†ZM›yH¾\Ş+ŠR¤÷\éûTéŸ¥¿vk‹õi*£­†|Ä¬)\Ìxh46\ç\Ø@oÿŠ(\É\î{ÿr>?89‘}ò*››…fy\èñ\İW1¬p#\"¨H\ìo8(d&p\Ïs\Î4_W7Xv\âOHeBNe\Ù\0\0\Üy(¿}|@L	E\ë\Íhnş.#ôL Î‹ø2P\î\İ\ÍÁ=š&\ÈKóÀ8\í1Me\"e®\ë,\Æ¤-\á6gÿe\Û8©Öœ†Jb‹õ›2£\rø˜4±\Ñn#ˆx ‘š‘\ç\êrµùIv\ĞH\Ò+(!Ã™Ğ‚?tEÅ‘¼\ì7™ƒ\Ãcœ³6¯»G\ÉtKøÕú\Ü\'­ô•_\ß·‹\Ìi£\Ë?û!YŒu1\å«\íH¾ÿ \çó]\âñ\Êş_ =@#W?ø›ƒ°V‡*`J\Ğ	ò\Şa$ú@øI}\ÅV¢ ,›\ïyŠ¥Ğ¿?E\0\0´¢Át\í¥jÈ¡rg™\èuÊ™#\ë…1‚\ër\È=x8z\ÍuX\ÕÌˆT¯e]R^®\ÂZV¶^Ä«Z\ĞwŒº\ÜÀ\Ğ8VWõ “ùI5}ñµQ(0pc\æZñ\æ¸\ß\ì,\ér˜\ã3„ffh\Æbúw<,c:\É\0@<´-%£mW…\Ü\ë›O/NAº]£\r%,¡ \Èf¸2üYµüµ\ÚQó¤¤­`4E\ì\0\0\å­\Z\"{\É\ïWu$:›\Ú:3\Ö¸Œë˜˜„hµ\ß[<8ua½¡÷\ì’UÍ‘û“Ÿ\Z\İ\å‡\ËÛ‘\Ë (O\Ê\íLf\í+Ó†\Ø|µ\É#ùly\İpW‡y\Å\r­=Ñ¶NŠ\ØÔ‹ø\ë2\Ër;K\é4e\Ù\Èic\\‘w¤l\'|p\Õe™9j\'š\Ù<¹Ô³5\Éæ²ù\Î\Í\Ä y\í@\0q;`|òHŒ,”TZrƒ«”\ÃñŠ&7-š\Ò\ï\0,HWRJšşÙ»ÿ²;\ém\Z%Á]\áC*T¨\ç%ıB¦…\Ğ-\ÍXj))ş#zK Ú«½¹\nút†Ñkö`\Ğ:ù*£P¹»\Ä¦­ñš\Ññ¦\î³jÌ‡Ã´8O\ê ù¦\Ö;t1‚Á\Ì1uŞ¢@eyœA\í\"\Ä÷¾y\ç*^’\Ñ\ë°\Zt]jvğ\Ùd6j\ê­\í\0œ\\ú\êù;ÿ»^V\0ETS&h\rÿ~N%@k”»¸lF`§ıfSÎ\'X\Êg?•,Á\ïd]§d\Ùs¼(\åâ‡´8>\á‰Ê–\Ø¨,ù„?w\ä\äùúå¾’§pP¼\Ë>ˆ*WFrA*\Ø?\â9F¨¨¥Ã¯şuŸ€/\'\Ä\î¶«j·H\æù»‰\ÈH\ì¡\ßC;\r_Ivy\"\"\â\ß;\İä·¹–gUÀü¡°L³\×Ü¼\Ó\è½^«\Ë\È@@õG5‹]	üz\Ğ\ì€\æ2œ?7*v¦\Ôo\Å\nWkd\è\ÉF I¨]\ê%M¥\Ó9X\ç\è+£|\Ş\0\0Ä“mõe\ÃqŸ`ó^\\şgC\Å\İ¹Äœmü±‘ –\Î!\æ†úw·ôoJ\êŒA‡<ƒS]D\ØYYÿ99µ^vŠ£\Ğ.\n§n’?•b–~$\ï>ù\'’\àõ_ºv½zpSli5²£UW»5\0{¾`O\'u‚\Ğ\å$Hyv\Çc\Ã>|U\áAcÏ‘õ&\rh\í\×\ÚòV¥E\'dò\ÏnÚ¦1òV\Òû\Æsı\"4\'\ç¸nØ¥F¬C8(o/ÿ\"\\\ã[ñ·~“ú{°V\àzgKh\çs4ò$(\0’\×ÿNp7:\Ü\é\ÍZ\Õ\æsH\rÄ\åb\í›?]}45\\\à®l\Zò˜³¢ğ\Ç\Ä` ®¼4½+ı\ÇiI¼‚‰+WŠB86¨jA\Ó\é—_bU\ä*kC½fDª\áO¯%,YN‰Á\Z\Öa„Å£Q\Ü\'q\ÊXt’ö$¾óƒ4ı{\Ø\01š\î\éByô‘\ã7q[Ôº\'Aÿ³?uZÁ-\ÆEr–hw\æy\ãt³iGl9tÇ“3§\İ\ÚuO|ë¿¹\"Ğµ\â&õ‡\0k“È²j`»[>–]Kf\\“\Æøñ\İ\Ö!\Ìö`\é¢a\"¹–M^>öû~fò–„3¦h›!g\Õ4W5Tw#^\í\Å\ÒlIC\è\Å\Ä\İlı±´²“â³€­˜Uñ&z\ÕJô?À™4«¼\Ç	¯l\ÍÎ­Z^ø\æhĞ¬št…V Y^±†‡`v\Ü\èO¬¯\İsR=\ÕOq­W\ßQ@•œãª•@c\Û6A+R\ìKN¯ò˜\Òl\ÒÙ§~\×À^1\Îp§yôbV€\0\Í{­i]¶”¯¼\ß\Îü<—Hh°8¾\éL\î	\Ö\Ä\0°Ü²‡\æòG\ß&\Ze¼[zg4kñ‡ bV!S\ÕA\Å\èú„-X\Z³£C\âız°ù<ô~\È\Ç\ê\Å/)\ì‰\Z‘[‡*W“£Â7©\È>i)6ú\ëFa\Â>\ë2aR\ÄHˆ‰§€Oƒ—>^P\éÄ¬‘\ë³kH¤\È\Ş+ú6~‹nœöœ³³«\ÔGy\r\á¹S†æ¹£‹g&¤+…•¢°=,@\0\01Yu¿nSº\\\îUóüÎ‚“Gz¹§Õ¯\ë\Í/+ Ÿ\Ü>F>pCúm,,p\ç¦\ì\Å\ã¦ÿ¸š/\ì4Y·ú7\Õ\Ø 	u5	\\#¹Fz•?Dnucf\Òu\×E&U¾˜lÙª\ã)k  \ÃR¡<\\õ°6/gòü¢–zó¬º\á+k2spÅƒ+0”\rM‚luÉº¤\î2\ÑuşZz\Ãe†\ç\èI\ÊniôTmÀw°\ÔTÇ›\Ğ\ÅR=´8g°¶­\ë‚\äNpi¹…6g­Q”“\í`\ÆL\Ø\ä^ø‡zfšmÁ`½µj\áô\0\0Y\Ë¡”\Ğ$K4\Ê!\Ó\Ë-Õ±µ¡\Ô¿Á\Âx\Ö?£\ĞN·ƒCD/pK<e1|5• ™f‡qf†ş’Áü\Ûñ§’\Û\Ñ/(™d‚ÁúøĞ¤ftTşFY4‘\Ã\êÒ¹\rúñ[ö@Iu¦x”&C‘°\Ã¶V®†8µ&^j>À\"Û… Õ”ù\íy‹8ÕµW¦N[šc\à\nš\ÚÀE‡ÚŸB²\äÏ³7x¼¼eŠ\î\Ë1\08¤Qj?›\\	{A¦†ÿô©QPÁ’öA¿\Ğ œ´\ÉıU3™õv<™ø\ry„jğÙ€\0\ZÈ…Åƒ,W:\İzI\"Wœ\ì\á“\Ç`\r.}¯MC.Š\Ò\çñ,…\í0(ß„£\Ã\ï.C+‚#\å-d­±ö&\Ù°«ÿ¨+\äˆÿgó[= \ÒÖœ§N§ˆ#Sô¸µŒS\ã%\Ç:\è†\Ş\0õdf½\Õ\æY­vØ›Qz:^DaˆX²K¹\×\Â|¼x|–‚Zµü–®hú\n÷Á	L\Üh}’O‡~ f² ‡ô)8\\©œ\×n:lü/5º\'>‡+v·\"š[şig‡~eo2ó ;BÁs¸\â\ÖŸ2¢\ê×§\âUO¬\0\ÔaÔ˜\Ì\ÖC’€\0\È_\Ş\ã¦Am…Dõia\â\ãhş o«†£\×&´*Sû…km„bJI[\0\ê]®\ÔWùS4\İ<~˜\rX\"i?3¢\çT\İ).Z»\äqaq?\Ò\Ïb6xØ«û„z,lŒMy°z/f«\ç\Ã\ãò•ú(\İ(Pÿº!>kşqc–S$²¥mW(¾Q#S!v\Ó\ã-\Â€gˆR©ö\Înd\è\Æ\Ö\Î\ë¯\Â)?Í¾<c3Ù G÷T˜_ÓµıÉ8\é¤<Ÿ&ˆ$¢„(e…mT¦Kgıÿv{B¨\ÍÎ‹Çº–I\"¤H¶/S¥	¯\È\ëpÇ«¸„5˜IÆ\0\0H‹	°R†8¨úF\Õ?‡\ÏAÆ¸»)¼\'´’\Ú->s\Æ.\áóü·$v1Lú\ÙCò\Ï\é\æ\n[\í²\Èkª\á|\ë3)Í•/G\Õ\Ö\ÆğÉ‰av—’’\Øş9ZÈ¼8z\n})÷ƒA 1À%\á…RVS\ÚfP•\èÆ \æ&}–4¿ù­.)@¬=hN›9£õ\"³ğÁd‡1Š`ü“®\î-ú\Óiò\n\Ğ\Í*/šyv\Ñ¼b€Ì…Ÿqün½Í•:{,\Ó—\Üj²b-µ«„0\åÍ»bô©FÒ¾_‹1\Ó\â\ï*ÖŒ7%\ÙI‹V´ø“1\Ë÷‡\İ_\ÍSDƒTt\ÈS\Ğ\r€8À\0.\Ë7zQ8l¯•ò,2¦ØŠ\Ò,_1P\"y•’0k\Ş+\×\İŞƒEg#BaSfsóh\í)n%—q\"h‰k\n^¹¿gˆÈ»X\ìóy®Œ½]\Zl’6\Ö%[UuO#Z\×04,Hzt½\äIN«¶û	= °\0\Û\Îş\İ6¹\îVÀ›&k?N‘y[ƒvŠ¥\0³\ïÓ½­\Ò\r\É\êy›cºÃ±\'‘9°J9­‘	UY>Ÿ©M\ËıÁ¿æ©ûŸG\Öñj…ñQµ¤ª\Ñ9¿Rğö\á\ÎX«:Y°«´	ù)x”\Ätüq\å\×I)X\"@\Î–0\çs}\Ïj\r\á¿km®‘@\0\rg4\"N…¥¿yRpy)ú\é\Ò:6L/ù>eR&MK°‹\ãÓŒ\Zg]°G˜\Ï\ì\Ô¸ğ\ä%w³÷\\Œ¹P_M{\ë8Q’nY\âV_¬YlŒşÍˆcC‰\nö\Ø\r«˜¼2\Ò\êG£1MüE\Ë\ÖM]kÇ¯\Ì\ì91­†\rj6=KD£yeÑ¶\Îü„\Ë&\É*¤z#zp·]$.¿7H2ôÓ®ˆ71¶z|€œ|¨•¦N´[úö	¸+òKyŒ-½\ê \Ú\ìLce‘7\ËEQ¨W¼\èÖ ö„À^\ÍÙ¼®\ÙÙ™\ÆØ§ôe\Ù\Ù\ÌW]‘`\ÇhTey-š0¸]4\Ã8\ÙZ™=%=\ä9¢ü\Ñ+š\Ñ\Óœ\0\0‡ \Ã\Ï)µµY \Í%ø\Î–r3€8-¿‹¢“U`şÀ’¯³ı\í¸q~)!h\Ñ\äT³2`R\Z¸6İ§\r¤E;õ°_p‡Ü•¥S\ÉcFk\Éİ\ÇH„Ò¼j€K.ñÏª¿4%c9Ê¤4¤\Ë3a (].<[4Lı.\Ğ\á?U‹¡B¦N±D¨\ä\ßpš¿c-}\Ü\Í\0ö˜h(‚t\'Û†\æ%9©önó\ë<›¦G7ddš™tº\è¥\çEÀ\Ùğ3ó/\ZGŸg~®\ÛL.\â‚)µmDP£V¥¾7”5>»Ô(.\ìA=Ÿp\Ì*qû8\0\Ï{do\Äã€o~÷ ºş\Åw¡Öº\'1\îf¥–óóNö\Ó\ßÁ6Ó‰‹\Ä\nb8\06€\Û\íP¸=5œF\ÏÄ¦\ØJ“%\×\ï\Øûh±\Âòñ[\ÙH§s&B˜\ï\ÕS»ñmÆ³\ìg}gµx°UD\ÙLÁl1\í\ãx¿\íN6£Iò\è\è\äXx\İ’¨l\Ê÷“\í\È}\è\Öc\ZN\×¯m7\0\å8F\ï•\×UÁc\Ğ\ÆHù3\à	À²!0\à9e:*vşvŸ~wlAğÿ\\5V\ïHÓºÙ³ñoMvgxÁ£¥\"\'s†„v\â\è>$T¾Ÿ\Æ\éqR-5?»JYT’y%;ó›RBl\Ãå‡”›8ˆùˆEf=Á¬®SN\à?‰!¹/Œ\ßTÖ±=A%\á 9ö\Ï·#K&k¥P=\Èß˜Ci\Øw/³D¹€\0!\nC\Ç\ácNj\Æy\Æa\Z[ \år€°2B7®Î©‘Á\0/J†\Ö\İ\á”i¼£Dö=œ\Çzt£\Ë-y¦X\\\ê÷io\Ô&?„q0\Ğ:-\ÑÁ5İ \ËcO¿+i\ãu0ş³6+¸\ÊCşˆÉ¡\îTtÇ¡\çj9T§ƒ]›\Ğ=5š¥\Óg\ê÷Ué–”>×œIs˜uò\Ù\í\Ãl\Û\ännb:>²BòL\ëj([‰£†\ìõŠ\í4”\ã\ì\æZ\ëC„\ÑM—P\èFKš††o\Ç\åÔ°\à\ç \ÖO8dZ 1`>T\Ï%2*}\éŒz»C˜›\Ø\ê{.\Å#­\Z›}%²n#¶Õ‡aİ­PØºm\É\ÓX“ƒÁ\ÎT‡\ì5—{iS¨\Ä\Ş@1”U\ØÇ€}•Ë¬²¶ñÊ‹eš€\0\nR´LQ÷\å¤l\ìò \ß\Ô&>ae‰\0Ÿ2²¬\Ó\×ú\ÄB3\í¿`\È^>|\ë1zÁò\ç*\n\0¾t@#—»6ğF(V¸e¯3BE0\Ü\n§‹\áş\ÓÙ“jú\0„Í’Wb@w3dFI\n]7\é(PşÀ[|\É-™¬!ªG?ô”fƒ»3\Ûÿ„\Ãh\Ëu\Ï\çsKƒLS\Ê\×8¹†.¡cõ\É%Et\åQ®hIbz.D\İk\ïŒŸE\ç0JU.#\Ã%²\\…Kß:\íØ¦^®\Â]0\İ<A\İo\Âx,UŸ\îT\nÿ+\ÒE}š[š¶2Bòü\Ò\"¼\ÆU‚;‰\ËY\Ğ6“8n$¸\ÉYsk†\×DgÃ—d\×g \İ}‰\0\0²<µ¤\î\ß\æ‘I&Ÿ\î­7bf\'[$q,?©—Ú•zK^\İE,dRq0\Û}\âÀ”¶®O¨¡]§Z|c\Ö\'\Ü‡Rh\î\ãÀLq3ú{š·&ü(\ÏH,3÷²òDf¿sş¶F:W«q÷\×uıdŠ\áMp(®²\ÒOxÀ_µ„{eX†ªv¸m\ã\ÍZ\ß\Z\Òx\ÈjM\Î|=[…e=#7=€õ\Âğ	fR;\Îc—Ø’´3c§š\ë0O\á¿H÷\Ö	ğqA…‡Sœ\×öoø¦Osú]€\èÊ­B\'T\Z\0\Âg–F÷\0¤F#?¤³¹\ÆAp­Á>\ì\ìùû.\Û?I\İ\Z pŒ\0\04÷xš.–m;>?–	\ã«\Zµ\ë3²o™\n\â\\\Ì\èI^7#\Ëp¼\Ø\Ì\Òòµ¬Ï“´\Èy\ä\ÉHA\İt·•]·nL$ƒl	‘ƒEp9\à›\ÊF$\ç\Ãù°Z˜\ÉUrZqŞ¢J<J\å°\î)2\Ü\ìWdŠªh©Q=l\ÂJZb{ºÒ®ÁŸ¾·m­9:\Ús\ZdóxŸq¦\ÓB’­\'\Õ5(.\ne’‡lu… /\è¾-_•*°oœ\åGJ\Ä\Âcßª©E±\É%´µB\îYk<i;†Õ‰úız¦\Âÿ\ë@iÚª\åñ:2\Ì/z³6—/-ø\"ñJk¨Wai›Y\Ò\ì)\"\Ğ\Ö\æ\Ò\Ó.\r\í2¢\Æ\Ò\ØM ¢˜Î¦a#\ŞÀŒ©0\0Hš\ÃrA\ZŸzSŒ	¾:ø´OxTut9u]MW\Ô2sşG¨\Ë9¢]ı­˜,9\"u¶“Q\Ã->ÿamD“l\0²ÿS$‘\Ü\éò\Æ\íÆ¨€5ğO\0œCñr\ÚH8±õ§~`CµÆ™–qWBËŒ+-]\Zœ/\Æz¨Á\ì\àT\×\Z\ç½3vi”+cK\0 Õ’·U\ØI\És¯ \Ş~\Í4\àW_Yô~\ß3\r~¤›³=¹^Ö—³@Â®œù¶Ò¸4ù\ç*¯ø…?\â\Å]öG&*\è\0€m\è\á)ˆKo€zô;\á\0X…\Ö)ñZºh¿¡%Ï’Z\Ñc}3¢´‘§q`7ü­Àù•¿Z°\ìò \ÃW˜\Úò8R’\Ş	\È\0D,JM\Òú«ğ\ÉXKV™0¾Â¾ñ\æ\Óx3\Ír¸F¤E.\Ñvğ\æ~\É\ÓüJûÀ¿\ì\Ø|p¹\ÓÁ‘\Ñ\í·±¼³4Š\É*r\0`xó}^™˜x!LJ~K\İ\Õ\Å4L\Üóh\à5U«¼…X£\Ì\ã\"sªQ\Z¡\Ä69*´²fÿ\ŞÛ‹\ÑOBˆ@.~º\è\ã\ÏY\è\È5\'¨„\âœ#bÀñƒšò™4œ#a\ä\è{g\Æ\æZ^\ì£¿ô¬F˜Ÿ‘W|4LU[¶¶o,¦\İ4iOº­Rı\ÇB:šµö~\ïÅ²¸r2\"y>\î8Â­ü³§şvKşH|;\ìyø£‘+\Ï›a\éªÇƒ]\r ıÚ²Ki¬R;\0\0\ÚJ\\ûôdvƒ¬\"}À†[R\Ş;#0\'J1<~K£\r0şÚ²wß\ÓK~ı\ÔtM*²R\ÍĞ²µ\Ënc\Æ(6–	1õ&”mË´f°øå‘»\ß\Ã\él±\ŞòU=Ğ€ß½\æg°Mÿœg ƒ^\å`Dõ4ª}\Æ\n9Úºµ\Ä\ç,@\'X‘»\ÔWTy|Q\Ô_œ\Ûûfp\nø¨õ­,9{‹NK\\1¨\İ`.^ñpbœ²öF\å\è!C¢\êğÓ…\Ú@\×/Iğ¢¤ú÷å”›šBv\æjÊ»û0¡ip\ÏC\×¸ùø78h;1›û\Õ\r\Üw>hbJ\Ç§?:¨t\â\ÛR„~\Æn\âGl¬V÷šhå´–¬ñH³Ğ¨²8À£}Ÿf¼\ç\Î0\n,XUÀª³\ÏR!¹Ö°kÿE@\0@ä¬-\'ipl1\ÄAIş\í0\Ó	~\È\å¨nôˆW\í\"\Â\ã\Ûf¨´ı\á:È€&:Vqú¨CMõŸ­\ËnıN»Z,\ÙO8\"\×\Ò\'z\rB\Ë\Ä>»\êc‘”\×\ï\ZHˆ	\Ïù\Ü\î2\rN\å\Ã{Yöf”7™ù±\0†+\â8ÀµN9E‚T“Süo• F0„\Ò(¸™\nö\Ó(»m\ÃXÊ_²>ğ½§Y\0*³A•\ÚJÂ‘ğŒ8\"\Ş\"½8\Ë&H\Ï\"\ÚTnS6Ö„\ì\Ót÷¹\Äs˜\â±\Æ\Ø\ÛJ\ÔË¹ò„Hü\ßìˆ¤Á\Ù59\r¤~\Ö\åƒ£©H\è%_fı`|]\Ö\Ü\ä\ÃeSc)ûMB¤{:gahW/S³>³ß«FúÀ\0\0\è\ßöh5$;Ÿ«eö{¥\æ—Èl>€N\"qNó½½<*¿NE´\"\ç\0\ÕV:\ÔY\íB‰$\n•\0\İ-\İi0_ºF)\åL†°%ñ>—[\ä¯\êu\×ÿ•ò4\ÉR\"¥s\\\Úä©«\ëuóp|%‚ÀÆ¸i¿mk7œ…\r%HÁ®\É|\Û~P„\ëø¸«Q  b­Gô\Şò\çO±\ê#C†º£F­C9¿\ÈV+ú»\éş\Ø¬g¬-{F¾¦Z=u¾\åKM”\\HU\á\éC¥ }\å%¤Û¥¦ğkøşqs\n\æö£l¯ª—˜‡.8Ha\Èb-`\èŠ/|Á\è.\Ømec8‘§¾‚KS÷xú„\è€\n\"\0+„³¼ñsÂ¡\Ôaª\í=ö‘ghs¶¡´küUE\İ\İ,^qA\æn(\Óª U–MD\é†iyÌ—şlkkÒ­T4¦pJ1+\ÍDSú\ÉØ†\0n`>bIU\Ô\éw­	\ë\ÙÚ±5Ñ¤—ı˜_+¢ROHŒE\ÆbÿHGT)|®0Hk0mRƒDwÀ+²>:¦‡|	Z,¸°‡W¥73>\éR\Ù\Ò>y¦I“#ª‹v\Z¾2šç¸œ\ÊeQ6–ùŒ:–\n1\ã»EÂ°y¬°\Â:Bıu¥¥EÙöfÉ¦óEptx[§ûj%¾P\Äù³>¬”TL4zUÀüç¤‡i´\ç¸Y\Õ:˜#U\Ä\Ù\È\îPz\×\Ã\Åöƒ÷Œn\æ\èôP\0\0ÁWtP§NiJ|I\Ê1}V’ˆ‹Ø‹A\Í|<i¨)…A9‹¢	\Êü\ÇRcF=Ÿ\r\ï\r¦q~\î=•±?~\"’iš—z\Úo8­õ5¤ùË¥’s–\Ş\Æ¡…ş›A\n>>“ª„ù\Ñõ›C¼5D–-\ßy\Úô\nT–5:\â˜L\\‹\ë\èbjr\n½\\\ë\Ì\ã\ÍUıÁ÷\Ói\á\Ë\å6©m·6\èò»J´¯Áå®©s5\Éë¢ğ<¶qœû\ßYn÷®)61\ë{–\Üı\Ñ}\ÓA¾÷…\ßµ\åA]¾\";\å\Ã\Ô\Í)ğù=\âÅ¤7U\ÏIø\ŞÂ°\Õ0¦\Ú@‘£/\êw#\ï¨h«\ÅG\è<\Ï\n|ò\ì¦,’N\ÛJm„Œ\0\0DQš­\Ìe@Ÿ}ú\"¶\ÓôlÊƒ~k´\ïO–!U\Î,·$ø±‘tE¬ğ¬µ²Yƒò|[:#F‘`\Îò\ã\ç\Ş\İÀ\É\Û\Ål\ÌqƒšG#•0õU6æ°´uyŸ%Æ·S¯úó€ô”LD\ê\è7wŒ|\ì;½¦IlBğ9ñ„¤ršUË–2÷\Û¦g\èarœ\×SMeÙ?ù	G„<r\Ó\à?şaz[!¤ª½\á‰\ä€Z,T;À\Ûc»§vo\Ø\×\ÕÛ„ñ)dƒ‹»ğ\Ğ9ó„hzDµy£Â¨\ÅôM*J\r9\î›\Î&m¦V\ÍMºrA\ì\ã\ìh¾ªºtœñ\ÌÜ—•Yõ`¿P\0\0W$\Éıµÿ3¾7\Ö:9Î!Ê¦\Ş\é£™÷W\Îse¹@b>\Øªw »ğ\ÍbÒ¼·R™³\Ì;±\ê2¾¶DBO=¨şü­_¹ ­•ö›–¨¦y˜cu7\'dzo\ß*”»u\îÑ²ˆÍ‹Dğ7/B\É^J\Û|™‰Aş¿S\0Í‡û\Û/¼F70n\á\êË‡rÿ\Û8N3]µ}Y¤4£t\\#$¯ÀŒ¨´|\ZÇ©öÀD[\Ø>\è\è™\ì;ùB\în\Ä\Ì\Ä~!©®övĞ†§4Xi€µ\è‹\é	*\0k²\ĞÁ\îe&ˆD\âl\ÊÂ¬\0\0¼¨¥ı5¸2®v’\rn­\0g±\Û:‚Ç¾¥³v^l/¸o\ç\Ó?\ÚX‰\"Z–LÙ’•¬±Î§6(bİ³\'Š\áNE\Ï^4}÷\à\Ç3§Ê˜’Z™ùğaˆ¡—pW„¤û€(4#\Ğ\"U»@]„Eš.Ã¥,*<b\Í7Pğ«=ş>J\Ã\È÷:\İ¬\Ñ\Şş‡\äV`J­ÀÄP\à÷¤F\í,³\×&H‡	Lg½xFAi`ˆ\î\åP\0…m=€ñ+º4\Ñ:\äPDû»Ÿ«›ğt\æ#Li˜\×\03\àŒdHZ³2	všnCÿ7\Î\ã\à\0„ò\ãh\æH\Îz¹\ê	&÷-Ò•Lñõi4\ÈQ*IÏ¦™fU‡_ZÀ\ãAûm¢u;We $µ+şGŞ‡em\ï\ë#Bˆf2v\Øz¨4J\Â—\ç^š]i3â»£d \ä}”òIƒ,\ÅZ|ˆñäE\ï\é)û\éK\ÍA\ÖR:·hX°S°bYL\ÜÁl%©•.ş¹õñ‚’j	ÁT–yvª{±E¢\Åx\ÔF‹×”\Ê?\\¦‰)\Ø	V#¤N\ÎRú<TU\İb½Z\Ê2lÀŒ#Q\Úo¢4\0\02ı†\ÎL?ç¹«\í€(\0¸¹1~Q™¿‰òF‚\ÔNö€¹Œ Éša¦l\àñš)ÊŒj\ÌoÛŠ‘°Ÿö\ëÑ¹A\Ì	\Òòiˆ}öUür÷·4[U\É\Ñ3=h¸¾DúÈµ+¸\Âx T\ÛP•Œ\ã:\\#§]\Â\Ş6\ä\ÚhyW À!¾L>\æ\ë\â± m\r-ÑŠ‹½\Ú\Û\Ór‘\n\É\Û!\ØtÚ„kÄ±\ß\ìkŸ\Üj`›ò\ã\ÈaI¥ù¸°*ò¹Z³\ÖiVŠHû\ÒÿÖ½ó˜\'¿\ÛĞ£>­\ï\é\0Å¿\æj¯\ë>qM@S-\ÅC,ğ\Í\İK~u¢ô¸\Óñ\àş€\ê\âS81Y‚™³\Ò<§\\)Eˆ\ÂDŒ&‚\Ï+öpÊ¶öM–úi%N\ÕP¢pM“\Âa\àMú\×g\Ñ	¹\ç!#v¥m˜\r/\êeMÓ¢\Ók?ô-ñ-|\Ì\éü ı\ß\"&&UrR#\Ê~\Ò\éˆN\Ô›²Š¾;\Ìgªü/°‹4K4r3ú€kH=û¹·\×fQ¡ ÊŸ…\Ò)q©[†\èºÄ¾\çQ\è¿>>Eº‹“\îµ%e{z\0\0\0\êBX\Öù¬°—DŠS\Ûi\Ômœ\0zµÖŒ¤¬\'=Âƒ¹K8s[i€d Ø—µ_GL\ã‚k\Û?K(\á\ï«mõ¼÷\à\0=1SÿS¬H@Y\è7óµJtd–•ô\Òğ;\ìDó\Ùõe =\Z\ÙÁJ\ê§è“hµ¤ıuDô•¥,’¿öÿ\á¤\ÂÓƒ» Gr$\î\ØIPƒ¸/ú3_Q\ã÷8¶{œah9‰\"¼Í¸ğ¥~÷u)\ä\î4õ\n6÷vÀg‡e\0\0“f\0\Õ\×\æƒ\Ø!Îœ\Êl\æ1ı®\éUK%n\ŞUz}ˆ\Úı²{\ÉQ¬¸,Š!vc`ô€\Ö\Â=\èF‰\ç-\ãb\Ú)6%oâ™Zh7¾§Fš\"ÛšVƒ&\á€\åÁ‹\ÃŞ¦G=Ÿƒ}TŒƒMh\è\ãf-i¦›£\çJÙª‰\à\"^\ífkY÷\Ä\Ôn›„>:ó6\0\0S„\Ô4\ê\ë,7A,Eed‘R*°f\ÉM ³t¹ˆZ.¦´\Z5KÏ˜\ßg:B€jZü)¢+^E\nU\âT\0¶\Ìmòût¾0:ş¸Ì¹Gö·\È\éşL)G_\ÃÀ¾]÷\ÜV8C¼Jğ\à\0\0.][p\rGyhY8}B\è÷õz\ë†g\Æ\î-;ˆº¢\×4¡\ÖY`’´ºó ”z\nVª²x\Ê0c\Ø\æ¶Ùœ¾\çAAwl\Üi\İ\ã\Æf\rùƒ\åS\nQ{\ÙÈ–\á\Ù\È\0\0\0[v\0uÊ¡ú1tÂ°„ë‰NŸš\ã/Ø¸”#QÈ½d#\Ó>-úô\åC;ÿ.˜~ºY\ß\Ã\ã„x\ï/pˆ/E\è˜\nÒ¥¬?\ßR4y\Ãc)$»K2g\\È›JÃ÷ô7\Úq\Ù¨<\ÇVa€\0\0°©\Z\Ùõ\ÈÀ\Ã\Ã\âL/Ÿ\êuD0Æğ¡—ôV†À\'(;YöŸPyf¿DP\İõUñœĞ³j\Şg\æ3‹¿\êj,e¦±ªn;\rW¢\Ûv\\\áªt,\Z¨\ÓHœ/\ã@¿0!|¾¤|X\Ú?‡»\Ô\ŞY	(Áş™\ÎO?8C\Î4]\Ñ9Ğ††{ªZ\ã\r§3`\Z7\n™\Ü9lúQ•“X•’C†D4†¬ı\0¹Mò1M/c³>\âZ\Î\Ş0ªG	wö0|M‹\Ç\äK\0\0[—£9tS½tºğDñM\Åye ,b8\É*4	“\Z\Ä_¡hD\'ñ™gK\Åq\Ô ‰×ƒ¼Š\ä†§\Ä\ØÿÍ›¼®óˆ\Ìt0ù\äXğ\×N|\çÍ¶1rh.¨B\0\Õ»Lö…jMŒˆ\ây‡(¼x‘;ùÀ0OÌ´é˜½V]\Z\Ë\Íó\Ï-Œ{m»U ?Ó¾¾övX!ğ\ØV\çÙ°ƒT\Æ¾	^\â\êE\İQX\ÏÕ¥a‰0òlş_X¡6ª\è|B¯#iš\í_(¿ûe¼b¥\ëu2‡ôš\ÚU8¤\"{%‹5†\Í•oQ1Œ*’?qZW\Å\æ\0\0\0\08ğ)\Ù!¼¢\Ç\ÎG\Åm/\Ô,¦°N”aq\à1÷\ä—öy#}c\ëı´–]\Ñ	ˆÀ1\ã£ô+5¨´7ş\Òó%H¶h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0AA­È \0\0\0\0(…a	9–\à\0\0');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_eventos`
--

DROP TABLE IF EXISTS `equipos_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_eventos` (
  `idMueven` int(11) NOT NULL AUTO_INCREMENT,
  `ideventos2` int(11) DEFAULT NULL,
  `idequipos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMueven`),
  KEY `id_eqipos_eventos_idx` (`idequipos`),
  KEY `id_eventos_equipos_idx` (`ideventos2`),
  CONSTRAINT `id_eventos_equipos` FOREIGN KEY (`ideventos2`) REFERENCES `eventos` (`ideventos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_eventos`
--

LOCK TABLES `equipos_eventos` WRITE;
/*!40000 ALTER TABLE `equipos_eventos` DISABLE KEYS */;
INSERT INTO `equipos_eventos` VALUES (1,1,1);
/*!40000 ALTER TABLE `equipos_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `ideventos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  PRIMARY KEY (`ideventos`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'2024-01-24','El evento ocurrido es de fallo del sitema operativo por eso se hizo cambio del equipo'),(2,'0000-00-00','\'czczczczczczc\''),(3,'2024-07-24','czczczczczczc'),(4,'2024-06-23','czczczczczczc'),(5,'2024-04-24','czczczczczczc'),(6,'2024-08-24','czczczczczczc'),(7,'2024-08-24','czczczczczczc'),(8,'2024-09-24','czczczczczczc'),(9,'2024-09-24','czczczczczczc'),(10,'2024-12-12','czczczczczczc'),(11,'2024-06-20','czczczczczczc'),(12,'2024-05-16','czczczczczczc'),(13,'2024-05-14','czczczczczczc');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `idsalas` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `N-PR` int(11) DEFAULT NULL,
  `Capacidad_de_Equipos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsalas`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (52,'Poseidon','Segundo Piso',25,'25'),(53,'Icaro','Segundo Piso',25,'25');
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas_enventos`
--

DROP TABLE IF EXISTS `salas_enventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas_enventos` (
  `idReorganizan` int(11) NOT NULL AUTO_INCREMENT,
  `idsalas` int(11) DEFAULT NULL,
  `ideventos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idReorganizan`),
  KEY `id_eventos_salasfk_idx` (`ideventos`),
  KEY `id_salas_eventossfk_idx` (`idsalas`),
  CONSTRAINT `id_eventos_salasfk` FOREIGN KEY (`ideventos`) REFERENCES `eventos` (`ideventos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_salas_eventossfk` FOREIGN KEY (`idsalas`) REFERENCES `salas` (`idsalas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas_enventos`
--

LOCK TABLES `salas_enventos` WRITE;
/*!40000 ALTER TABLE `salas_enventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `salas_enventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `ContraseÃ±a` varchar(45) DEFAULT NULL,
  `Rol` enum('admind','soporte','lector') DEFAULT NULL,
  `img` blob DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Joseph','Josephruix@gmail.com','12345','soporte',NULL),(38,'carlos','carlos@gmail.com','12345','admind',NULL),(39,'Luz Marina Nieto','luzmarina@gmail.com','12345','lector',NULL),(40,'Joseph','luislaiton@gmail.com','12345','lector',NULL),(41,'camilo peÃ±a','camilo@gmail.com','123','soporte',NULL),(42,'camilo peÃ±a','camilo@gmail.com','123','soporte',NULL),(43,'camilo peÃ±a','camilo@gmail.com','123','lector',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios-equipos`
--

DROP TABLE IF EXISTS `usuarios-equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios-equipos` (
  `idAdministracion` int(11) NOT NULL AUTO_INCREMENT,
  `idusuarios` int(11) DEFAULT NULL,
  `idEquipos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAdministracion`),
  KEY `Fk_Equipos_Usuarios_Equipos_idx` (`idEquipos`),
  KEY `F_Usuarios_Equipos_Usuarios_idx` (`idusuarios`),
  CONSTRAINT `F_Usuarios_Equipos_Usuarios` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_Equipos_Usuarios_Equipos` FOREIGN KEY (`idEquipos`) REFERENCES `equipos` (`idEquipos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios-equipos`
--

LOCK TABLES `usuarios-equipos` WRITE;
/*!40000 ALTER TABLE `usuarios-equipos` DISABLE KEYS */;
INSERT INTO `usuarios-equipos` VALUES (1,1,NULL);
/*!40000 ALTER TABLE `usuarios-equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_eventos`
--

DROP TABLE IF EXISTS `usuarios_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_eventos` (
  `idRealizan` int(11) NOT NULL AUTO_INCREMENT,
  `idusuariofk` int(11) DEFAULT NULL,
  `ideventofk` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRealizan`),
  KEY `Fk_Usuarios_Eventos_idx` (`ideventofk`),
  KEY `Fk_Eventos_Usuarios` (`idusuariofk`),
  CONSTRAINT `Fk_Eventos_Usuarios` FOREIGN KEY (`idusuariofk`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_Usuarios_Eventos` FOREIGN KEY (`ideventofk`) REFERENCES `eventos` (`ideventos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_eventos`
--

LOCK TABLES `usuarios_eventos` WRITE;
/*!40000 ALTER TABLE `usuarios_eventos` DISABLE KEYS */;
INSERT INTO `usuarios_eventos` VALUES (1,1,1);
/*!40000 ALTER TABLE `usuarios_eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 11:34:44
