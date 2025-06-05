-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: bhashanet_v2_db
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ANNOUNCEMENTS`
--

DROP TABLE IF EXISTS `ANNOUNCEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANNOUNCEMENTS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Announcement_Title` longtext DEFAULT NULL,
  `Announcement_Description` longtext DEFAULT NULL,
  `Announcement_Description1` longtext DEFAULT NULL,
  `Announcement_PublishStatus` varchar(20) NOT NULL,
  `Announcement_Image` varchar(100) NOT NULL,
  `Announcement_InternalURL` varchar(500) DEFAULT NULL,
  `Announcement_ExternalURL` varchar(500) DEFAULT NULL,
  `Announcement_CreatedDate` date DEFAULT NULL,
  `Announcement_UpdatedDate` date DEFAULT NULL,
  `Announcement_Author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANNOUNCEMENTS`
--

LOCK TABLES `ANNOUNCEMENTS` WRITE;
/*!40000 ALTER TABLE `ANNOUNCEMENTS` DISABLE KEYS */;
INSERT INTO `ANNOUNCEMENTS` VALUES (1,'ICANN','The Internet Corporation for Assigned Names and Numbers (ICANN) published the 2022 Internationalized Domain Name (IDN) Annual Report. The report provides an  overview of the status of IDNs at the top and second levels of the Domain Name System (DNS), as well as the IDN-related work being done by the ICANN organization (ICANN org) and community.','','Published','core_app/Announcement/Icann_rxIiagD.png','','https://www.icann.org/en/announcements/details/supporting-a-multilingual-internet-icann-publishes-2022-idn-annual-report-16-02-2023-en','2024-04-24','2024-04-24','Abhijeet Thorat'),(2,'Universal Acceptance (UA) Day','Universal Acceptance (UA) Day is an opportunity to rally local, regional, and global communities and organizations around the world to spread general UA awareness and to encourage UA adoption with key stakeholders.','','Unpublished','core_app/Announcement/UASG_logo_Xozlk9F.png','','https://uasg.tech/ua-day/','2024-04-24','2024-04-24',''),(3,'UASG Announces Call for Proposals for UA Day 2024','The Universal Acceptance Steering Group (UASG) is calling for event proposals for the second annual Universal Acceptance (UA) Day to be held on 28 March 2024.','','Unpublished','core_app/Announcement/uasg_D7zKUUp_wu4wbxh_96lBtz4.png','','https://uasg.tech/2023/11/uasg-announces-call-for-proposals-for-ua-day-2024/','2024-04-24','2024-04-24','Abhijeet Thorat'),(4,'Unlocking Economic Potential with Multilingual Internet and UA for Businesses in India','Virtual Session on “Unlocking Economic Potential with Multilingual Internet and UA for Businesses in India,” 9th November 2023, (03:00 PM - 04:00 PM). Join us for an informative session that can transform businesses and help you thrive in the digital age. We look forward to seeing there!','','Unpublished','core_app/Announcement/ficci_oQwWL7b.png','','https://docs.google.com/forms/d/e/1FAIpQLScwRoP_ysZ8foBIbdlemeK5TiqQbcOAa5Dybmve0ITT2e5n7Q/viewform','2024-04-24','2024-04-24',''),(5,'Multilingual Internet for Women in India','FICCI\'s Indian Language internet Alliance (FICCI-ILIA) Session on Digital Inclusion (Multilingual Internet for Women in India) on 22nd November 2023, 03:00 PM - 04:00 PM. Join us and be a part of creating a more inclusive and connected digital enviornment in India.','','Unpublished','core_app/Announcement/ficci_ozwK4ml_EsFndO6.png','','https://forms.gle/EXFLNmofRNEXZTUn9','2024-04-24','2024-04-24','Abhijeet Thorat'),(6,'Multilingual Internet - Connecting People and Transforming Lives','One of a kind of language technology symposium and the only national platform that talks about the importance of the Indic-Internet or multilingual Internet.','','Unpublished','core_app/Announcement/ficci_ozwK4ml_6EOIpxh.png','','https://docs.google.com/forms/d/e/1FAIpQLSeqlVmi3cbEwu89N4vrspnOAF-MlXoGpAz738eSUwSfEyLZhw/viewform','2024-04-24','2024-04-24','Abhijeet Thorat'),(7,'FICCI','Empowering Entrepreneurs: Navigating Success with Universal Acceptance and Email Address Internationalization FICCI <br/> <strong>- To be held on 12 April 2024, Jaipur (Rajasthan) India</strong>','','Published','','','https://uasg.tech/ua-day/','2024-04-24','2024-04-24','');
/*!40000 ALTER TABLE `ANNOUNCEMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ARTICLE`
--

DROP TABLE IF EXISTS `ARTICLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ARTICLE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Article_Title` longtext NOT NULL,
  `Article_Alias` longtext NOT NULL,
  `Article_Title_Description` longtext NOT NULL,
  `Article_Title_icon` varchar(100) DEFAULT NULL,
  `Article_Title_Image1` varchar(100) DEFAULT NULL,
  `Article_Title_Image2` varchar(100) DEFAULT NULL,
  `Article_Upload_Doc1` varchar(100) DEFAULT NULL,
  `Article_Upload_Doc2` varchar(100) DEFAULT NULL,
  `Article_Upload_Doc3` varchar(100) DEFAULT NULL,
  `Article_Upload_Doc4` varchar(100) DEFAULT NULL,
  `Article_Upload_Doc5` varchar(100) DEFAULT NULL,
  `Article_Subtitle1` varchar(500) DEFAULT NULL,
  `Article_Subtitle2` varchar(500) DEFAULT NULL,
  `Article_Subtitle3` varchar(500) DEFAULT NULL,
  `Article_Subtitle4` varchar(500) DEFAULT NULL,
  `Article_Subtitle5` varchar(500) DEFAULT NULL,
  `Article_Description1` longtext DEFAULT NULL,
  `Article_Description2` longtext DEFAULT NULL,
  `Article_Description3` longtext DEFAULT NULL,
  `Article_Description4` longtext DEFAULT NULL,
  `Article_Description5` longtext DEFAULT NULL,
  `Article_Internalink1` varchar(500) DEFAULT NULL,
  `Article_Internalink2` varchar(500) DEFAULT NULL,
  `Article_Internalink3` varchar(500) DEFAULT NULL,
  `Article_Internalink4` varchar(500) DEFAULT NULL,
  `Article_Internalink5` varchar(500) DEFAULT NULL,
  `Article_Externalink1` varchar(500) DEFAULT NULL,
  `Article_Externalink2` varchar(500) DEFAULT NULL,
  `Article_Externalink3` varchar(500) DEFAULT NULL,
  `Article_Externalink4` varchar(500) DEFAULT NULL,
  `Article_Externalink5` varchar(500) DEFAULT NULL,
  `Article_Image1` varchar(100) NOT NULL,
  `Article_Image2` varchar(100) NOT NULL,
  `Article_Image3` varchar(100) NOT NULL,
  `Article_Image4` varchar(100) NOT NULL,
  `Article_Image5` varchar(100) NOT NULL,
  `Article_video` varchar(100) DEFAULT NULL,
  `Article_Content_Author` varchar(100) DEFAULT NULL,
  `Article_Content_Modifier` varchar(100) DEFAULT NULL,
  `Article_CreatedDate` date NOT NULL,
  `Article_UpdatedDate` date NOT NULL,
  `Article_PublishStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ARTICLE`
--

LOCK TABLES `ARTICLE` WRITE;
/*!40000 ALTER TABLE `ARTICLE` DISABLE KEYS */;
INSERT INTO `ARTICLE` VALUES (1,'Become UA Ready','Become UA Ready','<strong>\r\nSoftware and online services are universal acceptance ready when they are able to accept, validate, store, process and display all domains and email names.\r\n</strong>','','core_app/Article/icon/become-ua-ready_OPzCeOh_mPTUE8n.png','','','','','','',NULL,NULL,NULL,NULL,NULL,'','<div>\r\n                                             <p>\r\n                                                <strong>To make your systems UA ready, here are some steps you can take :</strong>\r\n                                             </p>\r\n                                             <ol>\r\n                                                <li style=\"text-align: justify;\"><strong>Validate input :</strong> Ensure that your system validates and processes all valid\r\n                                                   domain names, email addresses, and other internet identifiers. This involves\r\n                                                   verifying the syntax and structure of these identifiers, and also checking if\r\n                                                   they are in a valid format or not.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Support Unicode:</strong> Unicode is a universal character encoding standard that can\r\n                                                   represent almost all scripts and languages in use today. Ensure that your system\r\n                                                   supports Unicode, so that it can process internet identifiers in any script or\r\n                                                   language.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Use internationalized domain names (IDNs):</strong> IDNs are domain names that allow\r\n                                                   non-ASCII characters, such as Hindi, Bengali or Tamil characters, in the\r\n                                                   domain name itself. Ensure that your system supports IDNs, so that users can\r\n                                                   register domain names in their own language.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Test with UA test cases:</strong> Use UA test cases to verify that your system can\r\n                                                   accept and process internet identifiers in all languages and scripts. There are\r\n                                                   several UA test suites available that can help you identify any issues or gaps\r\n                                                   in your system\'s UA readiness.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Use best practices:</strong> Follow best practices for UA readiness, such as those\r\n                                                   outlined in the Internet Engineering Task Force\'s (IETF) Best Current Practice\r\n                                                   (BCP) 18 and BCP 47. These documents provide guidance on how to support\r\n                                                   internationalization in various aspects of internet technology.</li>\r\n                                             </ol>\r\n                                             \r\n                                            </div>','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'2024-10-21','2024-10-21','Published'),(2,'Technical Corner','Na','Standard Operating Procedure (SOP) documents are detailed instructions or guidelines that outline the step-by-step procedures to be followed for making a website IDN (Internationalized Domain Name) ready within an organization.','','','','','','','','','Purpose','Scope','Pre-requisites','Responsibilities',NULL,'The purpose of these SOPs are to outline the steps required to make a website IDN ready, enabling it to support Internationalized Domain Names.','','1.	Familiarity with IDN standards and requirements.\r\n2.	Access to the website\'s domain name settings and DNS configuration.','Website Development Team is responsible for implementing the necessary changes to make the website IDN ready for overseeing the implementation and compliance with IDN standards.\r\nClick here to view some SOPs in different technologies','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'2024-10-21','2024-10-21','Published');
/*!40000 ALTER TABLE `ARTICLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BEST PRACTICES`
--

DROP TABLE IF EXISTS `BEST PRACTICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BEST PRACTICES` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BestPractices_title` varchar(100) DEFAULT NULL,
  `BestPractices_title_desc` longtext DEFAULT NULL,
  `BestPractices_title_image` varchar(100) DEFAULT NULL,
  `BestPractices_subtitle1` varchar(100) DEFAULT NULL,
  `BestPractices_desc1` longtext DEFAULT NULL,
  `BestPractices_image1` varchar(100) DEFAULT NULL,
  `BestPractices_internalURL1` varchar(500) DEFAULT NULL,
  `BestPractices_externalURL1` varchar(500) DEFAULT NULL,
  `BestPractices_subtitle2` varchar(100) DEFAULT NULL,
  `BestPractices_desc2` longtext DEFAULT NULL,
  `BestPractices_image2` varchar(100) DEFAULT NULL,
  `BestPractices_internalURL2` varchar(500) DEFAULT NULL,
  `BestPractices_externalURL2` varchar(500) DEFAULT NULL,
  `BestPractices_subtitle3` varchar(100) DEFAULT NULL,
  `BestPractices_desc3` longtext DEFAULT NULL,
  `BestPractices_image3` varchar(100) DEFAULT NULL,
  `BestPractices_internalURL3` varchar(500) DEFAULT NULL,
  `BestPractices_externalURL3` varchar(500) DEFAULT NULL,
  `BestPractices_subtitle4` varchar(100) DEFAULT NULL,
  `BestPractices_desc4` longtext DEFAULT NULL,
  `BestPractices_image4` varchar(100) DEFAULT NULL,
  `BestPractices_internalURL4` varchar(500) DEFAULT NULL,
  `BestPractices_externalURL4` varchar(500) DEFAULT NULL,
  `BestPractices_subtitle5` varchar(100) DEFAULT NULL,
  `BestPractices_desc5` longtext DEFAULT NULL,
  `BestPractices_image5` varchar(100) DEFAULT NULL,
  `BestPractices_internalURL5` varchar(500) DEFAULT NULL,
  `BestPractices_externalURL5` varchar(500) DEFAULT NULL,
  `BestPractices_Content_Author` varchar(100) DEFAULT NULL,
  `BestPractices_Content_Modifier` varchar(100) DEFAULT NULL,
  `BestPractices_PublishStatus` varchar(30) NOT NULL,
  `BestPractices_CreationDate` date NOT NULL,
  `BestPractices_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BEST PRACTICES`
--

LOCK TABLES `BEST PRACTICES` WRITE;
/*!40000 ALTER TABLE `BEST PRACTICES` DISABLE KEYS */;
INSERT INTO `BEST PRACTICES` VALUES (3,'Support for Top Level Domains (TLDs) For eg .भारत , सरकार.भारत','Get your domain name in Indian Languages like Hindi , Tamil , Marathi For eg : सीडैक.भारत .','core_app/best_practices/img/tld_ZEtMWJX.png','Get IDN equivalent of existing ASCII Domain','Get your domain name converted (translated / transliterated) into local language. Registrant/ user provide translation and transliteration of domain name in IDN available language to NIC / .IN Registry Accrediated Registrars (NIC for sarkar .भारत domain and .IN Registry Accrediated Registrars for .भारत domain names )','','','https://registry.in/index','Validate Your Domain','Validate your local language domain name with validation rules because some Indian language characters are blocked for avoiding spoofing/phishing like in english domain name only letter ,digits and hyphen are allowed (LDH).','','','https://registry.in/index','Create/Register Your Domain','Provide contact, domain name Punycode string and Name Server details to NIC/.IN Registry Accrediated Registrars. Punycode is a string which is equivalent to your UNICODE domain name. Some vendors may expect punycode while registering. NIC/.IN Registry Accrediated Registrars create domain name and inform to Registrant/user.','','','https://registry.in/index','Configure your Name Server/IP','After registering domain names, make all the entries of website Indian language domain names in name server panel against public IP of the server where the website is hosted.','','','https://registry.in/index','','','','','','','','Published','2023-11-28','2023-11-28'),(4,'Support for Web Server','Web server needs to be configured to support for punycode representation of the domain name to support IDN','core_app/best_practices/img/web_server.png','Configure Your Web Server','Your website server needs to accept requests coming for the UNICODE/Punycode. All major web-servers provide support to point multiple websites to same code. Share your IDN domain name to Webmaster/Hosting Provider . They have to write routing rules to map the incoming punycode to the existing site or corresponding Indian language website as per your business needs. Now the user should be able to access your website with both English and Indian language domain name .','','','','','','','','','','','','','','','','','','','','','','','','','','Published','2023-11-28','2023-11-28'),(5,'Support for SSL/ TLS Certificates','Universal Acceptance (UA) in SSL certificates refers to the ability of SSL certificate authorities (CA) and SSL-enabled servers to accept and process SSL certificates that use Internationalized Domain Names (IDN) in non-Latin scripts.','core_app/best_practices/img/tld.png','Configure Your SSL Certificates with Punycode domain names','SSL certificates help your website to be secure Hence you need to buy a new SSL certificate or add the Punycode string to your existing SSL certificate . The new / updated SSL needs to be configured on your server. Now the user should be able to access your website with both English and Indian language domain name with https.','core_app/best_practices/img/meity.png','','','','','core_app/best_practices/img/meityeng.png','','','','','','','','','','','','','','','','','','','','Published','2023-11-28','2023-11-28'),(6,'Support for Indian Languages in Email Addresses','Proper encoding and decoding of email addresses to support all scripts and characters used in domain names','core_app/best_practices/img/comp_testing.png','Use Email Services in Indian Languages','Ensure that your Email Service Provider or application can send and receive Emails with Email Addresses that contain Indian Scripts such as Devanagari, Tamil or Bengali .Email Service Provider must use internationalized email standards such EAI (Email Address Internationalization) to ensure that email addresses with Indian scripts and TLDs are transmitted and received correctly.','','','','','','','','','','','','','','','','','','','','','','','','','','Published','2023-11-28','2023-11-28'),(7,'Follow UA Standards and guidelines & collaborate with other stakeholders','','core_app/best_practices/img/guide.png','','Follow UA Standards and guidelines set by organisations such as ICANN and the Universal Acceptance Steering Group (UASG) and collaborate with other stakeholders, including domain registrars, service providers, And software vendors to promote UA and address any related issues.','','','','','','','','','','','','','','','','','','','','','','','','','','Published','2023-11-28','2023-11-28');
/*!40000 ALTER TABLE `BEST PRACTICES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOCUMENT`
--

DROP TABLE IF EXISTS `DOCUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOCUMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Document_Name` varchar(800) NOT NULL,
  `Document_Description` longtext NOT NULL,
  `Document_CreationDate` date NOT NULL,
  `Document_LastUpdatedDate` date NOT NULL,
  `Document_Content_Author` varchar(100) DEFAULT NULL,
  `Document_Content_Modifier` varchar(100) DEFAULT NULL,
  `Document_LanguageType` varchar(500) NOT NULL,
  `Document_PublishedStatus` varchar(20) NOT NULL,
  `Document_Slug` varchar(255) DEFAULT NULL,
  `Document_Thumbnail` varchar(100) DEFAULT NULL,
  `Document_DocumentFile` varchar(100) DEFAULT NULL,
  `Document_FileSize` varchar(30) NOT NULL,
  `Document_Count` int(11) NOT NULL,
  `Document_Type` varchar(30) NOT NULL,
  `DocumentUASG_url` varchar(500) DEFAULT NULL,
  `Document_CategoryType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DOCUMENT_Document_CategoryTyp_dbc7c5e1_fk_DOCUMENT_` (`Document_CategoryType_id`),
  KEY `DOCUMENT_Document_Slug_42d61b86` (`Document_Slug`),
  CONSTRAINT `DOCUMENT_Document_CategoryTyp_dbc7c5e1_fk_DOCUMENT_` FOREIGN KEY (`Document_CategoryType_id`) REFERENCES `DOCUMENT_CATEGORY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCUMENT`
--

LOCK TABLES `DOCUMENT` WRITE;
/*!40000 ALTER TABLE `DOCUMENT` DISABLE KEYS */;
INSERT INTO `DOCUMENT` VALUES (1,'UASG 000 Inventory of Material EN','UASG 000 Inventory of Material EN','2024-04-24','2024-04-24','','','English','Published','','','','148.91 KB',694,'pdf','https://uasg.tech/download/uasg-000-inventory-of-material-en/',1),(2,'UASG 001 UA Knowledge Base EN','Suggested text that people can use to reach out to a website when their domain name doesn’t resolve.','2024-04-24','2024-04-24','','','English','Published','Browsers-EN-Text','','','124kb',650,'pdf','https://uasg.tech/download/uasg-001-ua-knowledge-base-en/',2),(3,'UASG 003 UA Fact Sheet FR','UASG 003 UA Fact Sheet FR','2024-04-24','2024-04-24','','','English','Published','','','','726.23 KB',567,'pdf','https://uasg.tech/download/uasg-003-ua-fact-sheet-fr/',4),(4,'UASG 004A Test Cases for UA Readiness Evaluation – Data EN','UASG 004A Test Cases for UA Readiness Evaluation – Data EN','2024-04-24','2024-04-24','','','English','Published','','','','9.50 KB',764,'pdf','https://uasg.tech/download/uasg-004a-use-cases-for-ua-readiness-evaluation-data-en/',7),(5,'UASG 007 Introduction to Universal Acceptance EN','UASG 007 Introduction to Universal Acceptance EN','2024-04-24','2024-04-24','','','English','Published','','','','915.52 KB',651,'pdf','https://uasg.tech/download/uasg-007-introduction-to-universal-acceptance-en/',8),(6,'UASG 009 Quick Guide to Tender and Contractual Documents EN','Includes details on Good Practice clauses for Universal Acceptance as well as IPv6 and DNSSEC.','2024-04-24','2024-04-24','','','English','Published','','','','78.10 KB',537,'pdf','https://uasg.tech/download/uasg-009-quick-guide-to-tender-and-contractual-documents-en/',2),(7,'UASG 012 EAI: A Technical Overview EN','UASG 012 EAI: A Technical Overview EN','2024-04-24','2024-04-24','','','English','Published','','','','819.28 KB',709,'pdf','https://uasg.tech/download/uasg-012-eai-a-technical-overview-en/',8),(8,'UASG 013F Email Address Internationalization (EAI) Case Study: Coremail and THNIC EN','UASG 013F Email Address Internationalization (EAI) Case Study: Coremail and THNIC EN','2024-04-24','2024-04-24','','','English','Published','','','','996.72 KB',564,'pdf','https://uasg.tech/download/uasg-013f-email-address-internationalization-eai-case-study-coremail-and-thnic-en/',4),(9,'UASG 015 Blueprint for CIOs – Internet Industry Edition EN','Provides a blueprint for CIO’s to use in addressing Universal Acceptance issues. Internet Industry specific tables are used.','2024-04-24','2024-04-24','','','English','Published','','','','148.91 KB',493,'pdf','https://uasg.tech/download/uasg-015-blueprint-for-cios-internet-industry-edition-en/',2),(10,'UASG 031 FAQs: UA Readiness of Programming Languages and Email Tools EN','UASG 031 FAQs: UA Readiness of Programming Languages and Email Tools EN','2024-04-24','2024-04-24','','','English','Published','','','','278.01 KB',456,'pdf','https://uasg.tech/download/uasg-031-faqs-ua-readiness-of-programming-languages-and-email-tools-en/',7),(11,'UASG 033 UA-Readiness of Open Source Code Pilot EN','UASG 033 UA-Readiness of Open Source Code Pilot EN','2024-04-24','2024-04-24','','','English','Published','','','','530.58 KB',728,'pdf','https://uasg.tech/download/uasg-033-ua-readiness-of-open-source-code-pilot-en/',7),(12,'UASG 033 UA-Readiness of Open Source Code Pilot EN','Goal: evaluate strategies to discover and improve UA-associated code in open source software.','2024-04-24','2024-04-24','','','English','Published','','','','1.23 MB',728,'pdf','https://uasg.tech/download/uasg-033-ua-readiness-of-open-source-code-pilot-en/',3),(13,'UASG 036A UA-Readiness of Browsers EN','UASG 036A UA-Readiness of Browsers EN','2024-04-24','2024-04-24','','','English','Published','','','','543.73 KB',482,'pdf','https://uasg.tech/download/uasg-036a-ua-readiness-of-browsers-en/',3),(14,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24','','','English','Published','','','','530.58 KB',759,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',6),(15,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24','','','English','Published','','','','530.58 KB',657,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',5),(16,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24','','','English','Published','','','','530.58 KB',759,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',3),(17,'UASG 040 UA-Readiness Evaluation of Standards and Best Practices','UASG 040 UA-Readiness Evaluation of Standards and Best Practices','2024-04-24','2024-04-24','','','English','Published','','','','810.39 KB',380,'pdf','https://uasg.tech/download/uasg-040-ua-readiness-evaluation-of-standards-and-best-practices/',8),(18,'UASG 040 UA-Readiness Evaluation of Standards and Best Practices','UASG 040 UA-Readiness Evaluation of Standards and Best Practices','2024-04-24','2024-04-24','','','English','Published','','','','810.39 KB',456,'pdf','https://uasg.tech/download/uasg-040-ua-readiness-evaluation-of-standards-and-best-practices/',4),(19,'UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','2024-04-24','2024-04-24','','','English','Published','','','','47.41 KB',758,'pdf','https://uasg.tech/download/uasg-040b-ua-readiness-evaluation-of-standards-and-best-practices-data/',5),(20,'UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','2024-04-24','2024-04-24','','','English','Published','','','','47.41 KB',373,'csv','https://uasg.tech/download/uasg-040b-ua-readiness-evaluation-of-standards-and-best-practices-data/',1),(21,'UASG 042 UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig) EN','Web servers, email servers, and backend databases provide the building blocks of a website’s functionality. This report reveals that to what extent the web hosting tools offer the capacity for customers to build websites and host emails in accordance with Universal Acceptance in nine different configurations on different operating systems (Linux and Windows for Plesk; Linux for cPanel and ISPConfig).','2024-04-24','2024-04-24','','','English','Published','','','','564.09 KB',294,'pdf','https://uasg.tech/download/uasg-042-ua-readiness-of-web-hosting-tools-cpanel-plesk-ispconfig-en/',3),(22,'UASG 042A UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig)','UASG 042A UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig)','2024-04-24','2024-04-24','','','English','Published','','','','552.92 KB',456,'pdf','https://uasg.tech/download/uasg-042a-ua-readiness-of-web-hosting-tools-cpanel-plesk-ispconfig/',5),(23,'UASG 043 UA-Ready Code Samples in Java, Python, and JavaScript EN','UASG 043 UA-Ready Code Samples in Java, Python, and JavaScript EN','2024-04-24','2024-04-24','','','English','Published','','','','633.63 KB',220,'pdf','https://uasg.tech/download/uasg-043-ua-ready-code-samples-in-java-python-and-javascript-en/',4),(24,'UASG 043A UA-Ready Code Samples in Java, Python, and JavaScript EN','UASG 043A UA-Ready Code Samples in Java, Python, and JavaScript EN','2024-04-24','2024-04-24','','','English','Published','','','','2.54 MB',166,'pdf','https://uasg.tech/download/uasg-043a-ua-ready-code-samples-in-java-python-and-javascript-en/',6),(25,'UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','2024-04-24','2024-04-24','','','English','Published','','','','898.80 KB',179,'pdf','https://uasg.tech/download/uasg-044-eai-technical-education-and-awareness-directed-at-developer-community-websites-en/',5),(26,'UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','2024-04-24','2024-04-24','','','English','Published','','','','633.63 KB',179,'pdf','https://uasg.tech/download/uasg-044-eai-technical-education-and-awareness-directed-at-developer-community-websites-en/',1),(27,'UASG 044A EAI Technical Education and Awareness Directed at Developer Community Websites – Proposed FAQs','UASG 044A EAI Technical Education and Awareness Directed at Developer Community Websites – Proposed FAQs','2024-04-24','2024-04-24','','','English','Published','','','','307.98 KB',166,'pdf','https://uasg.tech/download/uasg-044a-eai-technical-education-and-awareness-directed-at-developer-community-websites-proposed-faqs/',6);
/*!40000 ALTER TABLE `DOCUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOCUMENT_CATEGORY`
--

DROP TABLE IF EXISTS `DOCUMENT_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOCUMENT_CATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DocumentCategory_Name` varchar(500) NOT NULL,
  `DocumentCategory_Status` tinyint(1) NOT NULL,
  `DocumentCategory_CreationDate` date NOT NULL,
  `DocumentCategory_LastUpdatedDate` date NOT NULL,
  `DocumentCategory_PublishedStatus` varchar(20) NOT NULL,
  `DocumentCategory_Content_Author` varchar(100) DEFAULT NULL,
  `DocumentCategory_Content_Modifier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCUMENT_CATEGORY`
--

LOCK TABLES `DOCUMENT_CATEGORY` WRITE;
/*!40000 ALTER TABLE `DOCUMENT_CATEGORY` DISABLE KEYS */;
INSERT INTO `DOCUMENT_CATEGORY` VALUES (1,'Basics',0,'2024-04-24','2024-04-24','Published','',''),(2,'Deprecated',0,'2024-04-24','2024-04-24','Published','',''),(3,'Measurement',0,'2024-04-24','2024-04-24','Published','',''),(4,'Outreach',0,'2024-04-24','2024-04-24','Published','',''),(5,'Remediation',0,'2024-04-24','2024-04-24','Published','',''),(6,'Software',0,'2024-04-24','2024-04-24','Published','',''),(7,'Technical',0,'2024-04-24','2024-04-24','Published','',''),(8,'Standards',0,'2024-04-24','2024-04-24','Published','','');
/*!40000 ALTER TABLE `DOCUMENT_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOMAIN SYNTAX`
--

DROP TABLE IF EXISTS `DOMAIN SYNTAX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOMAIN SYNTAX` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Domain_Name` varchar(253) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOMAIN SYNTAX`
--

LOCK TABLES `DOMAIN SYNTAX` WRITE;
/*!40000 ALTER TABLE `DOMAIN SYNTAX` DISABLE KEYS */;
/*!40000 ALTER TABLE `DOMAIN SYNTAX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMAIL SYNTAX`
--

DROP TABLE IF EXISTS `EMAIL SYNTAX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMAIL SYNTAX` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Email_Address` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMAIL SYNTAX`
--

LOCK TABLES `EMAIL SYNTAX` WRITE;
/*!40000 ALTER TABLE `EMAIL SYNTAX` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMAIL SYNTAX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMAIL_ADDRESS_INTERNATIONALIZATION`
--

DROP TABLE IF EXISTS `EMAIL_ADDRESS_INTERNATIONALIZATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMAIL_ADDRESS_INTERNATIONALIZATION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `EmailAddressInternationalization_title` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_title_desc` longtext DEFAULT NULL,
  `EmailAddressInternationalization_title_image` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_subtitle1` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_desc1` longtext DEFAULT NULL,
  `EmailAddressInternationalization_image1` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_internalURL1` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_externalURL1` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_subtitle2` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_desc2` longtext DEFAULT NULL,
  `EmailAddressInternationalization_image2` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_internalURL2` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_externalURL2` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_subtitle3` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_desc3` longtext DEFAULT NULL,
  `EmailAddressInternationalization_image3` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_internalURL3` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_externalURL3` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_subtitle4` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_desc4` longtext DEFAULT NULL,
  `EmailAddressInternationalization_image4` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_internalURL4` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_externalURL4` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_subtitle5` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_desc5` longtext DEFAULT NULL,
  `EmailAddressInternationalization_image5` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_internalURL5` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_externalURL5` varchar(500) DEFAULT NULL,
  `EmailAddressInternationalization_Content_Author` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_Content_Modifier` varchar(100) DEFAULT NULL,
  `EmailAddressInternationalization_PublishStatus` varchar(30) NOT NULL,
  `EmailAddressInternationalization_CreationDate` date NOT NULL,
  `EmailAddressInternationalization_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMAIL_ADDRESS_INTERNATIONALIZATION`
--

LOCK TABLES `EMAIL_ADDRESS_INTERNATIONALIZATION` WRITE;
/*!40000 ALTER TABLE `EMAIL_ADDRESS_INTERNATIONALIZATION` DISABLE KEYS */;
INSERT INTO `EMAIL_ADDRESS_INTERNATIONALIZATION` VALUES (1,'EAI','EAI: E-mail ID in local language (मेरानाम@निक्सी.भारत)','core_app/EmailAddressInternationalization/img/Email_address_Internationalization_qvcA34O.png',NULL,'Email Address Internationalization (EAI) is the process of allowing email addresses to use non-ASCII characters, such as those used in languages like Hindi, Marathi, Bengali, Gujarati or Tamil etc in addition to the traditional ASCII characters used in English-based email addresses. This allows people to use their native language and script to create email addresses, making it easier for them to communicate online.','core_app/EmailAddressInternationalization/img/Email_address_Internationalization_EE5JWcy_IcV2i3M.png',NULL,NULL,NULL,'EAI uses the Unicode encoding standard to represent non-ASCII characters in email addresses, and it requires changes to the way that email is handled by both email clients and email servers. For example, email clients need to be able to display non-ASCII characters in the user interface, and email servers need to be able to process non-ASCII addresses correctly and forward messages to the correct destination.','',NULL,NULL,NULL,'There are several technical standards that have been developed to support EAI, including SMTPUTF8, which allows email addresses with non-ASCII characters to be sent using the Simple Mail Transfer Protocol (SMTP), and IDNA2008, which allows domain names with non-ASCII characters to be translated into the ASCII-based Domain Name System (DNS) used by the Internet.','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-10-21','2024-10-21');
/*!40000 ALTER TABLE `EMAIL_ADDRESS_INTERNATIONALIZATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQS`
--

DROP TABLE IF EXISTS `FAQS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FAQS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Faqs_Ques` longtext NOT NULL,
  `Faqs_Ans` longtext NOT NULL,
  `Faqs_CreationDate` date NOT NULL,
  `Faqs_LastUpdateDate` date DEFAULT NULL,
  `Faqs_PublishStatus` varchar(20) NOT NULL,
  `Faqs_Content_Author` varchar(100) DEFAULT NULL,
  `Faqs_Content_Modifier` varchar(100) DEFAULT NULL,
  `Faqs_Category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FAQS_Faqs_Category_id_e056d60a_fk_FAQS_CATEGORY_id` (`Faqs_Category_id`),
  CONSTRAINT `FAQS_Faqs_Category_id_e056d60a_fk_FAQS_CATEGORY_id` FOREIGN KEY (`Faqs_Category_id`) REFERENCES `FAQS_CATEGORY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQS`
--

LOCK TABLES `FAQS` WRITE;
/*!40000 ALTER TABLE `FAQS` DISABLE KEYS */;
INSERT INTO `FAQS` VALUES (1,'How can we register domain names in Indian Languages ?','<ul><li><strong>Check the availability of your desired domain name:&nbsp;</strong>You can check if your desired domain name is available in Indian languages by visiting the website of the National Internet Exchange of India (NIXI) or any accredited registrar that offers Indian language domains.</li>\r\n	<li><strong>Choose a registrar:&nbsp;</strong>Once you have identified an available domain name, you need to choose a registrar that offers Indian language domains. NIXI provides a list of accredited registrars on its website that offer Indian language domains.</li>\r\n	<li><strong>Provide the necessary information:&nbsp;</strong>You will need to provide your personal and contact information, as well as the desired domain name and the language/script in which it is written. You may also need to provide additional documentation or verification for Indian language domains.</li>\r\n	<li><strong>Complete the registration process:&nbsp;</strong>Once you have provided the necessary information, you can complete the registration process through the registrar\'s website. You may need to pay a registration fee and agree to the terms and conditions of the registrar.</li>\r\n	<li><strong>Configure your domain:&nbsp;</strong>Once your domain is registered, you can configure it for use with your website, email, or other online services.</li>\r\n	<br>\r\n	<li>It\'s important to note that the availability of domain names in Indian languages may vary depending on the script and language. Additionally, Indian language domains may have specific requirements or restrictions, so it\'s important to check with the registrar or NIXI for more information.</li>\r\n</ul>','2023-11-28','2023-11-28','Published','shivam','',1),(2,'How Universal Acceptance can be achieved?','To achieve universal acceptance, it is important for all stakeholders in the Internet ecosystem, including domain name registries, email service providers, application developers, and others, to adopt and implement technical standards that support non-ASCII domain names and email addresses. Additionally, education and awareness-raising efforts can help promote universal acceptance and ensure that users are aware of the options available to them.','2023-11-28','2023-11-28','Published','shivam','',1),(3,'What are the Universal Acceptance Guidelines?','<p>\r\n<p>The Universal Acceptance (UA) Guidelines are a set of best practices and recommendations for supporting the use of all domain names and email addresses, regardless of their script, language, or format. The guidelines were developed by the Universal Acceptance Steering Group (UASG), a community-led initiative that works to promote Universal Acceptance of all domain names and email addresses.\r\n</p>\r\n<p>\r\nThe UA Guidelines provide detailed recommendations for software and system developers, domain name registries, email service providers, and other stakeholders involved in the management and implementation of Internet systems and applications. The guidelines cover a wide range of topics related to Universal Acceptance, including:\r\n</p>\r\n<ol>\r\n	<li><strong>-&nbsp;</strong>Domain name registration and administration</li>\r\n	<li><strong>-&nbsp;</strong>Email address validation and handling</li>\r\n	<li><strong>-&nbsp;</strong>IDN implementation and support</li>\r\n	<li><strong>-&nbsp;</strong>Web and application development</li>\r\n	<li><strong>-&nbsp;</strong>Testing and validation</li>\r\n	<li><strong>-&nbsp;</strong>User education and awareness</li>\r\n</ol>\r\n<p>','2023-11-28','2023-11-28','Published','shivam','',1),(4,'How can we get Email ID in Indian Languages?','<p>\r\n<p>To get an email ID in Indian languages, you can follow these steps:</p>\r\n<ul>\r\n	<li><strong>Choose an email service provider:&nbsp;</strong>There are several email service providers that offer support for email IDs in Indian languages, such as Google, Microsoft, and Rediffmail. You can choose an email service provider that offers support for your preferred Indian language.</li>\r\n	<li><strong>Check the availability of your desired email ID:&nbsp;</strong>Once you have chosen an email service provider, you can check if your desired email ID is available in Indian languages. You may need to check the provider&#39;s website or contact their support team for more information.</li>\r\n	<li><strong>Create a new email account:&nbsp;</strong>If your desired email ID is available, you can create a new email account with your chosen email service provider. You will need to provide your personal and contact information, as well as choose your desired email ID and language.</li>\r\n	<li><strong>Configure your email settings:&nbsp;</strong>Once your email account is created, you can configure your email settings to suit your preferences, such as setting up filters, forwarding, or other email management options.</li>\r\n	<li><strong>Start using your email ID:&nbsp;</strong>Once your email account is set up and configured, you can start using your email ID in Indian languages for sending and receiving emails.</li>\r\n<br/>\r\n	<li>It\'s important to note that not all email service providers offer support for email IDs in Indian languages, and the availability of languages may vary depending on the provider. Additionally, some Indian languages may have specific requirements or restrictions, so it&#39;s important to check with the email service provider for more information.</li>\r\n</ul>\r\n</p>','2023-11-28','2023-11-28','Published','shivam','',2),(5,'Role of NIXI and ICANN in UA','<div class=\"faq-detail\">\r\n                                    <p></p><p>NIXI and ICANN are two organizations that are involved in managing the Internet and its resources, although they have different roles and responsibilities.</p>\r\n\r\n<p><strong>NIXI</strong>, or the National Internet Exchange of India, is a non-profit organization that manages the .IN ccTLD (country code top-level domain) for India. NIXI is responsible for coordinating and managing the registration and administration of .IN domain names, as well as promoting the use and development of the Internet in India.</p>\r\n\r\n<p><strong>ICANN</strong>, or the Internet Corporation for Assigned Names and Numbers, is a global non-profit organization that is responsible for coordinating the Internet\'s unique identifiers, including domain names, IP addresses, and protocol parameters. ICANN\'s responsibilities include managing the global domain name system (DNS), accrediting and overseeing domain name registrars and registries, and coordinating policy development related to the Internet\'s technical infrastructure.</p>\r\n\r\n<p>While NIXI is primarily focused on managing the .IN ccTLD and promoting the use of the Internet in India, ICANN has a global mandate to manage and coordinate the Internet\'s unique identifiers. Both organizations play important roles in the management and development of the Internet, and work closely with other stakeholders to ensure that the Internet remains open, accessible, and secure for all users.</p><p></p>\r\n</div>','2023-11-28','2023-11-28','Published','shivam','',4),(6,'What is Email address Internationalization?','Email address Internationalization (EAI) is the process of allowing email addresses to use non-ASCII characters, such as those used in languages like Hindi, Marathi, Tamil, Bengali, in addition to the traditional ASCII characters used in English-based email addresses. This allows people to use their native language and script to create email addresses, making it easier for them to communicate online.','2023-11-28','2023-11-28','Published','shivam','',1),(7,'What is Universal Acceptance Day? Who organizes it?','Universal Acceptance Day is an annual event that takes place on September 1st to raise awareness about the importance of Universal Acceptance (UA) of all domain names and email addresses, regardless of their script, language, or format.\r\n\r\nThe event is organized by the Universal Acceptance Steering Group (UASG), a community-led initiative that works to promote UA and eliminate the digital divide caused by outdated systems that do not support non-ASCII domain names and email addresses. The UASG includes stakeholders from across the Internet ecosystem, including domain name registries, email providers, application developers, and others.','2023-11-28','2023-11-28','Published','shivam','',1),(8,'How to configure an SSL Certificate?','<div class=\"faq-detail\">\r\n                                    <p></p><p><span style=\"color:#000000\">SSL certificates help your website to be https. So you need to buy a new SSL or add to your existing SSL the Punycode string. The new / updated SSL needs to be configured on your server</span></p>\r\n\r\n<p><strong>Here Are The Steps To Configure An SSL Certificate: </strong></p>\r\n\r\n<p>1.Purchase An SSL Certificate From A Trusted Certificate Authority (CA) Such As GlobalSign, DigiCert, Or Let\'s Encrypt Or Add To Your Existing SSL The Punycode String</p>\r\n\r\n<p>2.Generate A Certificate Signing Request (CSR) On Your Web Server. The CSR Contains Your Website\'s Public Key And Other Information About Your Organisation.</p>\r\n\r\n<p>3.Submit The CSR To The CA, Which Will Then Validate Your Organisation\'s Identity And Issue An SSL Certificate.</p>\r\n\r\n<p>4.Download And Install The Issued SSL Certificate On Your Web Server.</p>\r\n\r\n<p>5.Configure Your Web Server Software (Such As Apache Or Nginx) To Use The SSL Certificate For Encrypted HTTPS Connections.</p>\r\n\r\n<p>6.Test The SSL Certificate To Ensure It\'s Properly Installed And Configured. 7.Regularly Update And Renew The SSL Certificate As Needed To Keep It Valid.</p>\r\n                                    <p></p>\r\n                                </div>','2023-11-28','2023-11-28','Published','','',2),(9,'What are the best practices for Universal Acceptance?','<div class=\"faq-detail\">\r\n                                    <p></p><p>Here are some best practices that can help achieve Universal Acceptance:</p>\r\n\r\n<ul>\r\n	<li><strong>Adopt and implement technical standards:&nbsp;</strong>Domain name registries, email service providers, and other Internet stakeholders should adopt and implement technical standards that support non-ASCII domain names and email addresses, such as SMTPUTF8 and IDNA2008.</li>\r\n	<li><strong>Update software and systems:&nbsp;</strong>All software and systems that handle domain names and email addresses should be updated to support non-ASCII characters, including email clients, web browsers, and operating systems.</li>\r\n	<li><strong>Conduct testing and validation:&nbsp;</strong>All systems and applications should be tested and validated to ensure that they support non-ASCII characters and comply with technical standards.</li>\r\n	<li><strong>Provide education and training:&nbsp;</strong>Education and training should be provided to developers, IT professionals, and end-users to raise awareness of Universal Acceptance and ensure that they are familiar with the technical standards and best practices.</li>\r\n	<li><strong>Engage with communities:&nbsp;</strong>Domain name registries, email service providers, and other Internet stakeholders should engage with local communities and language groups to understand their needs and promote the use of non-ASCII domain names and email addresses.</li>\r\n	<li><strong>Advocate for Universal Acceptance:&nbsp;</strong>Governments, NGOs, and other stakeholders should advocate for Universal Acceptance and encourage its adoption by all Internet stakeholders.</li>\r\n</ul>\r\n                                    <p></p>\r\n                                </div>','2023-11-28','2023-11-28','Published','shivam','',2),(10,'What is a domain name?','<p></p><p>A domain name is a unique address that identifies a website on the internet. It is a string of characters that is used to locate and access a specific website. For example, an IDN domain name might look like सीडैक.भारत using Devanagari script, which translates to \"cdac.in\" in English.</p>\r\n\r\n<p>A domain name is made up of two parts: the top-level domain (TLD) and the second-level domain (SLD). The TLD is the part of the domain name that comes after the last dot, such as \".in\", \".com\", \".org\", or \".net\".</p>\r\n\r\n<p><strong>Note:</strong> The Domain Name \".Bharat\" Is A Country-Code Top-Level Domain (ccTLDs) For India And Is Used Specifically For Domain Names In Indian Scripts.</p>\r\n\r\n\r\n\r\n<p>Indian Language Domain Names Can Provide Benefits Such As Increased Accessibility, Better User Experience, Increased Relevance To Specific Language Groups, And Improved Brand Awareness.</p>\r\n\r\n\r\n                                    <p></p>','2023-11-28','2023-11-28','Published','','',3),(11,'Why Indian language domain name?','<p>To bridge the digital divide and make the internet more accessible to citizens not knowing English or those who prefer to interact / communicate in the local language.</p>\r\n\r\n<p>An Indian Language Domain Name Is A Domain Name Written In One Of The Many Official Languages Of India, Such As Hindi, Bengali, Telugu, Marathi, Etc., Instead Of English. It Allows Internet Users In India To Access Websites And Resources Using Domain Names In Their Own Language, Making It Easier For Them To Find And Use The Information They Need.</p>\r\n\r\n<p>An Indian Language Domain Name Is Mapped To An IP Address Just Like Any Other Domain Name, And Works Similarly To Access Resources On The Internet.</p>\r\n\r\n<p>An Example Of An Indian Language Domain Name Could Be \"उदाहरण.भारत\" (Which Translates To \"Example.Bharat\" In English) Written In Devanagari Script, Which Is Used For Several Indian Languages, Including Hindi. This Domain Name Could Be Used To Access A Website Or Resource In Hindi Or Any Other Language Using The Devanagari Script.</p>','2023-11-28','2023-11-28','Published','shivam','',3),(12,'How to get an Internationalized Domain Name (IDN)?','<p></p><p><span style=\"color:#000000\">1. Get domain name converted (translated / transliterated) into local language UNICODE</span></p>\r\n\r\n<p><span style=\"color:#000000\">2. Like English name domain, you have to consider branding and recall of your brand.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\">3. Using any of the registered domain name resellers / service providers such as godaddy… or NIC you can submit the UNICODE string for registration. Punycode is a string which is equivalent to your UNICODE domain name. Some vendors may expect punycode while registering.</span></p>\r\n\r\n<p><span style=\"color:#000000\">4. In an English domain name only Letter, Digit and Hyphen are allowed (LDH), similarly some Indian characters are blocked for avoiding spoofing / phishing. So the domain names have to pass the validity check. You may have to refine the list of domain names to fit the validation rules.</span></p>\r\n\r\n<p><span style=\"color:#000000\">5. Like in the case of your English website domain name, your webmaster / Service provider has to get Nameservers and set them to point to public IPs of your website.&nbsp;</span></p>','2023-11-28','2023-11-28','Published','shivam','',3),(13,'What are Country Code Top-Level Domains (ccTLDs)?','The Indian ccTLDs are domain extensions that are designated for India. The two-letter ccTLD for India is \".in\". There are also several other ccTLDs designated for specific Indian territories, such as \".co.in\" for commercial websites, \".gov.in\" for Indian government entities, and \".nic.in\" for National Informatics Centre websites. These ccTLDs are managed by the National Internet Exchange of India (NIXI), which is a non-profit organization established by the Indian government to manage and operate the .in ccTLD and promote the growth of the Internet in India.','2023-11-28','2023-11-28','Published','shivam','',3),(14,'How to configure Internationalized Domain Name (IDN)?','<p></p><p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">1. Your website server needs to accept requests coming for the UNICODE / Punycode</span></p>\r\n\r\n<p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">2. All major web-servers provide support to point multiple websites to same code</span></p>\r\n\r\n<p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">3. Webmaster have to write routing rules to map the incoming punycode to the existing site or corresponding Indian language website as per your business needs</span></p>\r\n\r\n<p><strong>To Configure An Internationalized Domain Name (IDN) In Indian Languages, You Will Need To: </strong></p>\r\n\r\n<p><strong>Register a domain name in IDN: </strong>Choose a domain name that uses characters from an Indian script such as Devanagari, Tamil, Bengali, or other regional scripts, and register it with an accredited registrar that supports IDN registration for Indian languages.</p>\r\n\r\n<p><strong>Check your system\'s language settings:</strong> Ensure that your system\'s language settings are set to support Indian languages. Install fonts and other necessary language packs to correctly display Indian language characters.</p>\r\n\r\n<p><strong>Configure your web server: </strong>Configure your web server to support IDNs by using Punycode encoding to represent the IDN domain name in the DNS, setting the default character set to Unicode (UTF-8), and enabling IDN support in your web server\'s settings.</p>\r\n\r\n<p><strong>Test your website: </strong>Test your website to ensure that it is working properly. Check to see if your IDN domain name is correctly displayed in the web browser and test all links and functionality on the website.</p>\r\n\r\n<p><strong>Promote UA awareness:</strong> Promote the adoption of IDNs in Indian languages by encouraging users to use IDNs when registering domain names or visiting websites.</p>\r\n                                    <p></p>','2023-11-28','2023-11-28','Published','shivam','',3),(15,'What is Universal Acceptance?','Universal Acceptance (UA) refers to the concept that all domain names, email addresses, and other Internet identifiers should be treated equally and supported by all software applications and systems. It means that all users, regardless of their location, language, or device, should be able to access and use online services and applications without any technical barriers or limitations. The goal of Universal Acceptance is to promote diversity, inclusiveness, and innovation on the Internet by removing technical barriers that can limit the accessibility and functionality of online services and applications for some users.','2023-11-28','2023-11-28','Published','shivam','',1),(16,'What is Multilingual Internet?','Multilingual Internet refers to the use of multiple languages on the internet to create, share, and consume digital content, allowing people from different linguistic backgrounds to communicate and access information online in their native language or a language they are comfortable with. For example, a website that offers its content in multiple languages such as Hindi, Telugu, Gujarati ,English, Tamil and Marathi is a good example of the Multilingual Internet. Another example is the use of multilingual chatbots or virtual assistants that can understand and respond to queries in different languages.','2023-11-28','2023-11-28','Published','shivam','',4),(17,'What is the UA-INDIA Program?','<p>Universal Acceptance is the ability of the Internet to accept all valid domain names and Email addresses, regardless of the characters used in them.</p>\r\n\r\n<p>A Universal Acceptance Event is a gathering focused on Promoting the concept of Universal Acceptance, which is the Idea that all Domain Names and Email Addresses, regardless Of their Script Or Language, should be treated equally and accessible to everyone on the Internet.</p>\r\n\r\n<p>The Indian Government Plays an Important role in Promoting Universal Acceptance (UA) in India through Its Ministry Of Electronics And Information Technology (MeitY) and The National Internet Exchange Of India (NIXI). MeitY and NIXI are both Members Of UA-India Program, and Work to Promote UA by Raising Awareness about Its Importance, and by providing Technical and Policy support to Help Organisations Implement UA-Compatible Systems and Services. The Indian Government also Collaborates with International Organisations, such as ICANN, to help Advance UA on a Global Level.</p>','2023-11-28','2023-11-28','Published','shivam','',4);
/*!40000 ALTER TABLE `FAQS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQS_CATEGORY`
--

DROP TABLE IF EXISTS `FAQS_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FAQS_CATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FaqCategory_Name` varchar(300) NOT NULL,
  `FaqCategory_CreationDate` date NOT NULL,
  `FaqCategory_LastUpdateDate` date DEFAULT NULL,
  `FaqCategory_Author` varchar(100) DEFAULT NULL,
  `FaqCategory_PublishStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQS_CATEGORY`
--

LOCK TABLES `FAQS_CATEGORY` WRITE;
/*!40000 ALTER TABLE `FAQS_CATEGORY` DISABLE KEYS */;
INSERT INTO `FAQS_CATEGORY` VALUES (1,'General','2024-10-21','2024-10-21',NULL,'Published'),(2,'Developer','2024-10-21','2024-10-21',NULL,'Published'),(3,'IDN','2024-10-21','2024-10-21',NULL,'Published'),(4,'Universal Acceptance','2024-10-21','2024-10-21',NULL,'Published');
/*!40000 ALTER TABLE `FAQS_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeedbackCategory`
--

DROP TABLE IF EXISTS `FeedbackCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeedbackCategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FeedbackCategory_Name` varchar(300) NOT NULL,
  `FeedbackCategory_CreationDate` date NOT NULL,
  `FeedbackCategory_LastUpdateDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeedbackCategory`
--

LOCK TABLES `FeedbackCategory` WRITE;
/*!40000 ALTER TABLE `FeedbackCategory` DISABLE KEYS */;
INSERT INTO `FeedbackCategory` VALUES (1,'Query','2024-04-24','2024-04-24'),(2,'Complaints','2024-04-24','2024-04-24'),(3,'Suggetions','2024-04-24','2024-04-24');
/*!40000 ALTER TABLE `FeedbackCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GENERIC_LIST`
--

DROP TABLE IF EXISTS `GENERIC_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GENERIC_LIST` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `GenericList_Category_Name` varchar(500) DEFAULT NULL,
  `GenericList_Title_Name` longtext DEFAULT NULL,
  `GenericList_Title_Description` longtext DEFAULT NULL,
  `GenericList_Value1` longtext DEFAULT NULL,
  `GenericList_Value2` longtext DEFAULT NULL,
  `GenericList_Value3` longtext DEFAULT NULL,
  `GenericList_Value4` longtext DEFAULT NULL,
  `GenericList_Value5` longtext DEFAULT NULL,
  `GenericList_Value6` longtext DEFAULT NULL,
  `GenericList_Value7` longtext DEFAULT NULL,
  `GenericList_Value8` longtext DEFAULT NULL,
  `GenericList_Value9` longtext DEFAULT NULL,
  `GenericList_Value10` longtext DEFAULT NULL,
  `GenericList_CreationDate` date NOT NULL,
  `GenericList_LastUpdatedDate` date NOT NULL,
  `GenericList_PublishedStatus` varchar(20) NOT NULL,
  `GenericList_Content_Author` varchar(100) DEFAULT NULL,
  `GenericList_Content_Modifier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GENERIC_LIST`
--

LOCK TABLES `GENERIC_LIST` WRITE;
/*!40000 ALTER TABLE `GENERIC_LIST` DISABLE KEYS */;
INSERT INTO `GENERIC_LIST` VALUES (1,'UA','UA','','Encouraging use of local language website name and email id.','Promoting awareness of local language url and email id.','Developing policies and regulations.','','Engagement of website owners, web-developer community, web security experts.','','','','','','2024-10-21','2024-10-21','Published','Sanjay Bhargava',NULL),(2,'BECOMEUAREADY','BECOMEUAREADY','','New top level domain names','Long top level domain names','IDN domain names','Mailbox names in Unicode','','','','','','','2024-10-21','2024-10-21','Published','Sanjay Bhargava',NULL);
/*!40000 ALTER TABLE `GENERIC_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gallery_Headings`
--

DROP TABLE IF EXISTS `Gallery_Headings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gallery_Headings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Gallery_heading` varchar(500) NOT NULL,
  `Gallery_heading_Creation_Date` date NOT NULL,
  `Gallery_heading_Last_Updated_Date` date NOT NULL,
  `Gallery_heading_Publish_Status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gallery_Headings`
--

LOCK TABLES `Gallery_Headings` WRITE;
/*!40000 ALTER TABLE `Gallery_Headings` DISABLE KEYS */;
INSERT INTO `Gallery_Headings` VALUES (1,'Other Informative Videos','2024-10-21','2024-10-21','Published'),(2,'UA Informative Videos','2024-10-21','2024-10-21','Published'),(3,'UA Day Event Held on 27th-28th March 2023','2024-10-21','2024-10-21','Published');
/*!40000 ALTER TABLE `Gallery_Headings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gallery_Videos`
--

DROP TABLE IF EXISTS `Gallery_Videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gallery_Videos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Gallery_Video_Label` varchar(500) NOT NULL,
  `Gallery_Video_Link` varchar(500) NOT NULL,
  `Gallery_Video_Creation_Date` date NOT NULL,
  `Gallery_Video_Last_Updated_Date` date NOT NULL,
  `Gallery_Video_Publish_Status` varchar(20) NOT NULL,
  `Gallery_Heading_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Gallery_Videos_Gallery_Heading_id_50e2e2f5_fk_Gallery_H` (`Gallery_Heading_id`),
  CONSTRAINT `Gallery_Videos_Gallery_Heading_id_50e2e2f5_fk_Gallery_H` FOREIGN KEY (`Gallery_Heading_id`) REFERENCES `Gallery_Headings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gallery_Videos`
--

LOCK TABLES `Gallery_Videos` WRITE;
/*!40000 ALTER TABLE `Gallery_Videos` DISABLE KEYS */;
INSERT INTO `Gallery_Videos` VALUES (1,'Universal Acceptance: Enabling a Multilingual Internet','https://www.youtube.com/embed/0VAwYpe24ZA','2024-10-21','2024-10-21','Published',1),(2,'IDN India bharat','https://www.youtube.com/embed/U12MzJQiqs4','2024-10-21','2024-10-21','Published',1),(3,'Universal Acceptance | A Global Agenda','https://www.youtube.com/embed/nOKrOVPh1LY','2024-10-21','2024-10-21','Published',1),(4,'Universal Acceptance and Multilingual Internet','https://www.youtube.com/embed/Gr1bHBrUOtg','2024-10-21','2024-10-21','Published',1),(5,'60sec DOT HINDI','https://www.youtube.com/embed/S8tu1RHrRcE','2024-10-21','2024-10-21','Published',1),(6,'Unlocking Economic Potential with Multilingual Internet & UA for Businesses in India','https://www.youtube.com/embed/Is-JOjsGVpE?si=oMqQEuIC1EuA2Pt_','2024-10-21','2024-10-21','Published',2),(7,'The Role of Country Code Top-Level Domains (ccTLDs) in Achieving Universal Acceptance','https://www.youtube.com/embed/xjBmIQX9B0g','2024-10-21','2024-10-21','Published',2),(8,'Interactive Session with Mr Jia-Rong Low, ICANN on \"Multilingual Internet and Universal Acceptance\"','https://www.youtube.com/embed/lqP9QQ7t_8M','2024-10-21','2024-10-21','Published',2),(9,'Voice Based Internet for Indian Requirements','https://www.youtube.com/embed/7_DrDfcpAV4','2024-10-21','2024-10-21','Published',2),(10,'1st Student Internet Governance Forum (SIGF) Conference','https://www.youtube.com/embed/8tO7ijkt7yI','2024-10-21','2024-10-21','Published',2),(11,'Virtual Training Programme on Universal Acceptance (UA) Readiness','https://www.youtube.com/embed/GwIm24xCr8w','2024-10-21','2024-10-21','Published',2),(12,'Bridging the Language Gap with Universal Acceptance and its Capacity Building','https://www.youtube.com/embed/tWIuO9x-reA','2024-10-21','2024-10-21','Published',2),(13,'Universal Acceptance: A Key to Unlocking Growth Opportunities for Startups and MSMEs','https://www.youtube.com/embed/-pqZquq846Y','2024-10-21','2024-10-21','Published',2),(14,'Valedictory Session','https://www.youtube.com/embed/MSsif0yV348','2024-10-21','2024-10-21','Published',3),(15,'Bhashini and Multilingual Internet','https://www.youtube.com/embed/9QkRPAdMnoE','2024-10-21','2024-10-21','Published',3),(16,'Case Studies Presentation','https://www.youtube.com/embed/hdIkIcNb0C8','2024-10-21','2024-10-21','Published',3),(17,'Panel Discussion Session on \"Technology enablement for universal acceptance\"','https://www.youtube.com/embed/jwRxmfkggm4','2024-10-21','2024-10-21','Published',3),(18,'Panel Discussion Session','https://www.youtube.com/embed/9O7kSSZnu3k','2024-10-21','2024-10-21','Published',3),(19,'Inaugural','https://www.youtube.com/embed/xXeI7iMPbr0','2024-10-21','2024-10-21','Published',3),(20,'IDN’s and EAI in Indian Languages – Outlook and Overview','https://www.youtube.com/embed/dd2R_QE24vQ','2024-10-21','2024-10-21','Published',3),(21,'Curtain Raiser','https://www.youtube.com/embed/bpuGM7Z5M1U','2024-10-21','2024-10-21','Published',3),(22,'Workshop on Making Your email platform UA Ready','https://www.youtube.com/embed/GXUkk1lNsDQ','2024-10-21','2024-10-21','Published',3),(23,'Making your website Universal Acceptance ready: Way Forward','https://www.youtube.com/embed/zwyKaqBIG1E','2024-10-21','2024-10-21','Published',3);
/*!40000 ALTER TABLE `Gallery_Videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_LANGUAGES`
--

DROP TABLE IF EXISTS `IDN_LANGUAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_LANGUAGES` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNLanguages_IDN_Domain` varchar(100) DEFAULT NULL,
  `IDNLanguages_Script` varchar(100) DEFAULT NULL,
  `IDNLanguages_Policies_Document` varchar(100) DEFAULT NULL,
  `Language_Supported` varchar(300) DEFAULT NULL,
  `IDNLanguages_Content_Author` varchar(100) DEFAULT NULL,
  `IDNLanguages_Content_Modifier` varchar(100) DEFAULT NULL,
  `IDNLanguages_CreatedDate` date NOT NULL,
  `IDNLanguages_UpdatedDate` date NOT NULL,
  `IDNLanguages_PublishStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_LANGUAGES`
--

LOCK TABLES `IDN_LANGUAGES` WRITE;
/*!40000 ALTER TABLE `IDN_LANGUAGES` DISABLE KEYS */;
INSERT INTO `IDN_LANGUAGES` VALUES (1,'.भारत','Devanagari Script','','Bodo(Boro), Dogri, Hindi, Konkani, Maithili, Marathi, Nepali, and Sindhi-Devanagari (8)',NULL,NULL,'2024-10-21','2024-10-21','Published'),(2,'.ভারত','Bengali Script','','Bengali and Manipuri (2)',NULL,NULL,'2024-10-21','2024-10-21','Published'),(3,'.భారత్','Telugu Script','','Telugu',NULL,NULL,'2024-10-21','2024-10-21','Published'),(4,'.ભારત','Gujarati Script','','Gujarati',NULL,NULL,'2024-10-21','2024-10-21','Published'),(5,'. بھارت','Perso-Arabic Script','','Urdu',NULL,NULL,'2024-10-21','2024-10-21','Published'),(6,'.இந்தியா','Tamil Script','','Tamil',NULL,NULL,'2024-10-21','2024-10-21','Published'),(7,'.ਭਾਰਤ','Gurmukhi (Punjabi)','','Punjabi',NULL,NULL,'2024-10-21','2024-10-21','Published'),(8,'.ಭಾರತ','Kannada Script','','Kannada',NULL,NULL,'2024-10-21','2024-10-21','Published'),(9,'.ଭାରତ','Odiya Script','','Odiya',NULL,NULL,'2024-10-21','2024-10-21','Published'),(10,'.ভাৰত','Assamese (Bengali Unicode) Script','','Assamese',NULL,NULL,'2024-10-21','2024-10-21','Published'),(11,'.भारतम्','Devanagari Script','','Sanskrit',NULL,NULL,'2024-10-21','2024-10-21','Published'),(12,'.भारोत','Devanagari Script','','Santali',NULL,NULL,'2024-10-21','2024-10-21','Published'),(13,'.بارت','Perso-Arabic Script','','Kashmiri',NULL,NULL,'2024-10-21','2024-10-21','Published'),(14,'.ڀارت','Perso-Arabic Script','','Sindhi',NULL,NULL,'2024-10-21','2024-10-21','Published'),(15,'.ഭാരതം','Malayalam Script','','Malayalam',NULL,NULL,'2024-10-21','2024-10-21','Published');
/*!40000 ALTER TABLE `IDN_LANGUAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_WEBSITES`
--

DROP TABLE IF EXISTS `IDN_WEBSITES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_WEBSITES` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNReadyWebsites_Title` varchar(100) NOT NULL,
  `IDNReadyWebsites_Logo` varchar(100) NOT NULL,
  `IDNReadyWebsites_Creation_Date` date NOT NULL,
  `IDNReadyWebsites_Last_Updated_Date` date NOT NULL,
  `IDNReadyWebsites_Publish_Status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES`
--

LOCK TABLES `IDN_WEBSITES` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES` DISABLE KEYS */;
INSERT INTO `IDN_WEBSITES` VALUES (1,'Bhashanet','core_app/Idn_websites/logo.png','2023-05-17','2023-07-11','Published'),(2,'C-DAC (Center of Development and Advance Computing)','core_app/Idn_websites/cdac-logo.png','2023-05-17','2023-07-11','Published'),(3,'Datamail','core_app/Idn_websites/data-logo.png','2023-05-17','2023-07-11','Published'),(4,'Department of Administrative Reforms & Public Grievances, MoPP&P','core_app/Idn_websites/emblem-dark.png','2023-05-17','2023-07-11','Published'),(5,'Department of Personnel & Training, MoPP&P','core_app/Idn_websites/Personal.png','2023-05-17','2023-07-11','Published'),(6,'Department of Telecommunications, Ministry of Communication','core_app/Idn_websites/download.jpg','2023-05-17','2023-07-11','Published'),(7,'ERNET (Education and Research Network of India)','core_app/Idn_websites/ernet.png','2023-05-17','2023-07-11','Published'),(8,'Evaris Systems LLP – Evolutionary AI','core_app/Idn_websites/Earis-Logo-croped-1-175x71.png','2023-05-17','2023-07-11','Published'),(9,'Global UA Day 2023','core_app/Idn_websites/download_1.jpg','2023-05-17','2023-07-11','Published'),(10,'IIGF (India Internet Governance Forum)','core_app/Idn_websites/Screenshot_2023-07-11_at_4.29.41_PM.png','2023-05-17','2023-07-11','Published'),(11,'IIREF (Indian Internet Research & Engineering Forum)','core_app/Idn_websites/logo-iiref.png','2023-05-17','2023-07-11','Published'),(12,'India.gov (National portal of India)','core_app/Idn_websites/india.gov.png','2023-05-17','2023-07-11','Published'),(13,'IRINN (Indian registry for Internet Names and Numbers)','core_app/Idn_websites/Untitled.jpg','2023-05-17','2023-07-11','Published'),(14,'MEITY (Ministry of Electronics and Information Technology)','core_app/Idn_websites/download_3.png','2023-05-17','2023-07-11','Published'),(15,'MHA (Ministry of Home Affairs)','core_app/Idn_websites/Screenshot_2023-07-11_at_4.17.41_PM.png','2023-05-17','2023-07-11','Published'),(16,'NIC (National Informatics Centre)','core_app/Idn_websites/NIC-LOGO-IDENTITY-VARIANTS_blue-01.png','2023-05-17','2023-07-11','Published'),(17,'NICSI (National Informatics Centre Services Inc.)','core_app/Idn_websites/nicsilogo.jpg','2023-05-17','2023-12-14','Published'),(18,'NIXI (National Internet Exchange of India)','core_app/Idn_websites/nixi-logo.png','2023-05-17','2023-07-11','Published'),(19,'STPI (Software Technology parks of India)','core_app/Idn_websites/stpi_nMJW69y.png','2023-05-17','2023-07-11','Published'),(20,'Vikaspedia','core_app/Idn_websites/Vikaspedia_logo.jpg','2023-05-17','2023-07-11','Published'),(21,'MNRE(Ministry of New and Renewable Energy)','core_app/Idn_websites/images_Bhfu1gH.png','2023-05-18','2023-12-07','Published'),(22,'Ministry of Youth Affairs & Sports','core_app/Idn_websites/download_1.png','2023-05-23','2023-07-11','Published'),(23,'Ministry of Jal Shakti / Department of Drinking Water and Sanitation','core_app/Idn_websites/Ministry_of_Jal_Shakti_.png','2023-12-14','2023-12-14','Published'),(24,'Ministry of Minority Affairs','core_app/Idn_websites/Ministry_of_Minority_Affairs_.png','2023-12-14','2023-12-14','Published'),(25,'Ministry of Steel','core_app/Idn_websites/Ministry_of_Steel.png','2023-12-14','2023-12-14','Published'),(26,'Ministry of Social Justice and Empowerment / Department of Social Justice and Empowerment','core_app/Idn_websites/Ministry_of_Social_Justice_and_Empowerment_.jpg','2023-12-14','2023-12-14','Published'),(27,'Ministry of Finance / Department of Investment and Public Asset Management','core_app/Idn_websites/Ministry_of_Finance-Department_of_Investment_and_Public_Asset_Management.png','2023-12-14','2023-12-14','Published'),(28,'Ministry of Tribal Affairs','core_app/Idn_websites/Ministry_of_Tribal_Affairs.png','2023-12-14','2023-12-14','Published'),(29,'Ministry of Mines','core_app/Idn_websites/Ministry_of_Mines.png','2023-12-14','2023-12-14','Published'),(30,'Ministry of Power','core_app/Idn_websites/Ministry_of_Power.png','2023-12-14','2023-12-14','Published'),(31,'Ministry of Finance / Department of Public Enterprises','core_app/Idn_websites/Ministry_of_Finance-Department_of_Public_Enterprises.png','2023-12-14','2023-12-14','Published'),(32,'Ministry of Development of North Eastern Region','core_app/Idn_websites/Ministry_of_Development_of_North_Eastern_Region.png','2023-12-14','2023-12-14','Published'),(34,'Ministry of Skill Development and Entrepreneurship','core_app/Idn_websites/Ministry_of_Skill_Development_and_Entrepreneurship.png','2023-12-14','2023-12-14','Published'),(35,'NITI Aayog','core_app/Idn_websites/NITI_Aayog.png','2023-12-14','2023-12-14','Published'),(36,'Standardisation Testing and Quality Certification (STQC) Directorate','core_app/Idn_websites/STQC.jpg','2023-12-14','2023-12-14','Published'),(37,'Cyber Swachhta Kendra','core_app/Idn_websites/Cyber_Swachhta_Kendra.png','2023-12-14','2023-12-14','Published'),(38,'Domain Registration Service India','core_app/Idn_websites/Domain_Registration_Service_India.png','2023-12-14','2023-12-14','Published'),(39,'MyGov','core_app/Idn_websites/download_wnWKgbu.png','2024-02-21','2024-02-21','Published');
/*!40000 ALTER TABLE `IDN_WEBSITES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_WEBSITES_CATEGORY`
--

DROP TABLE IF EXISTS `IDN_WEBSITES_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_WEBSITES_CATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNReadyWebsites_Category_Name` varchar(100) NOT NULL,
  `IDNReadyWebsites_Category_Creation_Date` date NOT NULL,
  `IDNReadyWebsites_Category_Last_Updated_Date` date NOT NULL,
  `IDNReadyWebsites_Category_Publish_Status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_CATEGORY`
--

LOCK TABLES `IDN_WEBSITES_CATEGORY` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_CATEGORY` DISABLE KEYS */;
INSERT INTO `IDN_WEBSITES_CATEGORY` VALUES (1,'Government','2023-05-17','2023-05-17','Published'),(2,'Private','2023-05-17','2024-02-03','Published'),(3,'Archives','2023-12-07','2023-12-07','Unpublished');
/*!40000 ALTER TABLE `IDN_WEBSITES_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_WEBSITES_IDNReadyWebsites_Category`
--

DROP TABLE IF EXISTS `IDN_WEBSITES_IDNReadyWebsites_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_WEBSITES_IDNReadyWebsites_Category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idnreadywebsites_id` bigint(20) NOT NULL,
  `idnreadywebsitescategory_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDN_WEBSITES_IDNReadyWeb_idnreadywebsites_id_idnr_7f3fec51_uniq` (`idnreadywebsites_id`,`idnreadywebsitescategory_id`),
  KEY `IDN_WEBSITES_IDNRead_idnreadywebsitescate_c7f4d5ae_fk_IDN_WEBSI` (`idnreadywebsitescategory_id`),
  CONSTRAINT `IDN_WEBSITES_IDNRead_idnreadywebsites_id_82730f2e_fk_IDN_WEBSI` FOREIGN KEY (`idnreadywebsites_id`) REFERENCES `IDN_WEBSITES` (`id`),
  CONSTRAINT `IDN_WEBSITES_IDNRead_idnreadywebsitescate_c7f4d5ae_fk_IDN_WEBSI` FOREIGN KEY (`idnreadywebsitescategory_id`) REFERENCES `IDN_WEBSITES_CATEGORY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_IDNReadyWebsites_Category`
--

LOCK TABLES `IDN_WEBSITES_IDNReadyWebsites_Category` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_IDNReadyWebsites_Category` DISABLE KEYS */;
INSERT INTO `IDN_WEBSITES_IDNReadyWebsites_Category` VALUES (1,1,1),(2,2,1),(23,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(24,17,1),(18,18,1),(19,19,1),(20,20,1),(25,21,3),(22,22,1),(26,23,1),(27,24,1),(28,25,1),(29,26,1),(30,27,1),(31,28,1),(32,29,1),(33,30,1),(34,31,1),(35,32,1),(37,34,1),(38,35,1),(39,36,1),(40,37,1),(41,38,1),(42,39,1);
/*!40000 ALTER TABLE `IDN_WEBSITES_IDNReadyWebsites_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_WEBSITES_LANGUAGES`
--

DROP TABLE IF EXISTS `IDN_WEBSITES_LANGUAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_WEBSITES_LANGUAGES` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNReadyWebsites_Language_Name` varchar(100) NOT NULL,
  `IDNReadyWebsites_Language_Creation_Date` date NOT NULL,
  `IDNReadyWebsites_Language_Last_Updated_Date` date NOT NULL,
  `IDNReadyWebsites_Language_Publish_Status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_LANGUAGES`
--

LOCK TABLES `IDN_WEBSITES_LANGUAGES` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGES` DISABLE KEYS */;
INSERT INTO `IDN_WEBSITES_LANGUAGES` VALUES (1,'English','2023-05-17','2023-05-17','Published'),(2,'Hindi','2023-05-17','2023-05-17','Published'),(3,'Marathi','2023-05-17','2023-05-17','Published'),(4,'Malayalam','2023-05-17','2023-05-17','Published'),(5,'Tamil','2023-05-17','2023-05-17','Published'),(6,'Assamese','2023-05-17','2023-05-17','Published'),(7,'Gujarati','2023-05-17','2023-05-17','Published'),(8,'Bengali','2023-05-17','2023-05-17','Published'),(9,'Bodo','2023-05-17','2023-05-17','Published'),(10,'Dongri','2023-05-17','2023-05-17','Published'),(11,'Kannada','2023-05-17','2023-05-17','Published'),(12,'Kashmiri','2023-05-17','2023-05-17','Published'),(13,'Konkani','2023-05-17','2023-05-17','Published'),(14,'Maithili','2023-05-17','2023-05-17','Published'),(15,'Manipuri','2023-05-17','2023-05-17','Published'),(16,'Nepali','2023-05-17','2023-05-17','Published'),(17,'Odia','2023-05-17','2023-05-17','Published'),(18,'Punjabi','2023-05-17','2023-05-17','Published'),(19,'Sanskrit','2023-05-17','2023-05-17','Published'),(20,'Sindhi','2023-05-17','2023-05-17','Published'),(21,'Santali','2023-05-17','2023-05-17','Published'),(22,'Telugu','2023-05-17','2023-05-17','Published'),(23,'Urdu','2023-05-17','2023-05-17','Published');
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_WEBSITES_LANGUAGE_URL_MAPPING`
--

DROP TABLE IF EXISTS `IDN_WEBSITES_LANGUAGE_URL_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_WEBSITES_LANGUAGE_URL_MAPPING` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNReadyWebsites_url` varchar(500) NOT NULL,
  `IDNReadyWebsites_LangURLMapping_Creation_Date` date NOT NULL,
  `IDNReadyWebsites_LangURLMapping_Last_Updated_Date` date NOT NULL,
  `IDNReadyWebsites_LangURLMapping_Publish_Status` varchar(20) NOT NULL,
  `IDNReadyWebsites_id` bigint(20) NOT NULL,
  `IDNReadyWebsites_lang_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDN_WEBSITES_LANGUAG_IDNReadyWebsites_id_0b4d4dc9_fk_IDN_WEBSI` (`IDNReadyWebsites_id`),
  KEY `IDN_WEBSITES_LANGUAG_IDNReadyWebsites_lan_c97e5821_fk_IDN_WEBSI` (`IDNReadyWebsites_lang_id`),
  CONSTRAINT `IDN_WEBSITES_LANGUAG_IDNReadyWebsites_id_0b4d4dc9_fk_IDN_WEBSI` FOREIGN KEY (`IDNReadyWebsites_id`) REFERENCES `IDN_WEBSITES` (`id`),
  CONSTRAINT `IDN_WEBSITES_LANGUAG_IDNReadyWebsites_lan_c97e5821_fk_IDN_WEBSI` FOREIGN KEY (`IDNReadyWebsites_lang_id`) REFERENCES `IDN_WEBSITES_LANGUAGES` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_LANGUAGE_URL_MAPPING`
--

LOCK TABLES `IDN_WEBSITES_LANGUAGE_URL_MAPPING` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGE_URL_MAPPING` DISABLE KEYS */;
INSERT INTO `IDN_WEBSITES_LANGUAGE_URL_MAPPING` VALUES (1,'bhashanet.in','2023-05-17','2023-05-17','Published',1,1),(2,'भाषानेट.भारत','2023-05-17','2023-05-17','Published',1,2),(3,'मराठी.भाषानेट.भारत','2023-05-17','2023-05-17','Published',1,3),(4,'ಭಾಷಾನೆಟ್.ಭಾರತ','2023-05-17','2023-05-17','Published',1,11),(5,'ഭാഷാനെറ്റ്.ഭാരതം','2023-05-17','2023-05-17','Published',1,4),(6,'ভাষানেট.ভারত','2023-05-17','2023-05-17','Published',1,8),(7,'cdac.in','2023-05-17','2023-05-17','Published',2,1),(8,'सीडैक.भारत','2023-05-17','2023-05-17','Published',2,2),(9,'datamail.in','2023-05-17','2023-05-17','Published',3,1),(10,'डेटामेल.भारत','2023-05-17','2023-05-17','Published',3,3),(11,'डाटामेल.भारत','2023-05-17','2023-05-17','Published',3,2),(12,'ડાટામેલ.ભારત','2023-05-17','2023-05-17','Published',3,7),(13,'இந.இந்தியா','2023-05-17','2023-05-17','Published',3,5),(14,'ਡਾਟਾਮੇਲ.ਭਾਰਤ','2023-05-17','2023-05-17','Published',3,18),(15,'డేటామెయిల్.భారత్','2023-05-17','2023-05-17','Published',3,22),(16,'ڈاٹامیل.بھارت','2023-05-17','2023-05-17','Published',3,23),(17,'ডাটামেল্.ভারত','2023-05-17','2023-05-17','Published',3,8),(18,'ಡೇಟಾಮೇಲ್.ಭಾರತ','2023-05-17','2023-05-17','Published',3,11),(19,'darpg.gov.in','2023-05-17','2023-05-17','Published',4,1),(20,'डीएआरपीजी.सरकार.भारत','2023-05-17','2023-05-17','Published',4,2),(21,'dopt.gov.in','2023-05-17','2023-05-17','Published',5,1),(22,'कार्मिकएवंप्रशिक्षणविभाग.सरकार.भारत','2023-05-17','2023-05-17','Published',5,2),(23,'dot.gov.in','2023-05-17','2023-05-17','Published',6,1),(24,'डीओटी.सरकार.भारत','2023-05-17','2023-05-17','Published',6,2),(25,'ernet.in','2023-05-17','2023-05-17','Published',7,1),(26,'ईआरनेट.भारत','2023-05-17','2023-05-17','Published',7,2),(27,'evarissystems.com','2023-05-17','2023-05-17','Published',8,1),(28,'एवरिस.भारत','2023-05-17','2023-05-17','Published',8,2),(29,'globaluaday.in','2023-05-17','2023-05-17','Published',9,1),(30,'वैश्विकयूएडे.भारत','2023-05-17','2023-05-17','Published',9,2),(31,'ગ્લોબલયુએદિવસ.ભારત','2023-05-17','2023-05-17','Published',9,7),(32,'ಜಾಗತಿಕಯುಎಡೇ.ಭಾರತ','2023-05-17','2023-05-17','Published',9,11),(33,'ആഗോളയുഎഡേ.ഭാരതം','2023-05-17','2023-05-17','Published',9,4),(34,'யுஏடே.இந்தியா','2023-05-17','2023-05-17','Published',9,5),(35,'ప్రపంచయూఏడే.భారత్','2023-05-17','2023-05-17','Published',9,22),(36,'عالمییواے-ڈے.بھارت','2023-05-17','2023-05-17','Published',9,23),(37,'indiaigf.in','2023-05-17','2023-05-17','Published',10,1),(38,'आईआईजीएफ.भारत','2023-05-17','2023-05-17','Published',10,2),(39,'આઈઆઈજીએફ.ભારત','2023-05-17','2023-05-17','Published',10,7),(40,'আইআইজিএফ.ভারত','2023-05-17','2023-05-17','Published',10,8),(41,'ഐഐജിഎഫ്.ഭാരതം','2023-05-17','2023-05-17','Published',10,4),(42,'آئي-آئي-جي-ايف.ڀارت','2023-05-17','2023-05-17','Published',10,20),(43,'ఐఐజిఎఫ్.భారత్','2023-05-17','2023-05-17','Published',10,22),(44,'ஐஐஜிஎஃப்.இந்தியா','2023-05-17','2023-05-17','Published',10,5),(45,'आयआयजीएफ.भारत','2023-05-17','2023-05-17','Published',10,3),(46,'آئی-آئی-جی-ایف.بھارت','2023-05-17','2023-05-17','Published',10,23),(47,'ਆਈਆਈਜੀਐਫ.ਭਾਰਤ','2023-05-17','2023-05-17','Published',10,18),(48,'ಐಐಜಿಎಫ್.ಭಾರತ','2023-05-17','2023-05-17','Published',10,11),(49,'iiref.in','2023-05-17','2023-05-17','Published',11,1),(50,'आईआईआरईएफ.भारत','2023-05-17','2023-05-17','Published',11,2),(51,'ஐஐஆர்இஎப்.இந்தியா','2023-05-17','2023-05-17','Published',11,5),(52,'आईआईआरईएफ.भारतम्','2023-05-17','2023-05-17','Published',11,19),(53,'ااراف.بھارت','2023-05-17','2023-05-17','Published',11,23),(54,'india.gov.in','2023-05-17','2023-05-17','Published',12,1),(55,'इंडिया.सरकार.भारत','2023-05-17','2023-05-17','Published',12,2),(56,'irinn.in','2023-05-17','2023-05-17','Published',13,1),(57,'आईरिन.भारत','2023-05-17','2023-05-17','Published',13,2),(58,'આઈરીન.ભારત','2023-05-17','2023-05-17','Published',13,7),(59,'meity.gov.in','2023-05-17','2023-05-17','Published',14,1),(60,'एमईआईटीवाई.सरकार.भारत','2023-05-17','2023-05-17','Published',14,2),(61,'mha.gov.in','2023-05-17','2023-05-17','Published',15,1),(62,'गृहमंत्रालय.सरकार.भारत','2023-05-17','2023-05-17','Published',15,2),(63,'www.nic.in','2023-05-17','2023-07-20','Published',16,1),(64,'एनआईसी.भारत','2023-05-17','2023-05-17','Published',16,2),(65,'nicsi.com','2023-05-17','2023-12-14','Published',17,1),(66,'एनआईसीएसआई.भारत','2023-05-17','2023-05-17','Published',17,2),(67,'nixi.in','2023-05-17','2023-05-17','Published',18,1),(68,'निक्सी.भारत','2023-05-17','2023-05-17','Published',18,2),(69,'निक्सि.भारत','2023-05-17','2023-05-17','Published',18,3),(70,'ನಿಕ್ಸಿ.ಭಾರತ','2023-05-17','2023-05-17','Published',18,11),(71,'നിക്സി.ഭാരതം','2023-05-17','2023-05-17','Published',18,4),(72,'নিক্সি.ভারত','2023-05-17','2023-05-17','Published',18,8),(73,'નીક્સી.ભારત','2023-05-17','2023-05-17','Published',18,7),(74,'ਨਿਕਸੀ.ਭਾਰਤ','2023-05-17','2023-05-17','Published',18,18),(75,'نڪسي.ڀارت','2023-05-17','2023-05-17','Published',18,20),(76,'நிக்சி.இந்தியா','2023-05-17','2023-05-17','Published',18,5),(77,'నిక్సి.భారత్','2023-05-17','2023-07-17','Published',18,22),(78,'نکسی.بھارت','2023-05-17','2023-05-17','Published',18,23),(79,'stpi.in','2023-05-17','2023-05-17','Published',19,1),(80,'एसटीपीआई.भारत','2023-05-17','2023-05-17','Published',19,2),(81,'vikaspedia.in','2023-05-17','2023-05-17','Published',20,1),(82,'हिन्दी.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,2),(83,'मराठी.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,3),(84,'വികാസ്-പീഡിയ.ഭാരതം','2023-05-17','2023-05-17','Published',20,4),(85,'விகாஸ்பீடியா.இந்தியா','2023-05-17','2023-05-17','Published',20,5),(86,'বিকাশপেডিয়া.ভাৰত','2023-05-17','2023-05-17','Published',20,6),(87,'વિકાસપીડિયા.ભારત','2023-05-17','2023-05-17','Published',20,7),(88,'বিকাশপিডিয়া.ভারত','2023-05-17','2023-05-17','Published',20,8),(89,'बिकासपेदिया.भारत','2023-05-17','2023-05-17','Published',20,9),(90,'डोगरी.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,10),(91,'ವಿಕಾಸ್ಪೀಡಿಯ.ಭಾರತ','2023-05-17','2023-05-17','Published',20,11),(93,'कोंकणी.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,13),(94,'मैथिली.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,14),(95,'বিকাসপিদিয়া.ভারত','2023-05-17','2023-05-17','Published',20,15),(96,'नेपाली.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,16),(97,'ବିକାଶପିଡ଼ିଆ.ଭାରତ','2023-05-17','2023-05-17','Published',20,17),(98,'ਵਿਕਾਸਪੀਡੀਆ.ਭਾਰਤ','2023-05-17','2023-05-17','Published',20,18),(99,'विकासपीडिया.भारतम्','2023-05-17','2023-05-17','Published',20,19),(100,'विकासपीडिया.भारोत','2023-05-17','2023-05-17','Published',20,21),(101,'सिंधी.विकासपीडिया.भारत','2023-05-17','2023-05-17','Published',20,20),(102,'వికాస్పీడియా.భారత్','2023-05-17','2023-05-17','Published',20,22),(103,'وکاس-پیڈیا.بھارت','2023-05-17','2023-05-17','Published',20,23),(104,'mnre.gov.in','2023-05-18','2023-05-18','Published',21,1),(105,'एमएनआरई.सरकार.भारत','2023-05-18','2024-03-07','Published',21,2),(106,'yas.nic.in','2023-05-24','2023-05-24','Published',22,1),(107,'वायएएस.सरकार.भारत/hi','2023-05-24','2023-05-24','Published',22,2),(108,'jalshakti-ddws.gov.in','2023-12-14','2023-12-14','Published',23,1),(109,'जलशक्तिमंत्रालयपेयजलऔरस्वच्छताविभाग.सरकार.भारत','2023-12-14','2023-12-14','Published',23,2),(110,'minorityaffairs.gov.in','2023-12-14','2023-12-14','Published',24,1),(111,'अल्पसंख्यककार्यमंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',24,2),(112,'steel.gov.in','2023-12-14','2023-12-14','Published',25,1),(113,'इस्पातमंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',25,2),(114,'socialjustice.gov.in','2023-12-14','2023-12-14','Published',26,1),(115,'सामाजिकन्यायऔरअधिकारितामंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',26,2),(116,'dipam.gov.in','2023-12-14','2023-12-14','Published',27,1),(117,'दीपम.सरकार.भारत','2023-12-14','2023-12-14','Published',27,2),(118,'tribal.nic.in','2023-12-14','2023-12-14','Published',28,1),(119,'जनजातीयकार्यमंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',28,2),(120,'mines.gov.in','2023-12-14','2023-12-14','Published',29,1),(121,'खानमंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',29,2),(122,'powermin.gov.in/hi','2023-12-14','2023-12-14','Published',30,1),(123,'विद्युतमंत्रालय.सरकार.भारत','2023-12-14','2023-12-14','Published',30,2),(124,'dpe.gov.in','2023-12-14','2023-12-14','Published',31,1),(125,'डीपीई.सरकार.भारत','2023-12-14','2023-12-14','Published',31,2),(126,'mdoner.gov.in','2023-12-14','2023-12-14','Published',32,1),(127,'एमडोनर.सरकार.भारत','2023-12-14','2023-12-14','Published',32,2),(128,'msde.gov.in','2023-12-14','2023-12-14','Published',34,1),(129,'एमएसडीई.सरकार.भारत','2023-12-14','2023-12-14','Published',34,2),(130,'niti.gov.in','2023-12-14','2023-12-14','Published',35,1),(131,'नीति.सरकार.भारत','2023-12-14','2023-12-14','Published',35,2),(132,'stqc.gov.in','2023-12-14','2023-12-14','Published',36,1),(133,'एसटीक्यूसी.सरकार.भारत','2023-12-14','2023-12-14','Published',36,2),(134,'csk.gov.in','2023-12-14','2023-12-14','Published',37,1),(135,'सीएसके.सरकार.भारत','2023-12-14','2023-12-14','Published',37,2),(136,'registry.gov.in','2023-12-14','2023-12-14','Published',38,1),(137,'रजिस्ट्री.सरकार.भारत','2023-12-14','2023-12-14','Published',38,2),(138,'মণিপুরী.ভাষানেট.ভারত','2023-12-15','2023-12-15','Published',1,15),(139,'mygov.in','2024-02-21','2024-02-21','Published',39,1),(140,'मेरीसरकार.भारत/hi/','2024-02-21','2024-02-21','Published',39,2),(141,'زبان-کا-نیٹ.بھارت','2024-02-21','2024-02-21','Published',1,23),(142,'ભાષાનેટ.ભારત','2024-02-21','2024-02-21','Published',1,7),(143,'ਭਾਸ਼ਾਨੇਟ.ਭਾਰਤ','2024-02-21','2024-02-21','Published',1,18),(144,'பாஷாநெட்.இந்தியா','2024-02-21','2024-02-21','Published',1,5),(145,'భాషానెట్.భారత్','2024-02-21','2024-02-21','Published',1,22),(146,'ভাষানেট.ভাৰত','2024-02-21','2024-02-21','Published',1,6),(147,'कोंकणी.भाषानेट.भारत','2024-02-21','2024-02-21','Published',1,13),(148,'ଭାଷାନେଟ.ଭାରତ','2024-02-21','2024-02-21','Published',1,17),(149,'पा़रसीनेट.भारोत','2024-02-21','2024-02-21','Published',1,21);
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGE_URL_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDNccTLDs`
--

DROP TABLE IF EXISTS `IDNccTLDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDNccTLDs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDNccTLDs_Title` varchar(500) DEFAULT NULL,
  `IDNccTLDs_Description` longtext DEFAULT NULL,
  `IDNccTLDs_Image1` varchar(100) DEFAULT NULL,
  `IDNccTLDs_Image2` varchar(100) DEFAULT NULL,
  `IDNccTLDs_Image3` varchar(100) DEFAULT NULL,
  `IDNccTLDs_Image4` varchar(100) DEFAULT NULL,
  `IDNLanguages_Subtitle1` longtext DEFAULT NULL,
  `IDNLanguages_Description1` longtext DEFAULT NULL,
  `IDNLanguages_Subtitle2` longtext DEFAULT NULL,
  `IDNLanguages_Description2` longtext DEFAULT NULL,
  `IDNLanguages_Subtitle3` longtext DEFAULT NULL,
  `IDNLanguages_Description3` longtext DEFAULT NULL,
  `IDNLanguages_Subtitle4` longtext DEFAULT NULL,
  `IDNLanguages_Description4` longtext DEFAULT NULL,
  `IDNLanguages_link1` varchar(500) DEFAULT NULL,
  `IDNLanguages_link2` varchar(500) DEFAULT NULL,
  `IDNLanguages_link3` varchar(500) DEFAULT NULL,
  `IDNLanguages_link4` varchar(500) DEFAULT NULL,
  `IDNccTLDs_Content_Author` varchar(100) DEFAULT NULL,
  `IDNccTLDs_Content_Modifier` varchar(100) DEFAULT NULL,
  `IDNccTLDs_CreatedDate` date NOT NULL,
  `IDNccTLDs_UpdatedDate` date NOT NULL,
  `IDNccTLDs_PublishStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDNccTLDs`
--

LOCK TABLES `IDNccTLDs` WRITE;
/*!40000 ALTER TABLE `IDNccTLDs` DISABLE KEYS */;
INSERT INTO `IDNccTLDs` VALUES (1,'.bharat IDN-ccTLDs','IDN CCTLD','core_app/IDNccTLDs/image/dot-bharat-banner_mD4HI5H.jpg','core_app/IDNccTLDs/image/LogoBharat_Hindi_gbYaXno.png','core_app/IDNccTLDs/image/aaaa_Lpii2m8.jpg','','IDN : Website address in local language निक्सी.भारत','Internationalized Domain Names (IDNs) enable people around the world to use domain names in local languages and scripts. IDNs are posssible in all Indian languages since they are formed using characters from different scripts, such as Hindi, Bengali, Gujarati or Tamil Script etc.','','IDNs are an important development that makes the internet more accessible and inclusive for users around the world. By enabling non-Latin characters in domain names, IDNs provide users with the ability to use the internet in their native language, which can improve usability and access to information.','22 Scheduled Indian Languages','','','','https://registry.in/index','registry.gov.in',NULL,NULL,NULL,NULL,'2024-10-21','2024-10-21','Published');
/*!40000 ALTER TABLE `IDNccTLDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LimitCheck`
--

DROP TABLE IF EXISTS `LimitCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LimitCheck` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Email` varchar(300) NOT NULL,
  `Generation_Time` date NOT NULL,
  `Counter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LimitCheck`
--

LOCK TABLES `LimitCheck` WRITE;
/*!40000 ALTER TABLE `LimitCheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `LimitCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OBJECTIVE`
--

DROP TABLE IF EXISTS `OBJECTIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OBJECTIVE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Objectives_Name` varchar(800) NOT NULL,
  `Objectives_Description` longtext NOT NULL,
  `Objectives_CreationDate` date NOT NULL,
  `Objectives_LastUpdatedDate` date NOT NULL,
  `Objectives_Content_Author` varchar(100) DEFAULT NULL,
  `Objectives_Content_Modifier` varchar(100) DEFAULT NULL,
  `Objectives_PublishedStatus` varchar(20) NOT NULL,
  `Objectives_Slug` varchar(255) DEFAULT NULL,
  `Objectives_Thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `OBJECTIVE_Objectives_Slug_037bebde` (`Objectives_Slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OBJECTIVE`
--

LOCK TABLES `OBJECTIVE` WRITE;
/*!40000 ALTER TABLE `OBJECTIVE` DISABLE KEYS */;
INSERT INTO `OBJECTIVE` VALUES (1,'Vision','To provide a truly multilingual internet, where local language website name and local language email id, work everywhere seamlessly.','2024-10-21','2024-10-21',NULL,NULL,'Published',NULL,'core_app/Objectives/Thumbnail/objective_K9vtvIw_HExMRiX.png'),(2,'Objective','To connect with users in their own languages. Bhashanet is working towards enabling people from remote locations and different socioeconomic backgrounds to access the multilingual Internet in India.','2024-10-21','2024-10-21',NULL,NULL,'Published',NULL,'core_app/Objectives/Thumbnail/objective_INeqlVr_HY0PQfA.png'),(3,'Mission','<ul class=\"ua-list py-1 listitems text-indent\">\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Encouraging use of local language website name and\r\n                                                                        email id.</li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Promoting awareness of local language url and\r\n                                                                        email id.</li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                        Developing policies and regulations. </li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Supporting technical collaboration. </li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                        Engagement of Website owners, Web-Developer\r\n                                                                        Community, Web Security experts.</li>\r\n                                                                </ul>','2024-10-21','2024-10-21',NULL,NULL,'Published',NULL,'core_app/Objectives/Thumbnail/mission_qZ8KbTc_Rn8tkOG.png');
/*!40000 ALTER TABLE `OBJECTIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRIVACY_POLICY`
--

DROP TABLE IF EXISTS `PRIVACY_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRIVACY_POLICY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `PrivacyPolicy_title` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_title_desc` longtext DEFAULT NULL,
  `PrivacyPolicy_subtitle1` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_desc1` longtext DEFAULT NULL,
  `PrivacyPolicy_subtitle2` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_desc2` longtext DEFAULT NULL,
  `PrivacyPolicy_subtitle3` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_desc3` longtext DEFAULT NULL,
  `PrivacyPolicy_subtitle4` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_desc4` longtext DEFAULT NULL,
  `PrivacyPolicy_subtitle5` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_desc5` longtext DEFAULT NULL,
  `PrivacyPolicy_image` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_url` varchar(500) DEFAULT NULL,
  `PrivacyPolicy_Content_Author` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_Content_Modifier` varchar(100) DEFAULT NULL,
  `PrivacyPolicy_PublishStatus` varchar(30) NOT NULL,
  `PrivacyPolicy_CreationDate` date NOT NULL,
  `PrivacyPolicy_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRIVACY_POLICY`
--

LOCK TABLES `PRIVACY_POLICY` WRITE;
/*!40000 ALTER TABLE `PRIVACY_POLICY` DISABLE KEYS */;
INSERT INTO `PRIVACY_POLICY` VALUES (1,'Privacy Policy','',NULL,'Bhashanet does not automatically capture any specific personal information, (like name, phone number or e-mail address), that allows us to identify you individually. If the Bhashanet requests you to provide personal information, you will be informed for the particular purposes for which the information is gathered and adequate security measures will be taken to protect your personal information.',NULL,'We do not sell or share any personally identifiable information volunteered on the Bhashanet to any third party (public/private). Any information provided to this website will be protected from loss, misuse, unauthorized access or disclosure, alteration, or destruction. We gather certain information about the User, such as Internet protocol (IP) addresses, domain name, browser type, operating system, the date and time of the visit and the pages visited. We make no attempt to link these addresses with the identity of individuals visiting our site unless an attempt to damage the site has been detected.',NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,'Published','2024-10-21','2024-10-21');
/*!40000 ALTER TABLE `PRIVACY_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STACKHOLDER`
--

DROP TABLE IF EXISTS `STACKHOLDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STACKHOLDER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Stackholder_image` varchar(100) DEFAULT NULL,
  `Stackholder_image_title` varchar(500) DEFAULT NULL,
  `Stackholder_url` varchar(500) DEFAULT NULL,
  `Stackholder_CreationDate` date NOT NULL,
  `Stackholder_LastUpdatedDate` date NOT NULL,
  `Stackholder_PublishedStatus` varchar(20) NOT NULL,
  `Stackholder_Content_Author` varchar(100) DEFAULT NULL,
  `Stackholder_Content_Modifier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STACKHOLDER`
--

LOCK TABLES `STACKHOLDER` WRITE;
/*!40000 ALTER TABLE `STACKHOLDER` DISABLE KEYS */;
INSERT INTO `STACKHOLDER` VALUES (1,'core_app/Stackholder/img/bhashaini_dWuc9zm.png','Bhashini','https://bhashini.gov.in/','2024-10-21','2024-10-21','Published',NULL,NULL),(2,'core_app/Stackholder/img/cdac-logo_HJsPnzd.svg','Centre for Development of Advanced Computing','https://www.cdac.in/','2024-10-21','2024-10-21','Published',NULL,NULL),(3,'core_app/Stackholder/img/UASG_logo_f0gouN7.png','Universal Acceptance Steering Group','https://uasg.tech/','2024-10-21','2024-10-21','Published',NULL,NULL),(4,'core_app/Stackholder/img/meity_SqSUY3G.jpg','Ministry of Electronics and Information Technology','https://www.meity.gov.in/','2024-10-21','2024-10-21','Published',NULL,NULL),(5,'core_app/Stackholder/img/ficci_uZGNSEp.png','Federation of Indian Chambers of Commerce & Industry','https://ficci.in/','2024-10-21','2024-10-21','Published',NULL,NULL),(6,'core_app/Stackholder/img/nic_bZ3iGWm.png','National Informatics Centre','https://www.nic.in/','2024-10-21','2024-10-21','Published',NULL,NULL),(7,'core_app/Stackholder/img/NIXI_Final_logo_1_1_YcZLijA.jpg','National Internet Exchange of India','https://nixi.in/','2024-10-21','2024-10-21','Published',NULL,NULL);
/*!40000 ALTER TABLE `STACKHOLDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUBSCRIBER`
--

DROP TABLE IF EXISTS `SUBSCRIBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUBSCRIBER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subscriber_Email` varchar(200) NOT NULL,
  `Subscriber_Subscription_Status` varchar(20) NOT NULL,
  `Subscriber_Subscription_Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUBSCRIBER`
--

LOCK TABLES `SUBSCRIBER` WRITE;
/*!40000 ALTER TABLE `SUBSCRIBER` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUBSCRIBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TERMS_AND_CONDITIONS`
--

DROP TABLE IF EXISTS `TERMS_AND_CONDITIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TERMS_AND_CONDITIONS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TermsAndConditions_title` varchar(100) DEFAULT NULL,
  `TermsAndConditions_title_desc` longtext DEFAULT NULL,
  `TermsAndConditions_subtitle1` varchar(100) DEFAULT NULL,
  `TermsAndConditions_desc1` longtext DEFAULT NULL,
  `TermsAndConditions_document1` varchar(100) DEFAULT NULL,
  `TermsAndConditions_subtitle2` varchar(100) DEFAULT NULL,
  `TermsAndConditions_desc2` longtext DEFAULT NULL,
  `TermsAndConditions_document2` varchar(100) DEFAULT NULL,
  `TermsAndConditions_subtitle3` varchar(100) DEFAULT NULL,
  `TermsAndConditions_desc3` longtext DEFAULT NULL,
  `TermsAndConditions_document3` varchar(100) DEFAULT NULL,
  `TermsAndConditions_subtitle4` varchar(100) DEFAULT NULL,
  `TermsAndConditions_desc4` longtext DEFAULT NULL,
  `TermsAndConditions_document4` varchar(100) DEFAULT NULL,
  `TermsAndConditions_subtitle5` varchar(100) DEFAULT NULL,
  `TermsAndConditions_desc5` longtext DEFAULT NULL,
  `TermsAndConditions_document5` varchar(100) DEFAULT NULL,
  `TermsAndConditions_image` varchar(100) DEFAULT NULL,
  `TermsAndConditions_url` varchar(500) DEFAULT NULL,
  `TermsAndConditions_Content_Author` varchar(100) DEFAULT NULL,
  `TermsAndConditions_Content_Modifier` varchar(100) DEFAULT NULL,
  `TermsAndConditions_PublishStatus` varchar(30) NOT NULL,
  `TermsAndConditions_CreationDate` date NOT NULL,
  `TermsAndConditions_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TERMS_AND_CONDITIONS`
--

LOCK TABLES `TERMS_AND_CONDITIONS` WRITE;
/*!40000 ALTER TABLE `TERMS_AND_CONDITIONS` DISABLE KEYS */;
INSERT INTO `TERMS_AND_CONDITIONS` VALUES (1,'Terms and conditions','Terms and conditions',NULL,'This website of the \"BHASHANET\" has been developed to provide information to the general public. The documents and information displayed in this website are for reference purposes only and does not purport to be a legal document. BHASHANET  does not warrant the accuracy or completeness of the information, text, graphics, links or other items contained within the Website. As a result of updates and corrections, the web contents are subject to change without any notice from “BHASHANET” .','',NULL,'In case of any variance between what has been stated and that contained in the relevant Act, Rules, Regulations, Policy Statements etc, the latter shall prevail. Local language version of the website is provided for national use. Please use the English content as in case of any ambiguities/ doubts/ clarifications/ errors etc.','',NULL,'Certain links on the website lead to resources located on other websites maintained by third parties over whom BHASHANET  has no control or connection. These websites are external to BHASHANET  and by visiting these; you are outside the BHASHANET  and its channels. BHASHANET  neither endorses in any way nor offers any judgment or warranty and accepts no responsibility or liability for the authenticity, availability of any of the goods or services or for any damage, loss or harm, direct or consequential or any violation of local or international laws that may be incurred by your visiting and transacting on these websites.','',NULL,'This website is designed, developed and hosted by “BHASHANET team”.\r\nThough all efforts have been made to ensure the accuracy and currency of the content on this website, the same should not be construed as a statement of law or used for any legal purposes. BHASHANET  accepts no responsibility in relation to the accuracy, completeness, usefulness or otherwise, of the contents. Users are advised to verify/check any information with the relevant Government department(s) and/or other source(s), and to obtain any appropriate professional advice before acting on the information provided in the website.\r\nIn no event will the BHASHANET  be liable for any expense, loss or damage including, without limitation, indirect or consequential loss or damage, or any expense, loss or damage whatsoever arising from use, or loss of use, of data, arising out of or in connection with the use of this Website.\r\nLinks to other websites that have been included on this website are provided for public convenience only. BHASHANET  is not responsible for the contents or reliability of linked websites and does not necessarily endorse the view expressed within them. We cannot guarantee the availability of such linked pages at all times.','',NULL,'Material featured on this website may be reproduced free of charge after taking proper permission by sending a mail to us. However, the material has to be reproduced accurately and not to be used in a derogatory manner or in a misleading context. In case of any incorrect or incomplete or misleading reproduction of the information, the person who has reproduced and or published the same shall be solely responsible and liable for the consequences. Wherever the material is being published or issued to others, the source must be prominently acknowledged. However, the permission to reproduce this material shall not extend to any material which is identified as being copyright of a third party. Authorisation to reproduce such material must be obtained from the departments/copyright holders concerned','','',NULL,NULL,NULL,'Published','2024-10-21','2024-10-21');
/*!40000 ALTER TABLE `TERMS_AND_CONDITIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TESTIMONIALS`
--

DROP TABLE IF EXISTS `TESTIMONIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TESTIMONIALS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Testimonials_Title` longtext NOT NULL,
  `Testimonials_Description` longtext NOT NULL,
  `Testimonials_Description1` longtext DEFAULT NULL,
  `Testimonials_PublishStatus` varchar(20) NOT NULL,
  `Testimonials_Image` varchar(100) NOT NULL,
  `Testimonials_InternalURL` varchar(500) DEFAULT NULL,
  `Testimonials_ExternalURL` varchar(500) DEFAULT NULL,
  `Testimonials_CreatedDate` date NOT NULL,
  `Testimonials_UpdatedDate` date DEFAULT NULL,
  `Testimonials_Author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TESTIMONIALS`
--

LOCK TABLES `TESTIMONIALS` WRITE;
/*!40000 ALTER TABLE `TESTIMONIALS` DISABLE KEYS */;
/*!40000 ALTER TABLE `TESTIMONIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TESTIMONIALS_MESSAGES`
--

DROP TABLE IF EXISTS `TESTIMONIALS_MESSAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TESTIMONIALS_MESSAGES` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TestimonialsMessages_PersonName` longtext DEFAULT NULL,
  `TestimonialsMessages_PersonDesignation` longtext DEFAULT NULL,
  `TestimonialsMessages_Title` longtext DEFAULT NULL,
  `TestimonialsMessages_Description` longtext DEFAULT NULL,
  `TestimonialsMessages_Description1` longtext DEFAULT NULL,
  `TestimonialsMessages_PublishStatus` varchar(20) NOT NULL,
  `TestimonialsMessages_Image` varchar(100) NOT NULL,
  `TestimonialsMessages_InternalURL` varchar(500) DEFAULT NULL,
  `TestimonialsMessages_ExternalURL` varchar(500) DEFAULT NULL,
  `TestimonialsMessages_CreatedDate` date NOT NULL,
  `TestimonialsMessages_UpdatedDate` date DEFAULT NULL,
  `TestimonialsMessages_Author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TESTIMONIALS_MESSAGES`
--

LOCK TABLES `TESTIMONIALS_MESSAGES` WRITE;
/*!40000 ALTER TABLE `TESTIMONIALS_MESSAGES` DISABLE KEYS */;
INSERT INTO `TESTIMONIALS_MESSAGES` VALUES (1,'Mr. Rajeev Chandrasekhar','(Union Minister of State for Electronics and Information Technology)','','Prime Minister Narendra Modi\'s vision of Digital India is to ensure that the Internet reaches and empowers all Indians. For this, the Multilingual Internet is not a challenge but an urgent requirement.','','Unpublished','core_app/TestimonialsMessages/rajeev_gCaIhW5.jpg',NULL,NULL,'2024-10-21','2024-10-21',NULL),(2,'','','','','','Unpublished','',NULL,NULL,'2024-10-21','2024-10-21',NULL),(3,'Dr. Devesh Tyagi','CEO ( NIXI )','3','India is proud to champion a more inclusive and accessible internet for all. At NIXI, we are firmly committed to fostering a universal acceptance environment where everyone can access information and participate online in their preferred language.','','Published','core_app/TestimonialsMessages/Devesh_Tyagi_hvaGX4e.png',NULL,NULL,'2024-10-21','2024-10-21',NULL),(4,'Shri Sushil Pal','Joint Secretary (Ministry of Electronics and Information Technology)','','Collection of networks defines the internet but networks are incomplete without the Universal Acceptance. For accelerating digital inclusion, the one thing that we can do certainly is to use the language of the people to connect them to the Internet.','','Published','core_app/TestimonialsMessages/WhatsApp_Image_2024-03-14_at_2.03.03_PM_bRM1BJ8_kc8Qd8D.jpeg',NULL,NULL,'2024-10-21','2024-10-21',NULL),(5,'Shri S. Krishnan','Secretary (Ministry of Electronics and Information Technology)','','Internet has transformative potential in democratizing access to information, yet its true efficacy lies in its multilingual adaptation. By championing the Universal Acceptance initiative, India stands as a shining beacon of diversity, embodying the essence of universal acceptance and inclusivity.','','Published','core_app/TestimonialsMessages/Photo_8112022_MwYiYk8_kbtkunN_uwK7XsC.jpg',NULL,NULL,'2024-10-21','2024-10-21',NULL);
/*!40000 ALTER TABLE `TESTIMONIALS_MESSAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOOLS`
--

DROP TABLE IF EXISTS `TOOLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOOLS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tools_Name` varchar(100) NOT NULL,
  `Tools_Description` longtext DEFAULT NULL,
  `Tools_InternalURL` varchar(500) DEFAULT NULL,
  `Tools_ExternalURL` varchar(500) DEFAULT NULL,
  `Tools_ThumbnailImage` varchar(100) DEFAULT NULL,
  `Tools_Image` varchar(100) DEFAULT NULL,
  `Tools_Content_Author` varchar(100) DEFAULT NULL,
  `Tools_Content_Modifier` varchar(100) DEFAULT NULL,
  `Tools_PublishStatus` varchar(30) NOT NULL,
  `Tools_CreationDate` date NOT NULL,
  `Tools_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOOLS`
--

LOCK TABLES `TOOLS` WRITE;
/*!40000 ALTER TABLE `TOOLS` DISABLE KEYS */;
INSERT INTO `TOOLS` VALUES (1,'IDN Email Syntax Validator','This tool used to Validate IDN Email Syntax','email_validator','','core_app/tools/thunbnail_img/icon-02_Ojo7eNW.svg','core_app/tools/img/ua-tool-01_KRMfVUO_m3TMbUJ.png','','','Published','2024-04-24','2024-04-24'),(2,'IDN Domain Validator','This tool used to IDN Domains Validator','domain_validator','','core_app/tools/thunbnail_img/icon-01_EOFSQsB.svg','core_app/tools/img/ua-tool-02_bfvSPOH_rmXqaFM.png','','','Unpublished','2024-04-24','2024-04-24'),(3,'Unicode-Punycode Generator','Convert Unicode string to Punycode & vice-versa.','unicode_punycode_generator','','core_app/tools/thunbnail_img/icon-02_RsKLIFu.svg','core_app/tools/img/ua-tool-04_ha8Bbe3.png','','','Published','2024-04-24','2024-04-24'),(4,'Transliteration','Transliterate English Domain names in Indian languages.','transliteration','','core_app/tools/thunbnail_img/icon-02_DE2M17s.svg','core_app/tools/img/ua-tool-05_mIUlNk5.png','','','Published','2024-04-24','2024-04-24'),(5,'Unicode Fonts','This tool helps to know more about Unicode fonts.','unicode_fonts','','core_app/tools/thunbnail_img/icon-01_aoHD7Fn.svg','core_app/tools/img/ua-tool-03_JCkopvP.png','','','Published','2024-04-24','2024-04-24'),(6,'Script Detection','This tool helps to identify the Script of the input text.','script_detection','','','core_app/tools/img/Group_21_G5b6brl.png','','','Published','2024-04-24','2024-04-24'),(7,'Language Detection','This tool helps to identify the Language of the input text.','language_detection','','','core_app/tools/img/language_detection_v1_m4fUfC9.png','','','Published','2024-04-24','2024-04-24'),(8,'User Keyboard','Integration steps for CDAC keyboard.','cdac_keyboard','','','core_app/tools/img/user_keyboard_AftSEbu.png','','','Published','2024-04-24','2024-04-24'),(9,'Top Level Domain ( TLD ) Existence Checker','Used to determines if a Top-Level Domain exists in a IANA TLD\'s list.','tld_validator','','','core_app/tools/img/tld_PRum9W7.jpg','','','Published','2024-04-24','2024-04-24'),(10,'Developer Keyboard','Integration steps for cdac keyboard','static/core_app/assets/source_code/CDAC-Keyboard.zip','','','core_app/tools/img/developer_keyboard_SHfctpQ.png','','','Published','2024-04-24','2024-04-24'),(11,'Anuvaad','Anuvaad was developed to help Indian citizens translate content into different Indian Languages.','','https://anuvaad.bhashini.gov.in/','','core_app/tools/img/Anuvaad_n5T0p4w.png','','','Published','2024-04-24','2024-04-24');
/*!40000 ALTER TABLE `TOOLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UA_INDIA_PROGRAMME`
--

DROP TABLE IF EXISTS `UA_INDIA_PROGRAMME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UA_INDIA_PROGRAMME` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UAIndiaProgramme_Title` longtext DEFAULT NULL,
  `UAIndiaProgramme_Title_Description` longtext DEFAULT NULL,
  `UAIndiaProgramme_Title_Image` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Subtitle1` longtext DEFAULT NULL,
  `UAIndiaProgramme_Description1` longtext DEFAULT NULL,
  `UAIndiaProgramme_Image1` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Subtitle2` longtext DEFAULT NULL,
  `UAIndiaProgramme_Description2` longtext DEFAULT NULL,
  `UAIndiaProgramme_Image2` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Subtitle3` longtext DEFAULT NULL,
  `UAIndiaProgramme_Description3` longtext DEFAULT NULL,
  `UAIndiaProgramme_Image3` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Subtitle4` longtext DEFAULT NULL,
  `UAIndiaProgramme_Description4` longtext DEFAULT NULL,
  `UAIndiaProgramme_Image4` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Subtitle5` longtext DEFAULT NULL,
  `UAIndiaProgramme_Description5` longtext DEFAULT NULL,
  `UAIndiaProgramme_Image5` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Content_Author` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_Content_Modifier` varchar(100) DEFAULT NULL,
  `UAIndiaProgramme_CreatedDate` date NOT NULL,
  `UAIndiaProgramme_UpdatedDate` date NOT NULL,
  `UAIndiaProgramme_PublishStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UA_INDIA_PROGRAMME`
--

LOCK TABLES `UA_INDIA_PROGRAMME` WRITE;
/*!40000 ALTER TABLE `UA_INDIA_PROGRAMME` DISABLE KEYS */;
INSERT INTO `UA_INDIA_PROGRAMME` VALUES (1,'UA India Programme','UA India Programme','','UA India Programme','UA India programme is a multistakeholder initiative to spread general UA awareness and to encourage UA adoption.','','','Today, the Internet has expanded to include domain names represented in different languages and scripts of the world including Indian languages. India is in leading position in offering domain names in all 22 scheduled Indian languages under .bharat and equivalent ccTLDs .','','','For increasing business reach and greater opportunities, the UA for applications, services are crucial. People are generally comfortable in trusting and communicating in their local language. Having a local language identity (i.e., email address) is easier to use for the non-English speaking user for participating in any government, social, banking, and other online applications. UA allows customers to expand their customer base by offering event-items / technologies / services to various countries in their own languages. Businesses can now communicate, share information, provide event-items, technologies, and services in the customer\'s language, creating trust and building a huge business potential while bringing the next billion plus users online. Govt. services can also communicate with the user in their local language creating inclusiveness and better adoption.','','Stages of UA India Programme Implementation','','core_app/UAIndiaProgramme/image/UA-India-Program_sknPBIN.png','Click here to view Universal Acceptance & Multilingual Internet Document','','',NULL,NULL,'2024-10-21','2024-10-21','Unpublished');
/*!40000 ALTER TABLE `UA_INDIA_PROGRAMME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNIVERSAL_ACCEPTANCE`
--

DROP TABLE IF EXISTS `UNIVERSAL_ACCEPTANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNIVERSAL_ACCEPTANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UniversalAcceptance_title` varchar(100) NOT NULL,
  `UniversalAcceptance_title_desc` longtext DEFAULT NULL,
  `UniversalAcceptance_subtitle1` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_desc1` longtext DEFAULT NULL,
  `UniversalAcceptance_subtitle2` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_desc2` longtext DEFAULT NULL,
  `UniversalAcceptance_subtitle3` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_desc3` longtext DEFAULT NULL,
  `UniversalAcceptance_subtitle4` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_desc4` longtext DEFAULT NULL,
  `UniversalAcceptance_subtitle5` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_desc5` longtext DEFAULT NULL,
  `UniversalAcceptance_image1` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_image2` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_image3` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_url` varchar(500) DEFAULT NULL,
  `UniversalAcceptance_Content_Author` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_Content_Modifier` varchar(100) DEFAULT NULL,
  `UniversalAcceptance_PublishStatus` varchar(30) NOT NULL,
  `UniversalAcceptance_CreationDate` date NOT NULL,
  `UniversalAcceptance_LastUpdateDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNIVERSAL_ACCEPTANCE`
--

LOCK TABLES `UNIVERSAL_ACCEPTANCE` WRITE;
/*!40000 ALTER TABLE `UNIVERSAL_ACCEPTANCE` DISABLE KEYS */;
INSERT INTO `UNIVERSAL_ACCEPTANCE` VALUES (1,'Universal Acceptance (UA)','',NULL,'Universal Acceptance (UA) is the state in which all valid Domain Names and email addresses are accepted, validated, stored, processed and displayed correctly and consistently, regardless of script, number of characters, or recently introduced in the Unicode and are accepted equally by all Internet-enabled applications, devices, and systems.',NULL,'To achieve Universal Acceptance, internet applications and systems must treat all Top-Level Domain (TLDs) in a consistent manner, including new generic TLDs',NULL,'',NULL,'',NULL,'','core_app/privacy_policy/img/ua-image_LUJTomG.svg','core_app/privacy_policy/img/universal_RNydl6T.png','','https://uasg.tech/ua-day/','Sanjay Bhargava',NULL,'Published','2024-10-21','2024-10-21');
/*!40000 ALTER TABLE `UNIVERSAL_ACCEPTANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserFeedbackData`
--

DROP TABLE IF EXISTS `UserFeedbackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserFeedbackData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Feedback_FirstName` varchar(30) NOT NULL,
  `Feedback_Email` varchar(300) NOT NULL,
  `Feedback_Message` longtext NOT NULL,
  `Feedback_Submission_Date` date DEFAULT NULL,
  `Feedback_Related_To_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserFeedbackData_Feedback_Related_To__126fc173_fk_FeedbackC` (`Feedback_Related_To_id`),
  CONSTRAINT `UserFeedbackData_Feedback_Related_To__126fc173_fk_FeedbackC` FOREIGN KEY (`Feedback_Related_To_id`) REFERENCES `FeedbackCategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserFeedbackData`
--

LOCK TABLES `UserFeedbackData` WRITE;
/*!40000 ALTER TABLE `UserFeedbackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserFeedbackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_blog`
--

DROP TABLE IF EXISTS `admin_app_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Blog_Title` varchar(800) NOT NULL,
  `Blog_Slug` varchar(255) DEFAULT NULL,
  `Blog_Description` longtext NOT NULL,
  `Blog_Body` longtext NOT NULL,
  `Blog_CreationDate` date NOT NULL,
  `Blog_LastUpdatedDate` date NOT NULL,
  `Blog_Author_Char` varchar(200) DEFAULT NULL,
  `Blog_PublishedStatus` varchar(20) NOT NULL,
  `Blog_Thumbnail` varchar(100) DEFAULT NULL,
  `Blog_DocumentFile` varchar(100) DEFAULT NULL,
  `Blog_Author_id` int(11) DEFAULT NULL,
  `Blog_CategoryType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_blog_Blog_Author_id_cdbec65a_fk_auth_user_id` (`Blog_Author_id`),
  KEY `admin_app_blog_Blog_CategoryType_id_73cd5dfd_fk_admin_app` (`Blog_CategoryType_id`),
  KEY `admin_app_blog_Blog_Slug_41d2cc60` (`Blog_Slug`),
  CONSTRAINT `admin_app_blog_Blog_Author_id_cdbec65a_fk_auth_user_id` FOREIGN KEY (`Blog_Author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `admin_app_blog_Blog_CategoryType_id_73cd5dfd_fk_admin_app` FOREIGN KEY (`Blog_CategoryType_id`) REFERENCES `admin_app_blogcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_blog`
--

LOCK TABLES `admin_app_blog` WRITE;
/*!40000 ALTER TABLE `admin_app_blog` DISABLE KEYS */;
INSERT INTO `admin_app_blog` VALUES (1,'Test12','test12','Test','<p>Test</p>','2024-10-22','2024-10-23',NULL,'Published','admin_app/Blog/Thumbnail/test.png','',2,1),(2,'Test','test','test','<p>test</p>','2024-10-23','2024-10-23',NULL,'Published','admin_app/Blog/Thumbnail/test_cHkATMF.png','',2,3);
/*!40000 ALTER TABLE `admin_app_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_blogcategory`
--

DROP TABLE IF EXISTS `admin_app_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_blogcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BlogCategory_Name` varchar(500) NOT NULL,
  `BlogCategory_Status` tinyint(1) NOT NULL,
  `BlogCategory_CreationDate` date NOT NULL,
  `BlogCategory_LastUpdatedDate` date NOT NULL,
  `BlogCategory_PublishedStatus` varchar(20) NOT NULL,
  `BlogCategory_Author_Char` varchar(500) DEFAULT NULL,
  `BlogCategory_Author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_blogcatego_BlogCategory_Author__e1843bb9_fk_auth_user` (`BlogCategory_Author_id`),
  CONSTRAINT `admin_app_blogcatego_BlogCategory_Author__e1843bb9_fk_auth_user` FOREIGN KEY (`BlogCategory_Author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_blogcategory`
--

LOCK TABLES `admin_app_blogcategory` WRITE;
/*!40000 ALTER TABLE `admin_app_blogcategory` DISABLE KEYS */;
INSERT INTO `admin_app_blogcategory` VALUES (1,'EAI',0,'2024-10-22','2024-10-25','Published','bhashanet',2),(2,'Language Technology',0,'2024-10-22','2024-10-25','Published','bhashanet',2),(3,'Multilingual Internet',1,'2024-10-22','2024-10-25','Published','bhashanet',2),(4,'Universal Acceptance',0,'2024-10-22','2024-10-25','Published','bhashanet',2);
/*!40000 ALTER TABLE `admin_app_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_bulkemail`
--

DROP TABLE IF EXISTS `admin_app_bulkemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_bulkemail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_receipient_list` varchar(100) NOT NULL,
  `email_subject` longtext NOT NULL,
  `email_message` longtext NOT NULL,
  `email_status` longtext NOT NULL,
  `email_sending_date` datetime(6) NOT NULL,
  `emails_sent_count` int(11) NOT NULL,
  `email_pause_threshold` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_bulkemail`
--

LOCK TABLES `admin_app_bulkemail` WRITE;
/*!40000 ALTER TABLE `admin_app_bulkemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_app_bulkemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_bulkemailattachments`
--

DROP TABLE IF EXISTS `admin_app_bulkemailattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_bulkemailattachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_attachment` varchar(100) DEFAULT NULL,
  `bulk_email_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_bulkemaila_bulk_email_id_b4f761a2_fk_admin_app` (`bulk_email_id`),
  CONSTRAINT `admin_app_bulkemaila_bulk_email_id_b4f761a2_fk_admin_app` FOREIGN KEY (`bulk_email_id`) REFERENCES `admin_app_bulkemail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_bulkemailattachments`
--

LOCK TABLES `admin_app_bulkemailattachments` WRITE;
/*!40000 ALTER TABLE `admin_app_bulkemailattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_app_bulkemailattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_category_list`
--

DROP TABLE IF EXISTS `admin_app_category_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_category_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `updated_On` date NOT NULL,
  `Last_Updated_On` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_category_list`
--

LOCK TABLES `admin_app_category_list` WRITE;
/*!40000 ALTER TABLE `admin_app_category_list` DISABLE KEYS */;
INSERT INTO `admin_app_category_list` VALUES (1,'Government','2024-10-21','2024-10-21'),(2,'Private','2024-10-21','2024-10-21'),(3,'Other','2024-10-21','2024-10-21');
/*!40000 ALTER TABLE `admin_app_category_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_customforgotpassword`
--

DROP TABLE IF EXISTS `admin_app_customforgotpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_customforgotpassword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forgot_password_token` varchar(100) NOT NULL,
  `generation_time` datetime(6) NOT NULL,
  `counter` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_id` (`email_id`),
  CONSTRAINT `admin_app_customforgotpassword_email_id_a36ac126_fk_auth_user_id` FOREIGN KEY (`email_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_customforgotpassword`
--

LOCK TABLES `admin_app_customforgotpassword` WRITE;
/*!40000 ALTER TABLE `admin_app_customforgotpassword` DISABLE KEYS */;
INSERT INTO `admin_app_customforgotpassword` VALUES (5,'cfgrox-3df4b8a9c038632dd458c51970121a53','2024-10-25 12:08:57.296908',1,40);
/*!40000 ALTER TABLE `admin_app_customforgotpassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_english_domain`
--

DROP TABLE IF EXISTS `admin_app_english_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_english_domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_name` longtext NOT NULL,
  `domain_name` varchar(256) NOT NULL,
  `updated_On` date NOT NULL,
  `Last_Updated_On` date NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_english_do_category_id_d915aeba_fk_admin_app` (`category_id`),
  CONSTRAINT `admin_app_english_do_category_id_d915aeba_fk_admin_app` FOREIGN KEY (`category_id`) REFERENCES `admin_app_category_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_english_domain`
--

LOCK TABLES `admin_app_english_domain` WRITE;
/*!40000 ALTER TABLE `admin_app_english_domain` DISABLE KEYS */;
INSERT INTO `admin_app_english_domain` VALUES (498,'Ministry of Jal Shakti / Department of Drinking Water and Sanitation','https://jalshakti-ddws.gov.in/','2024-09-30','2024-09-30',1),(499,'Ministry of Information and Broadcasting','https://prasarbharati.gov.in/','2024-09-30','2024-09-30',1),(500,'Ministry of Health and Family Welfare / Department of Health Research','https://mohfw.gov.in/','2024-09-30','2024-09-30',1),(501,'Ministry of Minority Affairs','https://www.minorityaffairs.gov.in/','2024-09-30','2024-09-30',1),(502,'N/A','https://www.pmindia.gov.in/en/','2024-09-30','2024-09-30',1),(503,'Ministry of Commerce and Industry / Department of Commerce','https://www.commerce.gov.in/','2024-09-30','2024-09-30',1),(504,'Ministry of Information and Broadcasting','https://mib.gov.in/','2024-09-30','2024-09-30',1),(505,'Ministry of Information and Broadcasting','https://www.pib.gov.in/','2024-09-30','2024-09-30',1),(506,'Ministry of Steel','https://steel.gov.in/','2024-09-30','2024-09-30',1),(507,'Ministry of Statistics and Programme Implementation','https://www.mospi.gov.in/','2024-09-30','2024-09-30',1),(508,'Cabinet Secretariat','https://cabsec.gov.in/','2024-09-30','2024-09-30',1),(509,'Department of Atomic Energy','https://dae.gov.in/','2024-09-30','2024-09-30',1),(510,'Ministry of Defence / Department of Defence','https://mod.gov.in/','2024-09-30','2024-09-30',1),(511,'Ministry of Education / Department of Higher Education','https://www.education.gov.in/','2024-09-30','2024-09-30',1),(512,'Ministry of Social Justice and Empowerment / Department of Social Justice and Empowerment','https://socialjustice.gov.in/','2024-09-30','2024-09-30',1),(513,'Ministry of Finance / Department of Investment and Public Asset Management','https://dipam.gov.in/','2024-09-30','2024-09-30',1),(514,'Ministry of Housing and Urban Affairs','https://mohua.gov.in/','2024-09-30','2024-09-30',1),(515,'Ministry of Consumer Affairs, Food and Public Distribution / Department of Consumer Affairs','https://igod.gov.in/organization/Gs4zv3QBGZk0jujBKgGW','2024-09-30','2024-09-30',1),(516,'Ministry of Chemicals and Fertilizers / Department of Chemicals and Petrochemicals','https://chemicals.gov.in/','2024-09-30','2024-09-30',1),(517,'Ministry of Earth Sciences','https://www.moes.gov.in/','2024-09-30','2024-09-30',1),(518,'Ministry of Youth Affairs and Sports / Department of Youth Affairs','https://yas.gov.in/','2024-09-30','2024-09-30',1),(519,'Ministry of Tribal Affairs','https://dbttribal.gov.in/','2024-09-30','2024-09-30',1),(521,'Ministry of Road Transport and Highways','https://morth.gov.in/','2024-09-30','2024-09-30',1),(522,'Ministry of Mines','https://mines.gov.in/','2024-09-30','2024-09-30',1),(523,'Ministry of Petroleum and Natural Gas','https://mopng.gov.in/en','2024-09-30','2024-09-30',1),(524,'Ministry of Agriculture and Farmers Welfare / Department of Agriculture and Farmers Welfare','https://agriwelfare.gov.in/','2024-09-30','2024-09-30',1),(525,'Ministry of Power','https://powermin.gov.in/','2024-09-30','2024-09-30',1),(526,'Ministry of Finance / Department of Public Enterprises','https://dpe.gov.in','2024-09-30','2024-09-30',1),(527,'Ministry of Tourism','https://tourism.gov.in/','2024-09-30','2024-09-30',1),(528,'Ministry of Development of North Eastern Region','https://mdoner.gov.in/','2024-09-30','2024-09-30',1),(529,'Ministry of Personnel, Public Grievances and Pensions / Department of Personnel and Training','https://dopt.gov.in/','2024-09-30','2024-09-30',1),(530,'Ministry of Skill Development and Entrepreneurship','https://www.msde.gov.in/','2024-09-30','2024-09-30',1),(531,'Ministry of Commerce and Industry / Department for Promotion of Industry and Internal Trade','https://dpiit.gov.in/','2024-09-30','2024-09-30',1),(532,'Ministry of Ports, Shipping and Waterways','https://shipmin.gov.in/','2024-09-30','2024-09-30',1),(533,'Ministry of Home Affairs / Department of Official Language','https://rajbhasha.gov.in','2024-09-30','2024-09-30',1),(534,'Ministry of New and Renewable Energy (MNRE) / N/A','https://mnre.gov.in/','2024-09-30','2024-09-30',1),(535,'Ministry of Panchayati Raj','https://panchayat.gov.in/','2024-09-30','2024-09-30',1),(536,'NITI Aayog','https://www.niti.gov.in/','2024-09-30','2024-09-30',1),(537,'Ministry of Micro, Small and Medium Enterprises','https://msme.gov.in/','2024-09-30','2024-09-30',1),(538,'Ministry of Parliamentary Affairs','https://mpa.gov.in/','2024-09-30','2024-09-30',1),(539,'Ministry of Home Affairs / Department of Home','https://www.mha.gov.in','2024-09-30','2024-09-30',1),(540,'Ministry of Personnel, Public Grievances and Pensions / Department of Administrative Reforms and Public Grievances (DARPG)','https://darpg.gov.in/','2024-09-30','2024-09-30',1),(541,'Ministry of Communications / Department of Telecommunications (DOT)','https://dot.gov.in/','2024-09-30','2024-09-30',1),(543,'Ministry of Electronics and Information Technology / N/A','https://s3waas.gov.in/','2024-09-30','2024-09-30',1),(544,'Ministry of Electronics and Information Technology','https://stqc.gov.in/','2024-09-30','2024-09-30',1),(545,'Ministry of Electronics and Information Technology','https://www.csk.gov.in/','2024-09-30','2024-09-30',1),(546,'Ministry of Electronics and Information Technology','https://www.india.gov.in/','2024-09-30','2024-09-30',1),(547,'Ministry of Electronics and Information Technology','https://www.meity.gov.in/','2024-09-30','2024-09-30',1),(548,'Ministry of Electronics and Information Technology','https://registry.gov.in/','2024-09-30','2024-09-30',1),(549,'meity','https://bhashanet.in','2024-10-14','2024-10-14',1);
/*!40000 ALTER TABLE `admin_app_english_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_language_list`
--

DROP TABLE IF EXISTS `admin_app_language_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_language_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(25) NOT NULL,
  `updated_On` date NOT NULL,
  `Last_Updated_On` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_language_list`
--

LOCK TABLES `admin_app_language_list` WRITE;
/*!40000 ALTER TABLE `admin_app_language_list` DISABLE KEYS */;
INSERT INTO `admin_app_language_list` VALUES (1,'Hindi','2024-05-02','2024-05-03'),(2,'Bengali','2024-05-02','2024-05-03'),(3,'Malayalam','2024-05-02','2024-05-03'),(4,'Tamil','2024-05-02','2024-05-03'),(5,'Marathi','2024-05-02','2024-05-03'),(6,'Urdu','2024-05-02','2024-05-03'),(7,'Assemese','2024-05-02','2024-05-03'),(8,'Kannada','2024-05-02','2024-05-03'),(9,'Odia','2024-05-02','2024-05-03'),(10,'Manipuri','2024-05-02','2024-05-03'),(11,'Punjabi','2024-05-02','2024-05-03'),(12,'Gujarati','2024-05-02','2024-05-20'),(13,'Konkani','2024-05-02','2024-05-03'),(14,'Maithili','2024-05-02','2024-05-03'),(15,'Sanskrit','2024-05-02','2024-05-03'),(16,'Nepali','2024-05-02','2024-05-03'),(17,'Santali','2024-05-02','2024-05-03'),(18,'Bodo','2024-05-02','2024-05-03'),(19,'Dogri','2024-05-02','2024-05-03'),(20,'Sindhi','2024-05-02','2024-05-03'),(21,'Kashmiri','2024-05-02','2024-05-03'),(22,'Urdu','2024-05-02','2024-05-03'),(23,'Telugu','2024-05-20','2024-05-20');
/*!40000 ALTER TABLE `admin_app_language_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_otp_for_userregistration`
--

DROP TABLE IF EXISTS `admin_app_otp_for_userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_otp_for_userregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `OTP_Value` int(11) NOT NULL,
  `OTP_Entered_Count` int(11) NOT NULL,
  `OTP_Status` tinyint(1) DEFAULT NULL,
  `OTP_Created_Date` datetime(6) NOT NULL,
  `OTP_Email_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_otp_for_us_OTP_Email_id_41bd17d2_fk_auth_user` (`OTP_Email_id`),
  CONSTRAINT `admin_app_otp_for_us_OTP_Email_id_41bd17d2_fk_auth_user` FOREIGN KEY (`OTP_Email_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_otp_for_userregistration`
--

LOCK TABLES `admin_app_otp_for_userregistration` WRITE;
/*!40000 ALTER TABLE `admin_app_otp_for_userregistration` DISABLE KEYS */;
INSERT INTO `admin_app_otp_for_userregistration` VALUES (29,221091,1,1,'2024-10-23 09:01:37.008057',40),(34,994653,2,1,'2024-10-25 12:29:13.352657',45),(35,210165,2,1,'2024-10-25 12:39:35.332079',46);
/*!40000 ALTER TABLE `admin_app_otp_for_userregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_url_dashboard`
--

DROP TABLE IF EXISTS `admin_app_url_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_url_dashboard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDN_domain` varchar(255) NOT NULL,
  `ssl_configuration_status` longtext NOT NULL,
  `idn_domain_running_status` longtext NOT NULL,
  `content_language` longtext NOT NULL,
  `updated_On` date NOT NULL,
  `Last_Updated_On` date NOT NULL,
  `Remark` longtext NOT NULL,
  `English_domain_id` bigint(20) NOT NULL,
  `Language_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDN_domain` (`IDN_domain`),
  KEY `admin_app_url_dashbo_English_domain_id_630ece35_fk_admin_app` (`English_domain_id`),
  KEY `admin_app_url_dashbo_Language_id_7b485af6_fk_admin_app` (`Language_id`),
  CONSTRAINT `admin_app_url_dashbo_English_domain_id_630ece35_fk_admin_app` FOREIGN KEY (`English_domain_id`) REFERENCES `admin_app_english_domain` (`id`),
  CONSTRAINT `admin_app_url_dashbo_Language_id_7b485af6_fk_admin_app` FOREIGN KEY (`Language_id`) REFERENCES `admin_app_language_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_url_dashboard`
--

LOCK TABLES `admin_app_url_dashboard` WRITE;
/*!40000 ALTER TABLE `admin_app_url_dashboard` DISABLE KEYS */;
INSERT INTO `admin_app_url_dashboard` VALUES (547,'https://जलशक्तिमंत्रालयपेयजलऔरस्वच्छताविभाग.सरकार.भारत','True','True','Mixed','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',498,1),(549,'https://प्रसारभारती.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',499,1),(550,'http://स्वास्थ्यअनुसंधानविभाग.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',500,1),(551,'https://अल्पसंख्यककार्यमंत्रालय.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',501,1),(552,'https://पीएमइंडिया.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',502,1),(553,'https://वाणिज्यविभाग.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',503,1),(554,'https://पीआईबी.सरकार.भारत','False','True','Mixed','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',505,1),(555,'https://इस्पातमंत्रालय.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',506,1),(556,'http://एमओएसपीआई.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Timeout Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Timeout Error\"}',507,1),(557,'http://मंत्रिमंडलसचिवालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',508,1),(558,'https://एमओएचएफडब्लयू.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',500,1),(559,'https://पऊवि.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',509,1),(560,'https://रक्षा.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',510,1),(561,'https://शिक्षामंत्रालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"TooManyRedirects Error\", \"SSL\": \"SSL Exception\", \"Content\": \"TooManyRedirects Error\"}',511,1),(562,'https://सामाजिकन्यायऔरअधिकारितामंत्रालय.सरकार.भारत','False','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',512,1),(565,'https://दीपम.सरकार.भारत','True','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',513,1),(566,'https://आवासनऔरशहरीकार्यमंत्रालय.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',514,1),(567,'http://उपभोक्तामामले.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',515,1),(568,'http://केमिकल्स.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Error\", \"SSL\": \"SSL Error Not 200\", \"Content\": \"Connection Error\"}',516,1),(569,'https://पृथ्वीविज्ञानमंत्रालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',517,1),(570,'https://वायएएस.सरकार.भारत','True','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',518,1),(571,'https://जनजातीयकार्यमंत्रालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',519,1),(572,'http://सड़कपरिवहनऔरराजमार्गमंत्रालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Timeout Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Timeout Error\"}',521,1),(573,'https://खानमंत्रालय.सरकार.भारत','True','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',522,1),(574,'https://पेट्रोलियमएवंप्राकृतिकगैसमंत्रालय.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',523,1),(575,'http://कृषिकल्याण.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Timeout Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Timeout Error\"}',524,1),(576,'https://विद्युतमंत्रालय.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',525,1),(577,'https://डीपीई.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',526,1),(578,'https://पर्यटनमंत्रालय.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',527,1),(579,'https://एमआईबी.सरकार.भारत','False','False','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Timeout Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',504,1),(580,'http://एमडोनर.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Error\", \"SSL\": \"SSL Error Not 200\", \"Content\": \"Connection Error\"}',528,1),(581,'https://डीओपीटी.सरकार.भारत','False','True','Mixed','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',529,1),(582,'https://कार्मिकऔरप्रशिक्षणविभाग.सरकार.भारत','False','True','Mixed','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',529,1),(583,'https://एमएसडीई.सरकार.भारत','False','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',530,1),(584,'https://उद्योगसंवर्धनऔरआंतरिकव्यापारविभाग.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',531,1),(585,'https://शिपमिन.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',532,1),(586,'http://राजभाषा.सरकार.भारत','False','False','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',533,1),(587,'https://एमएनआरई.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Timeout Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',534,1),(588,'http://पंचायत.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Error\", \"SSL\": \"SSL Error Not 200\", \"Content\": \"Connection Error\"}',535,1),(589,'http://नीति.सरकार.भारत','False','True','Mixed','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Error\", \"Content\": \"Success\"}',536,1),(590,'http://सूक्ष्मलघुऔरमध्यमउद्यममंत्रालय.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',537,1),(591,'http://एमपीए.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',538,1),(592,'https://गृहमंत्रालय.सरकार.भारत','False','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',539,1),(593,'http://डीएआरपीजी.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',540,1),(594,'https://डीओटी.सरकार.भारत','False','False','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Success\"}',541,1),(595,'https://एस3वास.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',543,1),(596,'https://राजभाषाक्लाउड.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',533,1),(597,'https://एसटीक्यूसी.सरकार.भारत','False','False','False','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',544,1),(598,'https://www.सीएसके.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',545,1),(599,'https://www.इंडिया.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',546,1),(600,'https://एमईआईटीवाई.सरकार.भारत','True','True','Hindi','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',547,1),(601,'https://रजिस्ट्री.सरकार.भारत','True','True','English','2024-09-30','2024-09-30','{\"General\": \"\", \"Domain\": \"Success\", \"SSL\": \"Valid\", \"Content\": \"Success\"}',548,1),(602,'http://भाषानेट.भारत','False','False','False','2024-10-14','2024-10-21','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',549,1),(603,'http://भाषाने.भारत','False','False','False','2024-10-15','2024-10-21','{\"General\": \"\", \"Domain\": \"Connection Error\", \"SSL\": \"SSL Exception\", \"Content\": \"Connection Error\"}',549,2);
/*!40000 ALTER TABLE `admin_app_url_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_userprofile`
--

DROP TABLE IF EXISTS `admin_app_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserProfile_name` varchar(100) NOT NULL,
  `UserProfile_designation` varchar(50) NOT NULL,
  `UserProfile_organization` varchar(50) NOT NULL,
  `UserProfile_organization_logo` varchar(100) DEFAULT NULL,
  `UserProfile_CreationDate` date NOT NULL,
  `UserProfile_LastUpdatedDate` date NOT NULL,
  `UserProfile_Bio` varchar(500) DEFAULT NULL,
  `UserProfile_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_userprofil_UserProfile_user_id_50b81374_fk_auth_user` (`UserProfile_user_id`),
  CONSTRAINT `admin_app_userprofil_UserProfile_user_id_50b81374_fk_auth_user` FOREIGN KEY (`UserProfile_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_userprofile`
--

LOCK TABLES `admin_app_userprofile` WRITE;
/*!40000 ALTER TABLE `admin_app_userprofile` DISABLE KEYS */;
INSERT INTO `admin_app_userprofile` VALUES (1,'Shweta Patil','Project Engineer','CDAC','user/organization_logo/test.png','2024-10-22','2024-10-23','Developer',2),(4,'Shweta Patil','Project Engineer','CDAC','user/organization_logo/test_Cxru1ZU.png','2024-10-25','2024-10-25','Developer',45),(5,'test','Project Engineer','CDAC','user/organization_logo/test_f24xaWT.png','2024-10-25','2024-10-25','test',46);
/*!40000 ALTER TABLE `admin_app_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_userrole`
--

DROP TABLE IF EXISTS `admin_app_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_userrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Role_Name` varchar(20) NOT NULL,
  `Role_Status` varchar(20) DEFAULT NULL,
  `Role_Created_Date` date NOT NULL,
  `Role_Last_Updated_Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_userrole`
--

LOCK TABLES `admin_app_userrole` WRITE;
/*!40000 ALTER TABLE `admin_app_userrole` DISABLE KEYS */;
INSERT INTO `admin_app_userrole` VALUES (1,'NIC','Active','2024-10-22','2024-10-22'),(2,'NIXI','Active','2024-10-22','2024-10-22'),(3,'CDAC','Active','2024-10-22','2024-10-22'),(4,'DjangoSuperAdmin','Active','2024-10-22','2024-10-22'),(5,'main_admin','Active','2024-10-22','2024-10-22'),(6,'Bhashanet_User','Active','2024-10-23','2024-10-23');
/*!40000 ALTER TABLE `admin_app_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_app_userrolemapping`
--

DROP TABLE IF EXISTS `admin_app_userrolemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_app_userrolemapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Role_Category_Mapping_Status` varchar(20) DEFAULT NULL,
  `Role_Category_Mapping_Created_Date` date NOT NULL,
  `Role_Category_Mapping_Last_Updated_Date` date NOT NULL,
  `Role_Id_id` bigint(20) NOT NULL,
  `User_Id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_app_userrolema_Role_Id_id_250c444d_fk_admin_app` (`Role_Id_id`),
  KEY `admin_app_userrolemapping_User_Id_id_f1a96824_fk_auth_user_id` (`User_Id_id`),
  CONSTRAINT `admin_app_userrolema_Role_Id_id_250c444d_fk_admin_app` FOREIGN KEY (`Role_Id_id`) REFERENCES `admin_app_userrole` (`id`),
  CONSTRAINT `admin_app_userrolemapping_User_Id_id_f1a96824_fk_auth_user_id` FOREIGN KEY (`User_Id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_app_userrolemapping`
--

LOCK TABLES `admin_app_userrolemapping` WRITE;
/*!40000 ALTER TABLE `admin_app_userrolemapping` DISABLE KEYS */;
INSERT INTO `admin_app_userrolemapping` VALUES (1,'Active','2024-10-22','2024-10-22',4,2),(33,'Active','2024-10-23','2024-10-23',5,40),(38,'Active','2024-10-25','2024-10-25',6,45),(39,'Active','2024-10-25','2024-10-25',4,1),(40,'Active','2024-10-25','2024-10-25',5,46);
/*!40000 ALTER TABLE `admin_app_userrolemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add announcements',7,'add_announcements'),(26,'Can change announcements',7,'change_announcements'),(27,'Can delete announcements',7,'delete_announcements'),(28,'Can view announcements',7,'view_announcements'),(29,'Can add article',8,'add_article'),(30,'Can change article',8,'change_article'),(31,'Can delete article',8,'delete_article'),(32,'Can view article',8,'view_article'),(33,'Can add best practices',9,'add_bestpractices'),(34,'Can change best practices',9,'change_bestpractices'),(35,'Can delete best practices',9,'delete_bestpractices'),(36,'Can view best practices',9,'view_bestpractices'),(37,'Can add document category',10,'add_documentcategory'),(38,'Can change document category',10,'change_documentcategory'),(39,'Can delete document category',10,'delete_documentcategory'),(40,'Can view document category',10,'view_documentcategory'),(41,'Can add document category without trans',11,'add_documentcategorywithouttrans'),(42,'Can change document category without trans',11,'change_documentcategorywithouttrans'),(43,'Can delete document category without trans',11,'delete_documentcategorywithouttrans'),(44,'Can view document category without trans',11,'view_documentcategorywithouttrans'),(45,'Can add domain syntax',12,'add_domainsyntax'),(46,'Can change domain syntax',12,'change_domainsyntax'),(47,'Can delete domain syntax',12,'delete_domainsyntax'),(48,'Can view domain syntax',12,'view_domainsyntax'),(49,'Can add email address internationalization',13,'add_emailaddressinternationalization'),(50,'Can change email address internationalization',13,'change_emailaddressinternationalization'),(51,'Can delete email address internationalization',13,'delete_emailaddressinternationalization'),(52,'Can view email address internationalization',13,'view_emailaddressinternationalization'),(53,'Can add email syntax',14,'add_emailsyntax'),(54,'Can change email syntax',14,'change_emailsyntax'),(55,'Can delete email syntax',14,'delete_emailsyntax'),(56,'Can view email syntax',14,'view_emailsyntax'),(57,'Can add faq category',15,'add_faqcategory'),(58,'Can change faq category',15,'change_faqcategory'),(59,'Can delete faq category',15,'delete_faqcategory'),(60,'Can view faq category',15,'view_faqcategory'),(61,'Can add feedback category',16,'add_feedbackcategory'),(62,'Can change feedback category',16,'change_feedbackcategory'),(63,'Can delete feedback category',16,'delete_feedbackcategory'),(64,'Can view feedback category',16,'view_feedbackcategory'),(65,'Can add gallery headings',17,'add_galleryheadings'),(66,'Can change gallery headings',17,'change_galleryheadings'),(67,'Can delete gallery headings',17,'delete_galleryheadings'),(68,'Can view gallery headings',17,'view_galleryheadings'),(69,'Can add generic list',18,'add_genericlist'),(70,'Can change generic list',18,'change_genericlist'),(71,'Can delete generic list',18,'delete_genericlist'),(72,'Can view generic list',18,'view_genericlist'),(73,'Can add id ncc tl ds',19,'add_idncctlds'),(74,'Can change id ncc tl ds',19,'change_idncctlds'),(75,'Can delete id ncc tl ds',19,'delete_idncctlds'),(76,'Can view id ncc tl ds',19,'view_idncctlds'),(77,'Can add idn languages',20,'add_idnlanguages'),(78,'Can change idn languages',20,'change_idnlanguages'),(79,'Can delete idn languages',20,'delete_idnlanguages'),(80,'Can view idn languages',20,'view_idnlanguages'),(81,'Can add idn ready websites category',21,'add_idnreadywebsitescategory'),(82,'Can change idn ready websites category',21,'change_idnreadywebsitescategory'),(83,'Can delete idn ready websites category',21,'delete_idnreadywebsitescategory'),(84,'Can view idn ready websites category',21,'view_idnreadywebsitescategory'),(85,'Can add idn ready websites languages',22,'add_idnreadywebsiteslanguages'),(86,'Can change idn ready websites languages',22,'change_idnreadywebsiteslanguages'),(87,'Can delete idn ready websites languages',22,'delete_idnreadywebsiteslanguages'),(88,'Can view idn ready websites languages',22,'view_idnreadywebsiteslanguages'),(89,'Can add IDN Request For User Websites Categories',23,'add_idnrequestforuserwebsitescategories'),(90,'Can change IDN Request For User Websites Categories',23,'change_idnrequestforuserwebsitescategories'),(91,'Can delete IDN Request For User Websites Categories',23,'delete_idnrequestforuserwebsitescategories'),(92,'Can view IDN Request For User Websites Categories',23,'view_idnrequestforuserwebsitescategories'),(93,'Can add limit check',24,'add_limitcheck'),(94,'Can change limit check',24,'change_limitcheck'),(95,'Can delete limit check',24,'delete_limitcheck'),(96,'Can view limit check',24,'view_limitcheck'),(97,'Can add objectives',25,'add_objectives'),(98,'Can change objectives',25,'change_objectives'),(99,'Can delete objectives',25,'delete_objectives'),(100,'Can view objectives',25,'view_objectives'),(101,'Can add OTP FOR IDN Request For User Websites',26,'add_otp_for_idnrequestforuserwebsites'),(102,'Can change OTP FOR IDN Request For User Websites',26,'change_otp_for_idnrequestforuserwebsites'),(103,'Can delete OTP FOR IDN Request For User Websites',26,'delete_otp_for_idnrequestforuserwebsites'),(104,'Can view OTP FOR IDN Request For User Websites',26,'view_otp_for_idnrequestforuserwebsites'),(105,'Can add privacy policy',27,'add_privacypolicy'),(106,'Can change privacy policy',27,'change_privacypolicy'),(107,'Can delete privacy policy',27,'delete_privacypolicy'),(108,'Can view privacy policy',27,'view_privacypolicy'),(109,'Can add sop technology category',28,'add_soptechnologycategory'),(110,'Can change sop technology category',28,'change_soptechnologycategory'),(111,'Can delete sop technology category',28,'delete_soptechnologycategory'),(112,'Can view sop technology category',28,'view_soptechnologycategory'),(113,'Can add stackholder',29,'add_stackholder'),(114,'Can change stackholder',29,'change_stackholder'),(115,'Can delete stackholder',29,'delete_stackholder'),(116,'Can view stackholder',29,'view_stackholder'),(117,'Can add subscriber',30,'add_subscriber'),(118,'Can change subscriber',30,'change_subscriber'),(119,'Can delete subscriber',30,'delete_subscriber'),(120,'Can view subscriber',30,'view_subscriber'),(121,'Can add terms and conditions',31,'add_termsandconditions'),(122,'Can change terms and conditions',31,'change_termsandconditions'),(123,'Can delete terms and conditions',31,'delete_termsandconditions'),(124,'Can view terms and conditions',31,'view_termsandconditions'),(125,'Can add testimonials',32,'add_testimonials'),(126,'Can change testimonials',32,'change_testimonials'),(127,'Can delete testimonials',32,'delete_testimonials'),(128,'Can view testimonials',32,'view_testimonials'),(129,'Can add testimonials messages',33,'add_testimonialsmessages'),(130,'Can change testimonials messages',33,'change_testimonialsmessages'),(131,'Can delete testimonials messages',33,'delete_testimonialsmessages'),(132,'Can view testimonials messages',33,'view_testimonialsmessages'),(133,'Can add tools',34,'add_tools'),(134,'Can change tools',34,'change_tools'),(135,'Can delete tools',34,'delete_tools'),(136,'Can view tools',34,'view_tools'),(137,'Can add ua india programme',35,'add_uaindiaprogramme'),(138,'Can change ua india programme',35,'change_uaindiaprogramme'),(139,'Can delete ua india programme',35,'delete_uaindiaprogramme'),(140,'Can view ua india programme',35,'view_uaindiaprogramme'),(141,'Can add universal acceptance',36,'add_universalacceptance'),(142,'Can change universal acceptance',36,'change_universalacceptance'),(143,'Can delete universal acceptance',36,'delete_universalacceptance'),(144,'Can view universal acceptance',36,'view_universalacceptance'),(145,'Can add document',37,'add_document'),(146,'Can change document',37,'change_document'),(147,'Can delete document',37,'delete_document'),(148,'Can view document',37,'view_document'),(149,'Can add document without trans',38,'add_documentwithouttrans'),(150,'Can change document without trans',38,'change_documentwithouttrans'),(151,'Can delete document without trans',38,'delete_documentwithouttrans'),(152,'Can view document without trans',38,'view_documentwithouttrans'),(153,'Can add faqs',39,'add_faqs'),(154,'Can change faqs',39,'change_faqs'),(155,'Can delete faqs',39,'delete_faqs'),(156,'Can view faqs',39,'view_faqs'),(157,'Can add gallery videos',40,'add_galleryvideos'),(158,'Can change gallery videos',40,'change_galleryvideos'),(159,'Can delete gallery videos',40,'delete_galleryvideos'),(160,'Can view gallery videos',40,'view_galleryvideos'),(161,'Can add idn ready websites',41,'add_idnreadywebsites'),(162,'Can change idn ready websites',41,'change_idnreadywebsites'),(163,'Can delete idn ready websites',41,'delete_idnreadywebsites'),(164,'Can view idn ready websites',41,'view_idnreadywebsites'),(165,'Can add idn ready websites languge url mapping',42,'add_idnreadywebsiteslangugeurlmapping'),(166,'Can change idn ready websites languge url mapping',42,'change_idnreadywebsiteslangugeurlmapping'),(167,'Can delete idn ready websites languge url mapping',42,'delete_idnreadywebsiteslangugeurlmapping'),(168,'Can view idn ready websites languge url mapping',42,'view_idnreadywebsiteslangugeurlmapping'),(169,'Can add IDN Request For User Websites',43,'add_idnrequestforuserwebsites'),(170,'Can change IDN Request For User Websites',43,'change_idnrequestforuserwebsites'),(171,'Can delete IDN Request For User Websites',43,'delete_idnrequestforuserwebsites'),(172,'Can view IDN Request For User Websites',43,'view_idnrequestforuserwebsites'),(173,'Can add sop technology document',44,'add_soptechnologydocument'),(174,'Can change sop technology document',44,'change_soptechnologydocument'),(175,'Can delete sop technology document',44,'delete_soptechnologydocument'),(176,'Can view sop technology document',44,'view_soptechnologydocument'),(177,'Can add sop download counter',45,'add_sopdownloadcounter'),(178,'Can change sop download counter',45,'change_sopdownloadcounter'),(179,'Can delete sop download counter',45,'delete_sopdownloadcounter'),(180,'Can view sop download counter',45,'view_sopdownloadcounter'),(181,'Can add user feedback data',46,'add_userfeedbackdata'),(182,'Can change user feedback data',46,'change_userfeedbackdata'),(183,'Can delete user feedback data',46,'delete_userfeedbackdata'),(184,'Can view user feedback data',46,'view_userfeedbackdata'),(185,'Can add bulk email',47,'add_bulkemail'),(186,'Can change bulk email',47,'change_bulkemail'),(187,'Can delete bulk email',47,'delete_bulkemail'),(188,'Can view bulk email',47,'view_bulkemail'),(189,'Can add category_list',48,'add_category_list'),(190,'Can change category_list',48,'change_category_list'),(191,'Can delete category_list',48,'delete_category_list'),(192,'Can view category_list',48,'view_category_list'),(193,'Can add language_list',49,'add_language_list'),(194,'Can change language_list',49,'change_language_list'),(195,'Can delete language_list',49,'delete_language_list'),(196,'Can view language_list',49,'view_language_list'),(197,'Can add user role',50,'add_userrole'),(198,'Can change user role',50,'change_userrole'),(199,'Can delete user role',50,'delete_userrole'),(200,'Can view user role',50,'view_userrole'),(201,'Can add blog category',51,'add_blogcategory'),(202,'Can change blog category',51,'change_blogcategory'),(203,'Can delete blog category',51,'delete_blogcategory'),(204,'Can view blog category',51,'view_blogcategory'),(205,'Can add blog',52,'add_blog'),(206,'Can change blog',52,'change_blog'),(207,'Can delete blog',52,'delete_blog'),(208,'Can view blog',52,'view_blog'),(209,'Can add bulk email attachments',53,'add_bulkemailattachments'),(210,'Can change bulk email attachments',53,'change_bulkemailattachments'),(211,'Can delete bulk email attachments',53,'delete_bulkemailattachments'),(212,'Can view bulk email attachments',53,'view_bulkemailattachments'),(213,'Can add Custom Forgot Password',54,'add_customforgotpassword'),(214,'Can change Custom Forgot Password',54,'change_customforgotpassword'),(215,'Can delete Custom Forgot Password',54,'delete_customforgotpassword'),(216,'Can view Custom Forgot Password',54,'view_customforgotpassword'),(217,'Can add english_ domain',55,'add_english_domain'),(218,'Can change english_ domain',55,'change_english_domain'),(219,'Can delete english_ domain',55,'delete_english_domain'),(220,'Can view english_ domain',55,'view_english_domain'),(221,'Can add OTP FOR User Registration',56,'add_otp_for_userregistration'),(222,'Can change OTP FOR User Registration',56,'change_otp_for_userregistration'),(223,'Can delete OTP FOR User Registration',56,'delete_otp_for_userregistration'),(224,'Can view OTP FOR User Registration',56,'view_otp_for_userregistration'),(225,'Can add ur l_dashboard',57,'add_url_dashboard'),(226,'Can change ur l_dashboard',57,'change_url_dashboard'),(227,'Can delete ur l_dashboard',57,'delete_url_dashboard'),(228,'Can view ur l_dashboard',57,'view_url_dashboard'),(229,'Can add user profile',58,'add_userprofile'),(230,'Can change user profile',58,'change_userprofile'),(231,'Can delete user profile',58,'delete_userprofile'),(232,'Can view user profile',58,'view_userprofile'),(233,'Can add user role mapping',59,'add_userrolemapping'),(234,'Can change user role mapping',59,'change_userrolemapping'),(235,'Can delete user role mapping',59,'delete_userrolemapping'),(236,'Can view user role mapping',59,'view_userrolemapping'),(237,'Can add Topic Category',60,'add_topiccategory'),(238,'Can change Topic Category',60,'change_topiccategory'),(239,'Can delete Topic Category',60,'delete_topiccategory'),(240,'Can view Topic Category',60,'view_topiccategory'),(241,'Can add Topic',61,'add_topic'),(242,'Can change Topic',61,'change_topic'),(243,'Can delete Topic',61,'delete_topic'),(244,'Can view Topic',61,'view_topic'),(245,'Can add Topic Answer',62,'add_topicanswer'),(246,'Can change Topic Answer',62,'change_topicanswer'),(247,'Can delete Topic Answer',62,'delete_topicanswer'),(248,'Can view Topic Answer',62,'view_topicanswer'),(249,'Can add User Review On Answer',63,'add_answeruserreview'),(250,'Can change User Review On Answer',63,'change_answeruserreview'),(251,'Can delete User Review On Answer',63,'delete_answeruserreview'),(252,'Can view User Review On Answer',63,'view_answeruserreview'),(253,'Can add Answer Replies',64,'add_answerreplies'),(254,'Can change Answer Replies',64,'change_answerreplies'),(255,'Can delete Answer Replies',64,'delete_answerreplies'),(256,'Can view Answer Replies',64,'view_answerreplies'),(257,'Can add task result',65,'add_taskresult'),(258,'Can change task result',65,'change_taskresult'),(259,'Can delete task result',65,'delete_taskresult'),(260,'Can view task result',65,'view_taskresult'),(261,'Can add chord counter',66,'add_chordcounter'),(262,'Can change chord counter',66,'change_chordcounter'),(263,'Can delete chord counter',66,'delete_chordcounter'),(264,'Can view chord counter',66,'view_chordcounter'),(265,'Can add group result',67,'add_groupresult'),(266,'Can change group result',67,'change_groupresult'),(267,'Can delete group result',67,'delete_groupresult'),(268,'Can view group result',67,'view_groupresult');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$zfOGf1afaaq1WMyx85PUkg$6RD6TNdZwqfVx+HpRKwt6xHcx4LQpEhDECOGh3xH/r4=','2024-10-25 12:38:27.114077',1,'admin','','','',1,1,'2024-10-18 04:54:13.807094'),(2,'pbkdf2_sha256$720000$kzKlmvIyhlapOXIk6UKN7o$kXkcvphhL/uKSUubHcdexrfAHz6brZOGTaD0JZOClXc=','2024-10-23 09:00:41.434535',1,'shweta','','','',1,1,'2024-10-22 05:54:02.807327'),(40,'pbkdf2_sha256$720000$ZR1wOpyhfnnsnAw3Vh6iyw$cRl9RjQQ17frJCSvxrL8VaWvIOOYRZ1sEkc/xl/Y7+c=',NULL,0,'pshweta@cdac.in','','','pshweta@cdac.in',0,1,'2024-10-23 09:01:30.923800'),(45,'pbkdf2_sha256$720000$VoLS7jG1cinffzZID0KcmX$+f8yJ855Fypvps0ASt3vXyVgVHItD+Juay4EX2UJxDw=','2024-10-25 12:30:43.961248',0,'sgpltr@gmail.com','','','sgpltr@gmail.com',0,1,'2024-10-25 12:28:59.557052'),(46,'pbkdf2_sha256$720000$X0F1UQ0U2grRiSDNmSdSrX$JCqMSfrDp5D1uoLlX4CnNFpOAVbfRUTB19yyKnm1CoY=','2024-10-25 12:40:02.468880',0,'xyz@gmail.com','','','xyz@gmail.com',0,1,'2024-10-25 12:39:12.003471');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_documentcategorywithouttrans`
--

DROP TABLE IF EXISTS `core_app_documentcategorywithouttrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_documentcategorywithouttrans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DocumentCategory_Name` varchar(500) NOT NULL,
  `DocumentCategory_Status` tinyint(1) NOT NULL,
  `DocumentCategory_CreationDate` date NOT NULL,
  `DocumentCategory_LastUpdatedDate` date NOT NULL,
  `DocumentCategory_PublishedStatus` varchar(20) NOT NULL,
  `DocumentCategory_Author` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_documentcategorywithouttrans`
--

LOCK TABLES `core_app_documentcategorywithouttrans` WRITE;
/*!40000 ALTER TABLE `core_app_documentcategorywithouttrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_app_documentcategorywithouttrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_documentwithouttrans`
--

DROP TABLE IF EXISTS `core_app_documentwithouttrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_documentwithouttrans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Document_Name` varchar(800) NOT NULL,
  `Document_Description` longtext NOT NULL,
  `Document_CreationDate` date NOT NULL,
  `Document_LastUpdatedDate` date NOT NULL,
  `Document_Author` varchar(200) DEFAULT NULL,
  `Document_LanguageType` varchar(500) NOT NULL,
  `Document_PublishedStatus` varchar(20) NOT NULL,
  `Document_Slug` varchar(255) DEFAULT NULL,
  `Document_Thumbnail` varchar(100) DEFAULT NULL,
  `Document_DocumentFile` varchar(100) DEFAULT NULL,
  `Document_FileSize` varchar(30) NOT NULL,
  `Document_Count` int(11) NOT NULL,
  `Document_Type` varchar(30) NOT NULL,
  `DocumentUASGTrans_url` varchar(500) DEFAULT NULL,
  `Document_CategoryType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_app_documentwit_Document_CategoryTyp_7201d5b0_fk_core_app_` (`Document_CategoryType_id`),
  KEY `core_app_documentwithouttrans_Document_Slug_cd48813f` (`Document_Slug`),
  CONSTRAINT `core_app_documentwit_Document_CategoryTyp_7201d5b0_fk_core_app_` FOREIGN KEY (`Document_CategoryType_id`) REFERENCES `core_app_documentcategorywithouttrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_documentwithouttrans`
--

LOCK TABLES `core_app_documentwithouttrans` WRITE;
/*!40000 ALTER TABLE `core_app_documentwithouttrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_app_documentwithouttrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_idnrequestforuserwebsites`
--

DROP TABLE IF EXISTS `core_app_idnrequestforuserwebsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_idnrequestforuserwebsites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submitter_name` varchar(100) NOT NULL,
  `IDN_Email` varchar(500) NOT NULL,
  `IDN_English_Domain` varchar(255) NOT NULL,
  `IDN_URLS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`IDN_URLS`)),
  `need_assistance` tinyint(1) DEFAULT NULL,
  `assist_langs` varchar(500) DEFAULT NULL,
  `assist_remark` varchar(500) DEFAULT NULL,
  `IDN_Created_Date` date NOT NULL,
  `IDN_Last_Updated_Date` date NOT NULL,
  `IDN_Approve_Category` varchar(20) DEFAULT NULL,
  `IDN_Category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDN_English_Domain` (`IDN_English_Domain`),
  KEY `core_app_idnrequestf_IDN_Category_id_0b8cc56e_fk_core_app_` (`IDN_Category_id`),
  CONSTRAINT `core_app_idnrequestf_IDN_Category_id_0b8cc56e_fk_core_app_` FOREIGN KEY (`IDN_Category_id`) REFERENCES `core_app_idnrequestforuserwebsitescategories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_idnrequestforuserwebsites`
--

LOCK TABLES `core_app_idnrequestforuserwebsites` WRITE;
/*!40000 ALTER TABLE `core_app_idnrequestforuserwebsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_app_idnrequestforuserwebsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_idnrequestforuserwebsitescategories`
--

DROP TABLE IF EXISTS `core_app_idnrequestforuserwebsitescategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_idnrequestforuserwebsitescategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDN_category_name` varchar(255) DEFAULT NULL,
  `website_status` varchar(20) NOT NULL,
  `IDN_category_creation_date` date NOT NULL,
  `IDN_category_last_updated_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDN_category_name` (`IDN_category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_idnrequestforuserwebsitescategories`
--

LOCK TABLES `core_app_idnrequestforuserwebsitescategories` WRITE;
/*!40000 ALTER TABLE `core_app_idnrequestforuserwebsitescategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_app_idnrequestforuserwebsitescategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_otp_for_idnrequestforuserwebsites`
--

DROP TABLE IF EXISTS `core_app_otp_for_idnrequestforuserwebsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_otp_for_idnrequestforuserwebsites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `OTP_Email` varchar(500) DEFAULT NULL,
  `OTP_Value` int(11) NOT NULL,
  `OTP_Entered_Count` int(11) NOT NULL,
  `OTP_Status` tinyint(1) DEFAULT NULL,
  `OTP_Created_Date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_otp_for_idnrequestforuserwebsites`
--

LOCK TABLES `core_app_otp_for_idnrequestforuserwebsites` WRITE;
/*!40000 ALTER TABLE `core_app_otp_for_idnrequestforuserwebsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_app_otp_for_idnrequestforuserwebsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_sopdownloadcounter`
--

DROP TABLE IF EXISTS `core_app_sopdownloadcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_sopdownloadcounter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DownloadCounter` int(11) NOT NULL,
  `SOPTechnologyDocument_Obj_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_app_sopdownload_SOPTechnologyDocumen_74313f72_fk_core_app_` (`SOPTechnologyDocument_Obj_id`),
  CONSTRAINT `core_app_sopdownload_SOPTechnologyDocumen_74313f72_fk_core_app_` FOREIGN KEY (`SOPTechnologyDocument_Obj_id`) REFERENCES `core_app_soptechnologydocument` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_sopdownloadcounter`
--

LOCK TABLES `core_app_sopdownloadcounter` WRITE;
/*!40000 ALTER TABLE `core_app_sopdownloadcounter` DISABLE KEYS */;
INSERT INTO `core_app_sopdownloadcounter` VALUES (1,26,1),(2,16,2),(3,4,3),(4,7,4);
/*!40000 ALTER TABLE `core_app_sopdownloadcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_soptechnologycategory`
--

DROP TABLE IF EXISTS `core_app_soptechnologycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_soptechnologycategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SOPTechnologyCategory_Name` varchar(500) NOT NULL,
  `SOPTechnologyCategory_Status` tinyint(1) NOT NULL,
  `SOPTechnologyCategory_CreationDate` date NOT NULL,
  `SOPTechnologyCategory_LastUpdatedDate` date NOT NULL,
  `SOPTechnologyCategory_PublishedStatus` varchar(20) NOT NULL,
  `SOPTechnologyCategory_Author` varchar(500) DEFAULT NULL,
  `SOPTechnologyCategory_Thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_soptechnologycategory`
--

LOCK TABLES `core_app_soptechnologycategory` WRITE;
/*!40000 ALTER TABLE `core_app_soptechnologycategory` DISABLE KEYS */;
INSERT INTO `core_app_soptechnologycategory` VALUES (1,'Django',0,'2024-10-21','2024-10-21','Published',NULL,'core_app/SOPTechnologyCategory/Thumbnail/django-logo-negative_6GsPtqS_eAHXr30.png'),(2,'Drupal',0,'2024-10-21','2024-10-21','Published',NULL,'core_app/SOPTechnologyCategory/Thumbnail/Wordmark2_blue_RGB1_2kErqWf_ikIDemw.png'),(3,'Generic',0,'2024-10-21','2024-10-21','Published',NULL,''),(4,'Node Js',0,'2024-10-21','2024-10-21','Published',NULL,'core_app/SOPTechnologyCategory/Thumbnail/2560px-Node.js_logo.svg_atwgY87_tD0o0Jl.png');
/*!40000 ALTER TABLE `core_app_soptechnologycategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_app_soptechnologydocument`
--

DROP TABLE IF EXISTS `core_app_soptechnologydocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_app_soptechnologydocument` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SOPTechnologyDocument_Name` varchar(800) NOT NULL,
  `SOPTechnologyDocument_Description` longtext NOT NULL,
  `SOPTechnologyDocument_CreationDate` date NOT NULL,
  `SOPTechnologyDocument_LastUpdatedDate` date NOT NULL,
  `SOPTechnologyDocument_LastUpdatedSOPDate` date NOT NULL,
  `SOPTechnologyDocument_Author` varchar(200) DEFAULT NULL,
  `SOPTechnologyDocument_LanguageType` varchar(500) DEFAULT NULL,
  `SOPTechnologyDocument_PublishedStatus` varchar(20) NOT NULL,
  `SOPTechnologyDocument_Slug` varchar(255) DEFAULT NULL,
  `SOPTechnologyDocument_Thumbnail` varchar(100) DEFAULT NULL,
  `SOPTechnologyDocument_DocumentFile` varchar(100) DEFAULT NULL,
  `SOPTechnologyDocument_FileSize` varchar(30) DEFAULT NULL,
  `SOPTechnologyDocument_Count` int(11) DEFAULT NULL,
  `SOPTechnologyDocument_Type` varchar(30) DEFAULT NULL,
  `SOPTechnologyDocument_url` varchar(500) DEFAULT NULL,
  `SOPTechnologyDocument_CategoryType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_app_soptechnolo_SOPTechnologyDocumen_6a5ca92a_fk_core_app_` (`SOPTechnologyDocument_CategoryType_id`),
  KEY `core_app_soptechnologydocum_SOPTechnologyDocument_Slug_4c72babc` (`SOPTechnologyDocument_Slug`),
  CONSTRAINT `core_app_soptechnolo_SOPTechnologyDocumen_6a5ca92a_fk_core_app_` FOREIGN KEY (`SOPTechnologyDocument_CategoryType_id`) REFERENCES `core_app_soptechnologycategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_app_soptechnologydocument`
--

LOCK TABLES `core_app_soptechnologydocument` WRITE;
/*!40000 ALTER TABLE `core_app_soptechnologydocument` DISABLE KEYS */;
INSERT INTO `core_app_soptechnologydocument` VALUES (1,'SOP Document for having website domain name in local language','Na','2024-10-21','2024-10-21','2023-07-12',NULL,NULL,'Published',NULL,'','core_app/SOPTechnologyDocument/DocumentFile/Generic_SOP_O9CKEYf.pdf',NULL,NULL,NULL,NULL,3),(2,'SOP Document for making Django website IDN compliant','Na','2024-10-21','2024-10-21','2023-07-11',NULL,NULL,'Published',NULL,'','core_app/SOPTechnologyDocument/DocumentFile/Bhashanet-IDN-UA-SoPDjango_2_YbM6LYf.pdf',NULL,NULL,'4.1.7',NULL,1),(3,'SOP Document for making Drupal website IDN compliant','Enable your Drupal website domain IDN compliant by using steps mentioned in the following SOP Document.','2024-10-21','2024-10-21','2023-06-23',NULL,NULL,'Published',NULL,'','core_app/SOPTechnologyDocument/DocumentFile/Sop_of_IDN-UA_Compliance_in_Drupal_v8NChRc.pdf',NULL,NULL,'7',NULL,2),(4,'SOP Document for making Node Js website IDN compliant','Na','2024-10-21','2024-10-21','2023-07-11',NULL,NULL,'Published',NULL,'','core_app/SOPTechnologyDocument/DocumentFile/Node-IDN-UA-SoP_1_vt1HtOc.pdf',NULL,NULL,'16.14.1',NULL,4);
/*!40000 ALTER TABLE `core_app_soptechnologydocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_app_answerreplies`
--

DROP TABLE IF EXISTS `discussion_forum_app_answerreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_app_answerreplies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reply` longtext DEFAULT NULL,
  `reply_date` date NOT NULL,
  `replied_to_id` bigint(20) DEFAULT NULL,
  `user_id_id` int(11) NOT NULL,
  `answer_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_app_replied_to_id_d55743da_fk_discussio` (`replied_to_id`),
  KEY `discussion_forum_app_user_id_id_3964b582_fk_auth_user` (`user_id_id`),
  KEY `discussion_forum_app_answer_id_id_b4a01279_fk_discussio` (`answer_id_id`),
  CONSTRAINT `discussion_forum_app_answer_id_id_b4a01279_fk_discussio` FOREIGN KEY (`answer_id_id`) REFERENCES `discussion_forum_app_topicanswer` (`id`),
  CONSTRAINT `discussion_forum_app_replied_to_id_d55743da_fk_discussio` FOREIGN KEY (`replied_to_id`) REFERENCES `discussion_forum_app_answerreplies` (`id`),
  CONSTRAINT `discussion_forum_app_user_id_id_3964b582_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_app_answerreplies`
--

LOCK TABLES `discussion_forum_app_answerreplies` WRITE;
/*!40000 ALTER TABLE `discussion_forum_app_answerreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_app_answerreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_app_answeruserreview`
--

DROP TABLE IF EXISTS `discussion_forum_app_answeruserreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_app_answeruserreview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `reply_date` date NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `answer_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_app_user_id_id_7f0b0a96_fk_auth_user` (`user_id_id`),
  KEY `discussion_forum_app_answer_id_id_16fc766a_fk_discussio` (`answer_id_id`),
  CONSTRAINT `discussion_forum_app_answer_id_id_16fc766a_fk_discussio` FOREIGN KEY (`answer_id_id`) REFERENCES `discussion_forum_app_topicanswer` (`id`),
  CONSTRAINT `discussion_forum_app_user_id_id_7f0b0a96_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_app_answeruserreview`
--

LOCK TABLES `discussion_forum_app_answeruserreview` WRITE;
/*!40000 ALTER TABLE `discussion_forum_app_answeruserreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_app_answeruserreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_app_topic`
--

DROP TABLE IF EXISTS `discussion_forum_app_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_app_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `topic_slug` varchar(255) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `topic_categories_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `topic_name` (`topic_name`),
  UNIQUE KEY `topic_slug` (`topic_slug`),
  KEY `discussion_forum_app_topic_user_id_id_0f67e82d_fk_auth_user_id` (`user_id_id`),
  KEY `discussion_forum_app_topic_categories_id_01798714_fk_discussio` (`topic_categories_id`),
  CONSTRAINT `discussion_forum_app_topic_categories_id_01798714_fk_discussio` FOREIGN KEY (`topic_categories_id`) REFERENCES `discussion_forum_app_topiccategory` (`id`),
  CONSTRAINT `discussion_forum_app_topic_user_id_id_0f67e82d_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_app_topic`
--

LOCK TABLES `discussion_forum_app_topic` WRITE;
/*!40000 ALTER TABLE `discussion_forum_app_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_app_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_app_topicanswer`
--

DROP TABLE IF EXISTS `discussion_forum_app_topicanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_app_topicanswer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer` longtext DEFAULT NULL,
  `reply_date` date NOT NULL,
  `topic_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_app_topic_id_id_478432a8_fk_discussio` (`topic_id_id`),
  KEY `discussion_forum_app_user_id_id_7fb07c62_fk_auth_user` (`user_id_id`),
  CONSTRAINT `discussion_forum_app_topic_id_id_478432a8_fk_discussio` FOREIGN KEY (`topic_id_id`) REFERENCES `discussion_forum_app_topic` (`id`),
  CONSTRAINT `discussion_forum_app_user_id_id_7fb07c62_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_app_topicanswer`
--

LOCK TABLES `discussion_forum_app_topicanswer` WRITE;
/*!40000 ALTER TABLE `discussion_forum_app_topicanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_app_topicanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_app_topiccategory`
--

DROP TABLE IF EXISTS `discussion_forum_app_topiccategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_app_topiccategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_app_topiccategory`
--

LOCK TABLES `discussion_forum_app_topiccategory` WRITE;
/*!40000 ALTER TABLE `discussion_forum_app_topiccategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_app_topiccategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-21 05:24:26.990051','1','UA India Programme',1,'[{\"added\": {}}]',35,1),(2,'2024-10-21 05:25:24.099667','1','UA India Programme',2,'[]',35,1),(3,'2024-10-21 05:28:39.873920','1','UA India Programme',2,'[{\"changed\": {\"fields\": [\"UAIndiaProgramme Image4\"]}}]',35,1),(4,'2024-10-21 05:29:49.885290','1','UA India Programme',2,'[{\"changed\": {\"fields\": [\"UAIndiaProgramme Subtitle2\", \"UAIndiaProgramme Description2\", \"UAIndiaProgramme Subtitle3\", \"UAIndiaProgramme Description3\"]}}]',35,1),(5,'2024-10-21 05:37:16.896456','1','Universal Acceptance (UA)',1,'[{\"added\": {}}]',36,1),(6,'2024-10-21 05:42:36.050916','1','UA - ID : 1',1,'[{\"added\": {}}]',18,1),(7,'2024-10-21 05:43:38.972771','2','BECOMEUAREADY - ID : 2',1,'[{\"added\": {}}]',18,1),(8,'2024-10-21 05:46:29.611407','1','Mr. Rajeev Chandrasekhar',1,'[{\"added\": {}}]',33,1),(9,'2024-10-21 05:46:55.699543','2','',1,'[{\"added\": {}}]',33,1),(10,'2024-10-21 05:47:01.087770','1','Mr. Rajeev Chandrasekhar',2,'[{\"changed\": {\"fields\": [\"TestimonialsMessages PublishStatus\"]}}]',33,1),(11,'2024-10-21 05:48:04.990947','3','Dr. Devesh Tyagi',1,'[{\"added\": {}}]',33,1),(12,'2024-10-21 05:48:44.903065','4','Shri Sushil Pal',1,'[{\"added\": {}}]',33,1),(13,'2024-10-21 05:49:41.641866','5','Shri S. Krishnan',1,'[{\"added\": {}}]',33,1),(14,'2024-10-21 05:50:29.495605','3','Dr. Devesh Tyagi',2,'[{\"changed\": {\"fields\": [\"TestimonialsMessages PublishStatus\"]}}]',33,1),(15,'2024-10-21 05:50:58.506277','3','Dr. Devesh Tyagi',2,'[{\"changed\": {\"fields\": [\"TestimonialsMessages PublishStatus\"]}}]',33,1),(16,'2024-10-21 05:52:54.466290','1','Terms and conditions',1,'[{\"added\": {}}]',31,1),(17,'2024-10-21 05:54:22.270978','1','https://bhashini.gov.in/',1,'[{\"added\": {}}]',29,1),(18,'2024-10-21 05:54:55.018707','2','https://www.cdac.in/',1,'[{\"added\": {}}]',29,1),(19,'2024-10-21 05:55:25.054642','3','https://uasg.tech/',1,'[{\"added\": {}}]',29,1),(20,'2024-10-21 05:56:00.696310','4','https://www.meity.gov.in/',1,'[{\"added\": {}}]',29,1),(21,'2024-10-21 05:56:30.919293','5','https://ficci.in/',1,'[{\"added\": {}}]',29,1),(22,'2024-10-21 05:56:57.981312','6','https://www.nic.in/',1,'[{\"added\": {}}]',29,1),(23,'2024-10-21 05:57:48.823797','7','https://nixi.in/',1,'[{\"added\": {}}]',29,1),(24,'2024-10-21 06:00:04.575485','1','Become UA Ready - ID : 1',1,'[{\"added\": {}}]',8,1),(25,'2024-10-21 06:01:12.403570','2','Technical Corner - ID : 2',1,'[{\"added\": {}}]',8,1),(26,'2024-10-21 06:01:29.237110','2','Technical Corner - ID : 2',2,'[]',8,1),(27,'2024-10-21 06:03:52.568597','1','Django',1,'[{\"added\": {}}]',28,1),(28,'2024-10-21 06:04:19.391291','2','Drupal',1,'[{\"added\": {}}]',28,1),(29,'2024-10-21 06:04:33.397091','3','Generic',1,'[{\"added\": {}}]',28,1),(30,'2024-10-21 06:04:58.889794','4','Node Js',1,'[{\"added\": {}}]',28,1),(31,'2024-10-21 06:06:03.362685','1','SOP Document for having website domain name in local language',1,'[{\"added\": {}}]',44,1),(32,'2024-10-21 06:06:50.889828','2','SOP Document for making Django website IDN compliant',1,'[{\"added\": {}}]',44,1),(33,'2024-10-21 06:07:12.444963','2','SOP Document for making Django website IDN compliant',2,'[{\"changed\": {\"fields\": [\"SOPTechnologyDocument Type\"]}}]',44,1),(34,'2024-10-21 06:08:05.013070','3','SOP Document for making Drupal website IDN compliant',1,'[{\"added\": {}}]',44,1),(35,'2024-10-21 06:08:51.937464','4','SOP Document for making Node Js website IDN compliant',1,'[{\"added\": {}}]',44,1),(36,'2024-10-21 06:11:02.182955','4','SOP Document for making Node Js website IDN compliant',2,'[{\"changed\": {\"fields\": [\"DownloadCounter\"]}}]',45,1),(37,'2024-10-21 06:11:18.371761','3','SOP Document for making Drupal website IDN compliant',2,'[{\"changed\": {\"fields\": [\"DownloadCounter\"]}}]',45,1),(38,'2024-10-21 06:11:33.457851','2','SOP Document for making Django website IDN compliant',2,'[{\"changed\": {\"fields\": [\"DownloadCounter\"]}}]',45,1),(39,'2024-10-21 06:11:37.762529','1','SOP Document for having website domain name in local language',2,'[{\"changed\": {\"fields\": [\"DownloadCounter\"]}}]',45,1),(40,'2024-10-21 06:12:27.649457','1','Privacy Policy',1,'[{\"added\": {}}]',27,1),(41,'2024-10-21 06:14:39.330504','1','Vision',1,'[{\"added\": {}}]',25,1),(42,'2024-10-21 06:15:34.931629','2','Objective',1,'[{\"added\": {}}]',25,1),(43,'2024-10-21 06:16:12.887134','3','Mission',1,'[{\"added\": {}}]',25,1),(44,'2024-10-21 06:17:49.748341','1','Urdu',1,'[{\"added\": {}}]',22,1),(45,'2024-10-21 06:17:55.661425','2','Telugu',1,'[{\"added\": {}}]',22,1),(46,'2024-10-21 06:18:02.826354','3','Santali',1,'[{\"added\": {}}]',22,1),(47,'2024-10-21 06:18:09.298933','4','Sindhi',1,'[{\"added\": {}}]',22,1),(48,'2024-10-21 06:18:19.565819','5','Sanskrit',1,'[{\"added\": {}}]',22,1),(49,'2024-10-21 06:18:29.022365','6','Punjabi',1,'[{\"added\": {}}]',22,1),(50,'2024-10-21 06:18:34.395902','7','Odia',1,'[{\"added\": {}}]',22,1),(51,'2024-10-21 06:18:39.813904','8','Nepali',1,'[{\"added\": {}}]',22,1),(52,'2024-10-21 06:18:49.463946','9','Manipuri',1,'[{\"added\": {}}]',22,1),(53,'2024-10-21 06:19:03.622958','10','Maithili',1,'[{\"added\": {}}]',22,1),(54,'2024-10-21 06:19:08.849522','9','Manipuri',2,'[]',22,1),(55,'2024-10-21 06:19:22.126349','11','Konkani',1,'[{\"added\": {}}]',22,1),(56,'2024-10-21 06:19:28.125022','12','Kashmiri',1,'[{\"added\": {}}]',22,1),(57,'2024-10-21 06:19:33.610694','13','Kannada',1,'[{\"added\": {}}]',22,1),(58,'2024-10-21 06:19:39.886024','14','Dongri',1,'[{\"added\": {}}]',22,1),(59,'2024-10-21 06:19:46.544058','15','Bodo',1,'[{\"added\": {}}]',22,1),(60,'2024-10-21 06:19:51.805168','16','Bengali',1,'[{\"added\": {}}]',22,1),(61,'2024-10-21 06:20:03.420944','17','Gujarati',1,'[{\"added\": {}}]',22,1),(62,'2024-10-21 06:20:07.762508','18','Assamese',1,'[{\"added\": {}}]',22,1),(63,'2024-10-21 06:20:13.148785','19','Tamil',1,'[{\"added\": {}}]',22,1),(64,'2024-10-21 06:20:20.032567','20','Malayalam',1,'[{\"added\": {}}]',22,1),(65,'2024-10-21 06:20:24.455258','21','Marathi',1,'[{\"added\": {}}]',22,1),(66,'2024-10-21 06:20:30.493511','22','Hindi',1,'[{\"added\": {}}]',22,1),(67,'2024-10-21 06:20:34.113778','23','English',1,'[{\"added\": {}}]',22,1),(68,'2024-10-21 06:22:02.400270','1','Archives',1,'[{\"added\": {}}]',21,1),(69,'2024-10-21 06:22:08.132550','2','Private',1,'[{\"added\": {}}]',21,1),(70,'2024-10-21 06:22:14.777430','3','Government',1,'[{\"added\": {}}]',21,1),(71,'2024-10-21 06:26:07.774119','1','.भारत',1,'[{\"added\": {}}]',20,1),(72,'2024-10-21 06:26:43.912941','2','.ভারত',1,'[{\"added\": {}}]',20,1),(73,'2024-10-21 06:26:45.442562','3','',1,'[{\"added\": {}}]',20,1),(74,'2024-10-21 06:26:49.122136','1','.भारत',2,'[]',20,1),(75,'2024-10-21 06:27:17.770122','3','.భారత్',2,'[{\"changed\": {\"fields\": [\"IDNLanguages IDN Domain\", \"IDNLanguages Script\", \"Language Supported\", \"IDNLanguages PublishStatus\"]}}]',20,1),(76,'2024-10-21 06:27:43.420798','4','.ભારત',1,'[{\"added\": {}}]',20,1),(77,'2024-10-21 06:28:06.442903','5','. بھارت',1,'[{\"added\": {}}]',20,1),(78,'2024-10-21 06:28:44.083033','6','.இந்தியா',1,'[{\"added\": {}}]',20,1),(79,'2024-10-21 06:29:05.874745','7','.ਭਾਰਤ',1,'[{\"added\": {}}]',20,1),(80,'2024-10-21 06:29:27.948994','8','.ಭಾರತ',1,'[{\"added\": {}}]',20,1),(81,'2024-10-21 06:29:49.996296','9','.ଭାରତ',1,'[{\"added\": {}}]',20,1),(82,'2024-10-21 06:30:15.210466','10','.ভাৰত',1,'[{\"added\": {}}]',20,1),(83,'2024-10-21 06:30:38.828716','11','.भारतम्',1,'[{\"added\": {}}]',20,1),(84,'2024-10-21 06:30:59.869011','12','.भारोत',1,'[{\"added\": {}}]',20,1),(85,'2024-10-21 06:31:25.074595','13','.بارت',1,'[{\"added\": {}}]',20,1),(86,'2024-10-21 06:31:45.851621','14','.ڀارت',1,'[{\"added\": {}}]',20,1),(87,'2024-10-21 06:32:06.513787','15','.ഭാരതം',1,'[{\"added\": {}}]',20,1),(88,'2024-10-21 06:37:22.753076','1','.bharat IDN-ccTLDs',1,'[{\"added\": {}}]',19,1),(89,'2024-10-21 06:49:41.223256','3','Government',2,'[]',21,1),(90,'2024-10-21 06:49:44.297490','2','Private',2,'[]',21,1),(91,'2024-10-21 06:49:46.869144','1','Archives',2,'[]',21,1),(92,'2024-10-21 07:00:16.234040','1','General',1,'[{\"added\": {}}]',15,1),(93,'2024-10-21 07:00:25.185559','2','Developer',1,'[{\"added\": {}}]',15,1),(94,'2024-10-21 07:00:34.343144','3','IDN',1,'[{\"added\": {}}]',15,1),(95,'2024-10-21 07:00:49.449766','4','Universal Acceptance',1,'[{\"added\": {}}]',15,1),(96,'2024-10-21 07:14:18.956878','1','EAI',1,'[{\"added\": {}}]',13,1),(97,'2024-10-21 09:00:11.976668','1','Other Informative Videos',1,'[{\"added\": {}}]',17,1),(98,'2024-10-21 09:00:20.452404','2','UA Informative Videos',1,'[{\"added\": {}}]',17,1),(99,'2024-10-21 09:00:29.392487','3','UA Day Event Held on 27th-28th March 2023',1,'[{\"added\": {}}]',17,1),(100,'2024-10-21 09:01:02.105395','1','Universal Acceptance: Enabling a Multilingual Internet',1,'[{\"added\": {}}]',40,1),(101,'2024-10-21 09:01:18.485253','2','IDN India bharat',1,'[{\"added\": {}}]',40,1),(102,'2024-10-21 09:01:31.284665','3','Universal Acceptance | A Global Agenda',1,'[{\"added\": {}}]',40,1),(103,'2024-10-21 09:01:44.656755','4','Universal Acceptance and Multilingual Internet',1,'[{\"added\": {}}]',40,1),(104,'2024-10-21 09:01:59.889952','5','60sec DOT HINDI',1,'[{\"added\": {}}]',40,1),(105,'2024-10-21 09:02:14.145407','6','Unlocking Economic Potential with Multilingual Internet & UA for Businesses in India',1,'[{\"added\": {}}]',40,1),(106,'2024-10-21 09:02:28.678378','7','The Role of Country Code Top-Level Domains (ccTLDs) in Achieving Universal Acceptance',1,'[{\"added\": {}}]',40,1),(107,'2024-10-21 09:02:42.786353','8','Interactive Session with Mr Jia-Rong Low, ICANN on \"Multilingual Internet and Universal Acceptance\"',1,'[{\"added\": {}}]',40,1),(108,'2024-10-21 09:02:56.339210','9','Voice Based Internet for Indian Requirements',1,'[{\"added\": {}}]',40,1),(109,'2024-10-21 09:03:10.021815','10','1st Student Internet Governance Forum (SIGF) Conference',1,'[{\"added\": {}}]',40,1),(110,'2024-10-21 09:03:23.422370','11','Virtual Training Programme on Universal Acceptance (UA) Readiness',1,'[{\"added\": {}}]',40,1),(111,'2024-10-21 09:03:40.529884','12','Bridging the Language Gap with Universal Acceptance and its Capacity Building',1,'[{\"added\": {}}]',40,1),(112,'2024-10-21 09:03:53.991635','13','Universal Acceptance: A Key to Unlocking Growth Opportunities for Startups and MSMEs',1,'[{\"added\": {}}]',40,1),(113,'2024-10-21 09:04:14.751610','14','Valedictory Session',1,'[{\"added\": {}}]',40,1),(114,'2024-10-21 09:04:29.314874','15','Bhashini and Multilingual Internet',1,'[{\"added\": {}}]',40,1),(115,'2024-10-21 09:04:43.752412','16','Case Studies Presentation',1,'[{\"added\": {}}]',40,1),(116,'2024-10-21 09:04:58.554925','17','Panel Discussion Session on \"Technology enablement for universal acceptance\"',1,'[{\"added\": {}}]',40,1),(117,'2024-10-21 09:05:13.258330','18','Panel Discussion Session',1,'[{\"added\": {}}]',40,1),(118,'2024-10-21 09:05:27.253142','19','Inaugural',1,'[{\"added\": {}}]',40,1),(119,'2024-10-21 09:05:45.560596','20','IDN’s and EAI in Indian Languages – Outlook and Overview',1,'[{\"added\": {}}]',40,1),(120,'2024-10-21 09:05:58.513613','21','Curtain Raiser',1,'[{\"added\": {}}]',40,1),(121,'2024-10-21 09:06:12.148543','22','Workshop on Making Your email platform UA Ready',1,'[{\"added\": {}}]',40,1),(122,'2024-10-21 09:06:27.178922','23','Making your website Universal Acceptance ready: Way Forward',1,'[{\"added\": {}}]',40,1),(123,'2024-10-21 10:37:20.284243','1','Government',1,'[{\"added\": {}}]',48,1),(124,'2024-10-21 10:37:24.299160','2','Private',1,'[{\"added\": {}}]',48,1),(125,'2024-10-21 10:37:32.756847','3','Other',1,'[{\"added\": {}}]',48,1),(126,'2024-10-22 05:57:22.752491','1','EAI',1,'[{\"added\": {}}]',51,2),(127,'2024-10-22 05:57:38.777041','2','Language Technology',1,'[{\"added\": {}}]',51,2),(128,'2024-10-22 05:57:49.250111','3','Multilingual Internet',1,'[{\"added\": {}}]',51,2),(129,'2024-10-22 05:57:59.724701','4','Universal Acceptance',1,'[{\"added\": {}}]',51,2),(130,'2024-10-22 06:50:09.240766','1','NIC',1,'[{\"added\": {}}]',50,2),(131,'2024-10-22 06:50:13.904038','2','NIXI',1,'[{\"added\": {}}]',50,2),(132,'2024-10-22 06:50:21.048295','3','CDAC',1,'[{\"added\": {}}]',50,2),(133,'2024-10-22 07:17:01.721210','4','DjangoSuperAdmin',1,'[{\"added\": {}}]',50,2),(134,'2024-10-22 07:17:08.237005','5','main_admin',1,'[{\"added\": {}}]',50,2),(135,'2024-10-22 07:17:21.431747','1','shweta',1,'[{\"added\": {}}]',59,2),(136,'2024-10-22 08:32:57.830377','3','sgpltr@gmail.com',3,'',4,2),(137,'2024-10-22 08:36:31.915964','4','sgpltr@gmail.com',3,'',4,2),(138,'2024-10-22 08:37:57.554911','5','sgpltr@gmail.com',3,'',4,2),(139,'2024-10-22 08:40:51.963721','6','sgpltr@gmail.com',3,'',4,2),(140,'2024-10-22 08:43:26.066501','7','sgpltr@gmail.com',3,'',4,2),(141,'2024-10-22 10:17:11.723848','16','sgpltr@gmail.com',3,'',4,2),(142,'2024-10-23 05:10:27.463627','6','Bhashanet_User',1,'[{\"added\": {}}]',50,2),(143,'2024-10-23 05:18:39.722655','18','sgpltr@gmail.com',3,'',4,2),(144,'2024-10-23 05:19:42.472773','19','sgpltr@gmail.com',3,'',4,2),(145,'2024-10-23 05:20:50.580885','20','sgpltr@gmail.com',3,'',4,2),(146,'2024-10-23 05:32:33.151767','21','sgpltr@gmail.com',3,'',4,2),(147,'2024-10-23 05:33:21.409472','22','sgpltr@gmail.com',3,'',4,2),(148,'2024-10-23 05:37:36.199418','23','sgpltr@gmail.com',3,'',4,2),(149,'2024-10-23 05:41:22.516634','24','sgpltr@gmail.com',3,'',4,2),(150,'2024-10-23 05:42:31.555392','25','sgpltr@gmail.com',3,'',4,2),(151,'2024-10-23 05:44:29.812774','26','sgpltr@gmail.com',3,'',4,2),(152,'2024-10-23 05:47:44.180850','27','sgpltr@gmail.com',3,'',4,2),(153,'2024-10-23 05:50:25.605596','28','sgpltr@gmail.com',3,'',4,2),(154,'2024-10-23 05:52:28.827815','29','sgpltr@gmail.com',3,'',4,2),(155,'2024-10-23 05:55:22.354195','30','sgpltr@gmail.com',3,'',4,2),(156,'2024-10-23 05:58:07.707756','31','sgpltr@gmail.com',3,'',4,2),(157,'2024-10-23 06:54:05.486967','1','sgpltr@gmail.com',3,'',54,2),(158,'2024-10-23 07:05:01.048230','2','sgpltr@gmail.com',3,'',54,2),(159,'2024-10-23 08:29:30.898295','32','sgpltr@gmail.com',3,'',4,2),(160,'2024-10-23 08:32:07.825507','33','sgpltr@gmail.com',3,'',4,2),(161,'2024-10-23 08:34:42.034715','34','sgpltr@gmail.com',3,'',4,2),(162,'2024-10-23 08:36:10.926849','35','sgpltr@gmail.com',3,'',4,2),(163,'2024-10-23 08:38:32.612048','36','sgpltr@gmail.com',3,'',4,2),(164,'2024-10-23 08:57:38.473800','38','pshweta@cdac.in',3,'',4,2),(165,'2024-10-23 09:00:20.838151','39','pshweta@cdac.in',3,'',4,2),(166,'2024-10-25 12:08:21.025957','37','sgpltr@gmail.com',3,'',4,1),(167,'2024-10-25 12:16:38.471718','41','sgpltr@gmail.com',3,'',4,1),(168,'2024-10-25 12:18:25.920607','42','sgpltr@gmail.com',3,'',4,1),(169,'2024-10-25 12:20:22.630343','43','sgpltr@gmail.com',3,'',4,1),(170,'2024-10-25 12:28:29.957485','44','sgpltr@gmail.com',3,'',4,1),(171,'2024-10-25 12:37:08.403487','39','admin',1,'[{\"added\": {}}]',59,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_chordcounter`
--

DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_results_chordcounter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `sub_tasks` longtext NOT NULL,
  `count` int(10) unsigned NOT NULL CHECK (`count` >= 0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_chordcounter`
--

LOCK TABLES `django_celery_results_chordcounter` WRITE;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_groupresult`
--

DROP TABLE IF EXISTS `django_celery_results_groupresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_results_groupresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  KEY `django_cele_date_cr_bd6c1d_idx` (`date_created`),
  KEY `django_cele_date_do_caae0e_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_groupresult`
--

LOCK TABLES `django_celery_results_groupresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_groupresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_groupresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_taskresult`
--

DROP TABLE IF EXISTS `django_celery_results_taskresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext DEFAULT NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `task_args` longtext DEFAULT NULL,
  `task_kwargs` longtext DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  KEY `django_cele_status_9b6201_idx` (`status`),
  KEY `django_cele_worker_d54dd8_idx` (`worker`),
  KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  KEY `django_cele_date_do_f59aad_idx` (`date_done`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
INSERT INTO `django_celery_results_taskresult` VALUES (1,'130c59be-8d1a-49b6-b412-233a602eff65','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:37:13.018111',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:37:13.018111',NULL),(2,'d62ead86-5d8b-428c-9dcc-be034d0470a1','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:37:13.058009',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:37:13.058009',NULL),(3,'2bdd0b2f-29ef-4997-ac88-bf544ad99a92','SUCCESS','application/json','utf-8','\"---- All Domain Parameters Updated ----\"','2024-10-21 11:37:13.224632',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:37:13.224632',NULL),(4,'9c9d26f9-71f3-467b-b939-64e64da5a7a0','SUCCESS','application/json','utf-8','\"---- All Domain Parameters Updated ----\"','2024-10-21 11:37:19.402859',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:37:19.402859',NULL),(5,'be8feeb8-9578-4d4d-84ec-694a386000aa','SUCCESS','application/json','utf-8','\"---- All Domain Parameters Updated ----\"','2024-10-21 11:37:19.498814',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:37:19.498814',NULL),(6,'3b85cd7c-4de5-41bb-a9a2-4ea6178aa855','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:38:22.553179',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:38:22.553179',NULL),(7,'79b758c6-fa2f-4cea-8bbe-6059ec3e7a87','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:39:12.295887',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:39:12.295887',NULL),(8,'2b3433b0-eb13-44ff-887d-425909cb4f30','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:39:38.870719',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:39:38.870719',NULL),(9,'2600f448-dde1-4663-8364-a62a8f1cf3ff','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:39:51.665412',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:39:51.665412',NULL),(10,'67d8d3df-b5ba-4feb-93cb-8002306b0911','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:41:26.144824',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:41:26.144824',NULL),(11,'ffc0e323-8829-4bdb-8a40-b23c82beadce','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:43:10.188112',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:43:10.188112',NULL),(12,'2bf4b4ee-68ea-4832-88eb-abd105d68d1e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"core.tasks.update_domain_parameters\"], \"exc_module\": \"celery.exceptions\"}','2024-10-21 11:44:22.818572',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:44:22.818572',NULL),(13,'3227e662-7dd8-4d31-9add-c28377e953d7','SUCCESS','application/json','utf-8','\"---- All Domain Parameters Updated ----\"','2024-10-21 11:47:19.204023',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-21 11:47:19.204023',NULL),(14,'1333cb57-7c48-4eb4-9a88-f8d345a168c6','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 08:48:54.379663',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 08:48:54.379663',NULL),(15,'c276dc89-bf86-4d1b-9045-78833045ca9e','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 08:55:44.733371',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 08:55:44.733371',NULL),(16,'4400bc99-009d-4280-9fbe-e2a6be76780a','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 09:09:00.050859',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 09:09:00.050859',NULL),(17,'4b760dd5-2772-4ee8-ad5e-180d20942c8a','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 09:15:43.496799',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 09:15:43.496799',NULL),(18,'6486229a-242b-4fbc-a438-ecfe067dff6b','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 09:32:04.277391',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 09:32:04.277391',NULL),(19,'dd74b40c-1ab5-45a7-a4a0-c1b90a73f06f','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 09:41:24.754568',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 09:41:24.754568',NULL),(20,'352a5a22-c3eb-49bc-aa70-dca622894f05','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 09:52:44.434305',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 09:52:44.434305',NULL),(21,'5eafe42a-0ac4-4f4d-96ab-fba6c3e030a6','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 10:13:23.063066',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 10:13:23.063066',NULL),(22,'1443a440-b15d-4dfd-96ca-555e1a3dacaf','FAILURE','application/json','utf-8','{\"exc_type\": \"ValueError\", \"exc_message\": [\"Field \'id\' expected a number but got \'sgpltr@gmail.com\'.\"], \"exc_module\": \"builtins\"}','2024-10-22 10:22:37.468690',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-22 10:22:37.468690',NULL),(23,'0280b78f-84fa-416c-991b-6c35b8375cba','SUCCESS','application/json','utf-8','false','2024-10-23 05:38:44.391684',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:38:44.391684',NULL),(24,'47dadab0-5869-47dd-b0d0-2af97ef7f2a2','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 05:44:22.602157',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:44:22.602157',NULL),(25,'bf6d367b-9c2d-479d-b75e-e603ac050c65','SUCCESS','application/json','utf-8','false','2024-10-23 05:47:56.017252',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:47:56.017252',NULL),(26,'4f50c6d7-3144-487f-938c-84cfda6dd92f','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 05:49:59.439747',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:49:59.439747',NULL),(27,'fc85c752-3470-4985-8af1-1e3546e3bb7c','SUCCESS','application/json','utf-8','false','2024-10-23 05:53:19.655730',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:53:19.655730',NULL),(28,'0e90679e-4884-4840-9247-16479e938157','SUCCESS','application/json','utf-8','false','2024-10-23 05:56:08.999697',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:56:08.999697',NULL),(29,'6dc673f4-2de0-4799-8d59-83a2bc6bd75b','SUCCESS','application/json','utf-8','false','2024-10-23 05:58:28.762247',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 05:58:28.762247',NULL),(30,'fd9c53cd-de6d-4b01-a05f-d0476d2912e3','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 06:01:13.218502',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 06:01:13.218502',NULL),(31,'1d2f8c2f-d97e-41e6-8263-3e3595ef2a19','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 06:03:41.896936',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 06:03:41.896936',NULL),(32,'671c050c-6cab-4648-8983-a225f79b3341','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 08:41:46.207828',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 08:41:46.207828',NULL),(33,'74705970-f589-444e-a1e2-fdcb578d6cce','SUCCESS','application/json','utf-8','\"DELETEDsgpltr@gmail.comFor User\"','2024-10-23 08:44:07.059610',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 08:44:07.059610',NULL),(34,'17b39946-5c71-4145-8352-814a64d340c6','SUCCESS','application/json','utf-8','false','2024-10-23 09:01:06.267739',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 09:01:06.267739',NULL),(35,'b8cb580e-ceec-4d32-bd0f-2b19bce5b93c','SUCCESS','application/json','utf-8','\"DELETEDpshweta@cdac.inFor User\"','2024-10-23 09:04:28.643281',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 09:04:28.643281',NULL),(36,'2df77f3e-ecba-494c-90c9-3d2ee5046af1','SUCCESS','application/json','utf-8','\"DELETEDpshweta@cdac.inFor User\"','2024-10-23 09:06:31.760853',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-10-23 09:06:31.760853',NULL);
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(52,'admin_app','blog'),(51,'admin_app','blogcategory'),(47,'admin_app','bulkemail'),(53,'admin_app','bulkemailattachments'),(48,'admin_app','category_list'),(54,'admin_app','customforgotpassword'),(55,'admin_app','english_domain'),(49,'admin_app','language_list'),(56,'admin_app','otp_for_userregistration'),(57,'admin_app','url_dashboard'),(58,'admin_app','userprofile'),(50,'admin_app','userrole'),(59,'admin_app','userrolemapping'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'core_app','announcements'),(8,'core_app','article'),(9,'core_app','bestpractices'),(37,'core_app','document'),(10,'core_app','documentcategory'),(11,'core_app','documentcategorywithouttrans'),(38,'core_app','documentwithouttrans'),(12,'core_app','domainsyntax'),(13,'core_app','emailaddressinternationalization'),(14,'core_app','emailsyntax'),(15,'core_app','faqcategory'),(39,'core_app','faqs'),(16,'core_app','feedbackcategory'),(17,'core_app','galleryheadings'),(40,'core_app','galleryvideos'),(18,'core_app','genericlist'),(19,'core_app','idncctlds'),(20,'core_app','idnlanguages'),(41,'core_app','idnreadywebsites'),(21,'core_app','idnreadywebsitescategory'),(22,'core_app','idnreadywebsiteslanguages'),(42,'core_app','idnreadywebsiteslangugeurlmapping'),(43,'core_app','idnrequestforuserwebsites'),(23,'core_app','idnrequestforuserwebsitescategories'),(24,'core_app','limitcheck'),(25,'core_app','objectives'),(26,'core_app','otp_for_idnrequestforuserwebsites'),(27,'core_app','privacypolicy'),(45,'core_app','sopdownloadcounter'),(28,'core_app','soptechnologycategory'),(44,'core_app','soptechnologydocument'),(29,'core_app','stackholder'),(30,'core_app','subscriber'),(31,'core_app','termsandconditions'),(32,'core_app','testimonials'),(33,'core_app','testimonialsmessages'),(34,'core_app','tools'),(35,'core_app','uaindiaprogramme'),(36,'core_app','universalacceptance'),(46,'core_app','userfeedbackdata'),(64,'discussion_forum_app','answerreplies'),(63,'discussion_forum_app','answeruserreview'),(61,'discussion_forum_app','topic'),(62,'discussion_forum_app','topicanswer'),(60,'discussion_forum_app','topiccategory'),(66,'django_celery_results','chordcounter'),(67,'django_celery_results','groupresult'),(65,'django_celery_results','taskresult'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-18 04:50:41.444008'),(2,'auth','0001_initial','2024-10-18 04:50:42.290780'),(3,'admin','0001_initial','2024-10-18 04:50:42.478564'),(4,'admin','0002_logentry_remove_auto_add','2024-10-18 04:50:42.494260'),(5,'admin','0003_logentry_add_action_flag_choices','2024-10-18 04:50:42.514587'),(6,'admin_app','0001_initial','2024-10-18 04:50:43.874830'),(7,'contenttypes','0002_remove_content_type_name','2024-10-18 04:50:43.998969'),(8,'auth','0002_alter_permission_name_max_length','2024-10-18 04:50:44.288152'),(9,'auth','0003_alter_user_email_max_length','2024-10-18 04:50:44.336517'),(10,'auth','0004_alter_user_username_opts','2024-10-18 04:50:44.350351'),(11,'auth','0005_alter_user_last_login_null','2024-10-18 04:50:44.406756'),(12,'auth','0006_require_contenttypes_0002','2024-10-18 04:50:44.406756'),(13,'auth','0007_alter_validators_add_error_messages','2024-10-18 04:50:44.426290'),(14,'auth','0008_alter_user_username_max_length','2024-10-18 04:50:44.458502'),(15,'auth','0009_alter_user_last_name_max_length','2024-10-18 04:50:44.572846'),(16,'auth','0010_alter_group_name_max_length','2024-10-18 04:50:44.628160'),(17,'auth','0011_update_proxy_permissions','2024-10-18 04:50:44.672005'),(18,'auth','0012_alter_user_first_name_max_length','2024-10-18 04:50:44.752341'),(19,'core_app','0001_initial','2024-10-18 04:50:47.277657'),(20,'discussion_forum_app','0001_initial','2024-10-18 04:50:48.222441'),(21,'sessions','0001_initial','2024-10-18 04:50:48.331656'),(22,'django_celery_results','0001_initial','2024-10-21 11:36:51.432062'),(23,'django_celery_results','0002_add_task_name_args_kwargs','2024-10-21 11:36:51.550031'),(24,'django_celery_results','0003_auto_20181106_1101','2024-10-21 11:36:51.567043'),(25,'django_celery_results','0004_auto_20190516_0412','2024-10-21 11:36:51.751125'),(26,'django_celery_results','0005_taskresult_worker','2024-10-21 11:36:51.917118'),(27,'django_celery_results','0006_taskresult_date_created','2024-10-21 11:36:52.161667'),(28,'django_celery_results','0007_remove_taskresult_hidden','2024-10-21 11:36:52.197044'),(29,'django_celery_results','0008_chordcounter','2024-10-21 11:36:52.244781'),(30,'django_celery_results','0009_groupresult','2024-10-21 11:36:53.291519'),(31,'django_celery_results','0010_remove_duplicate_indices','2024-10-21 11:36:53.309747'),(32,'django_celery_results','0011_taskresult_periodic_task_name','2024-10-21 11:36:53.384688');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0aakiikzgxm1196iyattwf9bpy3sctku','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3V2d:9nhxyBbGWmAgS6DVOYpCsj1IiDpQbNNEhQ_NygVte6c','2024-11-06 06:40:23.320934'),('0i28mb2x1vb6589p4wnz79h86jlmgmat','.eJxVjEsOwjAMBe-SNYrqpnYCS_Y9Q-TaDi2gVupnhbg7VOoCtm9m3stl3tY-b4vNeVB3cbU7_W4dy8PGHeidx9vkZRrXeej8rviDLr6d1J7Xw_076Hnpv3UU0NAIahAEpEhQYigJuqQVEWEsDWKFYhDJzgBci9bEAQIkYzP3_gDEQDdC:1t3XEP:nudAsGC8ZYjKvIflsYWVeUb5yhvQhwJbjY35zp8MMzQ','2024-11-06 09:00:41.448536'),('2yrl96sy3w0porwvtd4vmyw58valm87o','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3DiX:y1bHB8vS06zz4e9hAIy7o1Nx3f4IcwEQYJh1C0y5scI','2024-11-05 12:10:29.878680'),('3erzi1p8bgyxg3nqbo91ed5tvfq21ue9','.eJxVjEEOwiAQRe_C2hCGIbW4dO8ZyDADUjWQlHbVeHdt0oVu_3vvbyrQupSw9jSHSdRFgTr9bpH4meoO5EH13jS3usxT1LuiD9r1rUl6XQ_376BQL9_aGIkIANkjn8FQipxpAMLkRBxmzISCEp3zgyW0aWQSlhE9ozNi1fsD-dk4mg:1t2pIw:a9D5ufwBzgweGt68fD1A_XXy_5H9cXBWRaHmcmcM04I','2024-11-04 10:06:26.769745'),('6rptzh68hdst7rgya09jve526h09t3ix','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3U8f:2ElHMcR8eBZNDncLy0gLX98XR7AzDePiUYGTKlQbxkc','2024-11-06 05:42:33.483490'),('78yzx0hpbnreiztj209h0imhj1nyyuw3','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3DtZ:LdfYEZhksRchHon5vp_6CvjTGEUiYpKLOOOKE61SKQ0','2024-11-05 12:21:53.244615'),('8bjwhwuf9xzi9oud7hzqhg35sj4draak','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIiwibGFuZ3VhZ2VzIjpbXSwiY2F0ZWdvcmllcyI6WyIxIiwiMiIsIjMiXX0:1t3DYq:hLaQ3HoN6nrVRYeE1YVj_w-RJJZYM-CNiaRoWWMvVjI','2024-11-05 12:00:28.976085'),('9n193ljrt49amqajt0pkanl57r9l4qda','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3CBL:cmZ9QYFQCGYYV3J5pUha8Ygajyu1TfIjc434YwLi2BI','2024-11-05 10:32:07.564093'),('a2lu31ys18ptw2au4ane3fzy9yc4d8tb','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3EHt:qFx0-POikFVOoqfb9e60S3duwWAaUFXAR60rD1qcIPA','2024-11-05 12:47:01.857950'),('davuruvmyff0ydwlcaxq24bj9tgs70u7','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3UPW:VsqwiWoX8gqxK4uXf3BJuVcNOOp-nubBYcxSYw7vo6g','2024-11-06 05:59:58.132209'),('egxp3uxa79y11j8yzdnsh37s2qykwmft','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3V5J:GinDAyaQsiF9ifh5Z3i5Z4pvFd005NYpzZcCvssifaI','2024-11-06 06:43:09.533518'),('g7bxovpas4w1h8u2g1uqakvxd0lzbkti','.eJxVjEEOwiAQRe_C2hCGIbW4dO8ZyDADUjWQlHbVeHdt0oVu_3vvbyrQupSw9jSHSdRFgTr9bpH4meoO5EH13jS3usxT1LuiD9r1rUl6XQ_376BQL9_aGIkIANkjn8FQipxpAMLkRBxmzISCEp3zgyW0aWQSlhE9ozNi1fsD-dk4mg:1t2pmE:YDYEJrPCZT4wEzDgMIjoj5jJVeBUhUudfvDFVql84Gk','2024-11-04 10:36:42.565820'),('j7osww7bh24x11ass30kn1ymrbtx2lsl','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3EA5:8UgKybC5KYb_1YZOfESMAL3v7OvRz60DKH_Yql9rQxU','2024-11-05 12:38:57.674644'),('josv72xmwyxzm3no1ta213wto3y0x3pa','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3DE8:rpPZjk6H5Mahn3mviEzXZz2Q5l1ykhz5qYAj01AL4bo','2024-11-05 11:39:04.057281'),('lprlesr8s3llvokv9m7dm5c0v97bf98l','.eJxVjEEOwiAQRe_C2hCGIbW4dO8ZyDADUjWQlHbVeHdt0oVu_3vvbyrQupSw9jSHSdRFgTr9bpH4meoO5EH13jS3usxT1LuiD9r1rUl6XQ_376BQL9_aGIkIANkjn8FQipxpAMLkRBxmzISCEp3zgyW0aWQSlhE9ozNi1fsD-dk4mg:1t1f0V:Z4iPNVy_6vRe2407KMGS14YVmXEaJXLV0TI684r7qwg','2024-11-01 04:54:35.589327'),('nfgiwnidgyyhjg7hzefu08khuywk1fz0','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3TdG:hkgfoIESNAG0l6xTgkkRCPiWlJCNlN5KnjfDhHS522I','2024-11-06 05:10:06.044854'),('ok6ld06if0bkg1qvlts3zavskjd04ef8','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3E16:fTzc1sr4TM2VQK1A_J_4lxWETzofJ5D8Yq7Olfqd6y4','2024-11-05 12:29:40.758002'),('p4jefn6d2u9ulflj9fwp22ybk3yw9wp9','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3TyX:fC9I4Km4qRV5OzTOtrNTjof4z46yYSXx3PBGwiykADg','2024-11-06 05:32:05.985559'),('rgyeoopui9c68wj7mbg4to71l0zubjyt','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3TtP:Yzch95d1Je89aCSPPPEEYAY74dhZZOdf5SKV0buTqSo','2024-11-06 05:26:47.128190'),('s2rvykgrg9mx21cypnsjidpe347mawdq','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3Uom:KgM6tle_0ljaU63gKKiJu5UiFNgCnMPzHGznkAz4uY8','2024-11-06 06:26:04.001071'),('sjdd1c5s2chhto0vop33lzx0vhepvngs','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3EPz:QHaAi9ffQ5IPq9HR_RlTpWKyWC_P1VmdULz-GI5RQTw','2024-11-05 12:55:23.750543'),('ugrm67phz82qxl0v3hgniliv1jnanz2c','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3VEC:iOnA6G_yDvTY70AHB8PQFoJupSbOxzGRfBuCsLnnGp0','2024-11-06 06:52:20.275268'),('uk36vvowfu3h07t5o8jb9jdn8223x5ls','e30:1t2kkh:MUIk10kOSFYe6FCcHLZucHiipJlospp_zHYJd14qgYM','2024-11-04 05:14:47.181371'),('uos0eddqczacfr4gozhaih635ozs6szm','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3UNc:0_PJtzD1cDTnb3HjFyF_TWVVcp9gKBYpvdKDiJCapfA','2024-11-06 05:58:00.003112'),('zfiruocf33ezunjz2ax1gqmt1xc2aoco','eyJzZWFyY2hfYmxvZ19zdHJpbmciOiJub25lIn0:1t3UvQ:Vn3tN5HNoI21_MjPI5-uFo89lTD19K9wsTQbX5kczQ8','2024-11-06 06:32:56.770275');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 15:22:52
