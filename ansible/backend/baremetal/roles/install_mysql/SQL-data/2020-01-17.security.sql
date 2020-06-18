-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: security
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `ACL`
--

DROP TABLE IF EXISTS `ACL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACL`
--

LOCK TABLES `ACL` WRITE;
/*!40000 ALTER TABLE `ACL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccessToken`
--

DROP TABLE IF EXISTS `AccessToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccessToken`
--

LOCK TABLES `AccessToken` WRITE;
/*!40000 ALTER TABLE `AccessToken` DISABLE KEYS */;
INSERT INTO `AccessToken` VALUES ('06svdfmYL8MSIXQSHiPFI0QDNQpftaRYysL3hAedvq3FMmAnRuE2Xs8z085RgOKE',1209600,NULL,'2018-08-30 17:04:56',105),('0H6gmHNpfq20YCPgh5ygSeENnO4xCSN6CVkfs3ZhYqkVZvSNjGGdTIh5pAWXgvcY',1209600,NULL,'2018-11-29 16:28:41',261),('0kxt3d24BmXaTUEX3tsHcFFD83vIZLyBAIu304437JHj4T9XqDH9imtYeXqrDSEq',1209600,NULL,'2018-12-06 11:57:54',52),('0POtXw1Y0ZIRZk1JlKwlodqsogN7aZ9XGMtEKM729e5FdIO2BPHylZ42VmtJmCHb',1209600,NULL,'2018-08-10 10:24:40',52),('0ZsrVqGr9WfVk5DjEbgJu9ng8hWAcdzIBYd18FE9kdqrKy0c8shYas0HdCksu0OR',1209600,NULL,'2018-09-03 10:23:45',52),('148SNDXZWM1u9fhxd5oGq0FkxCHLX2j9edGkJQLwxeAcHCvCIGVPiTxrMApmg1zM',1209600,NULL,'2018-08-24 11:00:03',52),('1IPTG8IF3OcANa7IRBrB043xjwSbIs9I4iWQNSqAuFN849Fs2grvwuukotjoLltW',1209600,NULL,'2018-11-29 17:17:47',52),('1ldmZ65Lo5SdSx0c16dlsBH5tno1mLJct5lBuf9HS3aq6Q4ZUxR9DPdFvIvFi3zE',1209600,NULL,'2018-11-08 12:18:54',52),('1RBzdXHbAWvQsQF3hNY0ghlTeR1Py6CeazLGABHqJWPLuEIKZOebj7BHMLwfwegC',1209600,NULL,'2018-09-12 09:05:05',171),('1USF5AshF9Dg0BVo7GlXsuSD7VSnAlAsACtjml8hsADvCMCWcZ1vDY4P4LJE1xbX',1209600,NULL,'2018-09-12 16:00:18',52),('1xerWEy2OchHCW8qm6xV3FITgGPu2KbW8yVVC3m9Z6hYH8k5MpfQClm3XanWj43N',1209600,NULL,'2018-08-10 09:53:47',52),('1z4QcCsjAdpB4wjcXXj1lD6cM7M3sRk9jHMgCSJrFO8Aq1lT5lRKeiHgl8k27yVn',1209600,NULL,'2018-09-03 12:38:53',52),('23ISxVwz6Zh8s8O8nMpNck9CFQPfVdgfq76VPLFcVYC2xz8GAWde2JrJF5dlsbfH',1209600,NULL,'2019-02-22 11:14:01',542),('29bAet5K2KXZGSQ5aIskA3muFrm0I3F2i9Gsu5wstEXhjph3GuGAcCVq1VLAOAou',1209600,NULL,'2018-08-10 08:44:00',52),('2CttrVk2ynZ3CQRx5rDZna4kvzSp0lw3U2KhYAKUEOAmfY67VydTy0OiyCGCSSx3',1209600,NULL,'2018-09-03 15:36:18',52),('2WDUjNOHrvssZx4ufLl3vIM2BGoB2nBmmAzULD6Lnq9Q3hIsG4Kag41h5RHWucW3',1209600,NULL,'2018-08-28 14:02:02',105),('38kakLdHTiALrTKoT5FBwnC5iOboW2sbOfqlx6GPQDHaASrCqUXJgP3esLftCEDr',1209600,NULL,'2018-08-28 22:22:03',105),('3DH46Twr6TFf6KsRyCrei9wcnVDODhnZ9PFiEDnpkOWsH0HGoU36qAKTmvI00x4z',1209600,NULL,'2018-08-10 10:20:20',52),('3I7niNPq3bD3BN6rcP9VBzB5mkkawtp9g7IbiYRKIvtLCgzwQuKfvAvvzSrCvcsi',1209600,NULL,'2018-10-04 07:29:36',52),('3jfDgcKIOWAp5FA0k2SUGh7ADCGgTuJWAH4abe7Q6IjJNGPFPeDLCkqZ6whASABU',1209600,NULL,'2018-08-10 10:13:02',52),('47WCQdZsie1ZUhtroXtQB1U4sZcxG7jOErYKbtEKHgBA0byP3MHlyWk0DcJ2ZM6M',1209600,NULL,'2018-09-28 11:13:54',109),('4JevldzrWyv11E1m3N4gWCg0DCBmiqcFMDqnOGpuGqJXhTzuC47z25loPW97AXCG',1209600,NULL,'2018-08-28 14:35:50',52),('5MYsnEbuiMxrKYRbwZs9KqUXEhEnEolkmOJeNDn1zQQgXYAW90CSYoUEZHNoG3fc',1209600,NULL,'2018-12-06 18:26:58',52),('5Qqgz65gI0o930EAOnXgkBKhF8IFzw6ZnMkvuSJ3YD9pJrcichnRo80jFAwaSlqj',1209600,NULL,'2018-09-10 10:14:46',52),('67pxcy6b9aoX0VP6A98rHKGZwCCnuL8ZxYpUyUi0NEPFNPOAXxJpdbvGM6IDlfaQ',1209600,NULL,'2018-10-10 09:59:07',109),('6OAdKGC7dE8Wjnv3oxWfdfOa4tKxzxoQt7di4dhgXWCHtxBCBXG8To39bVvXyOBT',1209600,NULL,'2018-09-23 15:38:23',245),('6YePicOb6OZxwgsC8hf4W8AKKzvL96wr7AwtFIdje67d0ygJLsu6dDkMlBNWv8Mq',900,'[\"reset-password\"]','2018-11-08 20:26:32',293),('7A6y1GviInay4OnDF4zrHqLsSvZbAupoNIjHYcDoo3DRFqmBsehi6PLFwlSK2VYm',900,'[\"reset-password\"]','2018-10-22 14:03:25',56),('7fB1vuSaFY2D3AyiKbSy8IpBs8dmwxgIjk2JqCHKkKmfdpIPJSO4DG6jbRZWeyIE',1209600,NULL,'2018-09-10 10:14:44',52),('7JDR6KCkmgWCdhSYOVCgV1nxLovAJL4WxsRkP1BkMIdptFrKzw5vWsh0GCH1kEgz',1209600,NULL,'2018-08-10 10:12:33',52),('7ZANG9cSS9NFFYcR8Q77lesEsk39hCdMuB66mHAcyvFKmdZIdZwmi9TME9P2XcxW',1209600,NULL,'2018-09-15 22:15:44',52),('8B5XVuAqSi70HV4OGeLK0BkEThDM3JiBP5ShskO1Gb8dEAgn59qYhbWajkKpORw7',1209600,NULL,'2018-09-03 15:22:19',52),('8LA6e2b2Mb1u1jApxH9zaRyeFWCI3ripWOyPrKGiMcwyVbDj8MsJ9xMAepi2DlNN',1209600,NULL,'2018-11-01 11:29:40',52),('8p52JIwdogB9Ka37cXIEV6yE1xItULGXCqivzjcEEkQWSPlwOm8lrgRbzOWVGWYo',1209600,NULL,'2018-09-05 06:14:24',52),('8tGL6CLUvfOMffJp5CFH5PBLYJOZBruNLDe1BPNhgbHYek5I5peG0DKmfWtlKm5Y',1209600,NULL,'2018-10-10 09:46:20',109),('8XioFIH09DarXewe6hGYB6gjkEfNABMFTjHJht9E4rIPRpUarCuHf723BMRvX2Jc',1209600,NULL,'2018-09-11 09:32:19',52),('8xWLokOJDmM6IcIVDeGUjCmOx92ugT2Zzrk4mYqfp9I8E0N46Nv7YL98StYSnAxF',1209600,NULL,'2018-11-29 17:16:27',52),('9BvOqWtulMoC844DZHjVsTvt79S5BinGz0e0wwAuqaGf8BCu2iNqMVEnLzBbZNVh',900,'[\"reset-password\"]','2018-09-04 17:08:14',109),('9R0DWtcydGl1DOtsERuE0clQIv5QJ4w1YNHqfcCpQZayE3NcddZZl1qnsg0F8Olp',900,'[\"reset-password\"]','2018-10-22 13:59:29',56),('9WDaKFe3kixq6TMS5S4gPY50aHFr8GmdZLjgQbSptrBfT12MpjnYVCiwp2aQnghU',1209600,NULL,'2018-12-06 11:58:41',52),('9zPUjexjcsWYNBw0D68QfI8dPxWswYXfIpvOHba4C0CaVlIvZ1kGt0O6nPMkRFjO',1209600,NULL,'2018-09-03 10:23:47',52),('AHpPumWQM6cpsISnHuadngnHDzKDzx99ZxUXBYlhhj10BwOcemBlfoA1Dj77xPW8',900,'[\"reset-password\"]','2018-10-22 13:56:40',56),('AsKWpGFFWXDW6iXkJmwY5tocLzKShes6MIM9FF7ccBVcp7kxbQlj5N5ctosCOVEB',900,'[\"reset-password\"]','2018-10-22 10:52:24',56),('aTPpOyCVtQfXGioEYXL5OKRZK8hkowjbMqsTA37kc38ZrJcgkEuik0mUaEE6Ix86',1209600,NULL,'2018-08-10 10:10:30',52),('aVrQFwFVR0MnCkf8mjROdvrTb8632u3ehSQ5j7SCRVjec9ldS01gupkUiTfFsuAr',1209600,NULL,'2018-09-28 09:51:03',109),('AwbZGG3e88fD9HCZuTpBGltjWEBGHCy5xJFQzrdnvkOEZdngM7DLui9OSYyt4xxd',1209600,NULL,'2018-08-31 13:37:58',52),('AyVzLaxwwTB0JGei6BeArx2xFCkvMbHWlGwPT9smbb3HvAfQv9wntvHIyvAmEto0',1209600,NULL,'2018-11-08 20:30:38',52),('b4gypOIVmmDTvkeJEDvXRZVqusi2J2dzRifEC6CmOErnUs14THs0ptdAtKrrmBCs',1209600,NULL,'2018-12-06 18:04:07',52),('BBEBfZwtsbsdu30SUSapfRAxrxlRY0XQw3HaeCEjReahdvTFXAztxUHLfiCP3ym6',1209600,NULL,'2018-09-03 12:38:51',52),('BEAeeFm9vvGzfpfVyogD50jHOkFlwqH8GbAE53pPpCsPkWkwUiz8FdqH1kwqQp5L',1209600,NULL,'2018-12-06 12:01:32',52),('bIZxHRjH8m2vc0LkoFzRJCMPGmGcQkLkzCwY4s67gu8I0TwpbqxNGCFGQ55Bxxfo',1209600,NULL,'2019-03-27 20:15:58',542),('bjID6TbAqihR6Hyk2sTcwfDmtj31LYJNx2TORcVxjZzBHnlgHx88X3FuPttw9U0e',1209600,NULL,'2018-09-15 16:22:44',52),('bkRwafiFEhl4CUMbd0OEhuGYLOUW4HckTgGSTDS72vQeVDrsPksdHEAO0iGJu8d5',1209600,NULL,'2018-08-31 13:38:51',52),('BSSmiQbYYVDTBjVEfC8qIxyEyb00HJ0VqibDdhGX9MQdEx8nSaQvFCfYA9xJXku1',900,'[\"reset-password\"]','2018-11-29 16:23:43',260),('Btw4hOEDgLe9x7ItAgr3sUCFN5TQNvZzyhC6dhWPBR8aocwQSQQ5C4fVYSA6jJn9',1209600,NULL,'2018-09-12 09:04:35',171),('BYcql4Vs6KaDBw4UHSqlNUUOqJpkwMFL2DPHAZ9Kr03pMHBSG0g3yV5FUfdaVY39',1209600,NULL,'2018-09-10 15:11:20',52),('BYxfFDzj3XJQtm0dEQaRzBkGGlqd2hmDLMp5kGHceVFbNeFOklEaP3VIR3KMDWL4',900,'[\"reset-password\"]','2018-11-08 20:17:00',293),('c10NoOEMKnic2K0BvXiE18QXu2tdsVQhpBZKdlOJC70ridbQ0ZGUL5RnnDw9klso',900,'[\"reset-password\"]','2018-10-22 13:15:43',56),('C1SzjYRXoInlXDYMGlHZSTR4dLAPf7NyDaUNR0esGxN6iQZM3ETGAuaRRC58NvGG',1209600,NULL,'2018-09-15 16:22:03',52),('C5wCjB1fJet1j8vOrQbLPuHNxJkpGoLN3S1YOJyaJGNGkktJecR3OHDTI8l9Vgke',1209600,NULL,'2018-09-16 07:25:41',52),('CaBjCGdA4G2i3WJ8h2pOGGXMLvdAu9tfFR4rqGZYZbCm0TGyCDBrpp11RZf7resB',900,'[\"reset-password\"]','2018-11-08 12:17:37',289),('cD5Mt6XLrYJz6YggsioBlgfYWe71Qahd82JAgXy0BHlAdKiC5DFqn3S6dBWJ6YT0',1209600,NULL,'2018-09-15 16:23:21',52),('CfB4IsHqB9VkxStudjGc9gG1GHTZ8bCGfKGChnuIGaixV3jW6AJw6mtIm4seBfwr',1209600,NULL,'2018-08-10 10:23:39',52),('CIHtGmiYvOt2m308YHgKY4AcHHS2HMC4lEVWojZvDiCsELeMG0D5CFQOBwfxXofj',1209600,NULL,'2018-08-10 09:30:12',52),('CmvyEMndPvIa6oAIUdz91Hyx0t8bpSqWvunojDjkWgl6O4ff9w2ZSDIa8vWvLdlq',1209600,NULL,'2018-08-31 13:38:51',52),('CoP5UGQH14InHxGSMjQLgv5ngnBcqjjtGJhxZk4ibjxyWza53RWl4FnbupTdIbtQ',1209600,NULL,'2018-08-27 13:09:47',105),('CSFFB0wAByI6WbHHwcpMFBmlxzEH5WGAGLKIeXZ0AYYEyeQun1Zwr7Cgr5jqmfuY',1209600,NULL,'2018-08-10 10:17:52',52),('CYDOL4zmMG2KhTUKu6R9PjbFu44I5aRABNYgkCBzNVk8ygYdjx6i5JSRHeAAQyYP',1209600,NULL,'2018-12-06 18:21:32',52),('D6KzSPJjESZmHBq65Qw5Tde9IANtFnn0RljgYKxWFDE7ANPJAvgnqtuq4fx5ATFR',1209600,NULL,'2018-10-10 09:51:14',109),('dIH4psX46NwUAbDHldrnzfNrgEcMFBFCwgTdo2aTS65qUPco2GGWsss7wDGXG9oy',1209600,NULL,'2018-09-05 19:01:01',52),('DlC0gO9gZiGNFsbwLFrRCFaqr9FZkEan3N31rFGr8Q5MYHCwywQ0ERZJoq6qfcBP',1209600,NULL,'2018-11-29 07:05:40',261),('DLj7XuHeicDlOosNxsQmnElMDIqfbNfGPUWpWakxAbIgCaji2dtIv0IPdCfBe0US',1209600,NULL,'2018-11-29 07:04:43',289),('dQM4HsCh0GePuTDAltBKjepBjv93wYR9ciAcwTkNIsBK9tUv0oWpQUmb9jE6T6Bi',1209600,NULL,'2018-12-06 18:27:10',52),('DtyWreAN9e9UnQ1whqgsCZGmigfDEaugMKELBfs2PDX0msgo4Xyy5LyN657XiehD',1209600,NULL,'2018-09-05 18:59:22',52),('dwiBaZsoSNrzFcolvtVu19dD9TBli1Smpq9zqg6U8blD9VIHc07ZGlLhtHAbfVsp',1209600,NULL,'2018-10-04 13:10:50',52),('dwO6GgdCPUHsvNV6gVM3wcocR59EAkUqlynGRWvgBn6lvLI6oT1DGXazOqPvBJH4',1209600,NULL,'2018-11-01 12:03:30',52),('e8epeHt6TetwAq1fumlTrsOhSHQZS7o0egkl56LGUTTcn8OaVKaYoBhLssQA8Clp',1209600,NULL,'2018-12-06 18:23:37',52),('Eb4yT90V8MdI9t190knb276Hc7OFj1GhkIut5dpwGLkZWuve1AbEuKl3BTkXC7IF',1209600,NULL,'2019-04-25 11:38:15',538),('eDyeuLdy4GEUgV5kLCNAl0gWDwkwFPFYSt1fODoWlI2vkqfBPQwQLQFzrEXJY8hK',1209600,NULL,'2018-09-16 07:21:57',52),('EHNKXH2SB4L60yLR7vYaGYUS1FWyHjpKs1fsGXrtzpAyQlWFGJHOTs043pS0tu8x',1209600,NULL,'2018-09-23 15:39:31',245),('ehPauIkPjAVJ9jBFcCJ0QHXs25bUMveG4wLFjnqwOx4QYgwzwzd9ykFijxrkQvYh',1209600,NULL,'2018-08-12 07:37:11',52),('eURnSvzPRt6uxGDw5pYaLMCYxJn3NtmyR1ZmRWNfbCwY2EM95ifC6DFHDvivldrL',1209600,NULL,'2019-07-11 12:47:16',538),('EX7TBImgSWDpQRxlZNiujaTw9zA5OGnNx9Bx2fE8hUNyU2V0Z6jPefs7nqhtFReq',900,'[\"reset-password\"]','2018-11-01 11:44:41',259),('eYnaIishhzRDZ8FXCyNnADoFxE12J5XI5KMx3gV1gJoQeCvH7aGoa3ijHdmv9TaS',1209600,NULL,'2019-01-08 07:31:43',289),('eyxa1VRybm5A8zReHS9zwRuxAdPBx5XbvnI0uatrz1x0oG91LQ7aEsD3OH6vpjED',900,'[\"reset-password\"]','2018-08-08 09:18:24',56),('eYxLd1xTiPlJb057ZywP4FFjyungrkeAZUwXkZRa1T0JLAHvdZhpSUukzB7kecak',1209600,NULL,'2018-09-16 07:22:01',52),('EZNXt3Jwp6QhAn8dnGT8hw3We4sKDSgeziyvt2dwgaqWICB7W9CPkoAlLeUA8no4',1209600,NULL,'2018-11-29 17:16:24',52),('f1mLrkB9JA68dADrVGTe7xGKuMI9zWrC35nhyodfNtzhBiNY9KPr4qy88NeuCoEp',1209600,NULL,'2018-08-28 14:35:50',52),('FBFMOQk6gwy5w7TRuMVNLOSNwaQghQ2gGrUAH6FQPT5zjAI1ymP5EBugiyP9YNec',1209600,NULL,'2018-08-31 14:04:25',52),('fEBsjApCqMdcAUrOBWGDHUy1pmp0D4fNxBXnvtEFnKRH4yjErmxnrXN5tTJXaHrM',900,'[\"reset-password\"]','2018-10-22 10:53:53',56),('fFeTPHh7bHROsokciOTdyVv17DI38QQLt8E5W5M3kyy2tCU2Cz3Vc0T239LpzzuQ',1209600,NULL,'2018-09-12 16:00:15',52),('FFolnyMnM8aEQrRL4cwL0i75sSV2UHbkwHZnjkCH0S5RyvhlJeLP7JIJyMtrcSY4',1209600,NULL,'2018-09-15 16:22:01',52),('fGuDwxdK2tFcn7c133VBtTzRoRLmz4VEnAkiO4RP03QkbZmp0pFUOAzSpO9O1ZjI',1209600,NULL,'2018-09-16 07:25:48',52),('fIcb24pHIWLxScy4WPlZzwLzQHaAxUHx9QGzicB4KMVBTqqbC645PEHiZdjAHQg5',1209600,NULL,'2018-08-29 13:36:56',52),('FSw1ysvkg01gQte7P5ipVJIDDTfs40sOizkbHOklJSAWouFiS08KJVL21gEg7Gvr',1209600,NULL,'2018-08-18 14:25:09',105),('FT8vMqUfX3hBLjN1hLpmsOqcgG9DLaFhe6wP44ijXqU2GXaXQt9hqbb8XJdVxCeU',1209600,NULL,'2018-08-31 13:37:58',52),('gD1DAZ2uh55nQhqHLtH1uVky7kpWxF0uLI09gtwo7BdN5b8kOiZWpqKEYTIeuYwf',1209600,NULL,'2018-09-10 10:14:48',52),('GIUGliEnYGAtlLI5MTCuZeHogsn4wn5WbFkNLXtvAQHVyLULpB7noEscYAmCVHu6',1209600,NULL,'2018-11-29 16:29:33',52),('gKaXPkyaG2wLE58GFfknLhSCMj7h76mk20czLDtKriSM0t7bka7e8t9bQNb6g142',1209600,NULL,'2018-08-24 10:56:19',52),('gpFl2hsZD8U01bfaH9AIYC6wZ1Qdta0LcCCDXX4jdqfqKjYHbvuWP3C8jxxx5dfG',1209600,NULL,'2018-12-06 18:17:32',52),('gpKQIEAhHAujbPdcDGRecwuM612pahaP5auGKDV1kIx3rcj6UDHklZaUcbR1dGFe',900,'[\"reset-password\"]','2018-11-08 20:14:46',293),('GXebHJeAeMYGkXEDqWdsIx3ma14JgsnVxn7UDONjp1lhUqwzj6wsHKkoNj5qSjfk',1209600,NULL,'2018-08-09 07:46:19',52),('H4dCi0oMutA5VMgipLvNFsB56zCff3J35k0hEoqNW9Dru2wqAh2GfuMB4H1F55Ft',1209600,NULL,'2018-11-29 17:14:56',52),('h5zUVFypdN3DojHSTeIpTXJcJDxETgEqsPiRVhLPsYEejbYtUMzZop9aDBdZmJYO',900,'[\"reset-password\"]','2018-10-22 10:11:25',56),('H86P6xQVRPOreL153O3gagQicW2hKUBnVlIvmOHzlExon9DtCPO0Sw4VyGSAANf6',1209600,NULL,'2018-08-11 08:36:44',52),('hbEG5hDHJvfqCbilzTHbpswOxdx3HxEYNfWImTFepxGSBgdBHYuxOoaL8CrzN7lB',1209600,NULL,'2018-09-29 17:29:57',105),('HKXvCbduGcsTu1rrW1WiesPDDXnM7GCOAGx7fLv37TqfHpbgWO08UNAq8AKqHW9p',900,'[\"reset-password\"]','2018-10-22 12:03:32',56),('HKYH33K4lfe6XWj2WZ8RcKsEgajndso00BA9Btem0B2dEZrmFFDjhGiuizbQdNHU',1209600,NULL,'2019-02-21 10:28:20',542),('HrSXzO81owqBC6HqWdUb8ccDQsC7CZTWPN1NBjzEmI7kzouoOEvIGTJmsvApwDx3',1209600,NULL,'2018-09-15 16:23:17',52),('hSyYEfVtraNDBO7m5ah3LGWoKBu4NCJdxK8oOxzy4PSFyu4exag1bEDKElE4FTHJ',1209600,NULL,'2018-10-07 10:32:09',52),('Hx1BdIgwiHBC7IEtPYAqGndLIKNt0G2nNyGfiPVLxALLwAWRPErj617pnTIxjKff',1209600,NULL,'2018-09-15 16:22:43',52),('HznyAJifC7tOG27YHrLopaPHrZtmwlcIvoMAld3d6eAYYuoFN4sIijfWpagBra4R',1209600,NULL,'2018-09-16 07:24:45',52),('i0bGtthxkqeSVwAdMBGjObMLlm8pXDp2t5jKK89dcxKpsyFGyQ4RCWYsJjsQfGLh',1209600,NULL,'2018-08-13 07:06:11',52),('i3Z23HEyqLTjqSW90GUXOsz0pbP56XIlATzYHiuVNOb3g3SV40vA0tGEjqioXdLa',1209600,NULL,'2018-08-24 11:00:03',52),('i7wQQcsJ3AyBDALoNRHXqCdLMI3aNxM82ccNx6KN3LuVoaiO6LvGPAU35U8cPfHA',900,'[\"reset-password\"]','2018-10-22 10:49:08',56),('Id5ZK91Ma564QWcYkqm0F4XNPBAC0EVjLahODi55RgSBk3STFg454iUMa4VWNKYA',1209600,NULL,'2018-08-10 08:27:31',52),('ihlaMDc04jRlrMmlHhObmFc5giz2Mmdsqb8dnH9GKSjChrPBiCkA8d18jFAz4D3E',1209600,NULL,'2018-11-08 07:50:31',260),('IU4zPhQqTHRIqDB6OLqEYiAVWOZpHCo8Qq3dAdfHgPXcLuZcJuoPhgjUJWArtBpk',1209600,NULL,'2018-09-10 14:29:39',52),('Iv8K9NjWqGa44dcp67P3ZvH6UZbjtePNZBJiAeSbmPiZxUZKd5LhVJQH1KiIRMTk',1209600,NULL,'2018-11-29 17:16:04',52),('iXt6RguuF8SI7GOStzIvAMKB00v8RXYlsNFkIY5ULET2xZ1CvbCNFBMPJbdhXJhv',1209600,NULL,'2018-12-03 14:35:00',52),('iysDitOOg8w7aBWUDPGQnojk7EL2DEj1wc0A08Glxr1FeBKVAJYTrUYHDM0pZsyF',1209600,NULL,'2018-09-05 06:14:25',52),('iYxboL2xPbYFdlbqhBC3rkJ3I4DRdh6vKglN5d7ybnnEEFjUORVjQpvdxtPWhyVs',1209600,NULL,'2018-08-11 08:26:10',52),('izxHrWqGRQuqqIiCSn3FgdFV70vRYQ7tii1wpqZvnm4mML28t9b4Bewr4pHj3QBZ',1209600,NULL,'2018-08-29 13:39:33',52),('J2sKXmZD0ARk5jZNeQaNlDVE7xm8jCUIvqaUzCEo1JvN1HbKy2Z2SRxZkejqpj31',900,'[\"reset-password\"]','2018-10-22 12:06:43',56),('j5ysvgGuobwsRH6CHcJlfGdR9mFBgnrAEVbXHb7kPEyiMw5PGtKcSZLcsfDiZZWu',900,'[\"reset-password\"]','2018-10-22 12:13:33',56),('JCFznMoR2deH1Npxglr6C36tTTj0p9OlSWCMEW9XfyV2wGu2hvaBPjWKID5OZGEi',1209600,NULL,'2019-01-22 11:59:37',539),('JECDB1ubi0a7DoCgbhKUyfNAqjmmqkUayyAHQZstt4q6jDqcAwKzk27dXjobEwoI',1209600,NULL,'2018-11-08 10:30:22',52),('jFelXYHZb35NHLzdndAAnqk7PQUmhW0m0wcRZU4k40YCeFGAicGmdxquP4hoVkTh',1209600,NULL,'2018-09-13 13:43:42',109),('jJYoHb0O5q77js33AaisvTBrc6yqE4KZSv2GaBS4YVpeBEszEj76elIjf4FPmjwp',900,'[\"reset-password\"]','2018-08-27 18:05:13',121),('JkdoIJLQPiXWegRoFxfsJyC6Rl7ToNSZ1Ph3DF43cPThPBuzAqzQldeHUpDxFhDk',1209600,NULL,'2019-02-22 15:21:41',542),('JnVAWa0sh0Ay6ffEXgFrm1CZgfYWz0blohOwZeD7hxhpdHaAstBcDXIn9HY1D01u',1209600,NULL,'2019-03-28 10:34:09',542),('jQioi7Rdx5f6Na39yebGed7uuUTlHUplfglCF4FH96BFHywBn7QYLO3E6HlCIY0A',1209600,NULL,'2018-09-16 07:22:03',52),('jrARR00FWaCXlaEs7J9tb6vuaY1dUudX8c8Rsh2nn2oBm5CB6uSd9XvTKhCqvPLu',1209600,NULL,'2018-11-29 07:03:51',292),('jvTB4bD2PRMmU8WUPCCTtauBAronqRMGOIEEK4eXvbmFjyOT6XvdCCyI0B1hHgpp',900,'[\"reset-password\"]','2019-01-22 11:43:43',539),('jW3DXuNvuXwyiNbZ12t5qtAynBOFMXMJaU8D2SsReiMhT5QYCNXFOAvbOf49yckn',1209600,NULL,'2018-12-06 17:57:47',52),('jw5OYZWPMQCn2jegIMwETMFqGpPFkwCRcQVZnPvF4CZ3CovtbJ2NmGUkMkWsSo4x',1209600,NULL,'2019-03-27 19:31:01',542),('jww8BGeX2iGbSE1SS40wSDc37GcQt54TVpvAc2VJC7Y7WGXe64M16l5cDgnb913P',1209600,NULL,'2018-12-11 14:25:30',261),('Jx8A7bpkfnaA1lVhOwp6AvtiH2vdCjyMAEWKr9R50WKksBiCRdO8MmULNWuAG7N9',1209600,NULL,'2018-08-28 08:27:53',52),('jx9EX6V2yc2ScRHLRdAG0ebfJBfmlGJ0DoDlcRaSbnUlT6eBH29ERvvq5qHSfkum',1209600,NULL,'2018-12-06 10:39:23',52),('jXGTOFJCDR8qMMwNhpo62yGLC3ANjfQQIaIciOyNMTqPHMDIjChU9zzovqQ9GZGk',1209600,NULL,'2018-09-10 09:45:00',109),('jzzPQAOWG3aApVCl7H6T9zLCkRrKkLfJLEumxIEgdezLujEJ9HOHpCtOTxDtwy5j',1209600,NULL,'2018-08-24 10:56:24',52),('K1HVM7zpnrdXXOLB3wjDd1o2iqa5AwzmcWIZ2hEDHp89sx8MUEE9l4ft4KNgzVBi',900,'[\"reset-password\"]','2018-10-22 12:07:05',56),('k7eY2kWUTUhRAPWG4KB0EARFBtgOGV3zKzS3DGibcqAhG11TuNBLFHujY8dSlxbi',1209600,NULL,'2018-08-28 08:27:53',52),('kbbB3rLAWADuUv39L3ZM726FRxYaUhJCfm9NYAxDBhUQBvBkEzKDzlpcZGS3nxGB',1209600,NULL,'2018-08-10 10:23:48',52),('kNNU0KyBUYaLk1iDXPwzeYFt0DrLqsNeRCyqP2zaFVEFYswCWryWuf4gMOkfTjHA',1209600,NULL,'2018-09-16 07:22:05',52),('kvBSDWHG3VjdB6guJfhWxzZ6J0DqgxX4YaMfByPNnXiQs5Fjj2irig4BeFGp402k',1209600,NULL,'2018-09-14 07:02:59',52),('kVVIil8fA7FsDv5ECHbVBUGGttYsVTWDVo8xXctdiinyKxVl6bFR4UkhASNTFrPJ',1209600,NULL,'2018-11-29 16:16:03',262),('L6PLU54lxSqLpEJlgxdMNDWmx4tYugEWMP1r2CMaNr0XmIiYbXhetEqY1oV4p2rB',1209600,NULL,'2018-08-10 10:09:50',52),('lCj4cW5OGqZ6UqkjqjiJX6PnmnDVtleiq8CADQ0bYCVwDcemrD7FBDdPmYofThm1',1209600,NULL,'2018-09-15 22:15:41',52),('LD7hwIDwjdYamTEEDpEI8e1ruXIeMBmgbBdXhDV34QAOrBwvICWyUCk9rgAw2X1n',1209600,NULL,'2018-09-28 07:36:18',52),('lFBCFv5qcVzTIwi29EBIlX9TBhCnH6vgMi7Y6AKx6soLk49W92bFUL7Sx2hToHzv',1209600,NULL,'2019-07-10 18:01:31',538),('lhoWY7a0tsXBon9rz93adYSY0Rh2UHs3b24Q0bO65TmrvihaxsnxVL7956plDjE6',1209600,NULL,'2018-09-16 07:25:46',52),('LLA4QuxJwtitWPuGKzEMU14aFoGlSwx8pqGP4YIF9gRnreEbS67fHNtFtPmd9jp0',1209600,NULL,'2018-10-10 09:22:31',109),('LngyijAuT6ov2nPRwc0yFJq0QfeF0U6wjCmKW93IsylfcLl0byU0YBfkw0iHxtBl',1209600,NULL,'2018-09-16 07:24:47',52),('ltzbeNrQCoKcqhzP0V9MpdAlzHDP1mX5gg9nkba1CD04BYMe7i9TdANrUxY9jkK1',1209600,NULL,'2018-09-16 14:39:09',105),('LzaZiYKmVEfEmlVIcecmsFIm32Y0L5VFzvGYFBTTzeKgpHTZSHctUkDutckeZlVB',1209600,NULL,'2018-09-26 13:28:23',171),('M4vxKhGNFqZtNBGdZ159TIa2JSbIVowKLA0AJa4DhC61v0bIQEVqWouca6Eyoapt',1209600,NULL,'2018-09-16 07:24:40',52),('M6UFGS7iJgUF4LZysYkMmsUSGgEkBCAkyF2iahc7G8yTi0JVFe8klCNLPQ33zTVz',1209600,NULL,'2018-09-13 16:22:45',109),('MD9YwpJELEBkWG4wqj0iK37Y9jcF1MebsHNoEy5BEnOSr9DGlXAkxCzH7qJXyc0d',1209600,NULL,'2019-02-22 11:27:40',542),('mHFa7kGoR3P59Bbb8HGoAfyeiQmTaSrnY5lKxbB4DAKPVUYtWHwPM21K262TYCUY',1209600,NULL,'2018-08-10 09:46:52',52),('MlX1qplVpiqmjrdfJTH6fNwyzBKNjm1yGs9DJHJktzh1dGodoP6uyqwPubkCplsM',1209600,NULL,'2018-12-06 13:51:28',52),('MtG723PeMajMWgZ6NhvRQI0jjcvNM3QMAwZnttX59v6R078tadQRJKcEhkVCIH8l',900,'[\"reset-password\"]','2018-09-24 11:34:36',245),('mV8hDurXm5vVuIhSSfi6dqO7SlNvtrIGknyLeadDl2b8juLa7k5ZPjp8SbG98xdW',1209600,NULL,'2018-12-05 14:03:14',52),('MzkHuqrrE8T9Gl496ELGPoBxVNEh7DmR6ex9BlKNZjG1OXcxMBNZStCa3LJj6VA3',1209600,NULL,'2018-09-14 07:03:00',52),('N4LrO8d1vf8J1m9C5UkE8hySKZ8gArDbHKcabbdiXeOQYcssaL5kwWn3yexDEsCo',1209600,NULL,'2018-08-31 11:00:41',105),('N8PGcyowFH6h6uHNXGvLmCJFkKxkGie7e8J6uqdJEhzq5CksVW2J7UhRyvDACCUU',1209600,NULL,'2018-08-24 11:00:01',52),('NBsn0P3lZq5DL5YST76mCndhLGHmphzEtVrvB3iZFtTObEHOEwGcqTOP02ZrkfmQ',1209600,NULL,'2018-11-29 17:45:01',52),('NCAJ9FhhWCSkzq0bwSUIKN717RjrxBmoRrGY4AQnNkjyCH19vi3GiqZRYTH5X9xT',1209600,NULL,'2018-09-15 16:22:46',52),('ndn95Hii4ERocuShmNgH9rmxvkn8s4zV4qSSHFcntJyViHgVENkOnUp3OYLQEtCn',1209600,NULL,'2018-12-06 18:12:30',52),('NFWECwpddxiq0oRgyU88YhyIhLAdiLmDfEFtwEhreNXfTeZAoAlKfAeb9VwGoGkm',900,'[\"reset-password\"]','2018-08-18 14:24:05',105),('ngjRISHMPkRSUGjVtiBpT08jvhiGPM1qcM0qDthysvMuzz6kUNlpah8E7lIQPPgg',900,'[\"reset-password\"]','2018-11-08 20:17:45',293),('NliQdizCnoyj2ZeDDzpHjCPYDzynBc6LZAqEcGVfbHcdxTQQCGyh71N1HAdROzzw',900,'[\"reset-password\"]','2019-01-22 11:28:55',538),('NRTmWAgA6eI9nMNTpOBmORXLGKkdnaAwniS5rE3ncmm1TE8vmQipuQSAF3C9fKMe',1209600,NULL,'2018-10-10 09:49:57',109),('NYCbOSk3VTetbkfLjvlMcL3g3uTUQCuD6TUwFQEJHUDXCQWFcSUAYCYMoG0y8v7W',1209600,NULL,'2019-07-10 18:01:33',538),('nZqxZ894FmLbAMGaAwuuVL1YppjTaPjQQoHeM6miWMiR2vYh4gOgUrbbg4iF7wXC',1209600,NULL,'2018-09-03 12:38:53',52),('o7KYM8C0lDYeIIlD2lQFxFilOoJolVnZJUqZhcYvGzBMTHSjrmrNVpvvaChKhLeU',1209600,NULL,'2018-09-05 19:00:58',52),('of1I9S0lkDmw2V2oSznFH59MVJWC3ROZ87y10joFTXjWLmNYqctKqg6BEfCHR70z',900,'[\"reset-password\"]','2018-11-08 20:23:28',293),('opLbXKxOOvfrNR88ILVMKchuY5eYcqO4K0HzstXvsY3Tp6HfOAU1rpQzJLHZk9PT',1209600,NULL,'2018-09-03 07:49:38',52),('oqaMXMrk6V05f9bPg6esLL9Zwwv22CnwSTTzuku9BOMgwZ2mc7kdrPNg3QvJMqG9',1209600,NULL,'2018-09-05 14:38:49',109),('oQzVt9GXa37u7o9uL6kAFzDRXBHzuvKz4MXDiXseVr30EctlglUSxndRqaKgdHmC',1209600,NULL,'2018-12-06 10:40:36',52),('oRYDZlJBbiewHGJzioGN4m19vEJ8Mhng1NxekjhxlOb7Ov3jZ1Z2XBOG7vSepBBd',1209600,NULL,'2018-11-08 07:49:22',260),('OSA4JvU1zyXrOu1cKDEzf19liIfdngYVqvB3l4mUwcoJoS6OHLODxCDHANgJRRWh',1209600,NULL,'2018-08-18 14:24:54',105),('osBlZ47VdZXlq71gQmVeVElvCb9LJWL3acljTZJElOtAmkBYPFXvcCqcygPFJ284',1209600,NULL,'2018-10-07 10:35:35',52),('OUdVRCkddjKTLpEhiOxIhG25BqjskqiwAFpazySbwbUr7IfLO90aJPY0QiTewBLc',1209600,NULL,'2018-08-23 19:33:28',52),('OYHl1e4nDSMiLrbae0ycJrnMBzVrCUzP77iGLVttRRq2e6aRV6muY8SjiQ0p2qXw',1209600,NULL,'2018-11-29 07:04:55',289),('ozDQtcob9DVMM0eOQgBFudnnysyIjS2y41O8ofi25m8sGJrs8wXWtBaLOLQ1fgEP',1209600,NULL,'2018-09-03 09:43:26',109),('P02ZG2uLanoGJaD8QtGdh4OG5c56e7zZLUK2Jr3rrj0kicD4jkvl5TovM9NUpGEE',900,'[\"reset-password\"]','2018-11-08 20:04:07',292),('P3BicP9domsg4NZgOYU2kDanBGMmStH1gYWBaCIzIgVuHxVGFazgJzFbRQFR52Cx',1209600,NULL,'2018-09-03 15:22:19',52),('pFFI1l3fHLkJ9sLadD2wMqFue6TUo37D0DiRNAPtIzd2yQJ8NQuF5jimDbBp7RZq',1209600,NULL,'2018-12-06 11:56:01',52),('pLxfo9YorsuBnxEylBsKJ7AForGDrsALvAC14f0G1WHLwj71RS6KPdUFBjTguoQD',1209600,NULL,'2019-04-11 13:21:42',538),('pSGqKVzUpOdEP9nIhx4ptZDLPgCe8hGI496CSMe7GYSPQOVFr7SNaWNMT8eMZApK',1209600,NULL,'2018-11-01 12:17:15',52),('psZCS0jvviZ6wkHo9qtG3ls7paWNe6ZroWGMYFCtbo71f5ylmDwmbnF5shkFqb0d',1209600,NULL,'2018-09-10 15:10:39',52),('PttbYBEE6qWxk1gkGnncXhimJCDCGf55Q3Gsbl52SHsUMvKBDF7DRGFVM6vzDrjE',1209600,NULL,'2018-12-06 11:57:22',52),('PWxfeUOGQPuRLKULCARYUpyiAkKzmuYEbboNFypbBkFusl6mjUlLvKSQHZdXfBJF',1209600,NULL,'2018-09-28 09:38:25',105),('q8S8V3CPdLfhBOC4FRGcCbIHApJVqVX35sn6uQAQpIFXW7IlJqLdupjbcCCfiEjE',1209600,NULL,'2018-09-15 16:21:59',52),('qcrFDUkZmlKQhPJ7NWqZDzl9csUmlv82zFDNg7P2UWtI3UVjVER4PmFVDIMVlJEL',1209600,NULL,'2018-12-06 18:16:24',52),('qGhRUOD2BLYwTbkn8dcFko8dAZnUC6JbdPK1JYd1Eq1o8Ymj6dovikJtgBuL0lVW',900,'[\"reset-password\"]','2018-08-08 17:06:19',52),('qi4llgQRNecGPIaTzExR16e1mO8Z3OhPdcYySs6tFw20sEDapLGVYd6GFjVhnrGA',1209600,NULL,'2018-09-15 16:32:47',52),('qIKYwLwpcTE6oRrgq0IOrBHRQPBnptAHubwAfV4ziC1FVuDoXSQL3lKUvAGRIZqx',1209600,NULL,'2018-08-09 09:22:45',52),('qPz9hWrbyxtwDAp6y6VDMn13zSUdVD2Ay1Y0N2Rl9ZlC6C561n7PRGJXiO0qsTMp',1209600,NULL,'2018-09-15 16:21:55',52),('qUaCRvEs9gtskrOPuTeuNnAKye4C8uRpbeqj7FbsLMFxK9d1UaxmVLjwxINCrWNf',1209600,NULL,'2018-08-10 09:23:05',52),('QY3TfaKDml1e0NrYG8AFQ9M7xAhQdVIpvY4OLqQFG4dKTymaAuH0WTHFWf4KVa9b',1209600,NULL,'2018-11-29 16:12:56',292),('QZ1QadCkAVM2riPEbLO4zjAjGpnMM2wTXoCDfVB1vFVvlUmctnGvwAjBI3qt2Xcc',1209600,NULL,'2018-09-18 13:36:37',171),('rasmrdh799E0lD5qbmlhFKLoDTeQfw3hryN3UibZawFPSemp1EmE0ZJklG2v12z7',1209600,NULL,'2018-08-23 19:33:28',52),('rCGHF85zhQkeNo9hm6SMoqGcqacwVAjD3PFQpAZSvobQPqi2p4D68tn2nCZ8Mz7Y',1209600,NULL,'2018-08-10 10:13:11',52),('rHR8hClsBH3A9ss30EbihHHpk6hHL7yWHJDD1bHidSGvd3bfHJQfoDRGkzYO4Dw3',1209600,NULL,'2019-02-22 10:39:18',538),('Rpu6tZXXgTpPiFJJOozlZN8gUmuA9aAAXV9uAJnqsxCJeIL0VwoocsewVvo3p4pf',1209600,NULL,'2018-09-16 07:25:45',52),('RPUrj7PHoJpjQkufpiWbakLWHowcwC3R9iNKlFU2Yf8hnnG7uWFIZGivKDBsKjhz',1209600,NULL,'2018-09-16 07:24:44',52),('RqRDTf6IyqVxeL0Ao3HAJ7U8FBYIEdqqEuljfeukwHqh0Fw7hUnWyFTHKxACuwot',1209600,NULL,'2018-09-10 15:10:41',52),('rxa7DEIKU7XOYMhLhhdXJdvSpaBTieR0KEMwiDDF0jPX24kJDeuPgk5Nw0zqDMro',900,'[\"reset-password\"]','2018-10-22 10:47:52',56),('S0CDky5Av6FDE2zknX8QttyHC6mMrIDk2obBZuBoepvTF1IFrxoteeUkGJCROB9f',1209600,NULL,'2018-12-06 11:52:18',52),('S3MgkIqBNdU6HhaEydeemmRo0i8JBzKLyYYA4uMadQGvDieyyByk9ECCo4cU3WnB',1209600,NULL,'2018-08-31 14:04:25',52),('sbM3UaltXoETzPNDEJxt0ZVYGTvOnS3mqRs5ev1gYUxmMdewqgZ7QzDbTk3T4mFB',1209600,NULL,'2018-08-23 19:33:27',52),('SDbHumeinEZBNZUEWsGYslNhoE38LHrbzTtGgdKiq3Br6DVBKgrlJ5aMor7a5xTx',900,'[\"reset-password\"]','2018-11-08 12:02:00',288),('sdH5mWVparp0ISD0k7LpYWVonXZ2QBxe41rn26V2Ap0IrTFl4RS5a3NVS4EIYRY8',1209600,NULL,'2018-09-13 16:06:16',105),('sjCKdNoRHLyv3qh9dtvPcWHLMLBRHATqccTSJBn09RyEVZ6tbKtmmO7r27LZzrzz',1209600,NULL,'2018-09-15 22:15:42',52),('SMG0KpGtk1QZtdsRCdpGPWarpbYJ1b2yB1VNjbiHw7jBmeeQfNikcj6EEk13CQu1',1209600,NULL,'2018-12-06 11:47:56',52),('spOIX1FKdcNGUOHrhxATu3eIvqTbgIbpBAG5zU4M2895FeE9GIWyHDKCf4Hjpgnr',1209600,NULL,'2018-09-15 16:23:19',52),('SqDycxIiNklsMnhQ4x2M5Uw7zuxFa78MQtQTlKnWA3Y1C3BRpSbMOjCroVpTh2fs',1209600,NULL,'2018-09-05 06:14:25',52),('sRHfgPAsoUMBSz0aCFK8BcK32zq6a0Fs0v6PFqy90TrQJkS0Td1q4Gmgg3zowFlM',1209600,NULL,'2018-09-03 07:49:41',52),('sT5iQjtP7MKudaC1YV23S8HiyWTn3kaJgRqlovyMLjmyUK7M62FIBskVvypI2l6k',900,'[\"reset-password\"]','2018-10-22 11:58:02',56),('SVmgaTRG6xIP6js2lnAL56dmR4KxII9jUtjgxRvCeDmOaD2sMODmXIV1DifdFBkI',1209600,NULL,'2018-08-09 09:23:39',52),('sxOA6FP6vpmTTfCNNQesSdWxVvQJFN0NfzeTSfJmmucljBBX0Tt3nY77etZS4x2Z',900,'[\"reset-password\"]','2018-09-28 07:53:10',245),('szFWlBGoFOcMKgWv4nzefWVC8LbZbJCLrepfLHyBVULBmmFBnMlvgkiA1RH4OpET',1209600,NULL,'2018-09-12 09:05:10',171),('taD4RX6VwvdIwhEE3fP84YkBObiaAIMdgEC3WsECW0e9YIP7AKOq4V0GAHaBkjjy',900,'[\"reset-password\"]','2018-10-22 12:19:59',56),('taV4ih7YUFHcsHAqKoOn1RGJr9IU3ZqnhZjHwTDPhP8hWDeXsHQeaypu9UotflnC',1209600,NULL,'2018-09-17 20:16:44',52),('td7Y1U4sDr0RwTeIZOVFiIrrSH8LlHWpSdCACfad7vXkFTGNKac48TEcu8URPu7z',900,'[\"reset-password\"]','2018-10-22 13:55:42',56),('TLT9DopQgECnWCX53I13EyieOpBCUieYhgpzosfTzp242a3AQjlrISeCpZNTDEQi',900,'[\"reset-password\"]','2018-10-22 10:59:43',56),('TMEDQnGJYKOWf4EzIl8xtlbmYMmiYUp99dDrt35SIzf0dOObdtFCzQ82zsvdFEVV',1209600,NULL,'2018-09-03 15:36:20',52),('TqlnKCsTWZPgbe8A1cd7taLuIcqNOeKBRUAXbPuCLRLMmeKWy3LN4QApLuKIoWio',1209600,NULL,'2019-04-11 12:59:40',538),('TuGMI45EOJReTdrXWUjhZ1vQqnQQ53hts4wE7myykhKHgeGQPKKAKbosOQxEkEN8',1209600,NULL,'2018-12-06 12:04:30',52),('txZbAlLkCClHNmTHSmUIrUKCEKDeGpuWshZ6t6ti9iYg567tkvjfIPx6P3T49B1s',1209600,NULL,'2018-09-05 19:01:00',52),('u4OIiqlw5GrWlbVFndRd7ZCPXYGkEqXaMBqByfb0ZUogwPoDALjVKF8CXE5OBURK',1209600,NULL,'2018-10-04 07:18:21',52),('U7wKI4MYKhjGz6irvQdf5g7q5ThlkBkpVsPg5kZwb5MjoHkUCb6c0jfpAoGBFkWw',1209600,NULL,'2019-03-28 10:47:30',542),('u8m917IcF2QoPmK7J2a3vsv0NqvRGlhFvVuSovRr8uznAZ2tTIrmLkcmdUo5D0W5',1209600,NULL,'2018-12-06 11:59:01',52),('UAcgeHJItmGbommikBI848yHB7BFQ3Xup4RzncHkaA9vQ81E8olbrlJmZb7YNGFo',1209600,NULL,'2018-08-10 10:20:04',52),('UJBjM0XhonNmP0EidI3RAEt9KyNo2Eyo5IyWYoCoVCoaTjHJCNBa1RiFEpWLDEUY',1209600,NULL,'2018-08-24 10:56:24',52),('uJoLR73hZmPQv0TENbQI8LE8akgUVz2SD1gBv7EzatYOwRsE3R0bSCVw5Gfoxr2Y',1209600,NULL,'2018-11-29 16:29:06',52),('UPpHmK7PUJmKCpMs2gjb9hJ5jyYmQV4otLroDBCYBm0xzl8IrxwTWTW4o3zBpQ8d',1209600,NULL,'2018-09-12 16:00:13',52),('UrVolMshPR1QPP72HZFdkValHC6eaDlGvF2l3guwDKcz1q5tuD7CRDii888XqgOy',1209600,NULL,'2018-11-29 16:15:26',261),('UUqzT6hBpg963ekjDbHWGrNyRDm6lxs31sMU3bFGEuHtzRpA9iBVpksUWtE5HaBE',900,'[\"reset-password\"]','2018-11-08 19:45:34',288),('uzKCSL0tUjj0sQUL6EG3lRoCuNSRMspUQDvIQXvWJ1YpC5a82EfHAC8KmEFSREfR',900,'[\"reset-password\"]','2018-12-17 19:42:51',521),('v2DgnuCou2g69y5l07mKgb6Bac4o4LBMoCJf9OwddGHTET2ZrgWw6W74BDHNvFD1',900,'[\"reset-password\"]','2018-10-22 10:55:47',56),('V74ZDJqWKPKcAqmGBJ70WdrbYzT2oNDNAa3rj0VWgHxlKfLBGcP5tz9nvpan7hK0',1209600,NULL,'2018-09-14 07:03:02',52),('vKXOkNHEf279TPrxtmfLnCsrrJIkXYZCpKvXpAm9DG0FYeBC6RyyVeQkbgrIHFZv',1209600,NULL,'2018-12-06 18:26:39',52),('vl6GroSBsERCllxZp4IwCtUk1SHdPSBeoD47OkuqKPPYXXRCicXUhRZwSDVzOw1W',1209600,NULL,'2018-12-06 11:46:14',52),('vrBMMkLKId0kgrE0XXUTnMUzxefE3fVkbNVBDXXKnfPRqb76LWxB2lxGRLA1jxgC',1209600,NULL,'2018-08-10 10:27:09',52),('VTYJAcaWww3178RGGRBIZoSWJDw1IwJB2HNTDnmAPodfr0VSSbxr0t9bBeJSYLZo',900,'[\"reset-password\"]','2018-11-08 19:45:47',289),('VyxBdJDC7ouYp5BF7Mvnmcjvu6fykvNFGxqO1YQBceJX49P26ACw0pAVx8rNOIgH',1209600,NULL,'2019-08-20 09:48:45',542),('wAXM8fDmoCJKoWxoCHT4TFi9wljlj39GkWljYxfxWnxjL8Y40qwn7ur8FQM3YEHh',1209600,NULL,'2018-09-10 15:11:22',52),('wBtEnqT5QrpBig20QWbrqn8LldZnbCtH2sKb1GLirJ3SFXndfloKrX5XqISieJ4W',1209600,NULL,'2018-09-15 22:15:37',52),('WEN9sivWQe1hO3oOIqQ9vnE94xqzYbUkn0YZbe0WURAGq6SRep18GTmFn1vQQbLC',1209600,NULL,'2018-08-10 10:08:49',52),('WnKHarETTMuqpdI46FOClyDT1vxvpRXtnCVnrxDZyyjm7q0MumjFelRAiEwRCCdK',900,'[\"reset-password\"]','2018-08-29 14:28:56',109),('wp0BWnFosRO5zWyheYlJei4iuPk75HJrZO8fPI9vBuOtH2bF6oG9EsfCFEZk0jLo',900,'[\"reset-password\"]','2018-10-22 10:54:35',56),('WPcWcAaWWE9QyHvHOXArKCkuF7dBT54RlYrKAXvK1fayDm4YAyz3N4GP6WbOlUHv',1209600,NULL,'2018-12-06 12:15:12',52),('wSjygblmDitj2tbV36MHzFBKwWSEBHkkd7yTInFuv4MvZIlkY5l3cFRVMLfRqpVN',1209600,NULL,'2019-02-21 17:29:49',542),('wU4smhKkPrR3DAN4CvLiGbztaBHio0FnPuKD5DorjG94oNd1vDcbg5KpiZSWWwxP',1209600,NULL,'2019-04-11 13:19:19',538),('x9xg5H7j7hC9EvkAhdCwy5z7yTQHb7WOj41HSwqoaB4jdInL3wJ23QuezCndV8qG',1209600,NULL,'2018-09-03 07:49:41',52),('Xcu4BxCAfXaG21PCzbIFzCpIkLY024vjvJw9Np6RYQqTnCb8qp2tb9xMirLe3YWh',1209600,NULL,'2018-09-10 15:10:37',52),('xE98oRzGRd0lSdRLddaPfsvTTdd9CJ2AOWZwioTD00VxdRCL5WFXSlrO3jjJGBWi',1209600,NULL,'2018-10-04 14:08:42',52),('Xm8KTy2VWWqpMVkSRdzCglL7Lv55P4GmkFr2eh33crokWJuE2naenqxSZpkfbomI',1209600,NULL,'2018-08-29 12:26:53',52),('xmm7vzSynjxBWraSVoL0E1psOzUrCuTtsBHpaOrWItD4EIOOQfzQTYPukfWdf0Mv',900,'[\"reset-password\"]','2018-09-05 12:36:37',171),('xo247gDcJhWjH5mandt7NuwUXLrUsVuWoUp1wDlDnHQuXArADZnHYwrpHXwrS2PC',1209600,NULL,'2019-01-08 15:34:17',289),('xP4Dx3dRbv0ifpYTKQGwvFDrbuJyMTDv3CAC4D4mjQexEJeJWvldrPhQOCx834wh',1209600,NULL,'2018-09-03 10:23:46',52),('XsV6XJnrrvi4f6Uuoz6J5SuMmdH9b0vWpAfs0TBajDspVbmuqFBdqCxFdYjROAFw',1209600,NULL,'2019-05-23 18:37:08',538),('Y5eJL5dBTyklUp9pRCLvB32YUjIWJ02jIxQlllkwfC0nPg1mc0PZILfKa4ux1loI',1209600,NULL,'2018-09-03 15:36:20',52),('YfdcGXywzkJjShZ07cZaY7XFx42WQEm11v5iyARCZeS5v89Hq2WSJ1w70b5TXtls',1209600,NULL,'2018-12-06 18:15:34',52),('YGuv0uXBSMSx1b8oq0DgHhPHBjg2IG6jxVPco624c0tdcoCZF7YkHFmEXtxGU1Zy',1209600,NULL,'2018-12-06 18:24:35',52),('yhWpNrX0fiVSHsl5Qf9j50NViapB8kFtUsTXEq8d7STDjJbhRnacWB6YshGGL4uj',900,'[\"reset-password\"]','2018-10-22 11:59:30',56),('yn8z7yXWyxmlEsvFX9eCDQwDQ6jzJCgjAxH4wWlBDRYyQN7eTDOcx6zi8rLqx6w1',900,'[\"reset-password\"]','2019-01-22 11:49:46',542),('Yq0fCjYqd0T61rzB8oZ0X1FBWaMweLAMOtWAsKU9Ch8SejLyi0ta28W44BSNSZsf',1209600,NULL,'2018-10-04 08:49:18',52),('yUvXjPk3bot7Pc1eEwulEUEFjgQA2oNEGAww1QXGC38DfJ8oMPwe5jxNAtbXAmfE',1209600,NULL,'2018-09-10 15:11:24',52),('z6pEfOwHkET1nMMgcekEt6guCctnk6zpSMlAa77Fj1zZV8fzQgdAzrtCA9VSB1m9',1209600,NULL,'2018-12-06 12:01:52',52),('ZdFyNBD5vyvg0t9SbmEGsvFwBtA5Kcs6OaxeJVDlztFCIP6x8iKQDW9UeQe0Ly0T',900,'[\"reset-password\"]','2018-10-22 14:00:34',56),('zE8BMKcMOUq9ZRXC0A0Q3uPtSZocDxLm2CRbjkOaJwCqkSnkB90gJygncCckg0fB',1209600,NULL,'2018-08-11 08:25:15',52),('zig3DjEmYu9FAs2PLgyJS0Icw3BsoxGTA58ibxCYCkwNCskuMA5nlSF69BA1IsUA',1209600,NULL,'2018-09-07 14:24:02',171),('zirFF0bDiVaUDr4Nb2F0VfUmiRNLCJB2mGfhHjeh4sHCl0ldPZ61AhTBaAdg8St3',1209600,NULL,'2018-09-03 15:22:17',52),('zTrGsQmKGtD9YhDsW9ShWA5e0NVUBDYXGQl0yC81oCqipDmhuCL3fUbFmSOiJqNw',900,'[\"reset-password\"]','2018-10-22 12:14:36',56);
/*!40000 ALTER TABLE `AccessToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `id` int(10) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoleMapping`
--

DROP TABLE IF EXISTS `RoleMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `principalId` (`principalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleMapping`
--

LOCK TABLES `RoleMapping` WRITE;
/*!40000 ALTER TABLE `RoleMapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `RoleMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(10) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(3) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,NULL,'theotheu','111111','theo.theunissen@gmail.com',NULL,NULL),(2,'string','string','string','string',0,'string'),(3,NULL,'theotheu','111111','theo.theunissen@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-17 10:52:25
