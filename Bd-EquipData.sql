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
INSERT INTO `equipos` VALUES (90,'Hp','aafafafa','Mantenimiento','Bs','Cpu',53,_binary 'RIFF>\0\0WEBPVP8 \n>\0\0�4�*\�\�>m6�I$&%$#Ph��\r�in\�d�\�3\�͑l�+?�\�\�W\�<|�����>���\'��-�k1\�o�\�\�\Z��ı\�3���M�/�<	�\�\�|P����P\\\�ĝ\�#�gJ�v����\�\�U}\��.GR�\�\�G\�r:�_v�?K�Ԫ���\\��b�N�=��O!\�\�\�t��=��O!\�\�\�uH\�uc\�C���\�\�\�:{���C���\�\�\�:{���!\�\�\�t��=��O!\�\�\�t��=��O8V=\�:{���C���\�\�\�:{���C���\��¨}=��O!\�\�\�t��=��O!\�\�\�t��fy\�C���\�\�\�:{���C���\�\�\�:{���G\�\�\�t��=��O!\�\�\�t��=��O!\�\���{���GX�.P\�yܪ\�<|�\�\�\�\"㇒-tZ��,\�X�\�ӝZ�Le�m�⛄ɦxl\�\�\�G5.�g{����O!\�\�\�Տy��1j\�N\�ސj��,\�q2\r��Bp_%�e�\�F��mf����}\�שk_1���\�\�\��\�Dg�]d�^��j��hyH\�ꭌ)!ʣ\�Ǐ�n*I\�%+�\n�P}=��O8V=\�:{�\�\�xSA\�.f\�m��ʀ�\�\�I%o\��`\�J�K\�\�ܼ]�\�I,�\���!��7\�k6�-�\�\\\��\�	�n\�!F\�\Z�.&T\�J�j�=��G�7D���1��#*ᰥ\\�+;\�t��A8\�X��\�\�;\�\�Q\�g��\�j\\\�\�gG��;ϋ\�3g��\�r\n�>���\ns%\�w�;ZN\�\�(�,�{�S\�\�t��A8\�X��\�\�2�Y�\�d\�\�R\�*v֟x\�ޅ{�\"�\�\�{!a�\�Lrゟ\�U\�\��V�\�\��-g*\�g\�d�589RaBl\�!\�\�\�u�\�y��C��Rx\\��rq\r�\�Wbf�0�Q�L%�O\��`��\��ϙ\���x_\�/v=��\�M꾂M�\ZJʶ��f\��W�C���\��\�\�iDĤ�Q\�*f�~u\�*���1\��\�xӃ6�@7X�\�]K>R\'or�5c\�C�����\'�=��EI��uߢ\�IMN�ǃސ$��Kzjx�\�\�`ǧ\�8ԝ\'�49a�ʪor�3�%O\0\Z��Gݵ�6w�\���}=��O~�z`��\���k7�\�֊-f#7�\��\�\'��\�f��|A\n��\�\��\�\�;P�S\�Ŀ	�\�8gI�\�Ǽ�O#�\�\�\�:{�	A3E9򮴒|r\Z�(Xj\�\�,`A�$\"�o	E�+�`ڤMさ&\\i�	&�\'\�y�y�\�!\�\�\�uH\�uc\�C���\�O��JnS�R��\��L��|�&�\�N\���ݢ�d\\Ԙ���2�\�f�v,]+^,�\�-v?&\\�\�LD�\0��$����\'���\�\�\�%\0\�G0�o2�w�v�k�;tާc~��8g�P�Q.\"��-��\�R��<X�X\�#vl\�!\�\�\�\�z{���B\'Me)\�ҳ�q��\�mm2\�\�R6/K\�Qe�oM\�\��\�N�\�U=\�B�\n\�\�\�-$�\�Fٗ�\�S�\�T�)�\�!\�\�P�{���بNvc\���k2\�\�$�\�.\�\�d���CS�Ǥ�Q\��<�\�\��?z�\�\� �!\�\�\�uH\�uc\�C��_�T4xD�]���{\�~\�ZK	��Ň�T4�/\Z�\�\�\�A��,\�\�`\� W\n[g�x�\�ySI\�C\�\��\�t��^4u [$�+v\��jYt�\"E��^\�\�EL�o�M&d6�Rb�\�%(N;ޘ�;��W\�r̭߀b�7M\�9�3|����\�\�}=��O8V=\�:{�\�D\�jU��������6���Pϫ�w��\�\\\Z?�\Z�\�;Q�\�ͧ\�(�J�Eo��%�2\\wЏ�ySI�*�\�\�\�t��Xj���\��M]�Cz\'7\�1\�%V~�:\�\�\\C\��\0�Ru%(�oJ�\�\r\0� \�G����>���\�\�\�\�b\�\�ﳜ�����q\�Yv?[K;Q��(�+[��yj��2�	Zu[Kl���\���\�N,@�6w�\�\�\�q==��O!=�\�#���n*\Z8������b	{\�3������3�v5\�7#`$I\�G��&м��\�\�_.>�t)\">,\�b\�5\�\�wd\�X.�{\�t��c\�C���\nM,<\�6v!?�\�\"\�\�j?w\�\�9�(z�\0u\�d��GXbQ\�z\�^\�!F4�V�^`-f���\�\���/�4%�	\0 \��I�3t&�wK�Տy��n�{\�t�\��\�\�\�茵�s�j,�\�\���	\��>Q�+\�5�.��\�z,]�t\�[M\�D:cŬd��\�V߰>��ߤ\\ǡ2+Ax��Ah=<C}�����=��\'���\�\�\�#�]\�I\�!��g\�\�\�{���0b��ط9\��ls�_Y��\�v~\����j0�\�\�qِ����D8)@:@�]\�d\�G\�V�\�iA\�\�D�\�w�\����=��r�)Ң�\�S(\��7�\�nK\�Q�ѳ��n\�O)W:P�\�J\�\��B\�\r�NJ<\�p������\�虎)��L\��\�A�\�d\n\�2\�$�\\�IM\'y��n�{\�t�\�q��T\�#Cf\��\�X,Cd4D�p\�L\�C�,�M=;Ꭳ\�7�Û0�\�U��Ǌ��!J\�����Q\�N>L��q?�F\�\�\�C���\����=��nj\�\�\�\�{���XQ48�f\�\�\�Q�\�\n���C�m\�&�6\�j/��ieqhFÈ\�p�\�X\nv~g��w���K0���Տy�\0�\�\�\�t�\�j�L�P�0D�ri\�X:��SN��\�%˲ �,0�4\�ٳ90�m��\�j�\�X\�\�|\\\�=6\�H-O\�\�@/�r\�uc\�C��#���=���#��!����/��@`v��#,\��dK�E�\�U{=CqKe\�u��Oe]��9=\n��4{\�)��\'T��yRw�3f ��$����\'���\�\�\�#sB\�M�B�M���ߴ�\�\����O8�ʬ��t�\�j�Q��j8B�\�܈�\�\�\�LXψf�{»k�\'!P�\�\r�27e.��T�)\�W�\�\�t��fy\�C���\�gE\�p`�A\�\�m�L1Qϩ�C�Ľ(�\r�\�\�oڊK�\Z��\�\�MV=\�h���m\�ܯ\�fzø�v\��p�,�W\�r /\r�p\�0j8)a.��;F�\�:{��<\�!\�\�\�t��XO}�\�#�\�V��c\n��\�CX�>�\"��\"k\\�}@[\�˅%t*�ډ�\�\"V�G<��#,ѡ\�7=\nRݒ\�\Z\�\�3dn7V=\�:|p�O!\�\�O��A Q�@׉Kꉛ����p&�+L@BA�z\�%b8\�\��\�\�_8T\�RU+*\"\�P\�\�2ϼ`�\�l[\�j�Z�\�\�G^���Q\�}=��O�F\�\�\�:{��(��ֱ\�~�\�A��\r�\�\�\�\�*$H毪�\�T�_5{HMR�\�G\\�@�.�\�%�^�I\�-\�r�\�Ow�\�\�ZdR�_K\�r�%4�\�:�$q��\�!\�\�9G�U�\�@?T��\�\�.�\'O\�=��/��\�OC\�s?�~��XΛ\�2�\n���\�`;�$Hn\�\�\�8\�w�	\�Պ?G��J\�[#q��\�!\�\�P�{���n5�Vg�Z�\�ui�\�v�f\�,n�\�:\�@6^����BG�\�\Z\�\��&��糎y\�\n�-\0,Z�\�j�#Z1����\':�n\'�=��Y�w�\�\�\�:^d;\�Q�Հ\�\�\�Hw���C�+\�	P\�sO�R�qx2�1�#^&b\�g��R�F���\�X|Cy �m\�\�Aż(8��\�\�]|$l�\�\�Ǽ�O�C\�\�\�:{ͷ�q��\\��\'���机q�¥�[��f�B�\r�\�ͥ\�\�\��\�\��\0}\�!(\Z:������o�ڮ�\�����O#�\�\�\�:{�	�Kmb3��1�\r\\��\�\\\�_\�j.Ї�xд�>�*�p\��c\�\�Eb�Z\�B.,g��ZP\�5\��ycBu?�f�����8\�Ȓ�N�fy\�C���\�z\0T;&MMϬ\�a\�>p�%BW�	B�)�Q>H�|�qn~\�\�\'5�Ta���\0\�N�p#=\���\�\�\�.\�j\�\�\�\�C�\�;\�t��<��\Zp�L�f\��^��F���Z��\�\�<pn���;\�g�.k\�$\��\0C�C��(-�\�\�h�)6>9\�0�\�ݛ;\�t�\�T>��C���B8esR�o\"9\�5�\��L�S;\�+3v�Tm�b�6\�TrǮ칉M��\�Q\�^�sovl\�!\�g�\�:{���I�h��\�A\�\�0���C�\�sE\�SBw�c,.�z�X��\�:{��<\�!\�\�\�t��,w�.Ӵz=�\\6Ƕ\�?��;HZ��K\�\�t��A8\�X��\�\�\�8�u��0�J\�m�i\�>s^�\�\�_y���\�7�\�\�\�C�����=��O~�ˍ��U˝\�\r��:�r*\�hG�Z�0��\�\�t��A8\�X��\�\�\�:yY\�\�>��[���N��m\�:\�\�\�\��ռ\�#��xX#�LcR\�D�\�w���\'�=��O!\�ʠk\�\�gR���}��IY\"��S==\�f�\\�\�|�\����h�u�\�L��\Zj\���]s��_\�=\�:{��\0�\�\�\�t��=����&qGB�\�t\�˶���6��Ƃ��a\�Ji;\�t��>���\�\�\�:{���E�i;\�t��=��O!�pO\�:{���C���\�\�\�:{���C���\�\�\�jǼ�O!\�\�\�t��=��O!\�\�\�t��>8U���\�\�\�:{���C���\�\�\�:{���C�\�;\�t��=��O!\�\�\�t��=��O!\�\�\�\�z{���C���\�\�\�:{���C���\�\�\�:|\0\�K�U}\��.GR�\�\�G\�r:�_v�?K�Ԫ���\\��Wݠx�\0\0��iKwH�rP\0\0\0\0\��\�\�\�;ݞN��G��\0\0\0\0	{��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�=�qd�^/&\�O�V\�\��4� ]\���>�e\�1\�\'N�pg\�\������\�v���F\�δI���V�\nW\�]ۮ*\�*�jm���\�E��<ʻ,�Z\�wE�i\�G�\Z\�\�%@A\�.�\�͡��5\�\�k�U�L\����y+���w۞�\0\��@�\�}�T8gb乗:�`�w\�t�T-;�\�aq�\�+^<-Y�T@wp��d�Ea.&)\��/\��\�\�\�\�,\�K��\����\�P Wo\�\�N\�+�@\0\0\0\�3\�X|BL��}�\��\�~>��J�\�)�\�\�\�Y\r�91�����Ť\�\'�7K�_�V�2�$����b\�!\�\�\r\�T�\�쭲3��V\��m%ފ�Ttk��\�Eq\r\�܂P3i2:�`�R�H�\�o��;��o�\�zJ\Z������.f=L�3�\�)NV�Jm�{\"XWF�I�痼�\��g\��\�K?\�a\ZM��%,�Y�;��¼\�w\�tg���@7	\�\�~Y0�\na��\�uO\�&[n\Z�v\�;x\�kr\���+��W��ȸ\��w\0��$�\�#�k�Mީ�o�G	��/SJ�cmH�\�)(>�\�Q�;\�Ͱ�L4��\�\�\�	\�K�m\�4\�\0$�\��\�P	�#�`�:��\0m	\�^\�\�d�8JR\ZK���}����$\�՚d���\0\Z�\�\�9S��\�@L�\��\�Ŭ��@r1��#\�\���[�Lrp8\�i�X��Iʜ�0\n\�o)<\�ϲW��\�m�9��\�\�\�PzG쿅�i\�~�HU ;\�I��\��F������q>\��\\_{GV�(�A��\�_\��4\n�\�3�q\�Uu\�\�+\�\�Hᮂ�B�1s\�~�˞h �����\�f�O\�r��(��\�\����\�!zm\��Q�\�p�\�0\�5mg45�\�kۨw�\�\�\���1�&Q\�>\�͹&T��s�Z\�E�O	I-3�[i\�\�%�%�>~C\�2�\'����6G�[V%�\�ѠP�X\r�)����\06\�J0@xe-Ks2�\�f{����|\�wX\� \�6\r/B�c�>:�\�\0\�w��М�t\�P*8V���\�AW)G\�j\r4%&K�\06D�I�(@\�\�2\�\'�]����pjj��Uch�[�����d]d\Zaa԰\�.��\�i�&�.7q�cѓ��\��&\�E\�LH\Z�\�ۿmpPg/\�C��nj�#\�Z��\�\�f![3lP���\�;�n�V,�+:�R\�t�Z��@0v\�r\�\�q���\0\0AR�\\YetA*���\��N\�x����dDG\�\�\�@\Z}�ʃ\�\���ɵ�����cx���ri��Q�e�Fzg2�\��;��K�\�v5�\�U\��\\��xG�\�l\�a)�+\�9�E\�E�N�\\\�/Hr�\\*\�\�)\�N\�\Z\�\�ۛ���V�kkT�-j���L�$᩵\���7٧�6U}\�uv�+�\�(~`��ߣE&C�\�~fsy<{�aFY�_\�\�$���\���_���\�~;O�\��\�Z��g(pg\�I��s�\�\�Ξ2\��\�\�\�xD\�c�\�	\\us��\� *ؓ\�$\����4��q\�[\�mS>��Wp�~�fy�|�/��\�ھ��(�ˋ4ݐ9�(]*Կ\�i\�j�\���2W��h>7��ӣ�\�w\�\�yΗ2y�4z\�\r\�\��>?JK?�^\�2��QqL0�ZM�yH�\�+�R��\��T韐��vk��i*���|Ĭ)\�xh46\�\�@�o��(\�\�{�r>?89�}�*���fy\��\�W1�p#\"�H\�o�8(d&p\�s\�4_W7Xv\�OHeBNe\�\0\0\�y(�}|@L	E\�\�hn�.#�L�΋�2P\�\�\��=�&\�K��8\�1Me\"e�\�,\��-\�6�g�e\�8�֜�Jb����2��\r��4�\�n#�x����\�\�r��Iv\�H\�+(!ÙЂ?tEő�\�7��\�c��6��G\�tK�Վ�\�\'���_\���\�i�\�?�!Y�u1\�\�H�� \��]\��\��_ =@#W?����V�*`J\�	�\�a$�@�I}�\�V��,�\�y���п?E\0\0���t\�jȡrg�\�uʙ#\�1�\�r\�=x8z\�uX\�̈T�e]R^�\�ZV�^īZ\�w��\��\�8VW�� ��I5�}�Q(0pc\�Z�\�\�\�,\�r�\�3�ffh\�b�w<,c:\�\0@<�-%�mW�\�\�O/NA�]�\r%,���\�f�2�Y���\�Q����`4E\�\0\0\�\Z\"{\�\�Wu$:�\�:3\����똘�h�\�[<8ua���\�U͑���\Z\�\�\�ۑ\� (O\�\�Lf�\�+ӆ�\�|�\�#�ly\�pW�y\�\r�=ѶN�\�ԋ�\�2\�r;K\�4e\�\�ic\\�w�l\'|p\�e�9j\'�\�<�Գ5\�沞�\�\�\��y\�@\0q;`|�H�,�TZr���\��&7-�\�\�\0,HWRJ��ٻ��;\�m\Z%�]\�C*T��\�%�B��\�-\�Xj))�#zK�ګ��\n�t�эk�`\�:�*�P��\�����\��\�j̇�ô8O\���\�;t1��\�1uޢ@ey�A\�\"�\���y\�*^�\�\�\Zt]jv�\�d6j\�\�\0�\\�\��;��^V\0ETS&h\r�~N%@k���lF`��fSΏ\'X\�g?�,�\�d]�d\�s�(\�⇴8>\�ʖ\��,��?w\�\���徒�pP�\�>�*WFrA*\�?\�9F���ï�u��/\'\�\���j�H\�����\�H\�\�C;\r_Ivy\"\"\�\�;\�䷹�gU����L�\�ܼ\�\�^�\�\�@@�G5�]	�z\�\��\�2�?7*v�\�o\�\nWkd�\�\�F�I�]\�%M�\�9X\�\�+�|\�\0\0ēm��e�\�q�`�^\\�gC\�\��Ĝm���� �\�!\��w��oJ\�A�<�S]D\�YY�99�^v��\�.\n�n�?�b�~$\�>�\'�\���_�v�zpSli5��UW�5\0{�`O\'u�\�\�$Hyv\�c\�>|U\�Acϑ��&\rh\�\�\��V�E\'d�\�nڦ1�V\��\�s�\"4\'\��nإF�C8(o/�\"\\\�[��~��{�V\�zgKh\�s4�$(\0�\��Np7:\�\�\�Z\�\�sH\rĞ\�b\�?]}45�\\\�l\Z򘳢�\�\�` ���4��+�\�iI���+W�B86�j�A\�\�_bU\�*k�C�fD�\�O�%,YN��\Z\�a�ţQ\�\'q\�Xt���$���4�{\�\01�\��\�By��\�7q[Ժ\'A���?uZ�-\�Er�hw\�y\�t�iGl9tǓ3�\�\�uO|뿹\"е\�&���\0k�Ȳj`�[>�]Kf\\�\���\�\�!\��`\�a\"��M^>��~f�3�h�!g\�4W5T�w#^\�\�\�lIC\�\�\�\�l�����Ⳁ���U�&z\�J�?��4��\�	�l\�έZ^�\�hЬ�t�V Y^���`v\�\�O��\�sR=\�Oq�W\�Q@��㪕@c\�6A+R\�KN��\�l\�٧~\��^1\�p�y�bV�\0\�{�i]����\�\��<�Hh�8�\�L\�	\�\�\0�ܲ�\��G\�&\Ze�[zg4�k�� bV!S\�A\�\���-X\Z��C\��z���<�~\�\�\�\�/)\�\Z�[�*W��7�\�>i)6�\�Fa\�>\�2aR\�H����O��>^P\�Ĭ�\�kH�\�\�+�6~�n������\�Gy\r\�S�湝��g&�+����=,@\0\01Yu�nS�\\\�U��΂�Gz��կ\�\�/+ �\�>F>pC�m,,p\�\�\�\�����/\�4Y��7\�\� 	u5	\\#�Fz�?Dnucf\�u\�E&U��l٪\�)k��\�R��<\\��6/g����z��\�+k2spŃ+0�\rM�luɺ�\�2\�u�Zz\�e�\�\�I\�ni�Tm�w�\�T�Ǜ\�\�R=�8g���\�\�Npi��6g�Q��\�`\�L\�\�^��zf�m�`��j\��\0\0Y\����\�$K4\�!\�\�-ձ��\���\�x\�?�\�N���CD/pK<e1�|5���f�qf������\��\�\�/(�d�����ФftT�FY�4�\�\�ҹ\r��[�@Iu�x�&C��\��V��8�&^j>�\"ۅ �Ք�\�y�8յW�N[�c\�\n�\��E�ڟB�\�ϳ7x��e�\�\�1\08�Qj?�\\	{A�����Q�P���A�\� ��\��U3��v<��\ry�j�ـ\0\ZȅŃ,W:\�zI\"W�\�\�\�`\r.}�MC.�\�\��,��\�0(߄�\�\�.C+�#\�-d���&\�����+\��g�[=�\�֜�N��#S����S\�%\�:\�\�\0�df�\�\�Y�v؛Qz�:^Da��X�K�\�\�|�x��|��Z����h�\n���	L\�h}�O�~ f� ��)8\\��\�n:l�/5�\'>�+v�\"�[�ig�~eo2�;B�s�\�\��2�\�ק\�UO�\0\�aԘ\�\�C��\0\�_\�\�Am�D�ia\�\�h��o���\�&��*S��km�bJI[\0\�]�\�W�S4\�<~�\rX\"i?3�\�T\�).Z��\�qaq?\�\�b6xث��z,l�My�z/f�\�\�\���(\�(P��!>k�qc�S$��mW(�Q#S!v\�\�-\��g�R���\�nd\�\�\�\�\�\�)?;<c3٠G�T�_ӵ��ɞ8�\�<�&��$��(e��mT�Kg��v{B�\�΋Ǻ�I\"�H��/S�	�\�\�pǫ��5��IƎ\0\0H�	�R�8��F\�?�\�AƸ�)�\'��\�->s\�.\����$v1L�\�C�\�\�\�\n[\�\�k�\�|\�3)͕/G\�\�\��ɉav����\��9Zȼ8z\n})��A�1�%\�RVS\�fP�\�Ơ\�&}�4���.)@�=hN�9��\"���d�1�`���\�-�\�i�\n\�\�*/�yv\��b�̅�q�n�͞��:{,\��\�j�b-���0\�ͻb��FҾ_�1�\�\�\�*֌7%\�I�V���1\����\�_\�SD�Tt\�S\�\r�8�\0.\�7zQ8l���,2�؊\�,_1P\"y��0k\�+\�\�ރEg#BaSfs�h\�)n%�q\"h�k\n^��g�ȻX\��y���]�\Zl�6\�%[UuO#Z\�04,Hzt�\�IN����	=���\0\�\��\�6�\�V��&k?N�y[�v��\0�\�ӽ�\�\r\�\�y�c�ñ\'�9�J9��	UY>��M\����搩��G\��j��Q���\�9�R��\�\�X�:Y����	�)x�\�t�q\�\�I)X\"@\��0\�s}\�j\r�\�km��@\0\r�g4\"N����yRpy)�\�\�:6L/��>eR&MK��\�ӌ\Zg]�G�\��\�\���\�%w���\\��P_M{\�8Q�nY\�V_��Yl��͈cC�\n�\�\r���2\�\�G��1M�E\�\�M]kǯ\�\�91��\rj6=KD�yeѶ\���\�&\�*�z#zp�]$.�7H2�Ӯ�71��z|��|����N�[���	�+�Ky�-�\� \�\�Lce�7\�EQ�W�\�֠���^\�ټ�\�ٙ\�ا�e\�\�\�W]�`\�hTey-�0�]4\�8\�Z�=%=\�9����\�+�\�\��\0\0� \�\�)��Y�\�%�\��r3�8-����U`������\�q~)!h\�\�T�2`R\Z�6ݧ\r�E;��_p�ܕ��S\�cFk\�ݝ\�H�Ҽj�K.�Ϫ�4%c9ʤ4�\�3a�(].<[4L�.\�\�?U��B�N�D�\�\�p��c�-}\�\�\0��h(�t\'ۆ\�%9��n�\�<��G7dd��t�\��\�E�\��3�/\ZG�g~�\�L.\�)�mDP�V��7�5>��ԏ(.\�A=�p\�*q�8\0\�{do\�㞀o~� ��\�w�ֺ\'1\�f����N�\�\��6Ӊ�\�\nb8\06�\�\�P�=5�F\�Ď�\�J�%\�\�\��h�\���[\�H�s&B�\�\�S���mƳ\�g}g�x�UD\�L�l1\�\�x�\�N6�I�\�\�\�Xx\���l�\���\�\�}\�\�c\ZN�\��m7\0\�8F\�\�U�c\�\�H�3\�	��!0\�9e:*v�v�~wlA��\\5V\�HӺٍ���oMvgx���\"\'s��v\�\�>$T���\�\�qR-5?�JYT�y%;�RBl\�凔�8����Ef=���SN\�?�!�/�\�Tֱ=A%\� 9��\��#K&k�P=\�ߘCi\�w/�D��\0!\nC\�\�cNj\�y\�a\Z[ \�r��2B7�Ω��\0/J��\�\�\�i��D�=�\�zt�\�-y�X\\\��io\�&?�q0\�:-\��5ݠ\�cO�+i\�u0��6+�\�C��ɡ\�Ttǡ\�j9T��]�\�=5��\�g\��U閔>לIs�u�\�\�\�l\�\�nnb:>�B�L\�j([���\���\�4�\�\�\�Z\�C�\�M�P\�FK���o\�\�԰\�\�\�O8dZ�1`>T\�%2*}\�z�C��\�\�{.\�#�\Z�}%�n#�ՇaݭPغm\�\�X���\�T�\�5�{iS�\�\�@1�U\�ǀ}�ˬ���ʋ�e��\0\nR�LQ�\�l\��\�\�&>ae�\0�2��\�\��\�B3\�`\�^>|\�1z��\�*\n\0�t@#��6�F(V�e�3BE0\�\n��\��\�ٓj��\0�͒�Wb@w3dFI\n]7\�(P��[|\�-��!�G?��f��3\���\�h\�u\�\�sK�LS\�\�8���.�c�\�%Et\�Q�hIbz.D\�k\���E\�0JU.#\�%�\\�Kߐ:\�ئ^�\�]0\�<A\�o\�x,U�\�T\n�+\�E}�[��2B��\�\"��\�U�;�\�Y\�6�8n$�\�Ysk�\�Dg×d\�g \�}�\0\0�<��\�\�\�I&�\�7bf\'[$q,?��ڕzK^\�E,dRq0\�}\������O��]�Z|c\�\'\��Rh\�\��Lq3�{��&�(\�H,�3���Df�s��F:W�q�\�u�d�\�Mp(��\�Ox�_��{eX��v�m\�\�Z\�\Z\�x\�jM\�|=[�e=#7=��\��	fR;\�c�ؒ�3c��\�0O\�H�\�	�qA��S�\��o��Os�]�\�ʭB\'T\Z\0\�g��F��\0�F#?���\�Ap��>\�\���.\�?I\�\Z��p�\0\04��x�.�m;>?�	\�\Z�\�3�o�\n\�\\\�\�I^7#\�p�\�\�\��ϓ�\�y\�\�HA\�t���]�nL$�l	��Ep9\��\�F$\�\���Z�\�UrZqޢJ<J\��\�)2\�\�Wd��h�Q=�l\�JZb{�Ү����m�9:\�s\Zd�x�q�\�B��\'\�5(.\ne��lu� /\�-_�*�o�\�GJ\�\�cߪ�E�\�%��B\�Yk<i;��Չ���z�\��\�@iڪ\��:2\�/z�6�/-��\"�Jk�Wai�Y\�\�)\"\�\�\�\�\�.\r\�2�\�\�\�M ��Φa#\����0\0H�\�rA\Z��zS�	�:��O�xTut9u]MW\�2s�G�\�9�]���,9\"u��Q\�->�amD�l\0��S$�\�\��\�\�ƨ�5�O\0�C�r\�H8���~`C��ƙ�qWBˌ+-]\Z��/\�z��\�\�T�\�\Z\�3vi�+cK\0�Ւ�U\�I\�s��\�~\�4\�W_Y�~�\�3\r~���=�^֗�@®���Ҹ4�\�*����?\�\�]�G��&*\�\0�m\�\�)�Ko�z�;\�\0X�\�)�Z�h��%ϒZ\�c}�3����q`7������Z�\���\�W�\��8R�\�	\�\0D,JM\����\�XKV�0�¾�\�\�x3\�r�F�E.\�v�\�~\�\��J���\�\�|p�\���\�\���4�\�*�r\0`x�}^��x!LJ~K\�\�\�4L\��h\�5U���X�\�\�\"s�Q\Z�\�69*��f�\�ۋ\�OB�@.~�\�\�\�Y\�\��5\'��\�#b���4�#a\�\�{g\�\�Z^\�����F���W|�4LU[��o,�\�4iO��R�\�B:���~\�Ų�r2\"y>\�8­����vK�H|;\�y���+\��a\��ǃ]\r �ڲKi�R;\0\0\�J\\��dv��\"}��[R�\�;#0\'J1<~K�\r0�ڲwߍ\�K~�\�tM*�R\�в�\�nc\�(6�	1�&�m˴f��呻\�\�\�l�\��U=Ѐ߽\�g�M��g �^\�`D�4�}\�\n9ں�\�\�,@\'X��\�WTy|Q\�_�\��fp\n����,9{��NK\\�1�\�`.^�pb���F\�\�!C�\��Ӆ\�@\�/�I���唛�Bv\�j�ʻ�0�i�p\�C\����78h;1��\�\r\�w>hbJ\��?:�t\�\�R�~\�n\�Gl�V��h崖���H�Ш�8��}�f�\�\�0\n,XU���\�R!�ְk�E@\0@䬞-\'ipl1\�AI�\�0\�	~\�\�n�W\�\"\�\�\�f���\�:Ȁ&:Vq����CM����\�n�N�Z,\�O8\"\�\�\'z\rB\�\�>�\�c��\�\�\ZH�	\��\�\�2\rN\�\�{Y�f�7���\0�+\�8��N9E�T�S�o� F0�\�(��\n�\�(�m\�Xʍ_�>�Y\0*�A�\�J��8\"�\�\"�8�\�&H\�\"\�TnS6ք\�\�t��\�s�\�\�\�\�J\�˹�H�\�숤�\�59\r�~\�\���H\�%_f�`|]\�\�\�\�eSc)�MB�{:gahW/S�>�߫F��\0\0\�\��h5$;��e��{�\�Ȏl>�N\"qN�<*�NE�\"\�\0\�V:\�Y\�B�$\n�\0\�-\�i0_��F)\�L��%�>��[\�\�u\����4\�R\"�s\\\�䩫\�u�p|%��Ƹi�mk7��\r%H��\�|\�~P�\����Q��b�G��\��\�O�\�#C���F�C9�\�V+��\��\���g�-{F��Z=u�\�K�M�\\HU\�\�C� }\�%�ۥ��k��qs\n\����l������.8Ha\�b-`\�/|�\�.\�mec8����KS�x��\�\n\"\0+����s¡\�a�\�=��ghs���k�UE\�\�,^qA\�n�(\�� U�MD\�iy̗�lkkҭ�T4�pJ1+\�DS�\�؆\0n`>bIU\�\��w�	\�\�ڱ5Ѥ���_+�ROH�E\�b�HGT)|�0Hk0mR�Dw�+�>:��|	Z,���W�73>\�R\�\�>y��I�#��v\Z�2�縜\�eQ6���:�\n1\��E°y��\�:B�u��Eٝ�fɦ�Eptx[��j%�P\���>��TL4zU��礇i�\�Y\�:�#U\�\�\�\�Pz\�\�\������n\�\��P\0\0�WtP�NiJ|I\�1}V���؋A\�|<i�)�A9��	\��\�RcF=�\r\�\r�q~\�=��?~\"�i��z\�o8��5��˥�s�\�\�����A\n>>����\���C�5D�-\�y\��\nT�5:�\�L\\�\�\�bjr\n�\\\�\�\�\�U���\�i\�\�\�6��m�6\��J���宩s5\�뢎��<�q��\�Yn��)61\�{�\��\�}�\�A���\��\�A]�\";\�\�\�\�)��=\�Ť7U\�I�\�°\�0�\�@��/\�w#\��h��\�G\�<\�\n|�\�,�N\�Jm��\0\0DQ��\�e@��}�\"�\��lʃ~k�\�O�!U\�,�$���tE�𬵲Y��|[:#F�`\��\�\�\�\��\�\�\�l\�q��G#�0�U�6水uy�%ƷS�����LD\�\�7w�|�\�;��IlB�9�r�Uˎ�2�\���g\�ar�\�SMeِ?�	G�<�r\�\�?�az[!���\�\�Z,T;�\�c��vo\�\�\�ۄ�)d����\�9�hzD�y�¨\��M*J\r9\�\�&m�V\�M�rA\�\�\�h���t��\�ܗ�Y��`�P\0\0W$\����3�7\�:9�Ώ!ʦ\�\���W\�se�@b>\��w ��\�bҼ�R��\�;�\�2��DBO=�����_���������y��cu7\'dzo\�*��u�\�Ѳ�͋D�7/B\�^J\�|��A��S\0͎��\�/�F70n\�\�ˇr�\�8N3]�}�Y�4�t\\#$�����|\Zǩ��D[��\�>\�\�\�;�B\�n\�\�\�~!���vІ�4Xi��\�\�	*\0k�\��\�e&�D\�l\�¬\0\0����5�2�v�\rn�\0g�\�:�Ǿ���v^l/��o\�\�?\�X�\"Z�Lْ���Χ6(bݳ\'�\�NE\�^4}�\�\�3�ʘ�Z���a����pW����(4#\�\"U�@]�E�.å,*<b\�7P�=�>J\�\��:\��\�\���\�V`J��ĝP\���F\�,��\�&H�	Lg��xFAi`�\�\�P\0�m�=��+�4\�:\�PD������t\�#Li��\�\03\��dHZ�2	v�nC�7\�\�\�\0��\�h\�H\�z�\�	&�-ҕL��i4\�Q*IϦ�f�U�_Z�\�A�m�u;We�$�+�Gއem\�\�#B�f2v\�z�4�J\��\�^�]i3⻣d \�}��I�,\�Z|��䝝E\�\�)�\�K\�A\�R:�hX�S�bYL\��l%��.����j	�T�yv�{�E�\�x\�F�ם��\�?\\��)\�	V#�N\�R�<TU\�b�Z\�2l��#Q\�o��4\0\02��\�L?繫\�(\0��1~Q����F�\�N����� ɚa�l\��)ʌj\�oۊ����\�ѹA\�	\��i�}�U�r��4[U\�\�3=h��D�ȵ+�\�x�T\�P��\�:\\#�]\�\�6\�\�hyW ��!�L>\�\�\���m\r-ъ��\�\�\�r�\n\�\�!\�tڄkı\�\�k�\�j`��\�\�aI����*�Z�\�iV�H�\��ֽ�\'�\�У>�\�\�\0�ſ\�j�\�>qM��@S-\�C,�\�\�K~u���\��\���\�\�S81Y���\�<�\\�)E��\�D�&�\�+�pʶ�M��i%N\�P�pM�\�a\�M�\�g\�	��\�!#v�m�\r/\�eMӢ\�k?�-�-|\�\�� �\�\"&&Ur�R#\�~\�\�N\�����;\�g��/��4K4r3��kH=���\�fQ� ʟ�\�)q�[�\��ľ\�Q\��>>E���\�%e{z\0\0\0\�BX\�����D�S\�i\�m��\0z�֌���\'=�K8s[i�d�ؗ�_GL\�k\�?K(\�\�m���\�\0=1S�S�H@Y\�7�Jt��d���\��;\�D�\��e =\Z\��J\�蝓h���uD���,����\��\�Ӄ� Gr�$\�\�IP��/�3_Q\��8�{�ah9�\"�͸�~�u)\�\�4�\n6�v�g�e\0\0�f\0\�\�\�\�!Μ\�l\�1��\�UK%n\�U�z}�\���{\�Q��,�!vc`�\�\�=\�F�\�-\�b\�)6%o❙Zh7��F�\"ۚV�&\��\���\�ަG=��}T��Mh\�\�f-i���\�J٪�\�\"^\�fkY�\�\�n��>:�6\0\0S�\�4\�\�,7A,Eed�R*�f\�M��t��Z.��\Z5KϘ\�g:B�jZ�)�+^E�\nU\�T\0�\�m��t��0:��̹G��\�\��L)G_\���]�\�V8C�J�\�\0\0.][p\rGyhY8}B\���z\�g\�\�-;���\�4�\�Y`���� �z\nV��x\�0c\�\�ٜ�\�AAwl\�i\�\�\�f\r��\�S\nQ{\�Ȗ\�\�\�\0\0\0[v\0uʡ�1t°�뉍N��\�/ظ��#QȎ�d#\�>-���\�C;�.�~�Y\�\�\�x\�/p�/E\�\nҥ�?\�R4y\�c�)$�K2g\\țJÞ��7\�q\��<\�Va�\0\0���\Z\��\��\�\�\�L�/�\�uD0ƞ��V��\'(;Y��Pyf�D�P\��U�гj\�g\�3��\�j,e���n;\rW�\�v\\\�t,\Z�\�H�/\�@�0!|��|X\�?��\�\�Y	(���\�O?8C\�4]\�9І�{�Z\�\r�3`\Z7\n�\�9l�Q��X��C�D4���\0�M�1M/c�>\�Z�\�\�0�G	w�0|M�\�\�K\0\0[��9tS�t��D�M\�ye�,b8\�*4	�\Z\�_�hD\'��gK\��q\� �׃��\���\�\��͛���\�t0�\�X�\�N|\�Ͷ1rh.�B\0\��L��jM��\�y�(�x�;��0O̞�阽V]\Z\�\��\�-�{m�U ?Ӿ��vX!�\�V\�ٰ�T\��	^\�\�E\�QX\�եa�0�l�_X�6�\�|B�#i�\�_(���e�b�\�u2���\�U�8�\"{%�5�\��oQ1�*�?qZW\�\�\0\0\0\08�)\�!��\�\�G\�m/\�,��N�aq\�1�\��y�#}c\�����]\�	��1\��+5��7�\��%H�h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0AA��Ƞ\0\0\0\0(�a	9�\�\0\0');
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
  `Contraseña` varchar(45) DEFAULT NULL,
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
INSERT INTO `usuarios` VALUES (1,'Joseph','Josephruix@gmail.com','12345','soporte',NULL),(38,'carlos','carlos@gmail.com','12345','admind',NULL),(39,'Luz Marina Nieto','luzmarina@gmail.com','12345','lector',NULL),(40,'Joseph','luislaiton@gmail.com','12345','lector',NULL),(41,'camilo peña','camilo@gmail.com','123','soporte',NULL),(42,'camilo peña','camilo@gmail.com','123','soporte',NULL),(43,'camilo peña','camilo@gmail.com','123','lector',NULL);
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
