/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.1.49-community : Database - ouroa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ouroa2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ouroa2`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10003',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10015',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('10017',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('12503',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('12505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0213t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15003',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0abct\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15015',1,'shenhe.bpmn','15014','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"borrow\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"Áî≥ËØ∑Ëµ∑Ëçâ\" activiti:assignee=\"${user}\"></userTask>\n    <userTask id=\"usertask2\" name=\"ÁªèÁêÜÂÆ°Ê†∏\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"borrow\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"305.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15016',1,'shenhe.borrow.png','15014','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0÷\0\0ã\0\0\0z\n≥s\0\08IDATx⁄Ì›Olïeæ¿q,f·b.\\∏0πw1ãª∏,f—Öπ◊π√ÇrZZbç“ b$FG	lpî‰í@%ìI4ˇå·¶V…\03¥¸i”°I≈aÄòC·‘^Ì\0mÒΩœ”p∏á“ñËüÛû~>…/öû˙Ô}O¸Ê9Ô˚>Á°á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä‘X∑n›œﬂ‹∞a√ók÷¨È]∂lŸ@MMMRUU5<ıııCØæ˙ÍïıÎ◊y˜›w˚∆o¸ã£\0#444¸Á⁄µkˇR[[˚Sj“‹‹ú=z4…Âr…––Pí◊◊◊óú<y2Ÿ≥gO≤i”¶$˛~ÌÖ◊‘WTTÃq$ò’V¨XÒ¯kØΩv‰πÁû˚i«é√·,∆¿¿@“——ëÑïÎOau{i…í%ˇÂ®0+ÖUÊÚgü}vÉ>H˙˚˚ì’’’ïÑ∞,]∫¥π≤≤ÚaGÄYcıÍ’ø}·ÖÜ>úL¶´WØ&çççuuuC\\u§òQ]æ|˘Õx˝t™|¸Ò«7kkkøq˝WGÄ≤?˛ç+’©åjﬁÁü~=ƒ5kÂ\n@Yä7*≈k™GéI¶ÀG}tq—¢E_∏cÄ≤≥zıÍcÒF•Èˆ“K/]Ãd2Àù\0 F|N5>R3wˇ+õÕÖUÎˇVWW?‚L\0P‚ÊMMM…LyÎ≠∑∫CX7:\0§^‹¶0ÓêTÏÊìºjÕÖ∞~ÎZ+\0©∑m€∂çqõ¬ôˆ¸Ûœˇ-ƒıóŒ\0©7‘ﬂπsÁåáuÛÊÕ> ı‚∑‘ƒ\rıgZggÁë™™™˝Œ\0©ø˙m:6Ñ∏óKó.ıÑ∞ˆ8#\0§Z¸>’¬Ø~õIÒ;]ù\0R-∆¨T+\0V¨¬\n\0ˇØTÆ±ˆˆˆ^tçÄ‘{˝ı◊øÌÓÓ.ïªÇ€ù\0R->«∫k◊Æíxé5ÑıgÄTkll‹‘––0„a]æ|˘Ò÷\ngÄT[πrÂ£O?˝Ùå|≥M¡3¨qØ‡ÎÍÍ~Êå\0êz´V≠˙˚Åf,¨[∑n˝2ì…¸Œô\0†,¨^Ω∫˙ïW^π9è›ÑïÚ`¸>÷ööö«ú	\0 ∆≤eÀ.µ∑∑O{X7lÿp¥™™jã3\0@Y©ØØˇè%Kñ\\πre⁄¢˙’W_ùÆÆÆ˛{eeÂ√Œ\0\0egÈ“•ˇ≥yÛÊ¡È¯H¯‚≈ã˝Ò#‡Ö>È»Pñ***Ê<ÛÃ3_oﬂæ}`*£öÀÂÜÍÍÍ.Ü’Í\nGÄ≤b˜»‚≈ã˚ööönL’JıVT}©9\0≥CºC∑∂∂6˚ﬁ{Ô]öÏk™Ò„_+U\0fÂ 5Dãx∑πsÁÆ?Ë#5ÒÓﬂx£ík™\0ÃjôLfyÏÂ7ﬂ|Ûÿô3g.ª£RcccW\\•VUUms˜/\01à!åÎ¬\\®ØØˇ€€oø}hˇ˛˝_ù?˛\\aH˚˙˙.«o©âÍ«Ω„6ÖqG%õ?\0¿ÿ+ÿπ∑\"ª;Ã◊a„îﬂöû0á‚∑‘ƒ\rıÌ˝\0˜)Ü’Q\0\0a\0a\0a\0Ñ\0Ñ\0Ñ\0V\0V\0V\0V\0@X@X@X\0a\0a\0a\0a\0Ñ\0Ñ\0Ñ\0V\0V\0V\0V\0@X@X@X\0a\0a\0a\0aV\0V\0V\0(≥àÓå!Ω«t9R\00±∞>fpº∞f2ôyé\0L<Æª«	Î°äää9é\0∑j5¨’’’Û!\0(>Æ£]kÌ≤ZÄ˚_µ∫∂\n\0ì$ÑÙ3´U\0òº∞Œ-∏∂˙î#\0(≠’j\0&\'¨Oÿy	Äì$…ú≥gœÓËÏÏºŸ⁄⁄öÏ›ª◊î¿¥¥¥$mmmﬂÜ©ı.Hë’ˆˆˆ$óÀ%7n‹0%4ΩΩΩ…¡Éøë]‡ù\nêq•*™%◊a{¬; %‚«øV⁄¬:Ëù\nêÒzûxï|X›åPna˝Òªû‰l◊˚IwÀ˙·â&|¬\n@ëa˝·J69˛«5…_ˇ∞Úéâ?ãØâü∞PDX/tqWTÛÛèÓù‚\'¨\0÷˚3fX„k‚\'¨\0÷„{◊ç÷¯ö¯	+\0¬*¨\0ÃLX„]¿cÖ5æ&~¬\n@a=›±uÃ∞∆◊ƒOX(\"¨}Ÿ£…Ò?≠Ω˚c‡≥¯ö¯	+\0EÑ5Œ◊_nø+¨Òg¬\'¨\0÷Î◊ì”ﬁv˜«¿·gÒ5ÒV\0&÷∏≥“©é-c^cçØŸ}IX∏WX√J¥ÁÙæ‰ÿû_è’¸ƒﬂâøkı*¨\0¬:JXÔµJµzV\0äÎDV©„≠^≈PXÑµ`Ó7™˘CaV#¨\0´∞ ¨FXÑ’+\0¬*¨\0´V\0a5¬\nÄ∞\n+\0≥$¨·_o‘ôÆ◊ÖÄ≤Îx?õÍ◊Ö\0aV\0ÑUXÖ@XÖUXVa@XÖ\0aı∏ç∞´V\0ÑUXV#¨\0¬jÑ\0aV\0Ñ’+Ä∞\ZaV#¨\0´∞ ¨FXÑ’+\0¬*¨\0´V\0a5¬\nÄ∞\n+\0ì©µµUºJ{ÆÖ∞zß§D[[[O.ó∞ùl6˚˚÷ﬁ©\0)±oﬂæ_8p‡ªÀó/ˇS»Jk•\Z£⁄““r.ÃÔTÄ	ˇ„ûVE]Ò#«x=/ÌSUUïî¡G<\'DÄ√Í(\0Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\n+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0)çËŒ“{Ló#\0Îa«k&ìôÁH¿ƒ„∫{ú∞™®®ò„(@q´÷Q√Z]]=ﬂÄ‚„:⁄µ÷.´U\0∏ˇUÎ†k´\00IBH?≥ZÄ…Î‹Çk´O9\"\0ÄÚ◊Z≠V`r¬˙Ñùó\0ò1IíÃ9{ˆÏéŒŒŒõ≠≠≠…ﬁΩ{M	LKKK“÷÷ˆmòZÔRÄâQmooOrπ\\r„∆\rSB”€€õ<x˚Ÿﬁ©\0)W™¢Z“qΩV∞\'ºSR\"~¸+`•=!¨Éﬁ©\0)ØÁâW…á’ÕX\0Â÷øÎIŒvΩüt∑¨û¯ÁÒg¬\'¨\0÷Ædì„\\ì¸ı+Ôò¯≥¯ö¯	+\0EÑıB˜wE5?ˇËﬁ)~¬\n@1a=±ˇ7cÜ5æ&~¬\n@a=æw›òaçØâü∞ ¨¬\n¿ÃÑ5ﬁ<VX„k‚\'¨\0÷”[«k|M¸ÑÄ\"¬⁄ó=öˇ”⁄ª??ãØâü∞PDX„|˝Âˆª¬\Z&|¬\n@±aΩ~=9˝Ámw~_?a`Çaç;+ùÍÿ2Ê5÷¯ö›óÑÄ{Ö5¨D{NÔKéÌ˘ıòQÕO¸ù¯ªVØ¬\n ¨£Ñı^´T´Wa†à∞Ndï:ﬁÍUÖ@XÊ~£ö1V\0a5¬\nÄ∞\n+\0¬jÑ@Xç∞ ¨¬\nÄ∞\ZaV#¨\0´∞0K¬\Z˛ıFùÈz]X(ª∞é˜≥©~]XVa@XÖUXÑUXÖ\0aV\0ÑUXVè€+Ä∞\Za@XÖ\0a5¬\n ¨FXVa@Xç∞´V\0a5¬\nÄ∞\n+\0¬jÑ@Xç∞ ¨¬\nÄ∞\ZaV#¨\0´∞0ôZ[[≈´¥ÁZÎ†w*@J¥µµı‰r9+—…f≥øa=·ù\nê˚ˆÌ˚’Åæª|˘Ú?Ö¨¥V™1™---Á¬,NHë?ÓyaU‘?rå◊Û“>UUUI¸wƒsqBTòq1¨é\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0´∞Ä∞Ä∞@ôEtgÈ=¶ÀëÄâÖıâ0É„Ö5ì…Ãs§\0`‚q›=NXUTTÃqî\0†∏UÎ®a≠ÆÆûÔ@ÒqÌZkó’*\0‹ˇ™u–µU\0ò$!§üY≠¿‰Öun¡µ’ß\0x@˘k≠V´\0PÑ∞\"}$¨PCC´ﬁ	≥?ÃÖ7.ıƒGm¬Ô¸.¸Ós·œw‘\0`ÑÖ>yÎZÍµ	Ï∏T8Ò∆¶CaÍ¨fòın›ı€UdL«öqÎ®0+Ön˘(MMMM≤q„∆d«éIwww“””ì\\ªv-âí\\.óú:u*ijj\Z˛Ω≈ãèÿ›·ÔÛò#¿¨PYY˘≠Îß∑cXWWó|¯·á√·,F“‹‹ú¨X±b‰>¬W¬+m\0fCT€#∏fÕö·ïÈÉ\Z\ZJvÌ⁄5º‚-¯{ˇfÅ£@Ÿ\ZπRç˘∆(Nñl6õ¨\\π≤0Æ◊Ï‘@Y∫uMıvÙ:;;ì©Ø…∆ÎØÖ+◊œ˛Ö3\0@9≠TÔÿÛ7ÆTßRº—©°°·éÁ_„3≤Œ\0e!ì…¸•öÍd~¸;ñ´WØ&Kñ,)º°Èøù	\0R/n˛Px˜ÔÉﬁ®Tå√áèºôÈqgÄT+¸N’¯HÕt€¥iSa\\ﬂqF\0H≠x]3øMa|¶ÿÁT\'√ô3gÓxæ5¨öÓÃ\0êJ∑6‘éZºSw¶n b?ﬂô ïn}KÕ¥‹	<ûO?˝‘ML\0îEXooqÚ‰…k|f∂`≈∫◊ô ≠aΩ˝}™”y7HÁœüø„ôVgÄ¥Üıv–ÚﬂR3‚ÜÖˇ.Œ\0©ÎLV\0¨X≠X‡é∞∫∆\n\0ìVw¿$ÜuK)<«\ZˇŸ+÷-Œ\0©Váµ•∞Û“à/?_‡Ã\0êJ555èÓø mÜØØ^ÛΩ¨\0§Z·u÷¶¶¶iÎ∂m€\n√˙æ3@™~ºlŸ≤i}Ï&õÕØîÛˇ¸Eã˝ª3@™UTTÃ	Q;ñè[ssÛ¥Öu˝˙ıÖõÔÊl\0Pv´÷∏Ç¸Êõo¶<™ªvÌ*¸x0Ñıﬂú	\0 Fà€Œ|Ë^~˘Â§øø ¢⁄——q«G¿añ:\0îï   GC‡zÛ±khhﬁjp*¢ZWWÁÜ%\0 _&ìôÊJ>zÒ\Zh__ﬂ§~¸;b•∫;˝aGÄ≤U]]=?ˇlkú∏∫å[>Ë›øk◊ÆΩc£}Q`÷X∏p·ì!|?Ü0ÓÃTÏ~¬qÛá¯úÍàUÍ«ø¢\n¿l[π˛¢€oÚÛ‚ã/&ü|ÚI“ﬁﬁ>|˜p˛:l¸ci\\›∆ΩW≠Z52¶√wˇ∫Q	ÄY+Æ*C`7é\\ΩﬁœƒÁT=R\0›ﬁSxC·çMúx≠ˆ};*¿(ÍÍÍ~vÎ˙Î;ÒÊ£Q>*Óâﬂß\Zø˙-D∏ Ü˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0p˛VÉFÃ∞ \0\0\0\0IENDÆB`Ç',1);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0213t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'shenhe.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"borrow\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask1\" name=\"Áî≥ËØ∑Ëµ∑Ëçâ\" activiti:assignee=\"${user}\"></userTask>\n    <userTask id=\"usertask2\" name=\"ÁªèÁêÜÂÆ°Ê†∏\" activiti:assignee=\"${user}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"borrow\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"390.0\" y=\"350.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"355.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"407.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"407.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"250.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"407.0\" y=\"305.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"407.0\" y=\"350.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25006',1,'leave.bpmn','25005','<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/testm1512639392727\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1512639392727\" name=\"\" targetNamespace=\"http://www.activiti.org/testm1512639392727\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"leave\" isClosed=\"false\" isExecutable=\"true\" processType=\"None\">\r\n    <startEvent id=\"_2\" name=\"StartEvent\"/>\r\n    <endEvent id=\"_3\" name=\"EndEvent\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_4\" name=\"ËØ∑ÂÅáÂçï\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_5\" name=\"ÈÉ®Èó®ÁªèÁêÜ\"/>\r\n    <userTask activiti:assignee=\"${user}\" activiti:exclusive=\"true\" id=\"_6\" name=\"ÊÄªÁªèÁêÜ\"/>\r\n    <sequenceFlow id=\"_7\" sourceRef=\"_2\" targetRef=\"_4\"/>\r\n    <sequenceFlow id=\"_8\" sourceRef=\"_4\" targetRef=\"_5\"/>\r\n    <sequenceFlow id=\"_9\" sourceRef=\"_5\" targetRef=\"_6\"/>\r\n    <sequenceFlow id=\"_10\" sourceRef=\"_6\" targetRef=\"_3\"/>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#FFFFFF;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"leave\">\r\n      <bpmndi:BPMNShape bpmnElement=\"_2\" id=\"Shape-_2\">\r\n        <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"280.0\" y=\"110.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_3\" id=\"Shape-_3\">\r\n        <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"250.0\" y=\"710.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_4\" id=\"Shape-_4\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"235.0\" y=\"230.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_5\" id=\"Shape-_5\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"305.0\" y=\"360.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_6\" id=\"Shape-_6\">\r\n        <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"275.0\" y=\"510.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_7\" id=\"BPMNEdge__7\" sourceElement=\"_2\" targetElement=\"_4\">\r\n        <di:waypoint x=\"296.0\" y=\"142.0\"/>\r\n        <di:waypoint x=\"296.0\" y=\"230.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_4\" targetElement=\"_5\">\r\n        <di:waypoint x=\"312.5\" y=\"285.0\"/>\r\n        <di:waypoint x=\"312.5\" y=\"360.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_5\" targetElement=\"_6\">\r\n        <di:waypoint x=\"332.5\" y=\"415.0\"/>\r\n        <di:waypoint x=\"332.5\" y=\"510.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_6\" targetElement=\"_3\">\r\n        <di:waypoint x=\"278.5\" y=\"565.0\"/>\r\n        <di:waypoint x=\"278.5\" y=\"716.0125078222809\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25007',1,'leave.leave.png','25005','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0ê\0\0\0\0\0π£#\0\0 =IDATx⁄Ì›êﬁu}\'pê(pJ˝S{ÿvº”+szñ´W[:⁄ﬁ:ÂN∑‚“z¸ûﬂÛ{≤I∂É ˛úLIÉJÆË·ôh’√∂åhC»&êp`∏‡˛§±â®¨+õ 	!¿Ô>_f„lí›|ñ§ª˚zÕ|f„>aﬁªÛº˘¸æœÛ{9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C]◊G,[∂Ïú≈ãﬂ}≈W<yÓπÁÓÍÎÎ´õÕf›€€˚“9ÁúÛ‹≈_¸ìœ˛Û{Êôg~Tb\0S‹œ~ˆ≥ﬂª˛˙ÎÔ<Î¨≥^ú3gNΩd…ízÕö5ı‡‡`Ωc«é:y˛˘ÁÎ°°°zÌ⁄µı\r7‹Püv⁄i/Õù;˜ÒyÛÊ]R≈õ§0µ6é7›v€m∑ûq∆/-Z¥®æˇ˛˚_.äv≠_øæém•˛Ùß?˝Ïg>Ûô$\n0E∂é/}ÈKOù}ˆŸı∫uÎÍW„G?˙Q}Êôgæp )ß|ØØØÔÈLR€∂m˚è^x·Û_˛ÚóÎßü~∫ÈRW¸ˇÌ:˝Ù”Wπ§0I7èTó_~y˝¬/‘„ÌökÆy>6ë˛ÆÆÆi“ò$“ôG∫lï6è◊¢<v˚‚ø∏Ω∑∑˜õò$“Åy:ÛØÀV˚ªú5gŒúßöÕfó‘&∏tÈ*Ω⁄*Ω“Í@HÎ”ßOˇπÛÄ	.Ωœ#ΩT˜@Z∏p·èc9O˙\0Tzáyzì‡Å⁄>v€∞a√ŒV´ıàuÄ	j˘ÚÂÁ•wòøñÁcÈÎÎ*ÀÚ8?Ä	(›€*›û‰`∏Í™´÷5õÕÖ~\n\0P∫1b∫∑’¡É¸‡ßQ 7˙)\0L@ÈÆ∫È∆à√÷≠[èŸ‡ß\00Õò1„ów’=–“Õ£@v¯)\0L@ÈÛ<¶Ùœ˜S\0òÄfÕöı“A‹@∂⁄@\0&®sœ=w«¡:\Z\Z⁄‰`Çö?˛∆Éı*¨eÀñ˝ΩWaLP.¸Ê¡z»E]t≥˜Å\0LPsÁŒ˝P˙ÛÉNÙÈV&ﬁâ0Åùu÷Y[ÙΩ∞÷¨Yì._=‰^X\0ÿÖ^8—¢E/»9ÂîSnv7^Ä	ÆØØÔàŸ≥go[ø~˝)èªÔæ{Y⁄>|¿$p∆gtœù;˜˘◊˙	∑oﬂ˛ÛV´µ—\'L\"ßûzÍMW]u’sØ·Å˙∂”N;-ù}\\/mÄI$h«&≤lÒ‚≈;_ÉŸ6oﬁºoß˜}§Kf“òÑ%2{ˆÏøøÚ +üyˆŸg«Ì≤’ÈßüûÕotÓ0…Kd∆å7úzÍ©O›wﬂ}/º⁄Û·3èÎm\0SD:ËÓÌÌ∏¯‚ã7Gë‰\\÷⁄±vÌ⁄•ÈL%Ω⁄ Å9¿î∂Ü≤,œ®™Í«3gŒ‹∫h—¢u´V≠zd```(}û«ÓªÍ¶#ﬁzÎ≠À“ÌI“;Ãáã„<ó¨\0H…Ô«\\eí√_L∑bOüÁ1¸uC:„à«æênO‚Ê\0Ï#∂ä˜DYlí\0YbÀ¯dlﬂó\0πrn»Uí\0 Kî«WbNì\0π» F£qº$\0»“l6-ä‚_IÄ∂Õò1„çQ œ∆ï\0mkµZˇ°,À˚%@ñ™™\ZQ ﬂë\0Y¢<>◊l6/ï\0π»7¢D˛\\\0dâÌ„çF„√í\0 ∑@/ä‚◊$@€fŒú˘´eY>!	\0≤§€¥«r∑$\0»-êôUU› 	\0≤Dy¸Eî»≈í\0 ∑@˛wHS\0di6õÎ¢@> 	\0r\ZÚLOOœQ¢\0†mEQ¸f»œ$@ñF£Ò—™™VIÄ,Qßîey≠$\0»-ê+£@Œó\0YöÕÊÕQ \'JÄ‹\r‰GQ ˇN\0¥≠´´kZl ;ä¢xÉ4\0h[«1Q õ%@ñV´ı\'eYﬁ\"	\0≤TUuv»ó%@ñf≥˘óQ gHÄ‹\rdy»ñ\0π»#EQº[\0¥-ä„»(êÌ,xù4\0h€ÙÈ”ˇ}UUÎ%@ñ(èˇRñÂﬂIÄ,Qƒ\\&	\0r7êØ«|Z\0di6õˇß—h¸ë$\0»-ê°¢(ﬁ!	\0⁄÷◊◊˜ñ™™ûñ\0YZ≠÷ábπG\0d)Àrz»_KÄ,UU}>ç$\0»-êo¶-D\0di6õ?å˘†$\0»›@û.ä‚Õí\0†mÈΩ±Å<&	\0≤§wüßw°KÄ,È˛WÈ>Xí\0 ∑@.Ow‚ï\0YöÕÊMQ üí\0πÚQ «JÄ∂•œ?èŸ—◊◊wÑ4\0h[QÔéyD\0diµZ´™jπ$\0»Â1∑,Àˇ!	\0≤4õÕ´£@Œí\0Y¢<nâÈñ\0π»Ê¢(éë\0mÎÓÓ><ΩÑ7\n‰0i\0–∂(é˜UUı#I\0ê% „OÀ≤¸Æ$\0»-êˇ≤H\0dâÚ∏∂ŸlŒñ\0π»™F£ÒQI\0ê%∂è¡¢(~S\0¥≠ßßÁ®(êg$@ñV´ı{eYﬁ+	\0≤Dyƒ“¸∂$\0»-êã´™˙I\0ê% „Ü(ëôí\0 K≥Ÿ¸øQ «IÄ‹y≤(ä∑IÄ∂Õò1„_FÅlï\0Y\Zç∆á£@Óí\0cJÁUUùù^∂slWW◊¥¯˙ÁÒΩoHÄ1EÒéÿ6v≈‘#Ê…ò”Á°Gë|:ævıııΩEZ\0Ï!\nbÌ^≤˜Fëº]R\0Ï] ÁÌß<v5\Zç„•¿>Ü/cçU WHÄ˝m!åR˙˙˙éê\0cJØƒ⁄´<vƒ˜>\"\0^iy◊^rûT\0hK˙¸èT±y<úﬁ\"\0⁄2|Î˘F£Ò_•@ŒrlzœG|˝∑“\08HÍ∫û∂yÛÊ◊¨YÛ‚ä+ÍÂÀóõ¶øøø^Ωzı÷ò^øU¿îê „é;Ó®áÜÜÍù;wöW1[∂l©W≠ZıTî…I~≥ÄI/m c\\Kdgl$¸fì^∫lÂâ|\'\ndóﬂ,`“K◊Ô=Èè{Å‘~≥\02<œ<9Xo^ª§^ﬂ…Àì˛úæß0†@∆úmO‘.ª®æÔ˚ÁÔ1È{È1•°@\02Í¸t˝w˜)è›ÛË˙õïÜ»Ë≥·∂À∆,êÙò“P Äu\\æ`ÃIè)\r(¢@\0∆Ø@“´Æ∆*êÙò“P Äu6›πxÃIè)\r(êQÁÒÅ˚ÎoùøÔÂ´¯^zLi(@Åå9›s›>íæß0†@∆ûÁû´7›uÕæóØ‚{È1•°@\02Íª–7ﬁyıòg È1ÔFW ÄŸcÎ‹¥≤~‡ñycñ«ÓI\'˝]€à¶xÅº“÷aQ \0£H;[«˛∂¢@Ä)Z ùñ«ÓQ \nò¢bÄQ \0\nDÅ\0(†@åàQ \0\nDÅ\0(†@Fõ¯◊u∆Îq0âdﬂ{µè+\0¢@\0àP \nDÅ\0\nDÅ(\0¢@\0&Å‚eº\0\nƒ	†@åP \n@Å(\0¢@\0àQ Ä1\n@Å(\0¢@\0àP FÅ\0\nƒ(\0¢@\0àP \n`X±bÖ\'˝ÒùQ ª¸fìﬁÍ’´áÜÜ<Òè”|+\ndÉﬂ,`“[πrÂâ∑ﬂ~˚ìè=ˆÿˆ…˙§æm€∂≤y§ÚËÔÔ$Ê$øY¿îOx\'ƒ5ØMó^“ı˚…4Kó.≠O>˘‰˙¶õnz≠ˇY)ª\r `i6õó∆¸/I\0êe˙ÙÈøÚÛ≤,èï\0π[»ôQ ﬂó\0Yfœû˝˙(ë7\ZçèJÄ,UU5¢DÓâ?*\r\0≤DÅ‹ERIÄ,çF„è¢D6EÒi\0ê•,ÀÔFâú#	\0≤ƒˆÒæ(ê«˙˙˙ﬁ\"\r\0≤DÅ¸œÿD.ì\0Yz{{=JdkÃ;•@ÓrIUUﬂê\0Yzzzéä,ÀÚ˝“\0 Kl s¢DñIÄ,]]]”¢@˛±—h/\r\0≤îe˘©ò{qã\0r≈rWUUΩí\0 K£—¯pî»√›››áKÄ,eY˛]î»yí\0 KQÔâjµZoï\0Y¢@ÆâMdë$\0»RU’—È\'±Ö¸ki\0êªÖÃè\"πA\0dô1c∆£D ≤¸Ä4\0»»)Q\"˝í\0 KQáEÅlà\"˘∏4\0»RñÂâQ\"˜-X∞‡u“\0 K»1}í\0 w9.\n‰ü˙˙˙éê\0π[»çQ$HÄ,EQ%≤eÊÃôø*\r\0r∑ê´´™˙¢$\0»›B~-m!≠VÎﬂHÄ,eY~.∂êoJÄ,ü¸‰\'ˇEl!èFë|P\Z\0dâ99Ê6I\0êe¯\'∆|B\Z\0d)ÀÚÑT\"©L§@ñt+]Œí\0π[»”Åz:Xó\0π[»∑“K{%@ñÙ¶¬ÙÊ¬Ù&Ci\0ê%›ﬁ$›ÊD\0dI7XﬁBéë\0Y“≠ﬁ”-ﬂ%@ñÿ>éL:ï>|J\Z\0dI{≥Z\0dY∞`¡Îbπ?ÊDi\0ê•™™è«≤¡-N\0»“Erä$\0»RñÂ¢DfÃòÒFi\0ê%6ê¢H.ñ\0YbyWÃ÷(í£•@ñÿ@Eâ¸•$\0»“jµﬁ\Z2T≈{§@ñ(êÛb˛V\0dÈÓÓ><\n‰·F£Òai\0êªÖÃàπK\0‰:¥,À{c>%\n\0≤TUıüb˘«ÆÆÆi“\0 K»≤(í9í\0 KYñÔèÏÈÈ9J\Z\0dâ\r‰Q\"óÏ˝}ó∂\0ÿØ(èw¶[úÙˆˆ˛z˙ﬂ}}}Gƒˇ^sµt\0ÿØ≤,/ã˘Zî∆©1õbjüß¿+™™jV∆√≈±{nì\0c«GRQÏU\nÄ±ïeyÌ≈±{Óê\0˚(ä‚˚Ÿ>“lí\0£J/’æ;ÔéQ\n‰!	∞_UUΩ7\n„ÅΩ\n‰a…\0äÜﬂˇqEÃÆT eY>!\0⁄≈q\\»#Òı•È”ßˇäD\0»ŸFﬁíŒ@b˛ª4\0&Å∫Æßmﬁº˘∆5k÷º∏b≈äz˘ÚÂ¶ÉÈÔÔØWØ^Ω5¶◊o0%§Ú∏„é;Í°°°zÁŒùÊUÃñ-[ÍU´V=eríﬂ,`“KõáÚ◊Ÿ…øY¿§ó.[y‚ﬂâŸÂ7òÙ“ı{O˙„^ µﬂ,@Åœ3O÷õ◊.©◊˜_ÚÚ§?ßÔ)(ê1g€ıÉÀ.™Ô˚˛˘{L˙^zLi(@Åå:?]ˇ›} c˜<∫˛f•°@\02˙l∏Ì≤1$=¶4†@Fùó/≥@“cJCÅ\0\nDÅ(ÄÒ+êÙ™´±\n$=¶4†@FùMw.≥@“cJCÅ\0\nd‘y|‡˛˙¡[ÁÔ{˘*æóS\Z\nP cŒC˜\\∑OÅ§Ô)(ê±ÁπÁÍMw]≥ÔÂ´¯^zLi(@Åå˙.Ùçw^=ÊHzÃª—†@ˆÿ:7≠¨∏eﬁòÂ±{“ﬂI◊6¢@Ä)^ Ø¥uÿF¿®“Œ÷±ømDÅ(`äHßÂ±{à¶hÅ†@ÄQ \0\nDÅ\0(£@\0bÄQ \0\nDÅ\0(ê4Òèu‘„\n`»˛æ˜Z?Æ@\0àP \n@Å((¢@\0àò¯ràóÒ(£@\0bÄQ \0\nDÅ\0(†@åàQ \0\nDÅ\0(†@Ä1\nP \nDÅ\0(†@ÄQ \0ì–ä+<ÈèÔÏàŸÂ7òÙVØ^=844‰âúf``‡[Q ¸fìﬁ ï+Oº˝ˆ€ü|Ï±«∂ˇsyﬁæ}˚Ñ‹<RyÙ˜˜?síﬂ,`Jà\'º‚øö◊¶K/È˙˝¡ú[nπ•û9sfΩlŸ≤˙`ˇªdN nÉÚ\08HZ≠÷á ≤ºW\0dâÚ8-ÊZI\0ê•Ÿl~-ÊTI\0êªÅ‹ÛAI\0–∂ÓÓÓ√c˚x6}ï\0msÄ@G†–Ë\0t∫Å8@ èt\0:‚\0Äé8@†#–ËtqÄ@Ë\0tƒ:\0qÄ@G†–È‚\0Ä<–Ëàt\0:‚\0Äé8@†”\rƒ:\0y†–Ë\0tƒ:\0qÄ@ßàt\0Ú8@†#–Ëàt\0:‚\0ÄN7Ë\0‰qÄ@G†–Ë\0tƒ:\0ùn –»„\0Äé8@†#–Ëàt\0:›@†ê«:\0qÄ@G†–Ë\0t∫Å8@ èt\0:‚\0Äé8@†#–ËtqÄ@Ë\0tƒ:\0qÄ@G†–È‚\0Ä<–Ëàt\0:‚\0Äé8@†”\rƒ:\0y†–Ë\0tƒ:\0qÄ@ßàt\0Ú8@†#–Ëàt\0:‚\0ÄN7Ë\0‰qÄ@G†–Ë\0tƒ:\0ùn –»„\0Äé8@†#–Ëàt\0⁄)ã+b€∏†—hﬂ◊◊˜ñ·\rƒ:\0ØX KbÍÛ„ò¢@æ\\UUo|=∂´´kö§\0ÿª@N⁄´@ˆô(ë´$¿bÀx{îƒÆ˝»⁄æææ#$¿h[»∆ÿ<û(ä‚	0VÅ,£@Nê\0˚+êﬂwÓ@∂Ù*´(ç¡≤‘+Ø\0hwπq∏<ûIÎ†›Èã‚x±,ÀÀ§@€ä¢xGî»?y:¿AP◊ı¥Õõ7ﬂ∏fÕöW¨XQ/_æ‹t0˝˝˝ıÍ’´∑∆Ù˙≠¶ÑTw‹qG=44TÔ‹π”ºäŸ≤eKΩj’™ß¢LNÚõLziÛP„Z\";c#Ÿ‡7òÙ“e+O¸„;Q ª¸fì^∫~ÔI‹§ˆõ(ê·yÊ…¡zÛ⁄%ı˙˛K^ûÙÁÙ=Ö°@\02Êl{b†~pŸEı}ﬂ?èIﬂKè)\r(êQÁßÎøªOyÏûG◊ﬂ¨4†@Fü\r∑]6fÅ§«îÜ»®Û‡ÚcHzLi(@Å(0~í^u5VÅ§«îÜ»®≥ÈŒ≈cHzLi(@Åå:è‹_?xÎ¸}/_≈˜“cJCÅ\0\ndÃyËûÎˆ)êÙ=Ö°@\02ˆ<˜\\ΩÈÆkˆΩ|ﬂKè)\r(êQﬂÖæÒŒ´«<Ièy7∫»[«‡¶ïı∑Ã≥<vO˙;ÈÔ⁄F0≈‰ï∂€àµ@⁄Ÿ:ˆ∑ç(L—È¥<vèQ ¿-£@\0àP \n@Å(\0b†@åP \n@Å(\02⁄ƒø∆®3^è+ÄI\\ ˚˚ﬁ´}\\Å\0(†@ÄQ \nP \nDÅ\0(0˘‰/„P ﬁH®@\0bÄQ \0\nDÅ\0(†@åàQ \0\nDÅ\0(†@Ä1\nP FÅ\0(†@ÄQ \0ì¿ä+<ÈèÔÏàŸÂ7òÙVØ^=844‰âúf``‡[Q ¸fìﬁ ï+Oº˝ˆ€ü|Ï±«∂Ï\'ﬂgü}vBo©<˙˚˚â9…o0%ƒﬁ	Ò_Õk”•ót˝˛`Ã“•KÎY≥f’Àñ-´÷ø√´úî›ÂpÄ5õÕOTUµR\0‰»ó ≤º@\0‰»Üòﬂï\09ÂÒŒò°¯„°“\0 ß@Né˘+I\0ê[ ﬂÆ™jñ$\0h€Ç^≤5Ê7§@€Z≠÷á¢<ê\0Y¢<.¨™ÍJI\0ê[ ´c˘ò$\0h[OOœQ±}<]≈ë“\0 g˚ËâπU\0‰»‚òÛ$@nÅl¨™Íw$@€ä¢xw»†$\0»õ«)Q ◊IÄ,Q%“+	\0⁄V≈aQ øà9Z\Z\0¥-ä„ ≤ºW\0dâÌc~»eí\0 ∑@Óå˘cI\0–∂¢(ﬁún_“››}∏4\0h[YñüäÌc©$\0»-êØDÅú#	\0≤Dyl.ä‚}í\0†mQ«DÅ<*	\0≤TU5\'ÊÎí\0 Kl7ïeŸî\0mÎÍÍöÚdl oó\09€«∆‹#	\0rdaÃ•í\0 ∑@ÓéÈí\0m+ä‚mQOÕû=˚ı“\0†meYQ 7KÄ‹π∂™™πí\0 KlèEÒI\0–∂ÿ<ﬁõ\nD\0‰ng¶KXí\0 ∑@æó—%@€ä¢xCz˘n´’z´4\0»Ÿ>∫b÷HÄ‹π4ÊI\0ê[ ˜TUıI\0–∂t€ˆ≤,üH∑qó\09R•êí\0Y¢<ñ§è∞ï\0πÚhYñø%	\0⁄õ«oGÅ¸D\0‰nÁƒ\\#	\0rdiÃüIÄ∂uww^U’”EQºY\Z\0¥≠—h€«ùí\0 KlóGÅÃó\0Y¢<÷ïeyú$\0»Ÿ>éé˘EQáIÄúÈçÌ„;í\0 Kl◊≈Ãñ\09çÚåyó(\0h[YñÔèÚÿ(	\0r‰¸(ê≈í\0 KUUÀ£@z$@€ä¢82›æ§ßßÁ(i\0–∂V´ı±(êUí\0 Kî«ïeY~N\0di6õDÅ|P\0‰î«oƒl]∞`¡Î§@NÅÙ≈|[\0‰»_«ú,	\0r§€ó≈ºS\0¥≠,ÀDy¸É$\0»-ê™™˙¢$\0»Â±≤’j˝â$\0h€å3ﬁòn_íæJÄ∂5õÕO§\rD\0‰»ó“à$\0»-ê\r1ø+	\0r „ùÈ˝Ò«C•@NÅúÛWí\0 ∑@æ]U’,I\0–∂t◊›t˜›t^i\0–∂V´ı°Ù˘í\0 Kî«ÖÈ%@nÅ¨NüÅ.	\0⁄÷””sT∫}IQGJÄúÌ£\'ÊVI\0ê[ ãcŒì\0π≤±™™ﬂë\0m+ä‚›Q Éí\0 KlßDÅ\\\'	\0≤Dy¸MîHØ$\0h[QáEÅ¸\"\n‰hi\0–∂(é?(ÀÚ^I\0ê%∂è˘Q óIÄ‹π3Êè%@€ä¢xs∫}Iww˜·“\0†meY~*∂è•í\0 ∑@æré$\0»Â±π(ä˜IÄ∂EqÚ®$\0»RU’úòØKÄ,±}‹TñeS\0¥≠´´kZ»ì±Åº]\Z\0‰lsè$\0»-êÖ1óJÄ‹π;¶K\0¥≠(ä∑Ey<5{ˆÏ◊KÄ∂ïeYDÅ‹,	\0r‰⁄™™ÊJÄ,±}<R≈{$@€bÛxo*I\0êª}úô.aIÄ‹˘^:Dó\0m+ä‚\rÈÂª≠VÎ≠“\0 g˚ËäY#	\0r‰“òK$@nÅ‹SU’G$@€“m€À≤|\"›∆]\Z\0‰Hï>@J\0dâÚXí>¬V\0‰»£eY˛ñ$\0h[løÚI\0êª}úsç$\0»-ê•1&	\0⁄÷››}xUUOEÒfi\0–∂F£q|lwJÄ,±}\\2_\0dâÚXWñÂqí\0 g˚8:\n‰EQ&\r\0r\n§7∂èÔHÄ,±}\\3[\0‰84 c0Ê]¢\0†meYæ? c£$\0»-êÛ£@KÄ,UU-èÈë\0£*ä‚MQb„∏*J„„}}}Gƒ˜éL∑/ÈÈÈ9JB\0å)\n‰ÅòzxvEy¸ø¯∫ŸÁü∞_QﬂQ {L˙ÙÙxÃ{%¿ﬁ»Öc»,ÌÍÍö&)\0ˆ[∆	˚Ÿ@ÓçÌ„ÌR`√È;F)êáî\0˚e±vÔ≥è(ñc$¿+»ı{ΩÀ+∞\0h´@Œ.èó“ôàD\08$ΩÇ*ΩI0 aazEUz„`⁄2Fl?ç˘·üÔKo&î\Z¿V≈;¢Dy¸¯^¶ª˜§ª^„Nº\0Sp„(ÀÚÇV´ılfqÏ=È,‰6Ä©±uO˙˜Ì]sÊÃ©ø˙’Ø÷k÷¨©Í;v‘I˙:44Tˇá?¨ó,YRü}ˆŸ£æ$ÊXÈLRÒ$‹ÙÈ”∑å|Ú?ˇ¸Û_.á^x°n◊∫uÎÍyÛÊÌ]$€ÆL“ÚhµZ€w?·Gë‘7ﬂ|sVqÏÌñ[n©˚˙˙ˆ∏§•D\0&ëtŸ* „#/Wm‹∏±?¸p=wÓ‹Ω7ó≥\0&∫·óËﬁ7≤<“ô∆xJˇ#K$ùâ8Xò‡“´≠F^∂\ZØÕc¥MdØÀYWH`ÇJÔÛ˘R›tÊÒZJg\"#œC‹+`ÇJo˘j´Áüæ~≠}ˆ≥üY\"◊¯)\0L0√gø|áyz©ÓÅpˇ˝˜ÔÒéıt+x?\rÄ	d‰á@•ÉÛWÛr›\\#ﬂl%÷Îß0ÅﬂÒÂ\'ÒØ}ÌkıÅt√\r7å,ê/¯i\0L¨Y∫˚I<›û‰@JóÀF\\∆∫ÕO`b»¶›O‚ÉÉÉ¥@“˚BFﬁ\nﬁO`b»/?œc˜çîÙœyü,?\rÄâU ø|?Ä\rƒ0≈\nƒ\0àWa–QÅx\0˘‚â˚O÷;—œ:Î¨óº`ÇJ˜¬JÁÓÖ@∂Ùô#Ô∆{ ∂êΩ>+››x&¢Ùy È#f}\0ùl!‘\'Œö5Î%üH0I§œ&OüQ˛Z&˙gúÒ¢œDòd‚	˝ÿëó≤Râå◊&í6èëÂë˛9Èü\'uÄI¢—h?≤D“Â¨t&Új÷”ô«^ó≠v•≤í6¿$/ë›ØŒZ∑n]ˆKu/∫Ë¢=Ów5ºy(Ä…*]^\Zy&2Ú≤Vz«˙⁄µk_æw÷Ó0¶ØÈå#ïLzá˘»7	é<ÛpŸ\n`\nH‹√ØŒ⁄±wdN∫„ÔÃ¶òÙ>ëÿÆ\Z˘éı6g0ΩI∞™™˜J`\nK∑=æw÷¬·ª¯n\Z•0nK7FL˜∂r{\0\0\0\0\0\0\0\0\0\0\0\0¯ÁÔˇìˇcjπâ≤i\0\0\0\0IENDÆB`Ç',1);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25011',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0	100‰∏áÂπ¥t\0123t\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25013',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0	100‰∏áÂπ¥t\0123t\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25023',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0100Â§©t\0123t\0‰∫ßÂÅát\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25025',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0123t\0100Â§©t\0123t\0‰∫ßÂÅát\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2503',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('3',1,'shenhe.borrow.png','1','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0÷\0\0ã\0\0\0z\n≥s\0\08IDATx⁄Ì›Olïeæ¿q,f·b.\\∏0πw1ãª∏,f—Öπ◊π√ÇrZZbç“ b$FG	lpî‰í@%ìI4ˇå·¶V…\03¥¸i”°I≈aÄòC·‘^Ì\0mÒΩœ”p∏á“ñËüÛû~>…/öû˙Ô}O¸Ê9Ô˚>Á°á\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ä‘X∑n›œﬂ‹∞a√ók÷¨È]∂lŸ@MMMRUU5<ıııCØæ˙ÍïıÎ◊y˜›w˚∆o¸ã£\0#444¸Á⁄µkˇR[[˚Sj“‹‹ú=z4…Âr…––Pí◊◊◊óú<y2Ÿ≥gO≤i”¶$˛~ÌÖ◊‘WTTÃq$ò’V¨XÒ¯kØΩv‰πÁû˚i«é√·,∆¿¿@“——ëÑïÎOau{i…í%ˇÂ®0+ÖUÊÚgü}vÉ>H˙˚˚ì’’’ïÑ∞,]∫¥π≤≤ÚaGÄYcıÍ’ø}·ÖÜ>úL¶´WØ&çççuuuC\\u§òQ]æ|˘Õx˝t™|¸Ò«7kkkøq˝WGÄ≤?˛ç+’©åjﬁÁü~=ƒ5kÂ\n@Yä7*≈k™GéI¶ÀG}tq—¢E_∏cÄ≤≥zıÍcÒF•Èˆ“K/]Ãd2Àù\0 F|N5>R3wˇ+õÕÖUÎˇVWW?‚L\0P‚ÊMMM…LyÎ≠∑∫CX7:\0§^‹¶0ÓêTÏÊìºjÕÖ∞~ÎZ+\0©∑m€∂çqõ¬ôˆ¸Ûœˇ-ƒıóŒ\0©7‘ﬂπsÁåáuÛÊÕ> ı‚∑‘ƒ\rıgZggÁë™™™˝Œ\0©ø˙m:6Ñ∏óKó.ıÑ∞ˆ8#\0§Z¸>’¬Ø~õIÒ;]ù\0R-∆¨T+\0V¨¬\n\0ˇØTÆ±ˆˆˆ^tçÄ‘{˝ı◊øÌÓÓ.ïªÇ€ù\0R->«∫k◊Æíxé5ÑıgÄTkll‹‘––0„a]æ|˘Ò÷\ngÄT[πrÂ£O?˝Ùå|≥M¡3¨qØ‡ÎÍÍ~Êå\0êz´V≠˙˚Åf,¨[∑n˝2ì…¸Œô\0†,¨^Ω∫˙ïW^π9è›ÑïÚ`¸>÷ööö«ú	\0 ∆≤eÀ.µ∑∑O{X7lÿp¥™™jã3\0@Y©ØØˇè%Kñ\\πre⁄¢˙’W_ùÆÆÆ˛{eeÂ√Œ\0\0egÈ“•ˇ≥yÛÊ¡È¯H¯‚≈ã˝Ò#‡Ö>È»Pñ***Ê<ÛÃ3_oﬂæ}`*£öÀÂÜÍÍÍ.Ü’Í\nGÄ≤b˜»‚≈ã˚ööönL’JıVT}©9\0≥CºC∑∂∂6˚ﬁ{Ô]öÏk™Ò„_+U\0fÂ 5Dãx∑πsÁÆ?Ë#5ÒÓﬂx£ík™\0ÃjôLfyÏÂ7ﬂ|Ûÿô3g.ª£RcccW\\•VUUms˜/\01à!åÎ¬\\®ØØˇ€€oø}hˇ˛˝_ù?˛\\aH˚˙˙.«o©âÍ«Ω„6ÖqG%õ?\0¿ÿ+ÿπ∑\"ª;Ã◊a„îﬂöû0á‚∑‘ƒ\rıÌ˝\0˜)Ü’Q\0\0a\0a\0a\0Ñ\0Ñ\0Ñ\0V\0V\0V\0V\0@X@X@X\0a\0a\0a\0a\0Ñ\0Ñ\0Ñ\0V\0V\0V\0V\0@X@X@X\0a\0a\0a\0aV\0V\0V\0(≥àÓå!Ω«t9R\00±∞>fpº∞f2ôyé\0L<Æª«	Î°äää9é\0∑j5¨’’’Û!\0(>Æ£]kÌ≤ZÄ˚_µ∫∂\n\0ì$ÑÙ3´U\0òº∞Œ-∏∂˙î#\0(≠’j\0&\'¨Oÿy	Äì$…ú≥gœÓËÏÏºŸ⁄⁄öÏ›ª◊î¿¥¥¥$mmmﬂÜ©ı.Hë’ˆˆˆ$óÀ%7n‹0%4ΩΩΩ…¡Éøë]‡ù\nêq•*™%◊a{¬; %‚«øV⁄¬:Ëù\nêÒzûxï|X›åPna˝Òªû‰l◊˚IwÀ˙·â&|¬\n@ëa˝·J69˛«5…_ˇ∞Úéâ?ãØâü∞PDX/tqWTÛÛèÓù‚\'¨\0÷˚3fX„k‚\'¨\0÷„{◊ç÷¯ö¯	+\0¬*¨\0ÃLX„]¿cÖ5æ&~¬\n@a=›±uÃ∞∆◊ƒOX(\"¨}Ÿ£…Ò?≠Ω˚c‡≥¯ö¯	+\0EÑ5Œ◊_nø+¨Òg¬\'¨\0÷Î◊ì”ﬁv˜«¿·gÒ5ÒV\0&÷∏≥“©é-c^cçØŸ}IX∏WX√J¥ÁÙæ‰ÿû_è’¸ƒﬂâøkı*¨\0¬:JXÔµJµzV\0äÎDV©„≠^≈PXÑµ`Ó7™˘CaV#¨\0´∞ ¨FXÑ’+\0¬*¨\0´V\0a5¬\nÄ∞\n+\0≥$¨·_o‘ôÆ◊ÖÄ≤Îx?õÍ◊Ö\0aV\0ÑUXÖ@XÖUXVa@XÖ\0aı∏ç∞´V\0ÑUXV#¨\0¬jÑ\0aV\0Ñ’+Ä∞\ZaV#¨\0´∞ ¨FXÑ’+\0¬*¨\0´V\0a5¬\nÄ∞\n+\0ì©µµUºJ{ÆÖ∞zß§D[[[O.ó∞ùl6˚˚÷ﬁ©\0)±oﬂæ_8p‡ªÀó/ˇS»Jk•\Z£⁄““r.ÃÔTÄ	ˇ„ûVE]Ò#«x=/ÌSUUïî¡G<\'DÄ√Í(\0Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\n+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0)çËŒ“{Ló#\0Îa«k&ìôÁH¿ƒ„∫{ú∞™®®ò„(@q´÷Q√Z]]=ﬂÄ‚„:⁄µ÷.´U\0∏ˇUÎ†k´\00IBH?≥ZÄ…Î‹Çk´O9\"\0ÄÚ◊Z≠V`r¬˙Ñùó\0ò1IíÃ9{ˆÏéŒŒŒõ≠≠≠…ﬁΩ{M	LKKK“÷÷ˆmòZÔRÄâQmooOrπ\\r„∆\rSB”€€õ<x˚Ÿﬁ©\0)W™¢Z“qΩV∞\'ºSR\"~¸+`•=!¨Éﬁ©\0)ØÁâW…á’ÕX\0Â÷øÎIŒvΩüt∑¨û¯ÁÒg¬\'¨\0÷Ædì„\\ì¸ı+Ôò¯≥¯ö¯	+\0EÑıB˜wE5?ˇËﬁ)~¬\n@1a=±ˇ7cÜ5æ&~¬\n@a=æw›òaçØâü∞ ¨¬\n¿ÃÑ5ﬁ<VX„k‚\'¨\0÷”[«k|M¸ÑÄ\"¬⁄ó=öˇ”⁄ª??ãØâü∞PDX„|˝Âˆª¬\Z&|¬\n@±aΩ~=9˝Ámw~_?a`Çaç;+ùÍÿ2Ê5÷¯ö›óÑÄ{Ö5¨D{NÔKéÌ˘ıòQÕO¸ù¯ªVØ¬\n ¨£Ñı^´T´Wa†à∞Ndï:ﬁÍUÖ@XÊ~£ö1V\0a5¬\nÄ∞\n+\0¬jÑ@Xç∞ ¨¬\nÄ∞\ZaV#¨\0´∞0K¬\Z˛ıFùÈz]X(ª∞é˜≥©~]XVa@XÖUXÑUXÖ\0aV\0ÑUXVè€+Ä∞\Za@XÖ\0a5¬\n ¨FXVa@Xç∞´V\0a5¬\nÄ∞\n+\0¬jÑ@Xç∞ ¨¬\nÄ∞\ZaV#¨\0´∞0ôZ[[≈´¥ÁZÎ†w*@J¥µµı‰r9+—…f≥øa=·ù\nê˚ˆÌ˚’Åæª|˘Ú?Ö¨¥V™1™---Á¬,NHë?ÓyaU‘?rå◊Û“>UUUI¸wƒsqBTòq1¨é\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0+\0 ¨\0 ¨\0 ¨\0Ä∞Ä∞Ä∞Ä∞\0¬\n\0¬\n\0¬\n\0+\0+\0+\0´∞Ä∞Ä∞@ôEtgÈ=¶ÀëÄâÖıâ0É„Ö5ì…Ãs§\0`‚q›=NXUTTÃqî\0†∏UÎ®a≠ÆÆûÔ@ÒqÌZkó’*\0‹ˇ™u–µU\0ò$!§üY≠¿‰Öun¡µ’ß\0x@˘k≠V´\0PÑ∞\"}$¨PCC´ﬁ	≥?ÃÖ7.ıƒGm¬Ô¸.¸Ós·œw‘\0`ÑÖ>yÎZÍµ	Ï∏T8Ò∆¶CaÍ¨fòın›ı€UdL«öqÎ®0+Ön˘(MMMM≤q„∆d«éIwww“””ì\\ªv-âí\\.óú:u*ijj\Z˛Ω≈ãèÿ›·ÔÛò#¿¨PYY˘≠Îß∑cXWWó|¯·á√·,F“‹‹ú¨X±b‰>¬W¬+m\0fCT€#∏fÕö·ïÈÉ\Z\ZJvÌ⁄5º‚-¯{ˇfÅ£@Ÿ\ZπRç˘∆(Nñl6õ¨\\π≤0Æ◊Ï‘@Y∫uMıvÙ:;;ì©Ø…∆ÎØÖ+◊œ˛Ö3\0@9≠TÔÿÛ7ÆTßRº—©°°·éÁ_„3≤Œ\0e!ì…¸•öÍd~¸;ñ´WØ&Kñ,)º°Èøù	\0R/n˛Px˜ÔÉﬁ®Tå√áèºôÈqgÄT+¸N’¯HÕt€¥iSa\\ﬂqF\0H≠x]3øMa|¶ÿÁT\'√ô3gÓxæ5¨öÓÃ\0êJ∑6‘éZºSw¶n b?ﬂô ïn}KÕ¥‹	<ûO?˝‘ML\0îEXooqÚ‰…k|f∂`≈∫◊ô ≠aΩ˝}™”y7HÁœüø„ôVgÄ¥Üıv–ÚﬂR3‚ÜÖˇ.Œ\0©ÎLV\0¨X≠X‡é∞∫∆\n\0ìVw¿$ÜuK)<«\ZˇŸ+÷-Œ\0©Váµ•∞Û“à/?_‡Ã\0êJ555èÓø mÜØØ^ÛΩ¨\0§Z·u÷¶¶¶iÎ∂m€\n√˙æ3@™~ºlŸ≤i}Ï&õÕØîÛˇ¸Eã˝ª3@™UTTÃ	Q;ñè[ssÛ¥Öu˝˙ıÖõÔÊl\0Pv´÷∏Ç¸Êõo¶<™ªvÌ*¸x0Ñıﬂú	\0 Fà€Œ|Ë^~˘Â§øø ¢⁄——q«G¿añ:\0îï   GC‡zÛ±khhﬁjp*¢ZWWÁÜ%\0 _&ìôÊJ>zÒ\Zh__ﬂ§~¸;b•∫;˝aGÄ≤U]]=?ˇlkú∏∫å[>Ë›øk◊ÆΩc£}Q`÷X∏p·ì!|?Ü0ÓÃTÏ~¬qÛá¯úÍàUÍ«ø¢\n¿l[π˛¢€oÚÛ‚ã/&ü|ÚI“ﬁﬁ>|˜p˛:l¸ci\\›∆ΩW≠Z52¶√wˇ∫Q	ÄY+Æ*C`7é\\ΩﬁœƒÁT=R\0›ﬁSxC·çMúx≠ˆ};*¿(ÍÍÍ~vÎ˙Î;ÒÊ£Q>*Óâﬂß\Zø˙-D∏ Ü˙\0\0\0\0\0\0\0\0\0\0\0\0\0\0p˛VÉFÃ∞ \0\0\0\0IENDÆB`Ç',1);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('30005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0100‰∏át\0abct\0ÊãØÊïëÊ¥•Â∑¥Â∏ÉÈü¶t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('40005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('42505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('45005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('47505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50003',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qqt\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qqt\0	100‰∏áÂπ¥t\0abct\0ÈáçÂª∫Â§™Èò≥Á≥ªt\0leave',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('50018',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xpt\0qwet\0100‰∏át\0abct\0ÊãØÊïëÊ¥•Â∑¥Â∏ÉÈü¶t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5003',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5005',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7503',1,'var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('7505',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('9',1,'hist.var-var',NULL,'¨Ì\0sr\0com.yyq.oa.pojo.TaskInfo\0\0\0\0\0\0\0\0L\0assigneet\0Ljava/lang/String;L\0bo_moneyq\0~\0L\0bo_nameq\0~\0L\0	bo_reasonq\0~\0L\0keyq\0~\0xppt\0123t\0123t\0123t\0borrow',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','52501',22);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.history','create(5.18.0.0)',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.version','5.18.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','borrow:1:4','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10007','borrow:1:4','10001','10001','usertask1','10008',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','123','2017-12-10 20:20:22','2017-12-10 20:20:23',1002,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10011','borrow:1:4','10001','10001','usertask2','10012',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','123','2017-12-10 20:20:23',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10014','borrow:1:4','10013','10013','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42',1,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10019','borrow:1:4','10013','10013','usertask1','10020',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','123','2017-12-10 20:20:42','2017-12-10 20:20:42',661,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10023','borrow:1:4','10013','10013','usertask2','10024',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','123','2017-12-10 20:20:42',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('11','borrow:1:4','5','5','usertask1','12',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask',NULL,'2017-12-10 19:57:33',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12502','borrow:1:4','12501','12501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:27:47','2017-12-10 20:27:47',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12507','borrow:1:4','12501','12501','usertask1','12508',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','abc','2017-12-10 20:27:47','2017-12-10 20:27:48',1120,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('12512','borrow:1:4','12501','12501','usertask2','12513',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','abc','2017-12-10 20:27:48',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('14','borrow:1:4','13','13','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15002','borrow:1:4','15001','15001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09',9,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15007','borrow:1:4','15001','15001','usertask1','15008',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','abc','2017-12-10 20:36:09','2017-12-10 20:36:09',355,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('15012','borrow:1:4','15001','15001','usertask2','15013',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','abc','2017-12-10 20:36:09',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('19','borrow:1:4','13','13','usertask1','20',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask',NULL,'2017-12-10 19:58:41',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25010','leave:1:25008','25009','25009','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 12:08:49','2017-12-11 12:08:49',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25015','leave:1:25008','25009','25009','_4','25016',NULL,'ËØ∑ÂÅáÂçï','userTask','123','2017-12-11 12:08:49','2017-12-11 12:08:50',1068,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25019','leave:1:25008','25009','25009','_5','25020',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','123','2017-12-11 12:08:50',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2502','borrow:1:4','2501','2501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52',7,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25022','leave:1:25008','25021','25021','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25027','leave:1:25008','25021','25021','_4','25028',NULL,'ËØ∑ÂÅáÂçï','userTask','123','2017-12-11 12:09:16','2017-12-11 12:09:16',115,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('25031','leave:1:25008','25021','25021','_5','25032',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','123','2017-12-11 12:09:16',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2507','borrow:1:4','2501','2501','usertask1','2508',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask',NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52',227,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2511','borrow:1:4','2501','2501','usertask2','2512',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask',NULL,'2017-12-10 20:00:52',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27502','leave:1:25008','27501','27501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 14:24:43','2017-12-11 14:24:43',14,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27507','leave:1:25008','27501','27501','_4','27508',NULL,'ËØ∑ÂÅáÂçï','userTask','qwe','2017-12-11 14:24:43','2017-12-11 14:24:44',1029,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('27512','leave:1:25008','27501','27501','_5','27513',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qwe','2017-12-11 14:24:44','2017-12-11 15:39:05',4461972,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30002','borrow:2:15017','30001','30001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-11 14:34:48','2017-12-11 14:34:48',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30007','borrow:2:15017','30001','30001','usertask1','30008',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','qwe','2017-12-11 14:34:48','2017-12-11 14:34:48',165,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('30012','borrow:2:15017','30001','30001','usertask2','30013',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','qwe','2017-12-11 14:34:48','2017-12-11 15:42:01',4033143,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('32501','leave:1:25008','27501','27501','_6','32502',NULL,'ÊÄªÁªèÁêÜ','userTask','qwe','2017-12-11 15:39:06','2017-12-11 15:44:40',334875,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('35001','borrow:2:15017','30001','30001','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-12-11 15:42:01','2017-12-11 15:42:01',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('37501','leave:1:25008','27501','27501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-11 15:44:40','2017-12-11 15:44:40',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40002','leave:1:25008','40001','40001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-11 15:47:13','2017-12-11 15:47:13',23,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40007','leave:1:25008','40001','40001','_4','40008',NULL,'ËØ∑ÂÅáÂçï','userTask','qwe','2017-12-11 15:47:13','2017-12-11 15:47:13',740,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40012','leave:1:25008','40001','40001','_5','40013',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qwe','2017-12-11 15:47:13','2017-12-11 15:47:58',45217,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40014','leave:1:25008','40001','40001','_6','40015',NULL,'ÊÄªÁªèÁêÜ','userTask','qwe','2017-12-11 15:47:58','2017-12-11 15:48:32',34302,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('40016','leave:1:25008','40001','40001','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-11 15:48:32','2017-12-11 15:48:32',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42502','leave:1:25008','42501','42501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 10:01:22','2017-12-12 10:01:22',9,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42507','leave:1:25008','42501','42501','_4','42508',NULL,'ËØ∑ÂÅáÂçï','userTask','qwe','2017-12-12 10:01:22','2017-12-12 10:01:22',691,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42512','leave:1:25008','42501','42501','_5','42513',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qwe','2017-12-12 10:01:22','2017-12-12 10:01:53',31369,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42514','leave:1:25008','42501','42501','_6','42515',NULL,'ÊÄªÁªèÁêÜ','userTask','asd','2017-12-12 10:01:53','2017-12-12 10:02:23',30893,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('42517','leave:1:25008','42501','42501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 10:02:23','2017-12-12 10:02:23',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45002','leave:1:25008','45001','45001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 12:05:35','2017-12-12 12:05:35',11,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45007','leave:1:25008','45001','45001','_4','45008',NULL,'ËØ∑ÂÅáÂçï','userTask','qwe','2017-12-12 12:05:35','2017-12-12 12:05:35',746,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45012','leave:1:25008','45001','45001','_5','45013',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qwe','2017-12-12 12:05:35','2017-12-12 12:06:04',29445,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45014','leave:1:25008','45001','45001','_6','45015',NULL,'ÊÄªÁªèÁêÜ','userTask','asd','2017-12-12 12:06:04','2017-12-12 12:06:37',33741,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('45017','leave:1:25008','45001','45001','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 12:06:37','2017-12-12 12:06:37',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47502','leave:1:25008','47501','47501','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-12 15:07:41','2017-12-12 15:07:41',20,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47507','leave:1:25008','47501','47501','_4','47508',NULL,'ËØ∑ÂÅáÂçï','userTask','qwe','2017-12-12 15:07:41','2017-12-12 15:07:41',341,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47512','leave:1:25008','47501','47501','_5','47513',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qwe','2017-12-12 15:07:41','2017-12-12 15:09:01',80826,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47514','leave:1:25008','47501','47501','_6','47515',NULL,'ÊÄªÁªèÁêÜ','userTask','qwe','2017-12-12 15:09:01','2017-12-12 15:09:07',6541,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('47516','leave:1:25008','47501','47501','_3',NULL,NULL,'EndEvent','endEvent',NULL,'2017-12-12 15:09:07','2017-12-12 15:09:07',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50002','leave:1:25008','50001','50001','_2',NULL,NULL,'StartEvent','startEvent',NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39',32,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50007','leave:1:25008','50001','50001','_4','50008',NULL,'ËØ∑ÂÅáÂçï','userTask','qq','2017-12-13 00:37:39','2017-12-13 00:37:39',553,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50012','leave:1:25008','50001','50001','_5','50013',NULL,'ÈÉ®Èó®ÁªèÁêÜ','userTask','qq','2017-12-13 00:37:39',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50015','borrow:2:15017','50014','50014','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-13 00:37:55','2017-12-13 00:37:55',1,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5002','borrow:1:4','5001','5001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38',8,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50020','borrow:2:15017','50014','50014','usertask1','50021',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask','qwe','2017-12-13 00:37:55','2017-12-13 00:37:55',880,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50025','borrow:2:15017','50014','50014','usertask2','50026',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask','qwe','2017-12-13 00:37:55','2017-12-13 00:38:55',60386,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('50027','borrow:2:15017','50014','50014','endevent1',NULL,NULL,'End','endEvent',NULL,'2017-12-13 00:38:55','2017-12-13 00:38:55',0,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5007','borrow:1:4','5001','5001','usertask1','5008',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask',NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38',884,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('5011','borrow:1:4','5001','5001','usertask2','5012',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask',NULL,'2017-12-10 20:06:38',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('6','borrow:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33',14,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7502','borrow:1:4','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7507','borrow:1:4','7501','7501','usertask1','7508',NULL,'Áî≥ËØ∑Ëµ∑Ëçâ','userTask',NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30',850,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7511','borrow:1:4','7501','7501','usertask2','7512',NULL,'ÁªèÁêÜÂÆ°Ê†∏','userTask',NULL,'2017-12-10 20:08:30',NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('10010','event','2017-12-10 20:20:22',NULL,'10008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('10022','event','2017-12-10 20:20:42',NULL,'10020',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('12511','event','2017-12-10 20:27:48',NULL,'12508',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('15011','event','2017-12-10 20:36:09',NULL,'15008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('25018','event','2017-12-11 12:08:50',NULL,'25016',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('25030','event','2017-12-11 12:09:16',NULL,'25028',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('2510','event','2017-12-10 20:00:52',NULL,'2508',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('27511','event','2017-12-11 14:24:43',NULL,'27508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('30011','event','2017-12-11 14:34:48',NULL,'30008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('40011','event','2017-12-11 15:47:13',NULL,'40008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('42511','event','2017-12-12 10:01:22',NULL,'42508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('45011','event','2017-12-12 12:05:35',NULL,'45008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('47511','event','2017-12-12 15:07:41',NULL,'47508',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('50011','event','2017-12-13 00:37:39',NULL,'50008',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('50024','event','2017-12-13 00:37:55',NULL,'50021',NULL,'AddUserLink','abc_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('5010','event','2017-12-10 20:06:38',NULL,'5008',NULL,'AddUserLink','123_|_owner',NULL);
insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('7510','event','2017-12-10 20:08:30',NULL,'7508',NULL,'AddUserLink','123_|_owner',NULL);

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10009',NULL,'participant','123',NULL,'10001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10021',NULL,'participant','123',NULL,'10013');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('12509',NULL,'participant','abc',NULL,'12501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('12510',NULL,'participant','123',NULL,'12501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('15009',NULL,'participant','abc',NULL,'15001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('15010',NULL,'participant','123',NULL,'15001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('25017',NULL,'participant','123',NULL,'25009');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('25029',NULL,'participant','123',NULL,'25021');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('2509',NULL,'participant','123',NULL,'2501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('27509',NULL,'participant','qwe',NULL,'27501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('27510',NULL,'participant','abc',NULL,'27501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('30009',NULL,'participant','qwe',NULL,'30001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('30010',NULL,'participant','abc',NULL,'30001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('40009',NULL,'participant','qwe',NULL,'40001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('40010',NULL,'participant','abc',NULL,'40001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42509',NULL,'participant','qwe',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42510',NULL,'participant','abc',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('42516',NULL,'participant','asd',NULL,'42501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45009',NULL,'participant','qwe',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45010',NULL,'participant','abc',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('45016',NULL,'participant','asd',NULL,'45001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('47509',NULL,'participant','qwe',NULL,'47501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('47510',NULL,'participant','abc',NULL,'47501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50009',NULL,'participant','qq',NULL,'50001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50010',NULL,'participant','abc',NULL,'50001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50022',NULL,'participant','qwe',NULL,'50014');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('50023',NULL,'participant','abc',NULL,'50014');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('5009',NULL,'participant','123',NULL,'5001');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('7509',NULL,'participant','123',NULL,'7501');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10001','10001',NULL,'borrow:1:4','2017-12-10 20:20:22',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10013','10013',NULL,'borrow:1:4','2017-12-10 20:20:42',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('12501','12501',NULL,'borrow:1:4','2017-12-10 20:27:47',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('13','13',NULL,'borrow:1:4','2017-12-10 19:58:41',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('15001','15001',NULL,'borrow:1:4','2017-12-10 20:36:09',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('25009','25009',NULL,'leave:1:25008','2017-12-11 12:08:49',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2501','2501',NULL,'borrow:1:4','2017-12-10 20:00:52',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('25021','25021',NULL,'leave:1:25008','2017-12-11 12:09:16',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('27501','27501',NULL,'leave:1:25008','2017-12-11 14:24:43','2017-12-11 15:44:40',4797898,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('30001','30001',NULL,'borrow:2:15017','2017-12-11 14:34:48','2017-12-11 15:42:01',4033200,NULL,'startevent1','endevent1',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('40001','40001',NULL,'leave:1:25008','2017-12-11 15:47:13','2017-12-11 15:48:32',79305,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('42501','42501',NULL,'leave:1:25008','2017-12-12 10:01:22','2017-12-12 10:02:23',61895,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('45001','45001',NULL,'leave:1:25008','2017-12-12 12:05:35','2017-12-12 12:06:37',62742,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('47501','47501',NULL,'leave:1:25008','2017-12-12 15:07:41','2017-12-12 15:09:07',86544,NULL,'_2','_3',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('5','5',NULL,'borrow:1:4','2017-12-10 19:57:33',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('50001','50001',NULL,'leave:1:25008','2017-12-13 00:37:39',NULL,NULL,NULL,'_2',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('5001','5001',NULL,'borrow:1:4','2017-12-10 20:06:38',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('50014','50014',NULL,'borrow:2:15017','2017-12-13 00:37:55','2017-12-13 00:38:55',60389,NULL,'startevent1','endevent1',NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('7501','7501',NULL,'borrow:1:4','2017-12-10 20:08:30',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10008','borrow:1:4','usertask1','10001','10001','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123','123','2017-12-10 20:20:22',NULL,'2017-12-10 20:20:22',990,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10012','borrow:1:4','usertask2','10001','10001','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'123','2017-12-10 20:20:23',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10020','borrow:1:4','usertask1','10013','10013','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123','123','2017-12-10 20:20:42',NULL,'2017-12-10 20:20:42',655,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10024','borrow:1:4','usertask2','10013','10013','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'123','2017-12-10 20:20:42',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12','borrow:1:4','usertask1','5','5','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,NULL,NULL,'2017-12-10 19:57:33',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12508','borrow:1:4','usertask1','12501','12501','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123','abc','2017-12-10 20:27:47',NULL,'2017-12-10 20:27:48',1107,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('12513','borrow:1:4','usertask2','12501','12501','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'abc','2017-12-10 20:27:48',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('15008','borrow:1:4','usertask1','15001','15001','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123','abc','2017-12-10 20:36:09',NULL,'2017-12-10 20:36:09',335,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('15013','borrow:1:4','usertask2','15001','15001','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'abc','2017-12-10 20:36:09',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('20','borrow:1:4','usertask1','13','13','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,NULL,NULL,'2017-12-10 19:58:41',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25016','leave:1:25008','_4','25009','25009','ËØ∑ÂÅáÂçï',NULL,NULL,'123','123','2017-12-11 12:08:49',NULL,'2017-12-11 12:08:50',1061,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25020','leave:1:25008','_5','25009','25009','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'123','2017-12-11 12:08:50',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25028','leave:1:25008','_4','25021','25021','ËØ∑ÂÅáÂçï',NULL,NULL,'123','123','2017-12-11 12:09:16',NULL,'2017-12-11 12:09:16',112,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('25032','leave:1:25008','_5','25021','25021','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'123','2017-12-11 12:09:16',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2508','borrow:1:4','usertask1','2501','2501','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123',NULL,'2017-12-10 20:00:52',NULL,'2017-12-10 20:00:52',212,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2512','borrow:1:4','usertask2','2501','2501','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,NULL,'2017-12-10 20:00:52',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('27508','leave:1:25008','_4','27501','27501','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qwe','2017-12-11 14:24:43',NULL,'2017-12-11 14:24:44',1020,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('27513','leave:1:25008','_5','27501','27501','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-11 14:24:44',NULL,'2017-12-11 15:39:05',4461892,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('30008','borrow:2:15017','usertask1','30001','30001','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'abc','qwe','2017-12-11 14:34:48',NULL,'2017-12-11 14:34:48',153,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('30013','borrow:2:15017','usertask2','30001','30001','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'qwe','2017-12-11 14:34:48',NULL,'2017-12-11 15:42:01',4033127,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('32502','leave:1:25008','_6','27501','27501','ÊÄªÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-11 15:39:06',NULL,'2017-12-11 15:44:40',334848,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40008','leave:1:25008','_4','40001','40001','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qwe','2017-12-11 15:47:13',NULL,'2017-12-11 15:47:13',730,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40013','leave:1:25008','_5','40001','40001','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-11 15:47:13',NULL,'2017-12-11 15:47:58',45212,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('40015','leave:1:25008','_6','40001','40001','ÊÄªÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-11 15:47:58',NULL,'2017-12-11 15:48:32',34297,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42508','leave:1:25008','_4','42501','42501','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qwe','2017-12-12 10:01:22',NULL,'2017-12-12 10:01:22',686,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42513','leave:1:25008','_5','42501','42501','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-12 10:01:22',NULL,'2017-12-12 10:01:53',31366,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('42515','leave:1:25008','_6','42501','42501','ÊÄªÁªèÁêÜ',NULL,NULL,NULL,'asd','2017-12-12 10:01:53',NULL,'2017-12-12 10:02:23',30891,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45008','leave:1:25008','_4','45001','45001','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qwe','2017-12-12 12:05:35',NULL,'2017-12-12 12:05:35',738,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45013','leave:1:25008','_5','45001','45001','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-12 12:05:35',NULL,'2017-12-12 12:06:04',29442,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('45015','leave:1:25008','_6','45001','45001','ÊÄªÁªèÁêÜ',NULL,NULL,NULL,'asd','2017-12-12 12:06:04',NULL,'2017-12-12 12:06:37',33739,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47508','leave:1:25008','_4','47501','47501','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qwe','2017-12-12 15:07:41',NULL,'2017-12-12 15:07:41',331,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47513','leave:1:25008','_5','47501','47501','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-12 15:07:41',NULL,'2017-12-12 15:09:01',80822,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('47515','leave:1:25008','_6','47501','47501','ÊÄªÁªèÁêÜ',NULL,NULL,NULL,'qwe','2017-12-12 15:09:01',NULL,'2017-12-12 15:09:07',6538,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50008','leave:1:25008','_4','50001','50001','ËØ∑ÂÅáÂçï',NULL,NULL,'abc','qq','2017-12-13 00:37:39',NULL,'2017-12-13 00:37:39',538,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50013','leave:1:25008','_5','50001','50001','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,NULL,'qq','2017-12-13 00:37:39',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50021','borrow:2:15017','usertask1','50014','50014','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'abc','qwe','2017-12-13 00:37:55',NULL,'2017-12-13 00:37:55',875,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('50026','borrow:2:15017','usertask2','50014','50014','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,'qwe','2017-12-13 00:37:55',NULL,'2017-12-13 00:38:55',60382,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5008','borrow:1:4','usertask1','5001','5001','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123',NULL,'2017-12-10 20:06:38',NULL,'2017-12-10 20:06:38',866,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('5012','borrow:1:4','usertask2','5001','5001','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,NULL,'2017-12-10 20:06:38',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7508','borrow:1:4','usertask1','7501','7501','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'123',NULL,'2017-12-10 20:08:30',NULL,'2017-12-10 20:08:30',822,'completed',50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7512','borrow:1:4','usertask2','7501','7501','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,NULL,NULL,'2017-12-10 20:08:30',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10','5','5',NULL,'user','null',0,NULL,NULL,NULL,NULL,NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10004','10001','10001',NULL,'var','serializable',1,'10005',NULL,NULL,NULL,NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10006','10001','10001',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-10 20:20:22','2017-12-10 20:20:22');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10016','10013','10013',NULL,'var','serializable',1,'10017',NULL,NULL,NULL,NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10018','10013','10013',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-10 20:20:42','2017-12-10 20:20:42');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('12504','12501','12501',NULL,'var','serializable',1,'12505',NULL,NULL,NULL,NULL,'2017-12-10 20:27:47','2017-12-10 20:27:48');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('12506','12501','12501',NULL,'user','string',1,NULL,NULL,NULL,'abc',NULL,'2017-12-10 20:27:47','2017-12-10 20:27:48');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('15004','15001','15001',NULL,'var','serializable',1,'15005',NULL,NULL,NULL,NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('15006','15001','15001',NULL,'user','string',1,NULL,NULL,NULL,'abc',NULL,'2017-12-10 20:36:09','2017-12-10 20:36:09');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('16','13','13',NULL,'var','serializable',0,'17',NULL,NULL,NULL,NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('18','13','13',NULL,'user','null',0,NULL,NULL,NULL,NULL,NULL,'2017-12-10 19:58:41','2017-12-10 19:58:41');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25012','25009','25009',NULL,'var','serializable',1,'25013',NULL,NULL,NULL,NULL,'2017-12-11 12:08:49','2017-12-11 12:08:50');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25014','25009','25009',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-11 12:08:49','2017-12-11 12:08:50');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25024','25021','25021',NULL,'var','serializable',1,'25025',NULL,NULL,NULL,NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('25026','25021','25021',NULL,'user','string',1,NULL,NULL,NULL,'123',NULL,'2017-12-11 12:09:16','2017-12-11 12:09:16');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('2504','2501','2501',NULL,'var','serializable',1,'2505',NULL,NULL,NULL,NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('2506','2501','2501',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:00:52','2017-12-10 20:00:52');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('27504','27501','27501',NULL,'var','serializable',3,'27505',NULL,NULL,NULL,NULL,'2017-12-11 14:24:43','2017-12-11 15:44:40');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('27506','27501','27501',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 14:24:43','2017-12-11 15:44:40');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('30004','30001','30001',NULL,'var','serializable',2,'30005',NULL,NULL,NULL,NULL,'2017-12-11 14:34:48','2017-12-11 15:42:01');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('30006','30001','30001',NULL,'user','string',2,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 14:34:48','2017-12-11 15:42:01');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('40004','40001','40001',NULL,'var','serializable',3,'40005',NULL,NULL,NULL,NULL,'2017-12-11 15:47:13','2017-12-11 15:48:32');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('40006','40001','40001',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-11 15:47:13','2017-12-11 15:48:32');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('42504','42501','42501',NULL,'var','serializable',3,'42505',NULL,NULL,NULL,NULL,'2017-12-12 10:01:22','2017-12-12 10:02:23');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('42506','42501','42501',NULL,'user','string',3,NULL,NULL,NULL,'zxc',NULL,'2017-12-12 10:01:22','2017-12-12 10:02:23');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('45004','45001','45001',NULL,'var','serializable',3,'45005',NULL,NULL,NULL,NULL,'2017-12-12 12:05:35','2017-12-12 12:06:37');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('45006','45001','45001',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-12 12:05:35','2017-12-12 12:06:37');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('47504','47501','47501',NULL,'var','serializable',3,'47505',NULL,NULL,NULL,NULL,'2017-12-12 15:07:41','2017-12-12 15:09:07');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('47506','47501','47501',NULL,'user','string',3,NULL,NULL,NULL,'qwe',NULL,'2017-12-12 15:07:41','2017-12-12 15:09:07');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50004','50001','50001',NULL,'var','serializable',1,'50005',NULL,NULL,NULL,NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50006','50001','50001',NULL,'user','string',1,NULL,NULL,NULL,'qq',NULL,'2017-12-13 00:37:39','2017-12-13 00:37:39');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50017','50014','50014',NULL,'var','serializable',2,'50018',NULL,NULL,NULL,NULL,'2017-12-13 00:37:55','2017-12-13 00:38:55');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('50019','50014','50014',NULL,'user','string',2,NULL,NULL,NULL,'qwe',NULL,'2017-12-13 00:37:55','2017-12-13 00:38:55');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('5004','5001','5001',NULL,'var','serializable',1,'5005',NULL,NULL,NULL,NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('5006','5001','5001',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:06:38','2017-12-10 20:06:38');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('7504','7501','7501',NULL,'var','serializable',1,'7505',NULL,NULL,NULL,NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('7506','7501','7501',NULL,'user','null',1,NULL,NULL,NULL,NULL,NULL,'2017-12-10 20:08:30','2017-12-10 20:08:30');
insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('8','5','5',NULL,'var','serializable',0,'9',NULL,NULL,NULL,NULL,'2017-12-10 19:57:33','2017-12-10 19:57:33');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

insert  into `act_id_info`(`ID_`,`REV_`,`USER_ID_`,`TYPE_`,`KEY_`,`VALUE_`,`PASSWORD_`,`PARENT_ID_`) values ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1','ÂÄüÊ¨æ','ÂÄüÈí±ÂÆ°Ê†∏','','2017-12-10 19:56:58');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('15014','ÂèàÊòØ‰∏ÄÂπ¥Êò•Â•ΩÂ§Ñ','ÁªùËÉúÁÉüÊü≥Êª°ÁöáÈÉΩ','','2017-12-10 20:44:24');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('25005','Ê≠£Â∏∏ÁöÑÂä®ÊÄÅÁîüÊàêÂÆ°Êâπ','ËØ∑ÂÅáÂÆ°Êâπ','','2017-12-11 12:08:30');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('borrow:1:4',1,'http://www.activiti.org/test','My process','borrow',1,'1','shenhe.bpmn','shenhe.borrow.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('borrow:2:15017',1,'http://www.activiti.org/test','My process','borrow',2,'15014','shenhe.bpmn','shenhe.borrow.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('leave:1:25008',1,'http://www.activiti.org/testm1512639392727',NULL,'leave',1,'25005','leave.bpmn','leave.leave.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10001',2,'10001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10013',2,'10013',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('12501',2,'12501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('13',1,'13',NULL,NULL,'borrow:1:4',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('15001',2,'15001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('25009',2,'25009',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('2501',2,'2501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('25021',2,'25021',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('5',1,'5',NULL,NULL,'borrow:1:4',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('50001',2,'50001',NULL,NULL,'leave:1:25008',NULL,'_5',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('5001',2,'5001',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('7501',2,'7501',NULL,NULL,'borrow:1:4',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10009',1,NULL,'participant','123',NULL,'10001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10021',1,NULL,'participant','123',NULL,'10013',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('12509',1,NULL,'participant','abc',NULL,'12501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('12510',1,NULL,'participant','123',NULL,'12501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('15009',1,NULL,'participant','abc',NULL,'15001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('15010',1,NULL,'participant','123',NULL,'15001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('25017',1,NULL,'participant','123',NULL,'25009',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('25029',1,NULL,'participant','123',NULL,'25021',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('2509',1,NULL,'participant','123',NULL,'2501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('50009',1,NULL,'participant','qq',NULL,'50001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('50010',1,NULL,'participant','abc',NULL,'50001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('5009',1,NULL,'participant','123',NULL,'5001',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('7509',1,NULL,'participant','123',NULL,'7501',NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10012',1,'10001','10001','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,'123',NULL,50,'2017-12-10 20:20:23',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10024',1,'10013','10013','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,'123',NULL,50,'2017-12-10 20:20:42',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('12',1,'5','5','borrow:1:4','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-12-10 19:57:33',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('12513',1,'12501','12501','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,'abc',NULL,50,'2017-12-10 20:27:48',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('15013',1,'15001','15001','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,'abc',NULL,50,'2017-12-10 20:36:09',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('20',1,'13','13','borrow:1:4','Áî≥ËØ∑Ëµ∑Ëçâ',NULL,NULL,'usertask1',NULL,NULL,NULL,50,'2017-12-10 19:58:41',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('25020',1,'25009','25009','leave:1:25008','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,'_5',NULL,'123',NULL,50,'2017-12-11 12:08:50',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('25032',1,'25021','25021','leave:1:25008','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,'_5',NULL,'123',NULL,50,'2017-12-11 12:09:16',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('2512',1,'2501','2501','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:00:52',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('50013',1,'50001','50001','leave:1:25008','ÈÉ®Èó®ÁªèÁêÜ',NULL,NULL,'_5',NULL,'qq',NULL,50,'2017-12-13 00:37:39',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('5012',1,'5001','5001','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:06:38',NULL,NULL,1,'',NULL);
insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('7512',1,'7501','7501','borrow:1:4','ÁªèÁêÜÂÆ°Ê†∏',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2017-12-10 20:08:30',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10',1,'null','user','5','5',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10004',1,'serializable','var','10001','10001',NULL,'10003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10006',1,'string','user','10001','10001',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10016',1,'serializable','var','10013','10013',NULL,'10015',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10018',1,'string','user','10013','10013',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('12504',1,'serializable','var','12501','12501',NULL,'12503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('12506',1,'string','user','12501','12501',NULL,NULL,NULL,NULL,'abc',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('15004',1,'serializable','var','15001','15001',NULL,'15003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('15006',1,'string','user','15001','15001',NULL,NULL,NULL,NULL,'abc',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('16',1,'serializable','var','13','13',NULL,'15',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('18',1,'null','user','13','13',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25012',1,'serializable','var','25009','25009',NULL,'25011',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25014',1,'string','user','25009','25009',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25024',1,'serializable','var','25021','25021',NULL,'25023',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('25026',1,'string','user','25021','25021',NULL,NULL,NULL,NULL,'123',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2504',1,'serializable','var','2501','2501',NULL,'2503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2506',1,'null','user','2501','2501',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('50004',1,'serializable','var','50001','50001',NULL,'50003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('50006',1,'string','user','50001','50001',NULL,NULL,NULL,NULL,'qq',NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('5004',1,'serializable','var','5001','5001',NULL,'5003',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('5006',1,'null','user','5001','5001',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('7504',1,'serializable','var','7501','7501',NULL,'7503',NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('7506',1,'null','user','7501','7501',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('8',1,'serializable','var','5','5',NULL,'7',NULL,NULL,NULL,NULL);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ËèúÂçïid',
  `parentid` int(11) DEFAULT NULL COMMENT 'Áà∂Á∫ßËèúÂçïid',
  `menuname` varchar(50) NOT NULL COMMENT 'ËèúÂçïÂêçÁß∞',
  `url` varchar(50) DEFAULT NULL COMMENT 'urlÂú∞ÂùÄ',
  `perms` varchar(50) DEFAULT NULL COMMENT 'ÂèÇÊï∞',
  `type` smallint(3) NOT NULL COMMENT 'Á±ªÂûã',
  `icon` varchar(50) DEFAULT NULL COMMENT 'ÂõæÊ†á',
  PRIMARY KEY (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (1,8,'ÂæÖÂäû‰∫ãÈ°π','/task/index.action','task:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (2,8,'ÂëòÂ∑•‰∏≠ÂøÉ','/task/index.action','task:open',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (3,NULL,'Á≥ªÁªüÁÆ°ÁêÜ','/sys/','sys',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (4,3,'Áî®Êà∑ÁÆ°ÁêÜ','/sys/user/indexx.action','sys:user:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (5,3,'ËßíËâ≤ÁÆ°ÁêÜ','/sys/role/index.action','sys:role:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (6,3,'ËèúÂçïÁÆ°ÁêÜ','/sys/menu/index.action','sys:menu:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (7,3,'activiti ÊµÅÁ®ãÁÆ°ÁêÜ','/sys/activiti/index.action','sys:activiti:index',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (8,NULL,'task ÊµÅÁ®ã‰ªªÂä°','/task/','task',0,'');
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (9,1,'ÂæÖÂäû‰∫ãÈ°πÂàóË°®È°µ','/task/index.action','task:index',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (10,1,'Êü•ÁúãÂæÖÂäû‰∫ãÈ°πËØ¶ÊÉÖ','/task/view.action','task:view',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (11,1,'ÂàóÂá∫ÂæÖÂäû‰∫ãÈ°π','/task/list.action','task:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (12,1,'ÂæÖÂäû‰∫ãÈ°πÂÆ°Ê†∏','/task/doNext/Task','task:doNextTask',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (13,2,'ÁºñËæë‰ªªÂä°(ËØ∑ÂÅá,ÂÄüÊ¨æÁ≠â)','/task/open.action','task:open',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (14,2,'ÂºÄÂêØ‰ªªÂä°','/task/doStart.action','task:doStart',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (15,4,'Áî®Êà∑ÂàóË°®','/sys/user/findAllUser','sys:user:findAllUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (16,4,'Ë°®ÂçïÈ°µ','/sys/user/form.action','sys:user:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (17,4,'Âà†Èô§Áî®Êà∑','/sys/user/delete.action','sys:user:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (18,4,'Êñ∞Â¢û','/sys/user/addUser.action','sys:user:addUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (19,4,'‰øÆÊîπ','/sys/user/updateUser.action','sys:user:updateUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (20,4,'Êü•Êâæ','/sys/user/findUser.action','sys:user:findUser',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (21,5,'Ë°®ÂçïÈ°µ','/sys/role/form.action','sys:rolle:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (22,5,'Êü•Êâæ','/sys/role/info.action','sys:role:info',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (23,5,'ÂàóË°®','/sys/role/findAllRole.action','sys:role:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (24,5,'Êñ∞Â¢û','/sys/role/addRole.action','sys:role:add',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (25,5,'‰øÆÊîπ','/sys/role/updateRole.action','sys:role:edit',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (26,5,'Âà†Èô§','/sys/role/delete.action','sys:role:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (27,6,'ÂàóË°®','/sys/menu/findAllMenu.action','sys:menu:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (28,6,'Êñ∞Â¢û','/sys/menu/findAllMenu.action','sys:menu:add',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (29,6,'Ë°®ÂçïÈ°µ','/sys/menu/form.action','sys:menu:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (30,6,'‰øÆÊîπ','/sys/menu/update.action','sys:menu:update',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (31,6,'Êü•Êâæ','/sys/menu/info.action','sys:menu:info',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (32,6,'Âà†Èô§','/sys/menu/delelte.action','sys:menu:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (33,7,'ÂàóË°®','/activiti/list.action','activiti:list',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (34,7,'ÂèëÂ∏É','/activiti/deploy.action','activiti:deploy',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (35,7,'Ë°®Âçï','/activiti/form.action','activiti:form',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (36,7,'Âà†Èô§','/sys/activiti/delete.action','sys:activiti:delete',1,NULL);
insert  into `menu`(`menuid`,`parentid`,`menuname`,`url`,`perms`,`type`,`icon`) values (37,4,'123','123','123',1,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ËßíËâ≤id',
  `rolename` varchar(50) NOT NULL COMMENT 'ËßíËâ≤ÂêçÁß∞',
  `remark` varchar(50) NOT NULL COMMENT 'ËßíËâ≤ËØ¥Êòé',
  `createuserid` int(11) DEFAULT NULL COMMENT 'ÂàõÂª∫ËÄÖid',
  `createtime` datetime NOT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (1,'admin','Á≥ªÁªüÁÆ°ÁêÜÂëò,Êã•ÊúâÊúÄÈ´òÊùÉÈôê',1,'2017-12-09 22:31:05');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (2,'coder','Á®ãÂ∫èÂëò',1,'2017-12-11 12:18:22');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (3,'codermanager','Á®ãÂ∫èÂºÄÂèëÈÉ®Èó®ÁªèÁêÜ',1,'2017-12-11 12:19:33');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (4,'topmanager','ÊÄªÁªèÁêÜ',1,'2017-12-11 12:20:10');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (5,'financialexe','Ë¥¢Âä°‰∏ªÁÆ°',1,'2017-12-11 14:38:43');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (6,'manager','ÈÄöÁî®ËßíËâ≤,ÁªèÁêÜ‰∏ªÁÆ°Á∫ßÂà´',1,'2017-12-11 12:36:05');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (7,'employee','ÊôÆÈÄöÂëòÂ∑•,',1,'2017-12-11 14:22:22');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (9,'111','111',1,'2018-01-04 16:17:52');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (12,'haha','haha sha',123,'2017-12-12 21:04:33');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (13,'xixi','xixisha',123,'2017-12-12 21:07:45');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (14,'baoan','baoweililiang ',123,'2017-12-12 21:31:30');
insert  into `role`(`roleid`,`rolename`,`remark`,`createuserid`,`createtime`) values (15,'aaaaaaaaa','aaaaaaa',123,'2017-12-12 22:07:43');

/*Table structure for table `role_menu` */

DROP TABLE IF EXISTS `role_menu`;

CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL DEFAULT '1' COMMENT 'ËßíËâ≤id',
  `menuid` int(11) NOT NULL COMMENT 'ËèúÂçïid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

/*Data for the table `role_menu` */

insert  into `role_menu`(`id`,`roleid`,`menuid`) values (236,1,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (235,1,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (234,1,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (233,1,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (232,1,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (231,1,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (230,1,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (229,1,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (228,1,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (227,1,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (226,1,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (225,1,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (224,1,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (223,1,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (222,1,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (221,1,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (220,1,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (219,1,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (218,1,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (217,1,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (216,1,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (215,1,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (214,1,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (213,1,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (212,1,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (211,1,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (210,1,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (327,15,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (326,15,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (325,15,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (324,15,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (323,15,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (322,15,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (321,15,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (320,15,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (319,15,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (318,15,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (317,15,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (316,15,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (315,15,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (314,15,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (313,15,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (312,15,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (311,15,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (310,15,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (309,15,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (308,15,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (307,15,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (306,15,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (305,15,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (304,15,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (303,15,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (302,15,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (301,15,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (300,14,14);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (299,14,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (298,14,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (297,14,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (296,13,12);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (295,13,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (294,13,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (293,13,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (292,13,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (291,13,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (97,5,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (98,5,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (99,5,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (100,5,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (101,4,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (102,4,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (103,4,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (104,4,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (105,4,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (106,4,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (107,4,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (108,4,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (109,10,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (110,10,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (111,10,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (112,10,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (113,10,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (114,10,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (115,10,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (116,10,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (117,11,3);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (118,11,4);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (119,11,15);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (120,11,16);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (121,11,17);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (122,11,18);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (123,11,19);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (124,11,20);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (125,11,5);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (126,11,21);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (127,11,22);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (128,11,23);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (129,11,24);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (130,11,25);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (131,11,26);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (132,11,6);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (133,11,27);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (134,11,28);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (135,11,29);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (136,11,30);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (137,11,31);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (138,11,32);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (139,11,7);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (140,11,33);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (141,11,34);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (142,11,35);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (143,11,36);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (144,6,8);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (145,6,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (146,6,9);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (147,6,10);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (148,6,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (149,6,12);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (150,6,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (151,6,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (152,6,14);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (182,9,13);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (181,9,2);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (180,9,11);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (179,9,1);
insert  into `role_menu`(`id`,`roleid`,`menuid`) values (178,9,8);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL COMMENT 'Áî®Êà∑Âêç',
  `password` varchar(32) NOT NULL,
  `email` varchar(55) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Áä∂ÊÄÅ 0 Á¶ÅÁî® 1Ê≠£Â∏∏ ÈªòËÆ§1',
  `createuserid` int(11) NOT NULL COMMENT 'ÂàõÂª∫ËÄÖid',
  `mobile` varchar(11) DEFAULT NULL,
  `createtime` date DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (1,'123','9c3b5c0672cd599ccf1019bddaa8089b','464',1,1,'17703548195','2017-11-15');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (2,'abc','c1b78dca784fff2a7db1fd3f0b5a3b2c','21341241',1,1,'17703548195','2017-12-29');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (4,'asd','8523dd698141c9d2c943ebf2b77c4e7f','232',1,1,'2341513','2017-12-07');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (3,'qwe','1eab0552b4dfc365cdc1fa8d8be10179','2123',1,1,'2144','2017-12-13');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (5,'zxc','32bbab3913e871b97ee23ca58077d5b1','2345424543',1,1,'546547','2017-12-20');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (10,'111','111','111',1,1,'111','2017-12-14');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (11,'zzz','zzz','zzz',1,1,'zzz','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (12,'aaa','aaa','aaa',0,1,'aaa','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (13,'bbb','bbb','bbb',1,1,'bbb','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (15,'qq','qq','qq',0,1,'qq','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (16,'aaa','aaa','aaa',0,1,'aaa','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (17,'ss','415c8165505270cd2fb815ec5663c73e','ss',0,1,'ss','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (18,'b','a91bbfa0bc81db464eb0db7ee35a6fc3','b',1,1,'b','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (19,'ff','7d000d3973106939ffd20aa770a54413','ff',0,1,'ff','2017-12-12');
insert  into `user`(`userid`,`username`,`password`,`email`,`status`,`createuserid`,`mobile`,`createtime`) values (20,'1','a38b872c85e9096dd2d97b5dbe482861','1',0,1,'1','2017-12-12');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`userid`,`roleid`) values (1,1,1);
insert  into `user_role`(`id`,`userid`,`roleid`) values (2,2,2);
insert  into `user_role`(`id`,`userid`,`roleid`) values (3,3,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (4,4,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (5,5,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (6,2,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (38,15,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (37,15,6);
insert  into `user_role`(`id`,`userid`,`roleid`) values (36,15,4);
insert  into `user_role`(`id`,`userid`,`roleid`) values (35,15,3);
insert  into `user_role`(`id`,`userid`,`roleid`) values (34,15,2);
insert  into `user_role`(`id`,`userid`,`roleid`) values (32,13,7);
insert  into `user_role`(`id`,`userid`,`roleid`) values (33,13,9);
insert  into `user_role`(`id`,`userid`,`roleid`) values (39,15,9);
insert  into `user_role`(`id`,`userid`,`roleid`) values (40,18,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
