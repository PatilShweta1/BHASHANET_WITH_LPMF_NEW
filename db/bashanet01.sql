-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: BHASHANET_PROD_LPMF_DB
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANNOUNCEMENTS`
--

LOCK TABLES `ANNOUNCEMENTS` WRITE;
/*!40000 ALTER TABLE `ANNOUNCEMENTS` DISABLE KEYS */;
INSERT INTO `ANNOUNCEMENTS` VALUES (1,'ICANN','The Internet Corporation for Assigned Names and Numbers (ICANN) published the 2022 Internationalized Domain Name (IDN) Annual Report. The report provides an  overview of the status of IDNs at the top and second levels of the Domain Name System (DNS), as well as the IDN-related work being done by the ICANN organization (ICANN org) and community.','','Published','core/Announcement/Icann_rxIiagD.png',NULL,'https://www.icann.org/en/announcements/details/supporting-a-multilingual-internet-icann-publishes-2022-idn-annual-report-16-02-2023-en','2024-04-24','2024-04-24','Abhijeet Thorat'),(2,'Universal Acceptance (UA) Day','Universal Acceptance (UA) Day is an opportunity to rally local, regional, and global communities and organizations around the world to spread general UA awareness and to encourage UA adoption with key stakeholders.','','Unpublished','core/Announcement/UASG_logo_Xozlk9F.png',NULL,'https://uasg.tech/ua-day/','2024-04-24','2024-04-24',NULL),(3,'UASG Announces Call for Proposals for UA Day 2024','The Universal Acceptance Steering Group (UASG) is calling for event proposals for the second annual Universal Acceptance (UA) Day to be held on 28 March 2024.','','Unpublished','core/Announcement/uasg_D7zKUUp_wu4wbxh_96lBtz4.png',NULL,'https://uasg.tech/2023/11/uasg-announces-call-for-proposals-for-ua-day-2024/','2024-04-24','2024-04-24','Abhijeet Thorat'),(4,'Unlocking Economic Potential with Multilingual Internet and UA for Businesses in India','Virtual Session on “Unlocking Economic Potential with Multilingual Internet and UA for Businesses in India,” 9th November 2023, (03:00 PM - 04:00 PM). Join us for an informative session that can transform businesses and help you thrive in the digital age. We look forward to seeing there!','','Unpublished','core/Announcement/ficci_oQwWL7b.png',NULL,'https://docs.google.com/forms/d/e/1FAIpQLScwRoP_ysZ8foBIbdlemeK5TiqQbcOAa5Dybmve0ITT2e5n7Q/viewform','2024-04-24','2024-04-24',NULL),(5,'Multilingual Internet for Women in India','FICCI\'s Indian Language internet Alliance (FICCI-ILIA) Session on Digital Inclusion (Multilingual Internet for Women in India) on 22nd November 2023, 03:00 PM - 04:00 PM. Join us and be a part of creating a more inclusive and connected digital enviornment in India.','','Unpublished','core/Announcement/ficci_ozwK4ml_EsFndO6.png',NULL,'https://forms.gle/EXFLNmofRNEXZTUn9','2024-04-24','2024-04-24','Abhijeet Thorat'),(6,'Multilingual Internet - Connecting People and Transforming Lives','One of a kind of language technology symposium and the only national platform that talks about the importance of the Indic-Internet or multilingual Internet.','','Unpublished','core/Announcement/ficci_ozwK4ml_6EOIpxh.png',NULL,'https://docs.google.com/forms/d/e/1FAIpQLSeqlVmi3cbEwu89N4vrspnOAF-MlXoGpAz738eSUwSfEyLZhw/viewform','2024-04-24','2024-04-24','Abhijeet Thorat'),(7,'FICCI','Empowering Entrepreneurs: Navigating Success with Universal Acceptance and Email Address Internationalization FICCI <br/> <strong>- To be held on 12 April 2024, Jaipur (Rajasthan) India</strong>','','Published','',NULL,'https://uasg.tech/ua-day/','2024-04-24','2024-04-24',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ARTICLE`
--

LOCK TABLES `ARTICLE` WRITE;
/*!40000 ALTER TABLE `ARTICLE` DISABLE KEYS */;
INSERT INTO `ARTICLE` VALUES (1,'Become UA Ready','Become UA Ready','<strong>\r\nSoftware and online services are universal acceptance ready when they are able to accept, validate, store, process and display all domains and email names.\r\n</strong>','core/Article/icon/become-ua-ready_OPzCeOh_Rkqa65Z.png','core/Article/icon/become-ua-ready_OPzCeOh_5VnvYNN.png','','','','','','','This includes:',NULL,NULL,NULL,NULL,'','<div>\r\n                                             <p>\r\n                                                <strong>To make your systems UA ready, here are some steps you can take :</strong>\r\n                                             </p>\r\n                                             <ol>\r\n                                                <li style=\"text-align: justify;\"><strong>Validate input :</strong> Ensure that your system validates and processes all valid\r\n                                                   domain names, email addresses, and other internet identifiers. This involves\r\n                                                   verifying the syntax and structure of these identifiers, and also checking if\r\n                                                   they are in a valid format or not.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Support Unicode:</strong> Unicode is a universal character encoding standard that can\r\n                                                   represent almost all scripts and languages in use today. Ensure that your system\r\n                                                   supports Unicode, so that it can process internet identifiers in any script or\r\n                                                   language.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Use internationalized domain names (IDNs):</strong> IDNs are domain names that allow\r\n                                                   non-ASCII characters, such as Hindi, Bengali or Tamil characters, in the\r\n                                                   domain name itself. Ensure that your system supports IDNs, so that users can\r\n                                                   register domain names in their own language.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Test with UA test cases:</strong> Use UA test cases to verify that your system can\r\n                                                   accept and process internet identifiers in all languages and scripts. There are\r\n                                                   several UA test suites available that can help you identify any issues or gaps\r\n                                                   in your system\'s UA readiness.</li>\r\n      \r\n                                                   <li style=\"text-align: justify;\"><strong>Use best practices:</strong> Follow best practices for UA readiness, such as those\r\n                                                   outlined in the Internet Engineering Task Force\'s (IETF) Best Current Practice\r\n                                                   (BCP) 18 and BCP 47. These documents provide guidance on how to support\r\n                                                   internationalization in various aspects of internet technology.</li>\r\n                                             </ol>\r\n                                             \r\n                                            </div>','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'2024-04-24','2024-04-24','Published'),(2,'Technical Corner','Na','Standard Operating Procedure (SOP) documents are detailed instructions or guidelines that outline the step-by-step procedures to be followed for making a website IDN (Internationalized Domain Name) ready within an organization.','','','','','','','','','Purpose','Scope','Pre-requisites','Responsibilities',NULL,'The purpose of these SOPs are to outline the steps required to make a website IDN ready, enabling it to support Internationalized Domain Names.','These SOPs apply to the website development team responsible for ensuring the IDN readiness of the website.','1.	Familiarity with IDN standards and requirements.\r\n2.	Access to the website\'s domain name settings and DNS configuration.','Website Development Team is responsible for implementing the necessary changes to make the website IDN ready for overseeing the implementation and compliance with IDN standards.\r\nClick here to view some SOPs in different technologies','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'2024-04-24','2024-04-24','Published');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BEST PRACTICES`
--

LOCK TABLES `BEST PRACTICES` WRITE;
/*!40000 ALTER TABLE `BEST PRACTICES` DISABLE KEYS */;
INSERT INTO `BEST PRACTICES` VALUES (1,'Support for Top Level Domains (TLDs) For eg .भारत , सरकार.भारत','Get your domain name in Indian Languages like Hindi , Tamil , Marathi For eg : सीडैक.भारत .','core/best_practices/img/tld_ZEtMWJX_RyFxlYR.png','Get IDN equivalent of existing ASCII Domain','Get your domain name converted (translated / transliterated) into local language. Registrant/ user provide translation and transliteration of domain name in IDN available language to NIC / .IN Registry Accrediated Registrars (NIC for sarkar .भारत domain and .IN Registry Accrediated Registrars for .भारत domain names )','',NULL,'https://registry.in/index','Validate Your Domain','Validate your local language domain name with validation rules because some Indian language characters are blocked for avoiding spoofing/phishing like in english domain name only letter ,digits and hyphen are allowed (LDH).','',NULL,'https://registry.in/index','Create/Register Your Domain','Provide contact, domain name Punycode string and Name Server details to NIC/.IN Registry Accrediated Registrars. Punycode is a string which is equivalent to your UNICODE domain name. Some vendors may expect punycode while registering. NIC/.IN Registry Accrediated Registrars create domain name and inform to Registrant/user.','',NULL,'https://registry.in/index','Configure your Name Server/IP','After registering domain names, make all the entries of website Indian language domain names in name server panel against public IP of the server where the website is hosted.','',NULL,'https://registry.in/index',NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-04-24','2024-04-24'),(2,'Support for Web Server','Web server needs to be configured to support for punycode representation of the domain name to support IDN','core/best_practices/img/web_server_qscsrlW.png','Configure Your Web Server','Your website server needs to accept requests coming for the UNICODE/Punycode. All major web-servers provide support to point multiple websites to same code. Share your IDN domain name to Webmaster/Hosting Provider . They have to write routing rules to map the incoming punycode to the existing site or corresponding Indian language website as per your business needs. Now the user should be able to access your website with both English and Indian language domain name .','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-04-24','2024-04-24'),(3,'Support for SSL/ TLS Certificates','Universal Acceptance (UA) in SSL certificates refers to the ability of SSL certificate authorities (CA) and SSL-enabled servers to accept and process SSL certificates that use Internationalized Domain Names (IDN) in non-Latin scripts.','core/best_practices/img/tld_TEVMCXW.png','Configure Your SSL Certificates with Punycode domain names','SSL certificates help your website to be secure Hence you need to buy a new SSL certificate or add the Punycode string to your existing SSL certificate . The new / updated SSL needs to be configured on your server. Now the user should be able to access your website with both English and Indian language domain name with https.','core/best_practices/img/meity.PNG',NULL,NULL,NULL,'','core/best_practices/img/meity2_KmMy7mr_bagJKfB.PNG',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-04-24','2024-04-24'),(4,'Support for Indian Languages in Email Addresses','Proper encoding and decoding of email addresses to support all scripts and characters used in domain names','core/best_practices/img/comp_testing_hRS6Hxe.png','Use Email Services in Indian Languages','Ensure that your Email Service Provider or application can send and receive Emails with Email Addresses that contain Indian Scripts such as Devanagari, Tamil or Bengali .Email Service Provider must use internationalized email standards such EAI (Email Address Internationalization) to ensure that email addresses with Indian scripts and TLDs are transmitted and received correctly.','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-04-24','2024-04-24'),(5,'Follow UA Standards and guidelines & collaborate with other stakeholders','','core/best_practices/img/guide_eYt8Azk.png',NULL,'Follow UA Standards and guidelines set by organisations such as ICANN and the Universal Acceptance Steering Group (UASG) and collaborate with other stakeholders, including domain registrars, service providers, And software vendors to promote UA and address any related issues.','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Published','2024-04-24','2024-04-24');
/*!40000 ALTER TABLE `BEST PRACTICES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_blog`
--

DROP TABLE IF EXISTS `CORE_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_blog` (
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
  KEY `CORE_blog_Blog_Author_id_06c3c52c_fk_auth_user_id` (`Blog_Author_id`),
  KEY `CORE_blog_Blog_CategoryType_id_d7e05d5e_fk_CORE_blogcategory_id` (`Blog_CategoryType_id`),
  KEY `CORE_blog_Blog_Slug_dc32be70` (`Blog_Slug`),
  CONSTRAINT `CORE_blog_Blog_Author_id_06c3c52c_fk_auth_user_id` FOREIGN KEY (`Blog_Author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `CORE_blog_Blog_CategoryType_id_d7e05d5e_fk_CORE_blogcategory_id` FOREIGN KEY (`Blog_CategoryType_id`) REFERENCES `CORE_blogcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_blog`
--

LOCK TABLES `CORE_blog` WRITE;
/*!40000 ALTER TABLE `CORE_blog` DISABLE KEYS */;
INSERT INTO `CORE_blog` VALUES (1,'UASG Publishes 2023 Universal Acceptance Activities Report','uasg-publishes-2023-universal-acceptance-activities-report','2023 was a milestone year for Universal Acceptance (UA). From local awareness and training sessions around the world to the inaugural UA Day, global support for and mobilization around UA reached unprecedented levels.','<p>As a way to summarize the outreach and training activities of the Universal Acceptance Steering Group (UASG), ICANN and contributing stakeholders, the UASG has put together a comprehensive&nbsp;<a href=\"https://uasg.tech/download/uasg-048-ua-activities-report/\">UA Activities Report</a>. The report focuses on key initiatives, outreach activities, technical training, publications, and the first-ever UA Day event that have collectively advanced the cause of UA. In addition to showcasing the community&rsquo;s collaborative efforts and achievements between July 2022 and November 2023, in alignment with the objectives outlined in the past year&rsquo;s&nbsp;<a href=\"https://uasg.tech/wp-content/uploads/2022/06/UASG-FY23-Action-Plan.pdf\">Action Plan</a>, the report also aims to offer ideas on how people can contribute to the UASG&rsquo;s mission based on their unique roles, skills and interests.</p>\r\n\r\n<p>UA Activities Report highlights include:</p>\r\n\r\n<ul>\r\n	<li>Outreach and engagement activities by ICANN and UASG, particularly by UA Local Initiatives and UA Ambassadors</li>\r\n	<li>Technical training materials on programming languages and email configuration</li>\r\n	<li>Publications to promote UA adoption</li>\r\n	<li>A summary of UA Day 2023 events</li>\r\n	<li>The role of the community in contributing to an inclusive and multilingual Internet</li>\r\n</ul>\r\n\r\n<p>The report is a valuable resource for the entire UA community and anyone looking for UA training resources and information on getting involved in promoting UA.</p>\r\n\r\n<p>To learn more about how the UASG plans and organizes its work, read the&nbsp;<a href=\"https://uasg.tech/wp-content/uploads/2023/07/UASG-FY24-Action-Plan.pdf\">FY24 Action Plan</a>.</p>\r\n\r\n<p>If you&rsquo;d like to get involved with the UASG, you can:</p>\r\n\r\n<ul>\r\n	<li>Contact the UASG at&nbsp;<a href=\"https://uasg.tech/contact/\">https://uasg.tech/contact/</a>&nbsp;or email info@uasg.tech</li>\r\n	<li>Join UASG working groups:&nbsp;<a href=\"https://uasg.tech/join/\">https://uasg.tech/join/</a></li>\r\n	<li>Participate in UA general discussions:<a href=\"https://uasg.tech/subscribe\">&nbsp;https://uasg.tech/subscribe</a></li>\r\n	<li>Report UA problems with other applications:<a href=\"https://uasg.tech/global-support-center/\">&nbsp;https://uasg.tech/global-support-center/</a></li>\r\n	<li>Follow the UASG on its social channels:&nbsp;<a href=\"https://twitter.com/UASGTech\">X</a>&nbsp;|&nbsp;<a href=\"https://www.facebook.com/uasgtech/\">Facebook</a>&nbsp;|&nbsp;<a href=\"https://www.linkedin.com/company/uasgtech/\">LinkedIn</a></li>\r\n</ul>\r\n\r\n<p>Building a global multilingual Internet takes all of us. Many thanks to everyone involved in pulling together the&nbsp;<a href=\"https://uasg.tech/download/uasg-048-ua-activities-report/\">UA Activities Report</a>&nbsp;and the entire UA community for your hard work over the past year in creating an #Internet4All.</p>','2024-04-24','2024-04-24','Abhijeet Thorat','Published','core/Blog/Thumbnail/UASG-Announcement-Blog_NObAIyR.png','',2,4),(2,'How can we register IDN domain names ?','how-can-we-register-idn-domain-names','Registering an Internationalized Domain Name (IDN) involves a process similar to registering any other domain name, but with the additional consideration of special characters and language-specific characters. Here\'s a general guide -','<ol>\r\n	<li>\r\n	<p><strong>Choose a Registrar</strong>: Select a domain registrar that supports IDN registrations. Many popular registrars offer this service, so you can choose one based on your preferences, pricing, and reputation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Check Availability</strong>: Use the registrar&#39;s search tool to check if the IDN you want is available. Enter the domain name in the language and script you prefer.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Language and Script</strong>: IDNs can include characters from various languages and scripts such as Arabic, Chinese, Cyrillic, Devanagari, etc. Ensure that your chosen registrar supports the specific characters you want to use.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Domain Name</strong>: Decide on the IDN you want to register. It should be relevant to your website&#39;s content and easy for your target audience to remember.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Registration Process</strong>: Once you&#39;ve chosen an available IDN, proceed with the registration process through your chosen registrar. This typically involves creating an account, providing your contact information, and making payment for the domain registration.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Documentation</strong>: Some registrars may require additional documentation to verify your identity or ownership of the domain. This is particularly common for certain characters or scripts.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Renewal and Management</strong>: After registering your IDN, remember to renew it regularly to maintain ownership. Most registrars offer tools for managing your domain, including DNS settings, email forwarding, and WHOIS information updates.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trademark Considerations</strong>: Before registering an IDN, it&#39;s wise to check for any trademark conflicts. Using a trademarked term in your domain name could lead to legal issues.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hosting</strong>: Once you have registered your IDN, you&#39;ll need to host a website on it if you intend to use it for that purpose. This involves purchasing hosting services from a web hosting provider and setting up your website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Promotion and Use</strong>: Finally, promote your IDN and use it effectively for your online presence. Ensure that your website content is relevant and engaging for your target audience.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Remember to comply with any specific registration requirements or regulations set by the registrar or the organization responsible for managing domain names in the specific top-level domain (TLD) you&#39;re registering under.</p>','2024-04-24','2024-04-24','Abhijeet Thorat','Published','core/Blog/Thumbnail/Screenshot_15-4-2024_115751_registry.in.jpeg','',2,1),(3,'सूर्य एक प्रत्यक्ष देवता के रूप में पूजे जाते हैं। नवग्रहों में भी सूर्यदेव को विशिष्ट स्थान प्राप्त है। सूर्य देव को पिता, पुत्र, प्रसिद्धि, यश, वैभव, तेज, आरोग्यता, आत्मविश्वास और इच्छाशक्ति का कारक माना गया है।','','रामनवमी','<p><strong>Surya Abhishek:&nbsp;</strong>आज यानी 17 अप्रैल को रामनवमी का त्योहार मनाया जा रहा है। इस पावन अवसर पर अयोध्या में रामलला का सूर्य तिलक होने जा रहा है। ज्योतिषशास्त्र के अनुसार ग्रहों के अधिपति सूर्य सनातान धर्म में पूजनीय है। सूर्य एक प्रत्यक्ष देवता के रूप में पूजे जाते हैं। नवग्रहों में भी सूर्यदेव को विशिष्ट स्थान प्राप्त है। सूर्य देव को पिता, पुत्र, प्रसिद्धि, यश, वैभव, तेज, आरोग्यता, आत्मविश्वास और इच्छाशक्ति का कारक माना गया है। कुंडली में सूर्य को मजबूत करने के लिए आदित्य हृदय स्तोत्र का पाठ करना सर्वोत्तम माना जाता है। लेकिन क्या आप जानते हैं भगवान राम और सूर्य का आदित्य हृदय स्तोत्र से क्या संबंध है। आइए जानते हैं।&nbsp;</p>','2024-04-24','2024-04-24','Sanjay Bhargava','Unpublished','core/Blog/Thumbnail/footer-bg_ANZxE8x.jpg','',2,4),(4,'Test12','test12','Test','<p>Test Test Test Test</p>','2024-10-07','2024-10-07',NULL,'Unpublished','core/Blog/Thumbnail/wedding.jpg','',2,2),(5,'Test1223','test1223','Test1223','<p>Test1223Test1223Test1223Test1223</p>','2024-10-07','2024-10-07',NULL,'Unpublished','core/Blog/Thumbnail/wedding_W5bB6M3.jpg','',2,3);
/*!40000 ALTER TABLE `CORE_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_blogcategory`
--

DROP TABLE IF EXISTS `CORE_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_blogcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BlogCategory_Name` varchar(500) NOT NULL,
  `BlogCategory_Status` tinyint(1) NOT NULL,
  `BlogCategory_CreationDate` date NOT NULL,
  `BlogCategory_LastUpdatedDate` date NOT NULL,
  `BlogCategory_PublishedStatus` varchar(20) NOT NULL,
  `BlogCategory_Author_Char` varchar(500) DEFAULT NULL,
  `BlogCategory_Author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CORE_blogcategory_BlogCategory_Author__1b83ae25_fk_auth_user` (`BlogCategory_Author_id`),
  CONSTRAINT `CORE_blogcategory_BlogCategory_Author__1b83ae25_fk_auth_user` FOREIGN KEY (`BlogCategory_Author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_blogcategory`
--

LOCK TABLES `CORE_blogcategory` WRITE;
/*!40000 ALTER TABLE `CORE_blogcategory` DISABLE KEYS */;
INSERT INTO `CORE_blogcategory` VALUES (1,'EAI',0,'2024-04-24','2024-10-07','Published','bhashanet',2),(2,'Language Technology',0,'2024-04-24','2024-10-07','Published','bhashanet',2),(3,'Multilingual Internet',0,'2024-04-24','2024-10-07','Published','bhashanet',2),(4,'Universal Acceptance',0,'2024-04-24','2024-10-07','Published','Abhijeet Thorat',2);
/*!40000 ALTER TABLE `CORE_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_customforgotpassword`
--

DROP TABLE IF EXISTS `CORE_customforgotpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_customforgotpassword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forgot_password_token` varchar(100) NOT NULL,
  `generation_time` datetime(6) NOT NULL,
  `counter` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_id` (`email_id`),
  CONSTRAINT `CORE_customforgotpassword_email_id_ade9edce_fk_auth_user_id` FOREIGN KEY (`email_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_customforgotpassword`
--

LOCK TABLES `CORE_customforgotpassword` WRITE;
/*!40000 ALTER TABLE `CORE_customforgotpassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `CORE_customforgotpassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_documentcategorywithouttrans`
--

DROP TABLE IF EXISTS `CORE_documentcategorywithouttrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_documentcategorywithouttrans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DocumentCategory_Name` varchar(500) NOT NULL,
  `DocumentCategory_Status` tinyint(1) NOT NULL,
  `DocumentCategory_CreationDate` date NOT NULL,
  `DocumentCategory_LastUpdatedDate` date NOT NULL,
  `DocumentCategory_PublishedStatus` varchar(20) NOT NULL,
  `DocumentCategory_Author` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_documentcategorywithouttrans`
--

LOCK TABLES `CORE_documentcategorywithouttrans` WRITE;
/*!40000 ALTER TABLE `CORE_documentcategorywithouttrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `CORE_documentcategorywithouttrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_documentwithouttrans`
--

DROP TABLE IF EXISTS `CORE_documentwithouttrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_documentwithouttrans` (
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
  KEY `CORE_documentwithout_Document_CategoryTyp_c4c93e01_fk_CORE_docu` (`Document_CategoryType_id`),
  KEY `CORE_documentwithouttrans_Document_Slug_5db8fb0c` (`Document_Slug`),
  CONSTRAINT `CORE_documentwithout_Document_CategoryTyp_c4c93e01_fk_CORE_docu` FOREIGN KEY (`Document_CategoryType_id`) REFERENCES `CORE_documentcategorywithouttrans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_documentwithouttrans`
--

LOCK TABLES `CORE_documentwithouttrans` WRITE;
/*!40000 ALTER TABLE `CORE_documentwithouttrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `CORE_documentwithouttrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_idnrequestforuserwebsites`
--

DROP TABLE IF EXISTS `CORE_idnrequestforuserwebsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_idnrequestforuserwebsites` (
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
  KEY `CORE_idnrequestforus_IDN_Category_id_554c8af3_fk_CORE_idnr` (`IDN_Category_id`),
  CONSTRAINT `CORE_idnrequestforus_IDN_Category_id_554c8af3_fk_CORE_idnr` FOREIGN KEY (`IDN_Category_id`) REFERENCES `CORE_idnrequestforuserwebsitescategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_idnrequestforuserwebsites`
--

LOCK TABLES `CORE_idnrequestforuserwebsites` WRITE;
/*!40000 ALTER TABLE `CORE_idnrequestforuserwebsites` DISABLE KEYS */;
INSERT INTO `CORE_idnrequestforuserwebsites` VALUES (1,'shivam sharma','sshivam@cdac.in','cdac.in','[{\"language\": \"Hindi\", \"url\": \"cdac.in\"}]',0,NULL,NULL,'2024-04-24','2024-04-24','NOT-APPROVED',2);
/*!40000 ALTER TABLE `CORE_idnrequestforuserwebsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_idnrequestforuserwebsitescategories`
--

DROP TABLE IF EXISTS `CORE_idnrequestforuserwebsitescategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_idnrequestforuserwebsitescategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDN_category_name` varchar(255) DEFAULT NULL,
  `website_status` varchar(20) NOT NULL,
  `IDN_category_creation_date` date NOT NULL,
  `IDN_category_last_updated_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDN_category_name` (`IDN_category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_idnrequestforuserwebsitescategories`
--

LOCK TABLES `CORE_idnrequestforuserwebsitescategories` WRITE;
/*!40000 ALTER TABLE `CORE_idnrequestforuserwebsitescategories` DISABLE KEYS */;
INSERT INTO `CORE_idnrequestforuserwebsitescategories` VALUES (1,'Private','Active','2024-04-24','2024-04-24'),(2,'Government','Active','2024-04-24','2024-04-24');
/*!40000 ALTER TABLE `CORE_idnrequestforuserwebsitescategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_otp_for_idnrequestforuserwebsites`
--

DROP TABLE IF EXISTS `CORE_otp_for_idnrequestforuserwebsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_otp_for_idnrequestforuserwebsites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `OTP_Email` varchar(500) DEFAULT NULL,
  `OTP_Value` int(11) NOT NULL,
  `OTP_Entered_Count` int(11) NOT NULL,
  `OTP_Status` tinyint(1) DEFAULT NULL,
  `OTP_Created_Date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_otp_for_idnrequestforuserwebsites`
--

LOCK TABLES `CORE_otp_for_idnrequestforuserwebsites` WRITE;
/*!40000 ALTER TABLE `CORE_otp_for_idnrequestforuserwebsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `CORE_otp_for_idnrequestforuserwebsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_otp_for_userregistration`
--

DROP TABLE IF EXISTS `CORE_otp_for_userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_otp_for_userregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `OTP_Email` varchar(500) DEFAULT NULL,
  `OTP_Value` int(11) NOT NULL,
  `OTP_Entered_Count` int(11) NOT NULL,
  `OTP_Status` tinyint(1) DEFAULT NULL,
  `OTP_Created_Date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_otp_for_userregistration`
--

LOCK TABLES `CORE_otp_for_userregistration` WRITE;
/*!40000 ALTER TABLE `CORE_otp_for_userregistration` DISABLE KEYS */;
INSERT INTO `CORE_otp_for_userregistration` VALUES (1,'xyz',1234,1,1,'2024-10-07 06:33:03.973133'),(3,'pshweta@cdac.in',211617,7,0,'2024-10-07 11:07:39.763501'),(4,'sgpltr@gmail.com',290493,4,0,'2024-10-08 05:53:25.755588'),(5,'abcd@gmail.com',529065,3,0,'2024-10-07 11:16:29.259446'),(6,'pqrst@gmail.com',275379,8,0,'2024-10-07 11:58:28.269186');
/*!40000 ALTER TABLE `CORE_otp_for_userregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_sopdownloadcounter`
--

DROP TABLE IF EXISTS `CORE_sopdownloadcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_sopdownloadcounter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DownloadCounter` int(11) NOT NULL,
  `SOPTechnologyDocument_Obj_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CORE_sopdownloadcoun_SOPTechnologyDocumen_eda0b66a_fk_CORE_sopt` (`SOPTechnologyDocument_Obj_id`),
  CONSTRAINT `CORE_sopdownloadcoun_SOPTechnologyDocumen_eda0b66a_fk_CORE_sopt` FOREIGN KEY (`SOPTechnologyDocument_Obj_id`) REFERENCES `CORE_soptechnologydocument` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_sopdownloadcounter`
--

LOCK TABLES `CORE_sopdownloadcounter` WRITE;
/*!40000 ALTER TABLE `CORE_sopdownloadcounter` DISABLE KEYS */;
INSERT INTO `CORE_sopdownloadcounter` VALUES (2,3,3),(3,9,2),(4,14,1),(5,4,4);
/*!40000 ALTER TABLE `CORE_sopdownloadcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_soptechnologycategory`
--

DROP TABLE IF EXISTS `CORE_soptechnologycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_soptechnologycategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SOPTechnologyCategory_Name` varchar(500) NOT NULL,
  `SOPTechnologyCategory_Status` tinyint(1) NOT NULL,
  `SOPTechnologyCategory_CreationDate` date NOT NULL,
  `SOPTechnologyCategory_LastUpdatedDate` date NOT NULL,
  `SOPTechnologyCategory_PublishedStatus` varchar(20) NOT NULL,
  `SOPTechnologyCategory_Author` varchar(500) DEFAULT NULL,
  `SOPTechnologyCategory_Thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_soptechnologycategory`
--

LOCK TABLES `CORE_soptechnologycategory` WRITE;
/*!40000 ALTER TABLE `CORE_soptechnologycategory` DISABLE KEYS */;
INSERT INTO `CORE_soptechnologycategory` VALUES (1,'Django',0,'2024-04-24','2024-04-24','Published',NULL,'core/SOPTechnologyCategory/Thumbnail/django-logo-negative_6GsPtqS_Xj67Gn2.png'),(2,'Drupal',1,'2024-04-24','2024-04-24','Published',NULL,'core/SOPTechnologyCategory/Thumbnail/Wordmark2_blue_RGB1_2kErqWf_JNGzj0l.png'),(3,'Generic',1,'2024-04-24','2024-04-24','Published',NULL,''),(4,'Node Js',0,'2024-04-24','2024-04-24','Published',NULL,'core/SOPTechnologyCategory/Thumbnail/2560px-Node.js_logo.svg_atwgY87_PsbNP8f.png');
/*!40000 ALTER TABLE `CORE_soptechnologycategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_soptechnologydocument`
--

DROP TABLE IF EXISTS `CORE_soptechnologydocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_soptechnologydocument` (
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
  KEY `CORE_soptechnologydo_SOPTechnologyDocumen_fa88a446_fk_CORE_sopt` (`SOPTechnologyDocument_CategoryType_id`),
  KEY `CORE_soptechnologydocument_SOPTechnologyDocument_Slug_e0056f3e` (`SOPTechnologyDocument_Slug`),
  CONSTRAINT `CORE_soptechnologydo_SOPTechnologyDocumen_fa88a446_fk_CORE_sopt` FOREIGN KEY (`SOPTechnologyDocument_CategoryType_id`) REFERENCES `CORE_soptechnologycategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_soptechnologydocument`
--

LOCK TABLES `CORE_soptechnologydocument` WRITE;
/*!40000 ALTER TABLE `CORE_soptechnologydocument` DISABLE KEYS */;
INSERT INTO `CORE_soptechnologydocument` VALUES (1,'SOP Document for having website domain name in local language','Na','2024-04-24','2024-04-24','2023-07-12',NULL,NULL,'Published',NULL,'','core/SOPTechnologyDocument/DocumentFile/Generic_SOP_UlhLtTU.pdf',NULL,NULL,NULL,NULL,3),(2,'SOP Document for making Django website IDN compliant','Na','2024-04-24','2024-04-24','2023-07-11',NULL,NULL,'Published',NULL,'','core/SOPTechnologyDocument/DocumentFile/Bhashanet-IDN-UA-SoPDjango_2.pdf',NULL,NULL,'4.1.7',NULL,1),(3,'SOP Document for making Drupal website IDN compliant','Enable your Drupal website domain IDN compliant by using steps mentioned in the following SOP Document.','2024-04-24','2024-04-24','2023-06-23',NULL,NULL,'Published',NULL,'','core/SOPTechnologyDocument/DocumentFile/Sop_of_IDN-UA_Compliance_in_Drupal_8YgnXRS.pdf',NULL,NULL,'7',NULL,2),(4,'SOP Document for making Node Js website IDN compliant','Na','2024-04-24','2024-04-24','2023-07-11',NULL,NULL,'Published',NULL,'','core/SOPTechnologyDocument/DocumentFile/Node-IDN-UA-SoP_1.pdf',NULL,NULL,'16.14.1',NULL,4);
/*!40000 ALTER TABLE `CORE_soptechnologydocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_userprofile`
--

DROP TABLE IF EXISTS `CORE_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_userprofile` (
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
  KEY `CORE_userprofile_UserProfile_user_id_b531e734_fk_auth_user_id` (`UserProfile_user_id`),
  CONSTRAINT `CORE_userprofile_UserProfile_user_id_b531e734_fk_auth_user_id` FOREIGN KEY (`UserProfile_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_userprofile`
--

LOCK TABLES `CORE_userprofile` WRITE;
/*!40000 ALTER TABLE `CORE_userprofile` DISABLE KEYS */;
INSERT INTO `CORE_userprofile` VALUES (1,'Shweta','Patil','CDAC','user/organization_logo/download1_1_1_gmJFuSG.png','2024-04-23','2024-04-23','Shweta Patil',2);
/*!40000 ALTER TABLE `CORE_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_userrole`
--

DROP TABLE IF EXISTS `CORE_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_userrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Role_Name` varchar(20) NOT NULL,
  `Role_Status` varchar(20) DEFAULT NULL,
  `Role_Created_Date` date NOT NULL,
  `Role_Last_Updated_Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_userrole`
--

LOCK TABLES `CORE_userrole` WRITE;
/*!40000 ALTER TABLE `CORE_userrole` DISABLE KEYS */;
INSERT INTO `CORE_userrole` VALUES (1,'main_admin','Active','2024-04-24','2024-04-24'),(2,'ficci_admin','Active','2024-04-24','2024-04-24'),(3,'nixi_admin','Active','2024-04-24','2024-04-24'),(4,'DjangoSuperAdmin','Active','2024-09-30','2024-09-30');
/*!40000 ALTER TABLE `CORE_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CORE_userrolemapping`
--

DROP TABLE IF EXISTS `CORE_userrolemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CORE_userrolemapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Role_Category_Mapping_Status` varchar(20) DEFAULT NULL,
  `Role_Category_Mapping_Created_Date` date NOT NULL,
  `Role_Category_Mapping_Last_Updated_Date` date NOT NULL,
  `Role_Id_id` bigint(20) NOT NULL,
  `User_Id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CORE_userrolemapping_Role_Id_id_4a09b5b9_fk_CORE_userrole_id` (`Role_Id_id`),
  KEY `CORE_userrolemapping_User_Id_id_26c4b576_fk_auth_user_id` (`User_Id_id`),
  CONSTRAINT `CORE_userrolemapping_Role_Id_id_4a09b5b9_fk_CORE_userrole_id` FOREIGN KEY (`Role_Id_id`) REFERENCES `CORE_userrole` (`id`),
  CONSTRAINT `CORE_userrolemapping_User_Id_id_26c4b576_fk_auth_user_id` FOREIGN KEY (`User_Id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CORE_userrolemapping`
--

LOCK TABLES `CORE_userrolemapping` WRITE;
/*!40000 ALTER TABLE `CORE_userrolemapping` DISABLE KEYS */;
INSERT INTO `CORE_userrolemapping` VALUES (1,'Active','2024-09-30','2024-09-30',4,2),(23,'Active','2024-10-08','2024-10-08',2,28);
/*!40000 ALTER TABLE `CORE_userrolemapping` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCUMENT`
--

LOCK TABLES `DOCUMENT` WRITE;
/*!40000 ALTER TABLE `DOCUMENT` DISABLE KEYS */;
INSERT INTO `DOCUMENT` VALUES (1,'UASG 000 Inventory of Material EN','UASG 000 Inventory of Material EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','148.91 KB',694,'pdf','https://uasg.tech/download/uasg-000-inventory-of-material-en/',1),(2,'UASG 001 UA Knowledge Base EN','Suggested text that people can use to reach out to a website when their domain name doesn’t resolve.','2024-04-24','2024-04-24',NULL,NULL,'English','Published','Browsers-EN-Text','','','124kb',650,'pdf','https://uasg.tech/download/uasg-001-ua-knowledge-base-en/',2),(3,'UASG 003 UA Fact Sheet FR','UASG 003 UA Fact Sheet FR','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','726.23 KB',567,'pdf','https://uasg.tech/download/uasg-003-ua-fact-sheet-fr/',4),(4,'UASG 004A Test Cases for UA Readiness Evaluation – Data EN','UASG 004A Test Cases for UA Readiness Evaluation – Data EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','9.50 KB',764,'pdf','https://uasg.tech/download/uasg-004a-use-cases-for-ua-readiness-evaluation-data-en/',7),(5,'UASG 007 Introduction to Universal Acceptance EN','UASG 007 Introduction to Universal Acceptance EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','915.52 KB',651,'pdf','https://uasg.tech/download/uasg-007-introduction-to-universal-acceptance-en/',8),(6,'UASG 009 Quick Guide to Tender and Contractual Documents EN','Includes details on Good Practice clauses for Universal Acceptance as well as IPv6 and DNSSEC.','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','78.10 KB',537,'pdf','https://uasg.tech/download/uasg-009-quick-guide-to-tender-and-contractual-documents-en/',2),(7,'UASG 012 EAI: A Technical Overview EN','UASG 012 EAI: A Technical Overview EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','819.28 KB',709,'pdf','https://uasg.tech/download/uasg-012-eai-a-technical-overview-en/',8),(8,'UASG 013F Email Address Internationalization (EAI) Case Study: Coremail and THNIC EN','UASG 013F Email Address Internationalization (EAI) Case Study: Coremail and THNIC EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','996.72 KB',564,'pdf','https://uasg.tech/download/uasg-013f-email-address-internationalization-eai-case-study-coremail-and-thnic-en/',4),(9,'UASG 015 Blueprint for CIOs – Internet Industry Edition EN','Provides a blueprint for CIO’s to use in addressing Universal Acceptance issues. Internet Industry specific tables are used.','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','148.91 KB',493,'pdf','https://uasg.tech/download/uasg-015-blueprint-for-cios-internet-industry-edition-en/',2),(10,'UASG 031 FAQs: UA Readiness of Programming Languages and Email Tools EN','UASG 031 FAQs: UA Readiness of Programming Languages and Email Tools EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','278.01 KB',456,'pdf','https://uasg.tech/download/uasg-031-faqs-ua-readiness-of-programming-languages-and-email-tools-en/',7),(11,'UASG 033 UA-Readiness of Open Source Code Pilot EN','UASG 033 UA-Readiness of Open Source Code Pilot EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','530.58 KB',728,'pdf','https://uasg.tech/download/uasg-033-ua-readiness-of-open-source-code-pilot-en/',7),(12,'UASG 033 UA-Readiness of Open Source Code Pilot EN','Goal: evaluate strategies to discover and improve UA-associated code in open source software.','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','1.23 MB',728,'pdf','https://uasg.tech/download/uasg-033-ua-readiness-of-open-source-code-pilot-en/',3),(13,'UASG 036A UA-Readiness of Browsers EN','UASG 036A UA-Readiness of Browsers EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','543.73 KB',482,'pdf','https://uasg.tech/download/uasg-036a-ua-readiness-of-browsers-en/',3),(14,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','530.58 KB',759,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',6),(15,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','530.58 KB',657,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',5),(16,'UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','530.58 KB',759,'pdf','https://uasg.tech/download/uasg-037-ua-readiness-of-some-programming-language-libraries-and-frameworks-en/',3),(17,'UASG 040 UA-Readiness Evaluation of Standards and Best Practices','UASG 040 UA-Readiness Evaluation of Standards and Best Practices','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','810.39 KB',380,'pdf','https://uasg.tech/download/uasg-040-ua-readiness-evaluation-of-standards-and-best-practices/',8),(18,'UASG 040 UA-Readiness Evaluation of Standards and Best Practices','UASG 040 UA-Readiness Evaluation of Standards and Best Practices','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','810.39 KB',456,'pdf','https://uasg.tech/download/uasg-040-ua-readiness-evaluation-of-standards-and-best-practices/',4),(19,'UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','47.41 KB',758,'pdf','https://uasg.tech/download/uasg-040b-ua-readiness-evaluation-of-standards-and-best-practices-data/',5),(20,'UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','47.41 KB',373,'csv','https://uasg.tech/download/uasg-040b-ua-readiness-evaluation-of-standards-and-best-practices-data/',1),(21,'UASG 042 UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig) EN','Web servers, email servers, and backend databases provide the building blocks of a website’s functionality. This report reveals that to what extent the web hosting tools offer the capacity for customers to build websites and host emails in accordance with Universal Acceptance in nine different configurations on different operating systems (Linux and Windows for Plesk; Linux for cPanel and ISPConfig).','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','564.09 KB',294,'pdf','https://uasg.tech/download/uasg-042-ua-readiness-of-web-hosting-tools-cpanel-plesk-ispconfig-en/',3),(22,'UASG 042A UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig)','UASG 042A UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig)','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','552.92 KB',456,'pdf','https://uasg.tech/download/uasg-042a-ua-readiness-of-web-hosting-tools-cpanel-plesk-ispconfig/',5),(23,'UASG 043 UA-Ready Code Samples in Java, Python, and JavaScript EN','UASG 043 UA-Ready Code Samples in Java, Python, and JavaScript EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','633.63 KB',220,'pdf','https://uasg.tech/download/uasg-043-ua-ready-code-samples-in-java-python-and-javascript-en/',4),(24,'UASG 043A UA-Ready Code Samples in Java, Python, and JavaScript EN','UASG 043A UA-Ready Code Samples in Java, Python, and JavaScript EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','2.54 MB',166,'pdf','https://uasg.tech/download/uasg-043a-ua-ready-code-samples-in-java-python-and-javascript-en/',6),(25,'UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','898.80 KB',179,'pdf','https://uasg.tech/download/uasg-044-eai-technical-education-and-awareness-directed-at-developer-community-websites-en/',5),(26,'UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','633.63 KB',179,'pdf','https://uasg.tech/download/uasg-044-eai-technical-education-and-awareness-directed-at-developer-community-websites-en/',1),(27,'UASG 044A EAI Technical Education and Awareness Directed at Developer Community Websites – Proposed FAQs','UASG 044A EAI Technical Education and Awareness Directed at Developer Community Websites – Proposed FAQs','2024-04-24','2024-04-24',NULL,NULL,'English','Published',NULL,'','','307.98 KB',166,'pdf','https://uasg.tech/download/uasg-044a-eai-technical-education-and-awareness-directed-at-developer-community-websites-proposed-faqs/',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCUMENT_CATEGORY`
--

LOCK TABLES `DOCUMENT_CATEGORY` WRITE;
/*!40000 ALTER TABLE `DOCUMENT_CATEGORY` DISABLE KEYS */;
INSERT INTO `DOCUMENT_CATEGORY` VALUES (1,'Basics',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(2,'Deprecated',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(3,'Measurement',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(4,'Outreach',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(5,'Remediation',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(6,'Software',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(7,'Technical',0,'2024-04-24','2024-04-24','Published',NULL,NULL),(8,'Standards',0,'2024-04-24','2024-04-24','Published',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMAIL_ADDRESS_INTERNATIONALIZATION`
--

LOCK TABLES `EMAIL_ADDRESS_INTERNATIONALIZATION` WRITE;
/*!40000 ALTER TABLE `EMAIL_ADDRESS_INTERNATIONALIZATION` DISABLE KEYS */;
INSERT INTO `EMAIL_ADDRESS_INTERNATIONALIZATION` VALUES (1,'EAI','EAI: E-mail ID in local language (मेरानाम@निक्सी.भारत)','core/EmailAddressInternationalization/img/Email_address_Internationalization_rvHxgPr.png',NULL,'Email Address Internationalization (EAI) is the process of allowing email addresses to use non-ASCII characters, such as those used in languages like Hindi, Marathi, Bengali, Gujarati or Tamil etc in addition to the traditional ASCII characters used in English-based email addresses. This allows people to use their native language and script to create email addresses, making it easier for them to communicate online.','core/EmailAddressInternationalization/img/Email_address_Internationalization_EE5JWcy_oCWZTim.png',NULL,NULL,NULL,'EAI uses the Unicode encoding standard to represent non-ASCII characters in email addresses, and it requires changes to the way that email is handled by both email clients and email servers. For example, email clients need to be able to display non-ASCII characters in the user interface, and email servers need to be able to process non-ASCII addresses correctly and forward messages to the correct destination.','',NULL,NULL,NULL,'There are several technical standards that have been developed to support EAI, including SMTPUTF8, which allows email addresses with non-ASCII characters to be sent using the Simple Mail Transfer Protocol (SMTP), and IDNA2008, which allows domain names with non-ASCII characters to be translated into the ASCII-based Domain Name System (DNS) used by the Internet.','',NULL,NULL,NULL,'','',NULL,NULL,NULL,'','',NULL,NULL,'Abhijeet Thorat',NULL,'Published','2024-04-24','2024-04-24');
/*!40000 ALTER TABLE `EMAIL_ADDRESS_INTERNATIONALIZATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_Attachment`
--

DROP TABLE IF EXISTS `Email_Attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Email_Attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_attachment` varchar(100) DEFAULT NULL,
  `email_send_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Email_Attachment_email_send_id_3fbe444c_fk_Email_Send_id` (`email_send_id`),
  CONSTRAINT `Email_Attachment_email_send_id_3fbe444c_fk_Email_Send_id` FOREIGN KEY (`email_send_id`) REFERENCES `Email_Send` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Email_Attachment`
--

LOCK TABLES `Email_Attachment` WRITE;
/*!40000 ALTER TABLE `Email_Attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_Attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_Send`
--

DROP TABLE IF EXISTS `Email_Send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Email_Send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_body` longtext NOT NULL,
  `email_subject` varchar(500) NOT NULL,
  `created_date` date NOT NULL,
  `last_updated_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Email_Send`
--

LOCK TABLES `Email_Send` WRITE;
/*!40000 ALTER TABLE `Email_Send` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_Send` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQS`
--

LOCK TABLES `FAQS` WRITE;
/*!40000 ALTER TABLE `FAQS` DISABLE KEYS */;
INSERT INTO `FAQS` VALUES (1,'How can we register domain names in Indian Languages ?','<ul><li><strong>Check the availability of your desired domain name:&nbsp;</strong>You can check if your desired domain name is available in Indian languages by visiting the website of the National Internet Exchange of India (NIXI) or any accredited registrar that offers Indian language domains.</li>\r\n	<li><strong>Choose a registrar:&nbsp;</strong>Once you have identified an available domain name, you need to choose a registrar that offers Indian language domains. NIXI provides a list of accredited registrars on its website that offer Indian language domains.</li>\r\n	<li><strong>Provide the necessary information:&nbsp;</strong>You will need to provide your personal and contact information, as well as the desired domain name and the language/script in which it is written. You may also need to provide additional documentation or verification for Indian language domains.</li>\r\n	<li><strong>Complete the registration process:&nbsp;</strong>Once you have provided the necessary information, you can complete the registration process through the registrar\'s website. You may need to pay a registration fee and agree to the terms and conditions of the registrar.</li>\r\n	<li><strong>Configure your domain:&nbsp;</strong>Once your domain is registered, you can configure it for use with your website, email, or other online services.</li>\r\n	<br>\r\n	<li>It\'s important to note that the availability of domain names in Indian languages may vary depending on the script and language. Additionally, Indian language domains may have specific requirements or restrictions, so it\'s important to check with the registrar or NIXI for more information.</li>\r\n</ul>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(2,'How Universal Acceptance can be achieved?','To achieve universal acceptance, it is important for all stakeholders in the Internet ecosystem, including domain name registries, email service providers, application developers, and others, to adopt and implement technical standards that support non-ASCII domain names and email addresses. Additionally, education and awareness-raising efforts can help promote universal acceptance and ensure that users are aware of the options available to them.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(3,'What are the Universal Acceptance Guidelines?','<p>\r\n<p>The Universal Acceptance (UA) Guidelines are a set of best practices and recommendations for supporting the use of all domain names and email addresses, regardless of their script, language, or format. The guidelines were developed by the Universal Acceptance Steering Group (UASG), a community-led initiative that works to promote Universal Acceptance of all domain names and email addresses.\r\n</p>\r\n<p>\r\nThe UA Guidelines provide detailed recommendations for software and system developers, domain name registries, email service providers, and other stakeholders involved in the management and implementation of Internet systems and applications. The guidelines cover a wide range of topics related to Universal Acceptance, including:\r\n</p>\r\n<ol>\r\n	<li><strong>-&nbsp;</strong>Domain name registration and administration</li>\r\n	<li><strong>-&nbsp;</strong>Email address validation and handling</li>\r\n	<li><strong>-&nbsp;</strong>IDN implementation and support</li>\r\n	<li><strong>-&nbsp;</strong>Web and application development</li>\r\n	<li><strong>-&nbsp;</strong>Testing and validation</li>\r\n	<li><strong>-&nbsp;</strong>User education and awareness</li>\r\n</ol>\r\n<p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(4,'How can we get Email ID in Indian Languages?','<p>To get an email ID in Indian languages, you can follow these steps:</p>\r\n\r\n<ul>\r\n<li>  <strong>Choose an email service provider:</strong> There are several email service providers that offer support for email IDs in Indian languages, such as Google, Microsoft, and Rediffmail. You can choose an email service provider that offers support for your preferred Indian language.</li>\r\n<li> <strong>Check the availability of your desired email ID:</strong> Once you have chosen an email service provider, you can check if your desired email ID is available in Indian languages. You may need to check the provider\'s website or contact their support team for more information.</li>\r\n<li>  <strong>Create a new email account:</strong> If your desired email ID is available, you can create a new email account with your chosen email service provider. You will need to provide your personal and contact information, as well as choose your desired email ID and language.</li>\r\n<li>   <strong>Configure your email settings:</strong> Once your email account is created, you can configure your email settings to suit your preferences, such as setting up filters, forwarding, or other email management options.</li>\r\n<li>  <strong>Start using your email ID: </strong>Once your email account is set up and configured, you can start using your email ID in Indian languages for sending and receiving emails.</li>\r\n</ul>\r\n<p>\r\n    It\'s important to note that not all email service providers offer support for email IDs in Indian languages, and the availability of languages may vary depending on the provider. Additionally, some Indian languages may have specific requirements or restrictions, so it\'s important to check with the email service provider for more information.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(5,'Role of NIXI and ICANN in UA','<div class=\"faq-detail\">\r\n                                    <p></p><p>NIXI and ICANN are two organizations that are involved in managing the Internet and its resources, although they have different roles and responsibilities.</p>\r\n\r\n<p><strong>NIXI</strong>, or the National Internet Exchange of India, is a non-profit organization that manages the .IN ccTLD (country code top-level domain) for India. NIXI is responsible for coordinating and managing the registration and administration of .IN domain names, as well as promoting the use and development of the Internet in India.</p>\r\n\r\n<p><strong>ICANN</strong>, or the Internet Corporation for Assigned Names and Numbers, is a global non-profit organization that is responsible for coordinating the Internet\'s unique identifiers, including domain names, IP addresses, and protocol parameters. ICANN\'s responsibilities include managing the global domain name system (DNS), accrediting and overseeing domain name registrars and registries, and coordinating policy development related to the Internet\'s technical infrastructure.</p>\r\n\r\n<p>While NIXI is primarily focused on managing the .IN ccTLD and promoting the use of the Internet in India, ICANN has a global mandate to manage and coordinate the Internet\'s unique identifiers. Both organizations play important roles in the management and development of the Internet, and work closely with other stakeholders to ensure that the Internet remains open, accessible, and secure for all users.</p><p></p>\r\n</div>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,4),(6,'What is Email address Internationalization?','Email address Internationalization (EAI) is the process of allowing email addresses to use non-ASCII characters, such as those used in languages like Hindi, Marathi, Tamil, Bengali, in addition to the traditional ASCII characters used in English-based email addresses. This allows people to use their native language and script to create email addresses, making it easier for them to communicate online.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(7,'What is Universal Acceptance Day? Who organizes it?','Universal Acceptance Day is an annual event that takes place on September 1st to raise awareness about the importance of Universal Acceptance (UA) of all domain names and email addresses, regardless of their script, language, or format.\r\n\r\nThe event is organized by the Universal Acceptance Steering Group (UASG), a community-led initiative that works to promote UA and eliminate the digital divide caused by outdated systems that do not support non-ASCII domain names and email addresses. The UASG includes stakeholders from across the Internet ecosystem, including domain name registries, email providers, application developers, and others.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(8,'How to configure an SSL Certificate?','<div class=\"faq-detail\">\r\n                                    <p></p><p><span style=\"color:#000000\">SSL certificates help your website to be https. So you need to buy a new SSL or add to your existing SSL the Punycode string. The new / updated SSL needs to be configured on your server</span></p>\r\n\r\n<p><strong>Here Are The Steps To Configure An SSL Certificate: </strong></p>\r\n\r\n<p>1.Purchase An SSL Certificate From A Trusted Certificate Authority (CA) Such As GlobalSign, DigiCert, Or Let\'s Encrypt Or Add To Your Existing SSL The Punycode String</p>\r\n\r\n<p>2.Generate A Certificate Signing Request (CSR) On Your Web Server. The CSR Contains Your Website\'s Public Key And Other Information About Your Organisation.</p>\r\n\r\n<p>3.Submit The CSR To The CA, Which Will Then Validate Your Organisation\'s Identity And Issue An SSL Certificate.</p>\r\n\r\n<p>4.Download And Install The Issued SSL Certificate On Your Web Server.</p>\r\n\r\n<p>5.Configure Your Web Server Software (Such As Apache Or Nginx) To Use The SSL Certificate For Encrypted HTTPS Connections.</p>\r\n\r\n<p>6.Test The SSL Certificate To Ensure It\'s Properly Installed And Configured. 7.Regularly Update And Renew The SSL Certificate As Needed To Keep It Valid.</p>\r\n                                    <p></p>\r\n                                </div>','2024-04-24','2024-04-24','Unpublished','Abhijeet Thorat',NULL,2),(9,'What are the best practices for Universal Acceptance?','<div class=\"faq-detail\">\r\n                                    <p></p><p>Here are some best practices that can help achieve Universal Acceptance:</p>\r\n\r\n<ul>\r\n	<li><strong>Adopt and implement technical standards:&nbsp;</strong>Domain name registries, email service providers, and other Internet stakeholders should adopt and implement technical standards that support non-ASCII domain names and email addresses, such as SMTPUTF8 and IDNA2008.</li>\r\n	<li><strong>Update software and systems:&nbsp;</strong>All software and systems that handle domain names and email addresses should be updated to support non-ASCII characters, including email clients, web browsers, and operating systems.</li>\r\n	<li><strong>Conduct testing and validation:&nbsp;</strong>All systems and applications should be tested and validated to ensure that they support non-ASCII characters and comply with technical standards.</li>\r\n	<li><strong>Provide education and training:&nbsp;</strong>Education and training should be provided to developers, IT professionals, and end-users to raise awareness of Universal Acceptance and ensure that they are familiar with the technical standards and best practices.</li>\r\n	<li><strong>Engage with communities:&nbsp;</strong>Domain name registries, email service providers, and other Internet stakeholders should engage with local communities and language groups to understand their needs and promote the use of non-ASCII domain names and email addresses.</li>\r\n	<li><strong>Advocate for Universal Acceptance:&nbsp;</strong>Governments, NGOs, and other stakeholders should advocate for Universal Acceptance and encourage its adoption by all Internet stakeholders.</li>\r\n</ul>\r\n                                    <p></p>\r\n                                </div>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(10,'What is a domain name?','<p></p><p>A domain name is a unique address that identifies a website on the internet. It is a string of characters that is used to locate and access a specific website. For example, an IDN domain name might look like सीडैक.भारत using Devanagari script, which translates to \"cdac.in\" in English.</p>\r\n\r\n<p>A domain name is made up of two parts: the top-level domain (TLD) and the second-level domain (SLD). The TLD is the part of the domain name that comes after the last dot, such as \".in\", \".com\", \".org\", or \".net\".</p>\r\n\r\n<p><strong>Note:</strong> The Domain Name \".Bharat\" Is A Country-Code Top-Level Domain (ccTLDs) For India And Is Used Specifically For Domain Names In Indian Scripts.</p>\r\n\r\n\r\n\r\n<p>Indian Language Domain Names Can Provide Benefits Such As Increased Accessibility, Better User Experience, Increased Relevance To Specific Language Groups, And Improved Brand Awareness.</p>\r\n\r\n\r\n                                    <p></p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,3),(11,'Why Indian language domain name?','<p>To bridge the digital divide and make the internet more accessible to citizens not knowing English or those who prefer to interact / communicate in the local language.</p>\r\n\r\n<p>An Indian Language Domain Name Is A Domain Name Written In One Of The Many Official Languages Of India, Such As Hindi, Bengali, Telugu, Marathi, Etc., Instead Of English. It Allows Internet Users In India To Access Websites And Resources Using Domain Names In Their Own Language, Making It Easier For Them To Find And Use The Information They Need.</p>\r\n\r\n<p>An Indian Language Domain Name Is Mapped To An IP Address Just Like Any Other Domain Name, And Works Similarly To Access Resources On The Internet.</p>\r\n\r\n<p>An Example Of An Indian Language Domain Name Could Be \"उदाहरण.भारत\" (Which Translates To \"Example.Bharat\" In English) Written In Devanagari Script, Which Is Used For Several Indian Languages, Including Hindi. This Domain Name Could Be Used To Access A Website Or Resource In Hindi Or Any Other Language Using The Devanagari Script.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,3),(12,'How to get an Internationalized Domain Name (IDN)?','<p></p><p><span style=\"color:#000000\">1. Get domain name converted (translated / transliterated) into local language UNICODE</span></p>\r\n\r\n<p><span style=\"color:#000000\">2. Like English name domain, you have to consider branding and recall of your brand.&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\">3. Using any of the registered domain name resellers / service providers such as godaddy… or NIC you can submit the UNICODE string for registration. Punycode is a string which is equivalent to your UNICODE domain name. Some vendors may expect punycode while registering.</span></p>\r\n\r\n<p><span style=\"color:#000000\">4. In an English domain name only Letter, Digit and Hyphen are allowed (LDH), similarly some Indian characters are blocked for avoiding spoofing / phishing. So the domain names have to pass the validity check. You may have to refine the list of domain names to fit the validation rules.</span></p>\r\n\r\n<p><span style=\"color:#000000\">5. Like in the case of your English website domain name, your webmaster / Service provider has to get Nameservers and set them to point to public IPs of your website.&nbsp;</span></p>','2024-04-24','2024-04-24','Unpublished','Abhijeet Thorat',NULL,3),(13,'What are Country Code Top-Level Domains (ccTLDs)?','The Indian ccTLDs are domain extensions that are designated for India. The two-letter ccTLD for India is \".in\". There are also several other ccTLDs designated for specific Indian territories, such as \".co.in\" for commercial websites, \".gov.in\" for Indian government entities, and \".nic.in\" for National Informatics Centre websites. These ccTLDs are managed by the National Internet Exchange of India (NIXI), which is a non-profit organization established by the Indian government to manage and operate the .in ccTLD and promote the growth of the Internet in India.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,3),(14,'How to configure Internationalized Domain Name (IDN)?','<p></p><p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">1. Your website server needs to accept requests coming for the UNICODE / Punycode</span></p>\r\n\r\n<p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">2. All major web-servers provide support to point multiple websites to same code</span></p>\r\n\r\n<p style=\"list-style-type:lower-roman\"><span style=\"color:#000000\">3. Webmaster have to write routing rules to map the incoming punycode to the existing site or corresponding Indian language website as per your business needs</span></p>\r\n\r\n<p><strong>To Configure An Internationalized Domain Name (IDN) In Indian Languages, You Will Need To: </strong></p>\r\n\r\n<p><strong>Register a domain name in IDN: </strong>Choose a domain name that uses characters from an Indian script such as Devanagari, Tamil, Bengali, or other regional scripts, and register it with an accredited registrar that supports IDN registration for Indian languages.</p>\r\n\r\n<p><strong>Check your system\'s language settings:</strong> Ensure that your system\'s language settings are set to support Indian languages. Install fonts and other necessary language packs to correctly display Indian language characters.</p>\r\n\r\n<p><strong>Configure your web server: </strong>Configure your web server to support IDNs by using Punycode encoding to represent the IDN domain name in the DNS, setting the default character set to Unicode (UTF-8), and enabling IDN support in your web server\'s settings.</p>\r\n\r\n<p><strong>Test your website: </strong>Test your website to ensure that it is working properly. Check to see if your IDN domain name is correctly displayed in the web browser and test all links and functionality on the website.</p>\r\n\r\n<p><strong>Promote UA awareness:</strong> Promote the adoption of IDNs in Indian languages by encouraging users to use IDNs when registering domain names or visiting websites.</p>\r\n                                    <p></p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,3),(15,'What is Universal Acceptance?','Universal Acceptance (UA) refers to the concept that all domain names, email addresses, and other Internet identifiers should be treated equally and supported by all software applications and systems. It means that all users, regardless of their location, language, or device, should be able to access and use online services and applications without any technical barriers or limitations. The goal of Universal Acceptance is to promote diversity, inclusiveness, and innovation on the Internet by removing technical barriers that can limit the accessibility and functionality of online services and applications for some users.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,1),(16,'What is Multilingual Internet?','Multilingual Internet refers to the use of multiple languages on the internet to create, share, and consume digital content, allowing people from different linguistic backgrounds to communicate and access information online in their native language or a language they are comfortable with. For example, a website that offers its content in multiple languages such as Hindi, Telugu, Gujarati ,English, Tamil and Marathi is a good example of the Multilingual Internet. Another example is the use of multilingual chatbots or virtual assistants that can understand and respond to queries in different languages.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,4),(17,'What is the UA-INDIA Program?','<p>Universal Acceptance is the ability of the Internet to accept all valid domain names and Email addresses, regardless of the characters used in them.</p>\r\n\r\n<p>A Universal Acceptance Event is a gathering focused on Promoting the concept of Universal Acceptance, which is the Idea that all Domain Names and Email Addresses, regardless Of their Script Or Language, should be treated equally and accessible to everyone on the Internet.</p>\r\n\r\n<p>The Indian Government Plays an Important role in Promoting Universal Acceptance (UA) in India through Its Ministry Of Electronics And Information Technology (MeitY) and The National Internet Exchange Of India (NIXI). MeitY and NIXI are both Members Of UA-India Program, and Work to Promote UA by Raising Awareness about Its Importance, and by providing Technical and Policy support to Help Organisations Implement UA-Compatible Systems and Services. The Indian Government also Collaborates with International Organisations, such as ICANN, to help Advance UA on a Global Level.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,4),(18,'Can I use IDNs with email addresses?','<p>This depends on the email clients and servers in use. While the SMTP protocol supports UTF-8, not all email systems may handle IDNs properly. Test thoroughly before using an IDN email address in a production environment. </p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(19,'What is the difference between internationalization (i18n) and localization (l10n)?','<p>Internationalization is the process of designing a software application so it can be adapted to various languages and regions without engineering changes. Localization is the process of adapting the internationalized software for a specific region or language by adding locale-specific components and translating text.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(20,'What are best practices for form handling and validation for international users?','<p>Allow for a wide range of character inputs in forms, especially for names, addresses, and phone numbers. </p>\r\n<p>Avoid strict validation rules that assume formats from specific countries (e.g., ZIP code formats, phone number lengths). </p>\r\n<p>Use internationalisation libraries or frameworks to handle various input formats and validate them appropriately.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(21,'Are there any tools or libraries that can help with IDN development?','<p>Many programming languages offer libraries that support IDN and Punycode conversions (e.g., idna library in Python). </p>\r\n<p>Use internationalization frameworks (like ICU or those included in modern web development frameworks) that provide broader support for international text, including IDNs.</p>','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2),(22,'How should I store IDNs in my database?','<p>When storing Internationalized Domain Names (IDNs) in a database:</p>\r\n<strong>Unicode Format: </strong> Store the IDNs in Unicode format to preserve the original characters accurately. This ensures that you retain the intended representation of the domain name.\r\n<br>\r\n<strong>Punycode Equivalent:</strong> Additionally, store the Punycode equivalent of the IDNs. Punycode is a standard for representing Unicode characters using only the ASCII character set. This is necessary for DNS lookups and other technical operations, as many systems may not support Unicode directly.','2024-04-24','2024-04-24','Published','Abhijeet Thorat',NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQS_CATEGORY`
--

LOCK TABLES `FAQS_CATEGORY` WRITE;
/*!40000 ALTER TABLE `FAQS_CATEGORY` DISABLE KEYS */;
INSERT INTO `FAQS_CATEGORY` VALUES (1,'General','2024-04-24','2024-04-24','Abhijeet Thorat','Published'),(2,'Developer','2024-04-24','2024-04-24','Abhijeet Thorat','Published'),(3,'IDN','2024-04-24','2024-04-24','Abhijeet Thorat','Published'),(4,'Universal Acceptance','2024-04-24','2024-04-24','Abhijeet Thorat','Published');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GENERIC_LIST`
--

LOCK TABLES `GENERIC_LIST` WRITE;
/*!40000 ALTER TABLE `GENERIC_LIST` DISABLE KEYS */;
INSERT INTO `GENERIC_LIST` VALUES (1,'UA','UA','','Encouraging use of local language website name and email id.','Promoting awareness of local language url and email id.','Developing policies and regulations.','Supporting technical collaboration.','Engagement of website owners, web-developer community, web security experts.','','','','','','2024-04-24','2024-04-24','Published',NULL,NULL),(2,'BECOMEUAREADY','BECOMEUAREADY','','New top level domain names','Long top level domain names','IDN domain names','Mailbox names in Unicode','','','','','','','2024-04-24','2024-04-24','Published',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gallery_Headings`
--

LOCK TABLES `Gallery_Headings` WRITE;
/*!40000 ALTER TABLE `Gallery_Headings` DISABLE KEYS */;
INSERT INTO `Gallery_Headings` VALUES (1,'Other Informative Videos','2024-04-24','2024-04-24','Published'),(2,'UA Informative Videos','2024-04-24','2024-04-24','Published'),(3,'UA Day Event Held on 27th-28th March 2023','2024-04-24','2024-04-24','Published');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gallery_Videos`
--

LOCK TABLES `Gallery_Videos` WRITE;
/*!40000 ALTER TABLE `Gallery_Videos` DISABLE KEYS */;
INSERT INTO `Gallery_Videos` VALUES (1,'Universal Acceptance: Enabling a Multilingual Internet','https://www.youtube.com/embed/0VAwYpe24ZA','2024-04-24','2024-04-24','Published',1),(2,'IDN India bharat','https://www.youtube.com/embed/U12MzJQiqs4','2024-04-24','2024-04-24','Published',1),(3,'Universal Acceptance | A Global Agenda','https://www.youtube.com/embed/nOKrOVPh1LY','2024-04-24','2024-04-24','Published',1),(4,'Universal Acceptance and Multilingual Internet','https://www.youtube.com/embed/Gr1bHBrUOtg','2024-04-24','2024-04-24','Published',1),(5,'60sec DOT HINDI','https://www.youtube.com/embed/S8tu1RHrRcE','2024-04-24','2024-04-24','Published',1),(6,'Unlocking Economic Potential with Multilingual Internet & UA for Businesses in India','https://www.youtube.com/embed/Is-JOjsGVpE?si=oMqQEuIC1EuA2Pt_','2024-04-24','2024-04-24','Published',2),(7,'The Role of Country Code Top-Level Domains (ccTLDs) in Achieving Universal Acceptance','https://www.youtube.com/embed/xjBmIQX9B0g','2024-04-24','2024-04-24','Published',2),(8,'Interactive Session with Mr Jia-Rong Low, ICANN on \"Multilingual Internet and Universal Acceptance\"','https://www.youtube.com/embed/lqP9QQ7t_8M','2024-04-24','2024-04-24','Published',2),(9,'Voice Based Internet for Indian Requirements','https://www.youtube.com/embed/7_DrDfcpAV4','2024-04-24','2024-04-24','Published',2),(10,'1st Student Internet Governance Forum (SIGF) Conference','https://www.youtube.com/embed/8tO7ijkt7yI','2024-04-24','2024-04-24','Published',2),(11,'Virtual Training Programme on Universal Acceptance (UA) Readiness','https://www.youtube.com/embed/GwIm24xCr8w','2024-04-24','2024-04-24','Published',2),(12,'Bridging the Language Gap with Universal Acceptance and its Capacity Building','https://www.youtube.com/embed/tWIuO9x-reA','2024-04-24','2024-04-24','Published',2),(13,'Universal Acceptance: A Key to Unlocking Growth Opportunities for Startups and MSMEs','https://www.youtube.com/embed/-pqZquq846Y','2024-04-24','2024-04-24','Published',2),(14,'Valedictory Session','https://www.youtube.com/embed/MSsif0yV348','2024-04-24','2024-04-24','Published',3),(15,'Bhashini and Multilingual Internet','https://www.youtube.com/embed/9QkRPAdMnoE','2024-04-24','2024-04-24','Published',3),(16,'Case Studies Presentation','https://www.youtube.com/embed/hdIkIcNb0C8','2024-04-24','2024-04-24','Published',3),(17,'Panel Discussion Session on \"Technology enablement for universal acceptance\"','https://www.youtube.com/embed/jwRxmfkggm4','2024-04-24','2024-04-24','Published',3),(18,'Panel Discussion Session','https://www.youtube.com/embed/9O7kSSZnu3k','2024-04-24','2024-04-24','Published',3),(19,'Inaugural','https://www.youtube.com/embed/xXeI7iMPbr0','2024-04-24','2024-04-24','Published',3),(20,'IDN’s and EAI in Indian Languages – Outlook and Overview','https://www.youtube.com/embed/dd2R_QE24vQ','2024-04-24','2024-04-24','Published',3),(21,'Curtain Raiser','https://www.youtube.com/embed/bpuGM7Z5M1U','2024-04-24','2024-04-24','Published',3),(22,'Workshop on Making Your email platform UA Ready','https://www.youtube.com/embed/GXUkk1lNsDQ','2024-04-24','2024-04-24','Published',3),(23,'Making your website Universal Acceptance ready: Way Forward','https://www.youtube.com/embed/zwyKaqBIG1E','2024-04-24','2024-04-24','Published',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_LANGUAGES`
--

LOCK TABLES `IDN_LANGUAGES` WRITE;
/*!40000 ALTER TABLE `IDN_LANGUAGES` DISABLE KEYS */;
INSERT INTO `IDN_LANGUAGES` VALUES (1,'.भारत','Devanagari Script','','Bodo(Boro), Dogri, Hindi, Konkani, Maithili, Marathi, Nepali, and Sindhi-Devanagari (8)',NULL,NULL,'2024-04-24','2024-04-24','Published'),(2,'.ভারত','Bengali Script','','Bengali and Manipuri (2)',NULL,NULL,'2024-04-24','2024-04-24','Published'),(3,'.భారత్','Telugu Script','','Telugu',NULL,NULL,'2024-04-24','2024-04-24','Published'),(4,'.ભારત','Gujarati Script','','Gujarati',NULL,NULL,'2024-04-24','2024-04-24','Published'),(5,'. بھارت','Perso-Arabic Script','','Urdu',NULL,NULL,'2024-04-24','2024-04-24','Published'),(6,'.இந்தியா','Tamil Script','','Tamil',NULL,NULL,'2024-04-24','2024-04-24','Published'),(7,'.ਭਾਰਤ','Gurmukhi (Punjabi)','','Punjabi',NULL,NULL,'2024-04-24','2024-04-24','Published'),(8,'.ಭಾರತ','Kannada Script','','Kannada',NULL,NULL,'2024-04-24','2024-04-24','Published'),(9,'.ଭାରତ','Odiya Script','','Odiya',NULL,NULL,'2024-04-24','2024-04-24','Published'),(10,'.ভাৰত','Assamese (Bengali Unicode) Script','','Assamese',NULL,NULL,'2024-04-24','2024-04-24','Published'),(11,'.भारतम्','Devanagari Script','','Sanskrit',NULL,NULL,'2024-04-24','2024-04-24','Published'),(12,'.भारोत','Devanagari Script','','Santali',NULL,NULL,'2024-04-24','2024-04-24','Published'),(13,'.بارت','Perso-Arabic Script','','Kashmiri',NULL,NULL,'2024-04-24','2024-04-24','Published'),(14,'.ڀارت','Perso-Arabic Script','','Sindhi',NULL,NULL,'2024-04-24','2024-04-24','Published'),(15,'.ഭാരതം','Malayalam Script','','Malayalam',NULL,NULL,'2024-04-24','2024-04-24','Published');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES`
--

LOCK TABLES `IDN_WEBSITES` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_CATEGORY`
--

LOCK TABLES `IDN_WEBSITES_CATEGORY` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_CATEGORY` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_IDNReadyWebsites_Category`
--

LOCK TABLES `IDN_WEBSITES_IDNReadyWebsites_Category` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_IDNReadyWebsites_Category` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_LANGUAGES`
--

LOCK TABLES `IDN_WEBSITES_LANGUAGES` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGES` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_WEBSITES_LANGUAGE_URL_MAPPING`
--

LOCK TABLES `IDN_WEBSITES_LANGUAGE_URL_MAPPING` WRITE;
/*!40000 ALTER TABLE `IDN_WEBSITES_LANGUAGE_URL_MAPPING` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDNccTLDs`
--

LOCK TABLES `IDNccTLDs` WRITE;
/*!40000 ALTER TABLE `IDNccTLDs` DISABLE KEYS */;
INSERT INTO `IDNccTLDs` VALUES (1,'.bharat IDN-ccTLDs','IDN CCTLD','core/IDNccTLDs/image/dot-bharat-banner_Po6dxEr.jpg','core/IDNccTLDs/image/LogoBharat_Hindi_BiwiMOw.png','core/IDNccTLDs/image/aaaa_Sc3G8b7.jpg','','IDN : Website address in local language निक्सी.भारत','Internationalized Domain Names (IDNs) enable people around the world to use domain names in local languages and scripts. IDNs are posssible in all Indian languages since they are formed using characters from different scripts, such as Hindi, Bengali, Gujarati or Tamil Script etc.','','IDNs are an important development that makes the internet more accessible and inclusive for users around the world. By enabling non-Latin characters in domain names, IDNs provide users with the ability to use the internet in their native language, which can improve usability and access to information.','22 Scheduled Indian Languages','','','','https://registry.in/index','registry.gov.in',NULL,NULL,'Abhijeet Thorat',NULL,'2024-04-24','2024-04-24','Published');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OBJECTIVE`
--

LOCK TABLES `OBJECTIVE` WRITE;
/*!40000 ALTER TABLE `OBJECTIVE` DISABLE KEYS */;
INSERT INTO `OBJECTIVE` VALUES (1,'Vision','To provide a truly multilingual internet, where local language website name and local language email id, work everywhere seamlessly.','2024-04-24','2024-04-24',NULL,NULL,'Published',NULL,'core/Objectives/Thumbnail/objective_BShxPMR_8vBLEmP.png'),(2,'Objective','To connect with users in their own languages. Bhashanet is working towards enabling people from remote locations and different socioeconomic backgrounds to access the multilingual Internet in India.','2024-04-24','2024-04-24',NULL,NULL,'Published',NULL,'core/Objectives/Thumbnail/objective_9nGQPCO.png'),(3,'Mission','<ul class=\"ua-list py-1 listitems text-indent\">\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Encouraging use of local language website name and\r\n                                                                        email id.</li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Promoting awareness of local language url and\r\n                                                                        email id.</li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                        Developing policies and regulations. </li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                         Supporting technical collaboration. </li>\r\n                                                                    <li><i class=\"fa-solid fa-circle-check\"></i>\r\n                                                                        Engagement of Website owners, Web-Developer\r\n                                                                        Community, Web Security experts.</li>\r\n                                                                </ul>','2024-04-24','2024-04-24',NULL,NULL,'Published',NULL,'core/Objectives/Thumbnail/mission_m8ewM9X.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRIVACY_POLICY`
--

LOCK TABLES `PRIVACY_POLICY` WRITE;
/*!40000 ALTER TABLE `PRIVACY_POLICY` DISABLE KEYS */;
INSERT INTO `PRIVACY_POLICY` VALUES (1,'Privacy Policy','',NULL,'Bhashanet does not automatically capture any specific personal information, (like name, phone number or e-mail address), that allows us to identify you individually. If the Bhashanet requests you to provide personal information, you will be informed for the particular purposes for which the information is gathered and adequate security measures will be taken to protect your personal information.',NULL,'We do not sell or share any personally identifiable information volunteered on the Bhashanet to any third party (public/private). Any information provided to this website will be protected from loss, misuse, unauthorized access or disclosure, alteration, or destruction. We gather certain information about the User, such as Internet protocol (IP) addresses, domain name, browser type, operating system, the date and time of the visit and the pages visited. We make no attempt to link these addresses with the identity of individuals visiting our site unless an attempt to damage the site has been detected.',NULL,'',NULL,'',NULL,'','',NULL,NULL,NULL,'Published','2024-04-24','2024-04-24');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STACKHOLDER`
--

LOCK TABLES `STACKHOLDER` WRITE;
/*!40000 ALTER TABLE `STACKHOLDER` DISABLE KEYS */;
INSERT INTO `STACKHOLDER` VALUES (1,'core/Stackholder/img/bhashini-logo.png','Bhashini','https://bhashini.gov.in/','2024-04-24','2024-04-24','Published',NULL,NULL),(2,'core/Stackholder/img/cdac-logo_oH5AoH8.svg','Centre for Development of Advanced Computing','https://www.cdac.in/','2024-04-24','2024-04-24','Published',NULL,NULL),(3,'core/Stackholder/img/UASG_logo_lvOUkCU.png','Universal Acceptance Steering Group','https://uasg.tech/','2024-04-24','2024-04-24','Published',NULL,NULL),(4,'core/Stackholder/img/meity_DWUMTgE.jpg','Ministry of Electronics and Information Technology','https://www.meity.gov.in/','2024-04-24','2024-04-24','Published',NULL,NULL),(5,'core/Stackholder/img/ficci_68O9Q21.png','Federation of Indian Chambers of Commerce & Industry','https://ficci.in/','2024-04-24','2024-04-24','Published',NULL,NULL),(6,'core/Stackholder/img/nic_VGBnwmK.png','National Informatics Centre','https://www.nic.in/','2024-04-24','2024-04-24','Published',NULL,NULL),(7,'core/Stackholder/img/NIXI_Final_logo_1_1_XqeK9ld.jpg','National Internet Exchange of India','https://nixi.in/','2024-04-24','2024-04-24','Published',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TERMS_AND_CONDITIONS`
--

LOCK TABLES `TERMS_AND_CONDITIONS` WRITE;
/*!40000 ALTER TABLE `TERMS_AND_CONDITIONS` DISABLE KEYS */;
INSERT INTO `TERMS_AND_CONDITIONS` VALUES (1,'Terms and conditions','Terms and conditions',NULL,'This website of the \"BHASHANET\" has been developed to provide information to the general public. The documents and information displayed in this website are for reference purposes only and does not purport to be a legal document. BHASHANET  does not warrant the accuracy or completeness of the information, text, graphics, links or other items contained within the Website. As a result of updates and corrections, the web contents are subject to change without any notice from “BHASHANET” .','',NULL,'In case of any variance between what has been stated and that contained in the relevant Act, Rules, Regulations, Policy Statements etc, the latter shall prevail. Local language version of the website is provided for national use. Please use the English content as in case of any ambiguities/ doubts/ clarifications/ errors etc.','',NULL,'Certain links on the website lead to resources located on other websites maintained by third parties over whom BHASHANET  has no control or connection. These websites are external to BHASHANET  and by visiting these; you are outside the BHASHANET  and its channels. BHASHANET  neither endorses in any way nor offers any judgment or warranty and accepts no responsibility or liability for the authenticity, availability of any of the goods or services or for any damage, loss or harm, direct or consequential or any violation of local or international laws that may be incurred by your visiting and transacting on these websites.','',NULL,'This website is designed, developed and hosted by “BHASHANET team”.\r\nThough all efforts have been made to ensure the accuracy and currency of the content on this website, the same should not be construed as a statement of law or used for any legal purposes. BHASHANET  accepts no responsibility in relation to the accuracy, completeness, usefulness or otherwise, of the contents. Users are advised to verify/check any information with the relevant Government department(s) and/or other source(s), and to obtain any appropriate professional advice before acting on the information provided in the website.\r\nIn no event will the BHASHANET  be liable for any expense, loss or damage including, without limitation, indirect or consequential loss or damage, or any expense, loss or damage whatsoever arising from use, or loss of use, of data, arising out of or in connection with the use of this Website.\r\nLinks to other websites that have been included on this website are provided for public convenience only. BHASHANET  is not responsible for the contents or reliability of linked websites and does not necessarily endorse the view expressed within them. We cannot guarantee the availability of such linked pages at all times.','',NULL,'Material featured on this website may be reproduced free of charge after taking proper permission by sending a mail to us. However, the material has to be reproduced accurately and not to be used in a derogatory manner or in a misleading context. In case of any incorrect or incomplete or misleading reproduction of the information, the person who has reproduced and or published the same shall be solely responsible and liable for the consequences. Wherever the material is being published or issued to others, the source must be prominently acknowledged. However, the permission to reproduce this material shall not extend to any material which is identified as being copyright of a third party. Authorisation to reproduce such material must be obtained from the departments/copyright holders concerned','','',NULL,NULL,NULL,'Published','2024-04-24','2024-04-24');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TESTIMONIALS_MESSAGES`
--

LOCK TABLES `TESTIMONIALS_MESSAGES` WRITE;
/*!40000 ALTER TABLE `TESTIMONIALS_MESSAGES` DISABLE KEYS */;
INSERT INTO `TESTIMONIALS_MESSAGES` VALUES (1,'Mr. Rajeev Chandrasekhar','(Union Minister of State for Electronics and Information Technology)','','Prime Minister Narendra Modi\'s vision of Digital India is to ensure that the Internet reaches and empowers all Indians. For this, the Multilingual Internet is not a challenge but an urgent requirement.','','Unpublished','core/TestimonialsMessages/rajeev_VX9iQWZ.jpg',NULL,NULL,'2024-04-24','2024-04-24',NULL),(2,'Dr. Devesh Tyagi','CEO ( NIXI )','','India is proud to champion a more inclusive and accessible internet for all. At NIXI, we are firmly committed to fostering a universal acceptance environment where everyone can access information and participate online in their preferred language.','','Published','core/TestimonialsMessages/Devesh_Tyagi_VRn0wft.png',NULL,NULL,'2024-04-24','2024-04-24',NULL),(3,'Shri Sushil Pal','Joint Secretary (Ministry of Electronics and Information Technology)','','Collection of networks defines the internet but networks are incomplete without the Universal Acceptance. For accelerating digital inclusion, the one thing that we can do certainly is to use the language of the people to connect them to the Internet.','','Published','core/TestimonialsMessages/Shri_Sushil_Pal.jpeg',NULL,NULL,'2024-04-24','2024-04-24',NULL),(4,'Shri S. Krishnan','Secretary (Ministry of Electronics and Information Technology)','','Internet has transformative potential in democratizing access to information, yet its true efficacy lies in its multilingual adaptation. By championing the Universal Acceptance initiative, India stands as a shining beacon of diversity, embodying the essence of universal acceptance and inclusivity.','','Published','core/TestimonialsMessages/Shri_S._Krishnan.jpg',NULL,NULL,'2024-04-24','2024-04-24',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOOLS`
--

LOCK TABLES `TOOLS` WRITE;
/*!40000 ALTER TABLE `TOOLS` DISABLE KEYS */;
INSERT INTO `TOOLS` VALUES (1,'IDN Email Syntax Validator','This tool used to Validate IDN Email Syntax','email_validator',NULL,'core/tools/thunbnail_img/icon-02_Ojo7eNW.svg','core/tools/img/ua-tool-01_KRMfVUO_m3TMbUJ.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(2,'IDN Domain Validator','This tool used to IDN Domains Validator','domain_validator',NULL,'core/tools/thunbnail_img/icon-01_EOFSQsB.svg','core/tools/img/ua-tool-02_bfvSPOH_rmXqaFM.png',NULL,NULL,'Unpublished','2024-04-24','2024-04-24'),(3,'Unicode-Punycode Generator','Convert Unicode string to Punycode & vice-versa.','unicode_punycode_generator',NULL,'core/tools/thunbnail_img/icon-02_RsKLIFu.svg','core/tools/img/ua-tool-04_ha8Bbe3.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(4,'Transliteration','Transliterate English Domain names in Indian languages.','transliteration',NULL,'core/tools/thunbnail_img/icon-02_DE2M17s.svg','core/tools/img/ua-tool-05_mIUlNk5.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(5,'Unicode Fonts','This tool helps to know more about Unicode fonts.','unicode_fonts',NULL,'core/tools/thunbnail_img/icon-01_aoHD7Fn.svg','core/tools/img/ua-tool-03_JCkopvP.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(6,'Script Detection','This tool helps to identify the Script of the input text.','script_detection',NULL,'','core/tools/img/Group_21_G5b6brl.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(7,'Language Detection','This tool helps to identify the Language of the input text.','language_detection',NULL,'','core/tools/img/language_detection_v1_m4fUfC9.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(8,'User Keyboard','Integration steps for CDAC keyboard.','cdac_keyboard',NULL,'','core/tools/img/user_keyboard_AftSEbu.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(9,'Top Level Domain ( TLD ) Existence Checker','Used to determines if a Top-Level Domain exists in a IANA TLD\'s list.','tld_validator',NULL,'','core/tools/img/tld_PRum9W7.jpg',NULL,NULL,'Published','2024-04-24','2024-04-24'),(10,'Developer Keyboard','Integration steps for cdac keyboard','static/core/assets/source_code/CDAC-Keyboard.zip',NULL,'','core/tools/img/developer_keyboard_SHfctpQ.png',NULL,NULL,'Published','2024-04-24','2024-04-24'),(11,'Anuvaad','Anuvaad was developed to help Indian citizens translate content into different Indian Languages.',NULL,'https://anuvaad.bhashini.gov.in/','','core/tools/img/Anuvaad_n5T0p4w.png',NULL,NULL,'Published','2024-04-24','2024-04-24');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UA_INDIA_PROGRAMME`
--

LOCK TABLES `UA_INDIA_PROGRAMME` WRITE;
/*!40000 ALTER TABLE `UA_INDIA_PROGRAMME` DISABLE KEYS */;
INSERT INTO `UA_INDIA_PROGRAMME` VALUES (1,'UA India Programme','UA India Programme','','UA India Programme','UA India programme is a multistakeholder initiative to spread general UA awareness and to encourage UA adoption.','','','Today, the Internet has expanded to include domain names represented in different languages and scripts of the world including Indian languages. India is in leading position in offering domain names in all 22 scheduled Indian languages under .bharat and equivalent ccTLDs .','','','For increasing business reach and greater opportunities, the UA for applications, services are crucial. People are generally comfortable in trusting and communicating in their local language. Having a local language identity (i.e., email address) is easier to use for the non-English speaking user for participating in any government, social, banking, and other online applications. UA allows customers to expand their customer base by offering event-items / technologies / services to various countries in their own languages. Businesses can now communicate, share information, provide event-items, technologies, and services in the customer\'s language, creating trust and building a huge business potential while bringing the next billion plus users online. Govt. services can also communicate with the user in their local language creating inclusiveness and better adoption.','','Stages of UA India Programme Implementation','','core/UAIndiaProgramme/image/UA-India-Program_Wiq3Hj3.png','Click here to view Universal Acceptance & Multilingual Internet Document','','',NULL,NULL,'2024-04-24','2024-04-24','Unpublished');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNIVERSAL_ACCEPTANCE`
--

LOCK TABLES `UNIVERSAL_ACCEPTANCE` WRITE;
/*!40000 ALTER TABLE `UNIVERSAL_ACCEPTANCE` DISABLE KEYS */;
INSERT INTO `UNIVERSAL_ACCEPTANCE` VALUES (1,'Universal Acceptance (UA)','',NULL,'Universal Acceptance (UA) is the state in which all valid Domain Names and email addresses are accepted, validated, stored, processed and displayed correctly and consistently, regardless of script, number of characters, or recently introduced in the Unicode and are accepted equally by all Internet-enabled applications, devices, and systems.',NULL,'To achieve Universal Acceptance, internet applications and systems must treat all Top-Level Domain (TLDs) in a consistent manner, including new generic TLDs',NULL,'',NULL,'',NULL,'','core/privacy_policy/img/download.png','core/privacy_policy/img/universal_1lESeWC.png','','https://uasg.tech/ua-day/','Abhijeet Thorat',NULL,'Published','2024-04-24','2024-04-24');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserFeedbackData`
--

LOCK TABLES `UserFeedbackData` WRITE;
/*!40000 ALTER TABLE `UserFeedbackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserFeedbackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) unsigned NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) unsigned NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',1,'Django administration',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Theme',1,'add_theme'),(2,'Can change Theme',1,'change_theme'),(3,'Can delete Theme',1,'delete_theme'),(4,'Can view Theme',1,'view_theme'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add announcements',8,'add_announcements'),(30,'Can change announcements',8,'change_announcements'),(31,'Can delete announcements',8,'delete_announcements'),(32,'Can view announcements',8,'view_announcements'),(33,'Can add article',9,'add_article'),(34,'Can change article',9,'change_article'),(35,'Can delete article',9,'delete_article'),(36,'Can view article',9,'view_article'),(37,'Can add best practices',10,'add_bestpractices'),(38,'Can change best practices',10,'change_bestpractices'),(39,'Can delete best practices',10,'delete_bestpractices'),(40,'Can view best practices',10,'view_bestpractices'),(41,'Can add document category',11,'add_documentcategory'),(42,'Can change document category',11,'change_documentcategory'),(43,'Can delete document category',11,'delete_documentcategory'),(44,'Can view document category',11,'view_documentcategory'),(45,'Can add document category without trans',12,'add_documentcategorywithouttrans'),(46,'Can change document category without trans',12,'change_documentcategorywithouttrans'),(47,'Can delete document category without trans',12,'delete_documentcategorywithouttrans'),(48,'Can view document category without trans',12,'view_documentcategorywithouttrans'),(49,'Can add domain syntax',13,'add_domainsyntax'),(50,'Can change domain syntax',13,'change_domainsyntax'),(51,'Can delete domain syntax',13,'delete_domainsyntax'),(52,'Can view domain syntax',13,'view_domainsyntax'),(53,'Can add email address internationalization',14,'add_emailaddressinternationalization'),(54,'Can change email address internationalization',14,'change_emailaddressinternationalization'),(55,'Can delete email address internationalization',14,'delete_emailaddressinternationalization'),(56,'Can view email address internationalization',14,'view_emailaddressinternationalization'),(57,'Can add email syntax',15,'add_emailsyntax'),(58,'Can change email syntax',15,'change_emailsyntax'),(59,'Can delete email syntax',15,'delete_emailsyntax'),(60,'Can view email syntax',15,'view_emailsyntax'),(61,'Can add faq category',16,'add_faqcategory'),(62,'Can change faq category',16,'change_faqcategory'),(63,'Can delete faq category',16,'delete_faqcategory'),(64,'Can view faq category',16,'view_faqcategory'),(65,'Can add feedback category',17,'add_feedbackcategory'),(66,'Can change feedback category',17,'change_feedbackcategory'),(67,'Can delete feedback category',17,'delete_feedbackcategory'),(68,'Can view feedback category',17,'view_feedbackcategory'),(69,'Can add gallery headings',18,'add_galleryheadings'),(70,'Can change gallery headings',18,'change_galleryheadings'),(71,'Can delete gallery headings',18,'delete_galleryheadings'),(72,'Can view gallery headings',18,'view_galleryheadings'),(73,'Can add generic list',19,'add_genericlist'),(74,'Can change generic list',19,'change_genericlist'),(75,'Can delete generic list',19,'delete_genericlist'),(76,'Can view generic list',19,'view_genericlist'),(77,'Can add id ncc tl ds',20,'add_idncctlds'),(78,'Can change id ncc tl ds',20,'change_idncctlds'),(79,'Can delete id ncc tl ds',20,'delete_idncctlds'),(80,'Can view id ncc tl ds',20,'view_idncctlds'),(81,'Can add idn languages',21,'add_idnlanguages'),(82,'Can change idn languages',21,'change_idnlanguages'),(83,'Can delete idn languages',21,'delete_idnlanguages'),(84,'Can view idn languages',21,'view_idnlanguages'),(85,'Can add idn ready websites',22,'add_idnreadywebsites'),(86,'Can change idn ready websites',22,'change_idnreadywebsites'),(87,'Can delete idn ready websites',22,'delete_idnreadywebsites'),(88,'Can view idn ready websites',22,'view_idnreadywebsites'),(89,'Can add idn ready websites category',23,'add_idnreadywebsitescategory'),(90,'Can change idn ready websites category',23,'change_idnreadywebsitescategory'),(91,'Can delete idn ready websites category',23,'delete_idnreadywebsitescategory'),(92,'Can view idn ready websites category',23,'view_idnreadywebsitescategory'),(93,'Can add idn ready websites languages',24,'add_idnreadywebsiteslanguages'),(94,'Can change idn ready websites languages',24,'change_idnreadywebsiteslanguages'),(95,'Can delete idn ready websites languages',24,'delete_idnreadywebsiteslanguages'),(96,'Can view idn ready websites languages',24,'view_idnreadywebsiteslanguages'),(97,'Can add IDN Request For User Websites Categories',25,'add_idnrequestforuserwebsitescategories'),(98,'Can change IDN Request For User Websites Categories',25,'change_idnrequestforuserwebsitescategories'),(99,'Can delete IDN Request For User Websites Categories',25,'delete_idnrequestforuserwebsitescategories'),(100,'Can view IDN Request For User Websites Categories',25,'view_idnrequestforuserwebsitescategories'),(101,'Can add limit check',26,'add_limitcheck'),(102,'Can change limit check',26,'change_limitcheck'),(103,'Can delete limit check',26,'delete_limitcheck'),(104,'Can view limit check',26,'view_limitcheck'),(105,'Can add objectives',27,'add_objectives'),(106,'Can change objectives',27,'change_objectives'),(107,'Can delete objectives',27,'delete_objectives'),(108,'Can view objectives',27,'view_objectives'),(109,'Can add OTP FOR IDN Request For User Websites',28,'add_otp_for_idnrequestforuserwebsites'),(110,'Can change OTP FOR IDN Request For User Websites',28,'change_otp_for_idnrequestforuserwebsites'),(111,'Can delete OTP FOR IDN Request For User Websites',28,'delete_otp_for_idnrequestforuserwebsites'),(112,'Can view OTP FOR IDN Request For User Websites',28,'view_otp_for_idnrequestforuserwebsites'),(113,'Can add privacy policy',29,'add_privacypolicy'),(114,'Can change privacy policy',29,'change_privacypolicy'),(115,'Can delete privacy policy',29,'delete_privacypolicy'),(116,'Can view privacy policy',29,'view_privacypolicy'),(117,'Can add sop technology category',30,'add_soptechnologycategory'),(118,'Can change sop technology category',30,'change_soptechnologycategory'),(119,'Can delete sop technology category',30,'delete_soptechnologycategory'),(120,'Can view sop technology category',30,'view_soptechnologycategory'),(121,'Can add stackholder',31,'add_stackholder'),(122,'Can change stackholder',31,'change_stackholder'),(123,'Can delete stackholder',31,'delete_stackholder'),(124,'Can view stackholder',31,'view_stackholder'),(125,'Can add subscriber',32,'add_subscriber'),(126,'Can change subscriber',32,'change_subscriber'),(127,'Can delete subscriber',32,'delete_subscriber'),(128,'Can view subscriber',32,'view_subscriber'),(129,'Can add terms and conditions',33,'add_termsandconditions'),(130,'Can change terms and conditions',33,'change_termsandconditions'),(131,'Can delete terms and conditions',33,'delete_termsandconditions'),(132,'Can view terms and conditions',33,'view_termsandconditions'),(133,'Can add testimonials',34,'add_testimonials'),(134,'Can change testimonials',34,'change_testimonials'),(135,'Can delete testimonials',34,'delete_testimonials'),(136,'Can view testimonials',34,'view_testimonials'),(137,'Can add testimonials messages',35,'add_testimonialsmessages'),(138,'Can change testimonials messages',35,'change_testimonialsmessages'),(139,'Can delete testimonials messages',35,'delete_testimonialsmessages'),(140,'Can view testimonials messages',35,'view_testimonialsmessages'),(141,'Can add tools',36,'add_tools'),(142,'Can change tools',36,'change_tools'),(143,'Can delete tools',36,'delete_tools'),(144,'Can view tools',36,'view_tools'),(145,'Can add ua india programme',37,'add_uaindiaprogramme'),(146,'Can change ua india programme',37,'change_uaindiaprogramme'),(147,'Can delete ua india programme',37,'delete_uaindiaprogramme'),(148,'Can view ua india programme',37,'view_uaindiaprogramme'),(149,'Can add universal acceptance',38,'add_universalacceptance'),(150,'Can change universal acceptance',38,'change_universalacceptance'),(151,'Can delete universal acceptance',38,'delete_universalacceptance'),(152,'Can view universal acceptance',38,'view_universalacceptance'),(153,'Can add user role',39,'add_userrole'),(154,'Can change user role',39,'change_userrole'),(155,'Can delete user role',39,'delete_userrole'),(156,'Can view user role',39,'view_userrole'),(157,'Can add user role mapping',40,'add_userrolemapping'),(158,'Can change user role mapping',40,'change_userrolemapping'),(159,'Can delete user role mapping',40,'delete_userrolemapping'),(160,'Can view user role mapping',40,'view_userrolemapping'),(161,'Can add user profile',41,'add_userprofile'),(162,'Can change user profile',41,'change_userprofile'),(163,'Can delete user profile',41,'delete_userprofile'),(164,'Can view user profile',41,'view_userprofile'),(165,'Can add user feedback data',42,'add_userfeedbackdata'),(166,'Can change user feedback data',42,'change_userfeedbackdata'),(167,'Can delete user feedback data',42,'delete_userfeedbackdata'),(168,'Can view user feedback data',42,'view_userfeedbackdata'),(169,'Can add sop technology document',43,'add_soptechnologydocument'),(170,'Can change sop technology document',43,'change_soptechnologydocument'),(171,'Can delete sop technology document',43,'delete_soptechnologydocument'),(172,'Can view sop technology document',43,'view_soptechnologydocument'),(173,'Can add sop download counter',44,'add_sopdownloadcounter'),(174,'Can change sop download counter',44,'change_sopdownloadcounter'),(175,'Can delete sop download counter',44,'delete_sopdownloadcounter'),(176,'Can view sop download counter',44,'view_sopdownloadcounter'),(177,'Can add IDN Request For User Websites',45,'add_idnrequestforuserwebsites'),(178,'Can change IDN Request For User Websites',45,'change_idnrequestforuserwebsites'),(179,'Can delete IDN Request For User Websites',45,'delete_idnrequestforuserwebsites'),(180,'Can view IDN Request For User Websites',45,'view_idnrequestforuserwebsites'),(181,'Can add idn ready websites languge url mapping',46,'add_idnreadywebsiteslangugeurlmapping'),(182,'Can change idn ready websites languge url mapping',46,'change_idnreadywebsiteslangugeurlmapping'),(183,'Can delete idn ready websites languge url mapping',46,'delete_idnreadywebsiteslangugeurlmapping'),(184,'Can view idn ready websites languge url mapping',46,'view_idnreadywebsiteslangugeurlmapping'),(185,'Can add gallery videos',47,'add_galleryvideos'),(186,'Can change gallery videos',47,'change_galleryvideos'),(187,'Can delete gallery videos',47,'delete_galleryvideos'),(188,'Can view gallery videos',47,'view_galleryvideos'),(189,'Can add faqs',48,'add_faqs'),(190,'Can change faqs',48,'change_faqs'),(191,'Can delete faqs',48,'delete_faqs'),(192,'Can view faqs',48,'view_faqs'),(193,'Can add document without trans',49,'add_documentwithouttrans'),(194,'Can change document without trans',49,'change_documentwithouttrans'),(195,'Can delete document without trans',49,'delete_documentwithouttrans'),(196,'Can view document without trans',49,'view_documentwithouttrans'),(197,'Can add document',50,'add_document'),(198,'Can change document',50,'change_document'),(199,'Can delete document',50,'delete_document'),(200,'Can view document',50,'view_document'),(201,'Can add Custom Forgot Password',51,'add_customforgotpassword'),(202,'Can change Custom Forgot Password',51,'change_customforgotpassword'),(203,'Can delete Custom Forgot Password',51,'delete_customforgotpassword'),(204,'Can view Custom Forgot Password',51,'view_customforgotpassword'),(205,'Can add blog category',52,'add_blogcategory'),(206,'Can change blog category',52,'change_blogcategory'),(207,'Can delete blog category',52,'delete_blogcategory'),(208,'Can view blog category',52,'view_blogcategory'),(209,'Can add blog',53,'add_blog'),(210,'Can change blog',53,'change_blog'),(211,'Can delete blog',53,'delete_blog'),(212,'Can view blog',53,'view_blog'),(213,'Can add email send',54,'add_emailsend'),(214,'Can change email send',54,'change_emailsend'),(215,'Can delete email send',54,'delete_emailsend'),(216,'Can view email send',54,'view_emailsend'),(217,'Can add email attachment',55,'add_emailattachment'),(218,'Can change email attachment',55,'change_emailattachment'),(219,'Can delete email attachment',55,'delete_emailattachment'),(220,'Can view email attachment',55,'view_emailattachment'),(221,'Can add Topic',56,'add_topic'),(222,'Can change Topic',56,'change_topic'),(223,'Can delete Topic',56,'delete_topic'),(224,'Can view Topic',56,'view_topic'),(225,'Can add Topic Category',57,'add_topiccategory'),(226,'Can change Topic Category',57,'change_topiccategory'),(227,'Can delete Topic Category',57,'delete_topiccategory'),(228,'Can view Topic Category',57,'view_topiccategory'),(229,'Can add Topic Answer',58,'add_topicanswer'),(230,'Can change Topic Answer',58,'change_topicanswer'),(231,'Can delete Topic Answer',58,'delete_topicanswer'),(232,'Can view Topic Answer',58,'view_topicanswer'),(233,'Can add User Review On Answer',59,'add_answeruserreview'),(234,'Can change User Review On Answer',59,'change_answeruserreview'),(235,'Can delete User Review On Answer',59,'delete_answeruserreview'),(236,'Can view User Review On Answer',59,'view_answeruserreview'),(237,'Can add Answer Replies',60,'add_answerreplies'),(238,'Can change Answer Replies',60,'change_answerreplies'),(239,'Can delete Answer Replies',60,'delete_answerreplies'),(240,'Can view Answer Replies',60,'view_answerreplies'),(241,'Can add task result',61,'add_taskresult'),(242,'Can change task result',61,'change_taskresult'),(243,'Can delete task result',61,'delete_taskresult'),(244,'Can view task result',61,'view_taskresult'),(245,'Can add chord counter',62,'add_chordcounter'),(246,'Can change chord counter',62,'change_chordcounter'),(247,'Can delete chord counter',62,'delete_chordcounter'),(248,'Can view chord counter',62,'view_chordcounter'),(249,'Can add group result',63,'add_groupresult'),(250,'Can change group result',63,'change_groupresult'),(251,'Can delete group result',63,'delete_groupresult'),(252,'Can view group result',63,'view_groupresult'),(253,'Can add bulk email',64,'add_bulkemail'),(254,'Can change bulk email',64,'change_bulkemail'),(255,'Can delete bulk email',64,'delete_bulkemail'),(256,'Can view bulk email',64,'view_bulkemail'),(257,'Can add bulk email attachments',65,'add_bulkemailattachments'),(258,'Can change bulk email attachments',65,'change_bulkemailattachments'),(259,'Can delete bulk email attachments',65,'delete_bulkemailattachments'),(260,'Can view bulk email attachments',65,'view_bulkemailattachments'),(261,'Can add ur l_dashboard',66,'add_url_dashboard'),(262,'Can change ur l_dashboard',66,'change_url_dashboard'),(263,'Can delete ur l_dashboard',66,'delete_url_dashboard'),(264,'Can view ur l_dashboard',66,'view_url_dashboard'),(265,'Can add category_list',67,'add_category_list'),(266,'Can change category_list',67,'change_category_list'),(267,'Can delete category_list',67,'delete_category_list'),(268,'Can view category_list',67,'view_category_list'),(269,'Can add language_list',68,'add_language_list'),(270,'Can change language_list',68,'change_language_list'),(271,'Can delete language_list',68,'delete_language_list'),(272,'Can view language_list',68,'view_language_list'),(273,'Can add english_ domain',69,'add_english_domain'),(274,'Can change english_ domain',69,'change_english_domain'),(275,'Can delete english_ domain',69,'delete_english_domain'),(276,'Can view english_ domain',69,'view_english_domain'),(277,'Can add OTP FOR User Registration',70,'add_otp_for_userregistration'),(278,'Can change OTP FOR User Registration',70,'change_otp_for_userregistration'),(279,'Can delete OTP FOR User Registration',70,'delete_otp_for_userregistration'),(280,'Can view OTP FOR User Registration',70,'view_otp_for_userregistration');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$720000$xQsjHNWD4rq6KWIodpbxTn$xYyGJxWycMRAhKBB/X6CCj0/iX4Wbq89PqjrtC7du0Y=','2024-10-09 10:16:17.057177',1,'bhashanet','','','',1,1,'2024-04-23 11:59:36.434761'),(4,'pbkdf2_sha256$720000$nnYxCnbd2cPObMrmPlTqxU$0lDlv2NpJYr8cCXZYKxx04PvzHykXUb9vZXdPHvbR0A=','2024-09-30 10:21:03.258513',1,'admin','','','',1,1,'2024-09-30 10:17:56.535093'),(28,'pbkdf2_sha256$720000$Lhhy7o05ya1FcppZN15uZ1$qmTmMmFt8KvAi+yeTpMuYGelpmN0QU4c+LcBp/r4EzY=','2024-10-08 05:54:19.816957',0,'sgpltr@gmail.com','','','sgpltr@gmail.com',0,1,'2024-10-08 05:53:25.351199');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_answerreplies`
--

DROP TABLE IF EXISTS `discussion_forum_answerreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_answerreplies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reply` longtext DEFAULT NULL,
  `reply_date` date NOT NULL,
  `answer_id_id` bigint(20) NOT NULL,
  `replied_to_id` bigint(20) DEFAULT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_ans_answer_id_id_de948783_fk_discussio` (`answer_id_id`),
  KEY `discussion_forum_ans_replied_to_id_eafd96d1_fk_discussio` (`replied_to_id`),
  KEY `discussion_forum_ans_user_id_id_2364071a_fk_auth_user` (`user_id_id`),
  CONSTRAINT `discussion_forum_ans_answer_id_id_de948783_fk_discussio` FOREIGN KEY (`answer_id_id`) REFERENCES `discussion_forum_topicanswer` (`id`),
  CONSTRAINT `discussion_forum_ans_replied_to_id_eafd96d1_fk_discussio` FOREIGN KEY (`replied_to_id`) REFERENCES `discussion_forum_answerreplies` (`id`),
  CONSTRAINT `discussion_forum_ans_user_id_id_2364071a_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_answerreplies`
--

LOCK TABLES `discussion_forum_answerreplies` WRITE;
/*!40000 ALTER TABLE `discussion_forum_answerreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_answerreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_answeruserreview`
--

DROP TABLE IF EXISTS `discussion_forum_answeruserreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_answeruserreview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `reply_date` date NOT NULL,
  `answer_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_ans_answer_id_id_25c7b5af_fk_discussio` (`answer_id_id`),
  KEY `discussion_forum_ans_user_id_id_c04ed276_fk_auth_user` (`user_id_id`),
  CONSTRAINT `discussion_forum_ans_answer_id_id_25c7b5af_fk_discussio` FOREIGN KEY (`answer_id_id`) REFERENCES `discussion_forum_topicanswer` (`id`),
  CONSTRAINT `discussion_forum_ans_user_id_id_c04ed276_fk_auth_user` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_answeruserreview`
--

LOCK TABLES `discussion_forum_answeruserreview` WRITE;
/*!40000 ALTER TABLE `discussion_forum_answeruserreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion_forum_answeruserreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_topic`
--

DROP TABLE IF EXISTS `discussion_forum_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `topic_slug` varchar(255) NOT NULL,
  `topic_categories_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `topic_name` (`topic_name`),
  UNIQUE KEY `topic_slug` (`topic_slug`),
  KEY `discussion_forum_top_topic_categories_id_29dae989_fk_discussio` (`topic_categories_id`),
  KEY `discussion_forum_topic_user_id_id_9d0a21f4_fk_auth_user_id` (`user_id_id`),
  CONSTRAINT `discussion_forum_top_topic_categories_id_29dae989_fk_discussio` FOREIGN KEY (`topic_categories_id`) REFERENCES `discussion_forum_topiccategory` (`id`),
  CONSTRAINT `discussion_forum_topic_user_id_id_9d0a21f4_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_topic`
--

LOCK TABLES `discussion_forum_topic` WRITE;
/*!40000 ALTER TABLE `discussion_forum_topic` DISABLE KEYS */;
INSERT INTO `discussion_forum_topic` VALUES (1,'Test Test Test Test','2024-04-23','test-test-test-test',1,2);
/*!40000 ALTER TABLE `discussion_forum_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_topicanswer`
--

DROP TABLE IF EXISTS `discussion_forum_topicanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_topicanswer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer` longtext DEFAULT NULL,
  `reply_date` date NOT NULL,
  `topic_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_forum_top_topic_id_id_418ade93_fk_discussio` (`topic_id_id`),
  KEY `discussion_forum_topicanswer_user_id_id_e842ae48_fk_auth_user_id` (`user_id_id`),
  CONSTRAINT `discussion_forum_top_topic_id_id_418ade93_fk_discussio` FOREIGN KEY (`topic_id_id`) REFERENCES `discussion_forum_topic` (`id`),
  CONSTRAINT `discussion_forum_topicanswer_user_id_id_e842ae48_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_topicanswer`
--

LOCK TABLES `discussion_forum_topicanswer` WRITE;
/*!40000 ALTER TABLE `discussion_forum_topicanswer` DISABLE KEYS */;
INSERT INTO `discussion_forum_topicanswer` VALUES (1,'Again Test','2024-04-23',1,2);
/*!40000 ALTER TABLE `discussion_forum_topicanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_topiccategory`
--

DROP TABLE IF EXISTS `discussion_forum_topiccategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_forum_topiccategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_topiccategory`
--

LOCK TABLES `discussion_forum_topiccategory` WRITE;
/*!40000 ALTER TABLE `discussion_forum_topiccategory` DISABLE KEYS */;
INSERT INTO `discussion_forum_topiccategory` VALUES (1,'Test','2024-04-23');
/*!40000 ALTER TABLE `discussion_forum_topiccategory` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (2,'2024-04-23 12:01:43.838810','1','Test',1,'[{\"added\": {}}]',57,2),(3,'2024-04-24 05:56:51.694010','1','ICANN',1,'[{\"added\": {}}]',8,2),(4,'2024-04-24 05:56:51.717315','1','Support for Top Level Domains (TLDs) For eg .भारत , सरकार.भारत',1,'[{\"added\": {}}]',10,2),(5,'2024-04-24 05:57:48.553739','2','Universal Acceptance (UA) Day',1,'[{\"added\": {}}]',8,2),(6,'2024-04-24 05:58:33.454004','3','UASG Announces Call for Proposals for UA Day 2024',1,'[{\"added\": {}}]',8,2),(7,'2024-04-24 05:58:39.347704','2','Support for Web Server',1,'[{\"added\": {}}]',10,2),(8,'2024-04-24 05:59:17.509061','4','Unlocking Economic Potential with Multilingual Internet and UA for Businesses in India',1,'[{\"added\": {}}]',8,2),(9,'2024-04-24 05:59:24.394919','1','IDN Email Syntax Validator',1,'[{\"added\": {}}]',36,2),(10,'2024-04-24 06:00:03.951729','5','Multilingual Internet for Women in India',1,'[{\"added\": {}}]',8,2),(11,'2024-04-24 06:00:42.650251','6','Multilingual Internet - Connecting People and Transforming Lives',1,'[{\"added\": {}}]',8,2),(12,'2024-04-24 06:01:25.637400','7','FICCI',1,'[{\"added\": {}}]',8,2),(13,'2024-04-24 06:02:32.080103','1','EAI',1,'[{\"added\": {}}]',52,2),(14,'2024-04-24 06:02:54.926238','2','Language Technology',1,'[{\"added\": {}}]',52,2),(15,'2024-04-24 06:03:12.649117','3','Multilingual Internet',1,'[{\"added\": {}}]',52,2),(16,'2024-04-24 06:03:19.732470','2','IDN Domain Validator',1,'[{\"added\": {}}]',36,2),(17,'2024-04-24 06:03:54.212177','4','Universal Acceptance',1,'[{\"added\": {}}]',52,2),(18,'2024-04-24 06:04:02.966486','4','Universal Acceptance',2,'[]',52,2),(19,'2024-04-24 06:09:45.214905','3','Support for SSL/ TLS Certificates',1,'[{\"added\": {}}]',10,2),(20,'2024-04-24 06:11:07.703650','3','Unicode-Punycode Generator',1,'[{\"added\": {}}]',36,2),(21,'2024-04-24 06:11:52.530853','4','Support for Indian Languages in Email Addresses',1,'[{\"added\": {}}]',10,2),(22,'2024-04-24 06:12:48.479612','5','Follow UA Standards and guidelines & collaborate with other stakeholders',1,'[{\"added\": {}}]',10,2),(23,'2024-04-24 06:12:56.319278','4','Transliteration',1,'[{\"added\": {}}]',36,2),(24,'2024-04-24 06:13:21.687251','1','UASG Publishes 2023 Universal Acceptance Activities Report',1,'[{\"added\": {}}]',53,2),(25,'2024-04-24 06:13:41.243451','1','UASG Publishes 2023 Universal Acceptance Activities Report',2,'[]',53,2),(26,'2024-04-24 06:13:58.062128','5','Unicode Fonts',1,'[{\"added\": {}}]',36,2),(27,'2024-04-24 06:14:58.615600','2','How can we register IDN domain names ?',1,'[{\"added\": {}}]',53,2),(28,'2024-04-24 06:15:21.499718','6','Script Detection',1,'[{\"added\": {}}]',36,2),(29,'2024-04-24 06:16:28.612071','3','सूर्य एक प्रत्यक्ष देवता के रूप में पूजे जाते हैं। नवग्रहों में भी सूर्यदेव को विशिष्ट स्थान प्राप्त है। सूर्य देव को पिता, पुत्र, प्रसिद्धि, यश, वैभव, तेज, आरोग्यता, आत्मविश्वास और इच्छाशक्ति का कारक',1,'[{\"added\": {}}]',53,2),(30,'2024-04-24 06:19:31.966575','1','Basics',1,'[{\"added\": {}}]',11,2),(31,'2024-04-24 06:19:47.525590','1','Basics',2,'[{\"changed\": {\"fields\": [\"DocumentCategory Status\"]}}]',11,2),(32,'2024-04-24 06:19:52.052282','7','Language Detection',1,'[{\"added\": {}}]',36,2),(33,'2024-04-24 06:20:06.937076','1','Basics',2,'[{\"changed\": {\"fields\": [\"DocumentCategory Status\"]}}]',11,2),(34,'2024-04-24 06:20:22.124627','2','Deprecated',1,'[{\"added\": {}}]',11,2),(35,'2024-04-24 06:20:28.825237','3','Measurement',1,'[{\"added\": {}}]',11,2),(36,'2024-04-24 06:20:35.052159','4','Outreach',1,'[{\"added\": {}}]',11,2),(37,'2024-04-24 06:20:41.435082','5','Remediation',1,'[{\"added\": {}}]',11,2),(38,'2024-04-24 06:20:44.671965','5','Remediation',2,'[{\"changed\": {\"fields\": [\"DocumentCategory PublishedStatus\"]}}]',11,2),(39,'2024-04-24 06:20:47.530295','8','User Keyboard',1,'[{\"added\": {}}]',36,2),(40,'2024-04-24 06:20:47.628945','4','Outreach',2,'[{\"changed\": {\"fields\": [\"DocumentCategory PublishedStatus\"]}}]',11,2),(41,'2024-04-24 06:20:50.400216','3','Measurement',2,'[]',11,2),(42,'2024-04-24 06:20:56.349313','6','Software',1,'[{\"added\": {}}]',11,2),(43,'2024-04-24 06:21:05.271945','7','Technical',1,'[{\"added\": {}}]',11,2),(44,'2024-04-24 06:21:21.101869','8','Standards',1,'[{\"added\": {}}]',11,2),(45,'2024-04-24 06:21:48.489800','1','EAI',1,'[{\"added\": {}}]',14,2),(46,'2024-04-24 06:22:17.448864','1','UASG 000 Inventory of Material EN',1,'[{\"added\": {}}]',50,2),(47,'2024-04-24 06:23:11.314848','2','UASG 001 UA Knowledge Base EN',1,'[{\"added\": {}}]',50,2),(48,'2024-04-24 06:23:22.092572','1','General',1,'[{\"added\": {}}]',16,2),(49,'2024-04-24 06:23:41.919172','2','Developer',1,'[{\"added\": {}}]',16,2),(50,'2024-04-24 06:23:54.998173','3','UASG 003 UA Fact Sheet FR',1,'[{\"added\": {}}]',50,2),(51,'2024-04-24 06:24:01.359916','3','IDN',1,'[{\"added\": {}}]',16,2),(52,'2024-04-24 06:24:13.721328','4','Universal Acceptance',1,'[{\"added\": {}}]',16,2),(53,'2024-04-24 06:24:41.207960','4','UASG 004A Test Cases for UA Readiness Evaluation – Data EN',1,'[{\"added\": {}}]',50,2),(54,'2024-04-24 06:26:26.433036','9','Top Level Domain ( TLD ) Existence Checker',1,'[{\"added\": {}}]',36,2),(55,'2024-04-24 06:27:20.723902','1','Query',1,'[{\"added\": {}}]',17,2),(56,'2024-04-24 06:27:22.889067','10','Developer Keyboard',1,'[{\"added\": {}}]',36,2),(57,'2024-04-24 06:27:43.148884','2','Complaints',1,'[{\"added\": {}}]',17,2),(58,'2024-04-24 06:27:51.149162','3','Suggetions',1,'[{\"added\": {}}]',17,2),(59,'2024-04-24 06:28:11.915058','11','Anuvaad',1,'[{\"added\": {}}]',36,2),(60,'2024-04-24 06:29:03.183675','1','How can we register domain names in Indian Languages ?',1,'[{\"added\": {}}]',48,2),(61,'2024-04-24 06:29:27.689643','2','How Universal Acceptance can be achieved?',1,'[{\"added\": {}}]',48,2),(62,'2024-04-24 06:29:52.613132','3','What are the Universal Acceptance Guidelines?',1,'[{\"added\": {}}]',48,2),(63,'2024-04-24 06:30:09.932611','5','UASG 007 Introduction to Universal Acceptance EN',1,'[{\"added\": {}}]',50,2),(64,'2024-04-24 06:30:17.222480','4','How can we get Email ID in Indian Languages?',1,'[{\"added\": {}}]',48,2),(65,'2024-04-24 06:30:55.501098','6','UASG 009 Quick Guide to Tender and Contractual Documents EN',1,'[{\"added\": {}}]',50,2),(66,'2024-04-24 06:31:11.042838','5','Role of NIXI and ICANN in UA',1,'[{\"added\": {}}]',48,2),(67,'2024-04-24 06:31:35.704681','6','What is Email address Internationalization?',1,'[{\"added\": {}}]',48,2),(68,'2024-04-24 06:31:50.832118','7','UASG 012 EAI: A Technical Overview EN',1,'[{\"added\": {}}]',50,2),(69,'2024-04-24 06:32:01.685566','7','What is Universal Acceptance Day? Who organizes it?',1,'[{\"added\": {}}]',48,2),(70,'2024-04-24 06:32:19.068976','1','Privacy Policy',1,'[{\"added\": {}}]',29,2),(71,'2024-04-24 06:32:27.869388','8','How to configure an SSL Certificate?',1,'[{\"added\": {}}]',48,2),(72,'2024-04-24 06:32:45.830757','8','UASG 013F Email Address Internationalization (EAI) Case Study: Coremail and THNIC EN',1,'[{\"added\": {}}]',50,2),(73,'2024-04-24 06:32:58.172981','9','What are the best practices for Universal Acceptance?',1,'[{\"added\": {}}]',48,2),(74,'2024-04-24 06:33:39.063246','9','UASG 015 Blueprint for CIOs – Internet Industry Edition EN',1,'[{\"added\": {}}]',50,2),(75,'2024-04-24 06:34:35.023853','10','UASG 031 FAQs: UA Readiness of Programming Languages and Email Tools EN',1,'[{\"added\": {}}]',50,2),(76,'2024-04-24 06:34:35.832887','10','What is a domain name?',1,'[{\"added\": {}}]',48,2),(77,'2024-04-24 06:34:58.837278','11','Why Indian language domain name?',1,'[{\"added\": {}}]',48,2),(78,'2024-04-24 06:35:22.152303','12','How to get an Internationalized Domain Name (IDN)?',1,'[{\"added\": {}}]',48,2),(79,'2024-04-24 06:35:51.064849','13','What are Country Code Top-Level Domains (ccTLDs)?',1,'[{\"added\": {}}]',48,2),(80,'2024-04-24 06:35:53.044595','11','UASG 033 UA-Readiness of Open Source Code Pilot EN',1,'[{\"added\": {}}]',50,2),(81,'2024-04-24 06:36:22.419653','14','How to configure Internationalized Domain Name (IDN)?',1,'[{\"added\": {}}]',48,2),(82,'2024-04-24 06:36:49.392045','12','UASG 033 UA-Readiness of Open Source Code Pilot EN',1,'[{\"added\": {}}]',50,2),(83,'2024-04-24 06:36:57.273523','15','What is Universal Acceptance?',1,'[{\"added\": {}}]',48,2),(84,'2024-04-24 06:37:23.699355','16','What is Multilingual Internet?',1,'[{\"added\": {}}]',48,2),(85,'2024-04-24 06:37:41.760013','13','UASG 036A UA-Readiness of Browsers EN',1,'[{\"added\": {}}]',50,2),(86,'2024-04-24 06:37:47.618234','17','What is the UA-INDIA Program?',1,'[{\"added\": {}}]',48,2),(87,'2024-04-24 06:38:08.632495','18','Can I use IDNs with email addresses?',1,'[{\"added\": {}}]',48,2),(88,'2024-04-24 06:38:28.004251','14','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN',1,'[{\"added\": {}}]',50,2),(89,'2024-04-24 06:38:31.241528','19','What is the difference between internationalization (i18n) and localization (l10n)?',1,'[{\"added\": {}}]',48,2),(90,'2024-04-24 06:38:56.202967','20','What are best practices for form handling and validation for international users?',1,'[{\"added\": {}}]',48,2),(91,'2024-04-24 06:39:17.854294','21','Are there any tools or libraries that can help with IDN development?',1,'[{\"added\": {}}]',48,2),(92,'2024-04-24 06:39:40.947214','22','How should I store IDNs in my database?',1,'[{\"added\": {}}]',48,2),(93,'2024-04-24 06:39:58.586806','15','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN',1,'[{\"added\": {}}]',50,2),(94,'2024-04-24 06:40:57.544588','1','Other Informative Videos',1,'[{\"added\": {}}]',18,2),(95,'2024-04-24 06:41:04.781874','16','UASG 037 UA-Readiness of Some Programming Language Libraries and Frameworks EN',1,'[{\"added\": {}}]',50,2),(96,'2024-04-24 06:41:09.085106','2','UA Informative Videos',1,'[{\"added\": {}}]',18,2),(97,'2024-04-24 06:41:17.944602','3','UA Day Event Held on 27th-28th March 2023',1,'[{\"added\": {}}]',18,2),(98,'2024-04-24 06:41:18.409608','1','Vision',1,'[{\"added\": {}}]',27,2),(99,'2024-04-24 06:42:01.919154','17','UASG 040 UA-Readiness Evaluation of Standards and Best Practices',1,'[{\"added\": {}}]',50,2),(100,'2024-04-24 06:42:12.223951','1','Universal Acceptance: Enabling a Multilingual Internet',1,'[{\"added\": {}}]',47,2),(101,'2024-04-24 06:42:28.260069','2','Objective',1,'[{\"added\": {}}]',27,2),(102,'2024-04-24 06:42:31.119542','2','IDN India bharat',1,'[{\"added\": {}}]',47,2),(103,'2024-04-24 06:42:48.149433','18','UASG 040 UA-Readiness Evaluation of Standards and Best Practices',1,'[{\"added\": {}}]',50,2),(104,'2024-04-24 06:42:49.447056','3','Universal Acceptance | A Global Agenda',1,'[{\"added\": {}}]',47,2),(105,'2024-04-24 06:43:05.943465','3','Mission',1,'[{\"added\": {}}]',27,2),(106,'2024-04-24 06:43:09.740600','4','Universal Acceptance and Multilingual Internet',1,'[{\"added\": {}}]',47,2),(107,'2024-04-24 06:43:32.809549','19','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data',1,'[{\"added\": {}}]',50,2),(108,'2024-04-24 06:43:48.534046','5','60sec DOT HINDI',1,'[{\"added\": {}}]',47,2),(109,'2024-04-24 06:44:13.841873','6','Unlocking Economic Potential with Multilingual Internet & UA for Businesses in India',1,'[{\"added\": {}}]',47,2),(110,'2024-04-24 06:44:23.923621','20','UASG 040B UA-Readiness Evaluation of Standards and Best Practices – Data',1,'[{\"added\": {}}]',50,2),(111,'2024-04-24 06:44:44.737746','1','Vision',2,'[{\"changed\": {\"fields\": [\"Objectives Thumbnail\"]}}]',27,2),(112,'2024-04-24 06:44:48.567754','7','The Role of Country Code Top-Level Domains (ccTLDs) in Achieving Universal Acceptance',1,'[{\"added\": {}}]',47,2),(113,'2024-04-24 06:45:07.669390','21','UASG 042 UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig) EN',1,'[{\"added\": {}}]',50,2),(114,'2024-04-24 06:45:12.316349','8','Interactive Session with Mr Jia-Rong Low, ICANN on \"Multilingual Internet and Universal Acceptance\"',1,'[{\"added\": {}}]',47,2),(115,'2024-04-24 06:45:57.296351','22','UASG 042A UA-Readiness of Web Hosting Tools (cPanel, Plesk, ISPConfig)',1,'[{\"added\": {}}]',50,2),(116,'2024-04-24 06:46:39.746323','23','UASG 043 UA-Ready Code Samples in Java, Python, and JavaScript EN',1,'[{\"added\": {}}]',50,2),(117,'2024-04-24 06:47:27.041364','24','UASG 043A UA-Ready Code Samples in Java, Python, and JavaScript EN',1,'[{\"added\": {}}]',50,2),(118,'2024-04-24 06:48:29.406976','25','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN',1,'[{\"added\": {}}]',50,2),(119,'2024-04-24 06:49:04.800581','1','https://bhashini.gov.in/',1,'[{\"added\": {}}]',31,2),(120,'2024-04-24 06:49:29.133449','9','Voice Based Internet for Indian Requirements',1,'[{\"added\": {}}]',47,2),(121,'2024-04-24 06:50:21.596964','2','https://www.cdac.in/',1,'[{\"added\": {}}]',31,2),(122,'2024-04-24 06:50:27.993679','26','UASG 044 EAI Technical Education and Awareness Directed at Developer Community Websites EN',1,'[{\"added\": {}}]',50,2),(123,'2024-04-24 06:51:28.851347','27','UASG 044A EAI Technical Education and Awareness Directed at Developer Community Websites – Proposed FAQs',1,'[{\"added\": {}}]',50,2),(124,'2024-04-24 06:51:42.993350','10','1st Student Internet Governance Forum (SIGF) Conference',1,'[{\"added\": {}}]',47,2),(125,'2024-04-24 06:52:10.887859','11','Virtual Training Programme on Universal Acceptance (UA) Readiness',1,'[{\"added\": {}}]',47,2),(126,'2024-04-24 06:52:48.381405','12','Bridging the Language Gap with Universal Acceptance and its Capacity Building',1,'[{\"added\": {}}]',47,2),(127,'2024-04-24 06:52:50.675356','3','https://uasg.tech/',1,'[{\"added\": {}}]',31,2),(128,'2024-04-24 06:53:12.675861','13','Universal Acceptance: A Key to Unlocking Growth Opportunities for Startups and MSMEs',1,'[{\"added\": {}}]',47,2),(129,'2024-04-24 06:53:30.793894','14','Valedictory Session',1,'[{\"added\": {}}]',47,2),(130,'2024-04-24 06:53:51.073939','15','Bhashini and Multilingual Internet',1,'[{\"added\": {}}]',47,2),(131,'2024-04-24 06:54:10.309801','16','Case Studies Presentation',1,'[{\"added\": {}}]',47,2),(132,'2024-04-24 06:54:22.563136','4','https://www.meity.gov.in/',1,'[{\"added\": {}}]',31,2),(133,'2024-04-24 06:54:28.870317','17','Panel Discussion Session on \"Technology enablement for universal acceptance\"',1,'[{\"added\": {}}]',47,2),(134,'2024-04-24 06:55:06.832697','18','Panel Discussion Session',1,'[{\"added\": {}}]',47,2),(135,'2024-04-24 06:55:27.706987','19','Inaugural',1,'[{\"added\": {}}]',47,2),(136,'2024-04-24 06:55:43.877719','5','https://ficci.in/',1,'[{\"added\": {}}]',31,2),(137,'2024-04-24 06:55:55.244273','20','IDN’s and EAI in Indian Languages – Outlook and Overview',1,'[{\"added\": {}}]',47,2),(138,'2024-04-24 06:56:11.863924','21','Curtain Raiser',1,'[{\"added\": {}}]',47,2),(139,'2024-04-24 06:56:17.148086','6','https://www.nic.in/',1,'[{\"added\": {}}]',31,2),(140,'2024-04-24 06:56:21.346896','1','UA - ID : 1',1,'[{\"added\": {}}]',19,2),(141,'2024-04-24 06:56:31.602864','22','Workshop on Making Your email platform UA Ready',1,'[{\"added\": {}}]',47,2),(142,'2024-04-24 06:56:48.830941','23','Making your website Universal Acceptance ready: Way Forward',1,'[{\"added\": {}}]',47,2),(143,'2024-04-24 06:57:28.855109','7','https://nixi.in/',1,'[{\"added\": {}}]',31,2),(144,'2024-04-24 07:00:12.014107','2','BECOMEUAREADY - ID : 2',1,'[{\"added\": {}}]',19,2),(145,'2024-04-24 07:00:33.955360','1','.bharat IDN-ccTLDs',1,'[{\"added\": {}}]',20,2),(146,'2024-04-24 07:02:14.310999','1','Private',1,'[{\"added\": {}}]',25,2),(147,'2024-04-24 07:02:34.147746','2','Government',1,'[{\"added\": {}}]',25,2),(148,'2024-04-24 07:03:51.515095','1','sshivam@cdac.in',1,'[{\"added\": {}}]',45,2),(149,'2024-04-24 07:06:13.045034','1','.भारत',1,'[{\"added\": {}}]',21,2),(150,'2024-04-24 07:07:23.831024','2','.ভারত',1,'[{\"added\": {}}]',21,2),(151,'2024-04-24 07:07:31.504122','1','Django',1,'[{\"added\": {}}]',30,2),(152,'2024-04-24 07:07:37.564165','1','Terms and conditions',1,'[{\"added\": {}}]',33,2),(153,'2024-04-24 07:07:44.705502','3','.భారత్',1,'[{\"added\": {}}]',21,2),(154,'2024-04-24 07:07:55.685609','2','Drupal',1,'[{\"added\": {}}]',30,2),(155,'2024-04-24 07:08:09.848870','4','.ભારત',1,'[{\"added\": {}}]',21,2),(156,'2024-04-24 07:08:11.010789','3','Generic',1,'[{\"added\": {}}]',30,2),(157,'2024-04-24 07:08:27.719046','4','Node Js',1,'[{\"added\": {}}]',30,2),(158,'2024-04-24 07:08:30.961284','5','. بھارت',1,'[{\"added\": {}}]',21,2),(159,'2024-04-24 07:08:51.669055','6','.இந்தியா',1,'[{\"added\": {}}]',21,2),(160,'2024-04-24 07:09:10.668944','7','.ਭਾਰਤ',1,'[{\"added\": {}}]',21,2),(161,'2024-04-24 07:09:31.777355','8','.ಭಾರತ',1,'[{\"added\": {}}]',21,2),(162,'2024-04-24 07:09:48.442426','9','.ଭାରତ',1,'[{\"added\": {}}]',21,2),(163,'2024-04-24 07:09:49.918141','1','Mr. Rajeev Chandrasekhar',1,'[{\"added\": {}}]',35,2),(164,'2024-04-24 07:10:05.543370','10','.ভাৰত',1,'[{\"added\": {}}]',21,2),(165,'2024-04-24 07:10:23.088032','11','.भारतम्',1,'[{\"added\": {}}]',21,2),(166,'2024-04-24 07:10:44.446111','12','.भारोत',1,'[{\"added\": {}}]',21,2),(167,'2024-04-24 07:11:05.915174','13','.بارت',1,'[{\"added\": {}}]',21,2),(168,'2024-04-24 07:11:24.397436','14','.ڀارت',1,'[{\"added\": {}}]',21,2),(169,'2024-04-24 07:11:38.203023','2','Dr. Devesh Tyagi',1,'[{\"added\": {}}]',35,2),(170,'2024-04-24 07:11:43.242771','15','.ഭാരതം',1,'[{\"added\": {}}]',21,2),(171,'2024-04-24 07:11:47.595368','2','Dr. Devesh Tyagi',2,'[{\"changed\": {\"fields\": [\"TestimonialsMessages Title\"]}}]',35,2),(172,'2024-04-24 07:13:36.192801','3','Shri Sushil Pal',1,'[{\"added\": {}}]',35,2),(173,'2024-04-24 07:14:48.051798','4','Shri S. Krishnan',1,'[{\"added\": {}}]',35,2),(174,'2024-04-24 07:15:09.700053','1','SOP Document for having website domain name in local language',1,'[{\"added\": {}}]',43,2),(175,'2024-04-24 07:15:16.062441','1','Become UA Ready - ID : 1',1,'[{\"added\": {}}]',9,2),(176,'2024-04-24 07:16:10.075015','2','SOP Document for making Django website IDN compliant',1,'[{\"added\": {}}]',43,2),(177,'2024-04-24 07:16:19.840903','2','Technical Corner - ID : 2',1,'[{\"added\": {}}]',9,2),(178,'2024-04-24 07:17:01.913264','1','SOP Document for making Django website IDN compliant',1,'[{\"added\": {}}]',44,2),(179,'2024-04-24 07:17:08.162987','3','SOP Document for making Drupal website IDN compliant',1,'[{\"added\": {}}]',43,2),(180,'2024-04-24 07:17:29.158752','2','SOP Document for making Drupal website IDN compliant',1,'[{\"added\": {}}]',44,2),(181,'2024-04-24 07:17:49.243475','3','SOP Document for making Django website IDN compliant',1,'[{\"added\": {}}]',44,2),(182,'2024-04-24 07:17:58.950571','4','SOP Document for making Node Js website IDN compliant',1,'[{\"added\": {}}]',43,2),(183,'2024-04-24 07:18:10.889903','4','SOP Document for having website domain name in local language',1,'[{\"added\": {}}]',44,2),(184,'2024-04-24 07:18:19.372095','1','SOP Document for making Django website IDN compliant',3,'',44,2),(185,'2024-04-24 07:18:26.225564','1','UA India Programme',1,'[{\"added\": {}}]',37,2),(186,'2024-04-24 07:18:35.052146','5','SOP Document for making Node Js website IDN compliant',1,'[{\"added\": {}}]',44,2),(187,'2024-04-24 07:20:55.308511','1','main_admin',1,'[{\"added\": {}}]',39,2),(188,'2024-04-24 07:21:02.293361','1','Universal Acceptance (UA)',1,'[{\"added\": {}}]',38,2),(189,'2024-04-24 07:21:11.754342','2','ficci_admin',1,'[{\"added\": {}}]',39,2),(190,'2024-04-24 07:21:24.296280','3','nixi_admin',1,'[{\"added\": {}}]',39,2),(191,'2024-09-27 11:56:32.637179','1','sgpltr@gmail.com',3,'',5,2),(192,'2024-09-30 10:09:27.483562','4','DjangoSuperAdmin',1,'[{\"added\": {}}]',39,2),(193,'2024-09-30 10:09:42.325927','1','bhashanet',1,'[{\"added\": {}}]',40,2),(194,'2024-10-04 12:26:31.691243','5','abc@gmail.com',3,'',5,2),(195,'2024-10-04 12:26:31.714915','6','abcd@gmail.com',3,'',5,2),(196,'2024-10-07 06:18:21.733865','3','pshweta@cdac.in',3,'',5,2),(197,'2024-10-07 06:33:03.974132','1','xyzFor User',1,'[{\"added\": {}}]',70,2),(198,'2024-10-07 08:42:19.952043','9','pshweta@cdac.in',3,'',5,2),(199,'2024-10-07 09:18:49.392116','10','pshweta@cdac.in',3,'',5,2),(200,'2024-10-07 09:23:12.800317','11','pshweta@cdac.in',3,'',5,2),(201,'2024-10-07 09:24:24.887419','12','pshweta@cdac.in',3,'',5,2),(202,'2024-10-07 09:27:09.711958','13','pshweta@cdac.in',3,'',5,2),(203,'2024-10-07 09:28:45.751776','14','pshweta@cdac.in',3,'',5,2),(204,'2024-10-07 09:30:29.350131','2','pshweta@cdac.inFor User',3,'',70,2),(205,'2024-10-07 10:17:54.555305','15','pshweta@cdac.in',3,'',5,2),(206,'2024-10-07 10:19:46.832865','16','pshweta@cdac.in',3,'',5,2),(207,'2024-10-07 10:24:07.889353','17','pshweta@cdac.in',3,'',5,2),(208,'2024-10-07 10:25:35.775343','18','pshweta@cdac.in',3,'',5,2),(209,'2024-10-07 10:33:18.974341','19','pshweta@cdac.in',3,'',5,2),(210,'2024-10-07 10:34:36.788549','20','pshweta@cdac.in',3,'',5,2),(211,'2024-10-07 10:34:36.795390','8','sgpltr1@gmail.com',3,'',5,2),(212,'2024-10-07 10:37:53.327388','21','sgpltr@gmail.com',3,'',5,2),(213,'2024-10-07 10:47:16.618423','22','sgpltr@gmail.com',3,'',5,2),(214,'2024-10-07 10:57:10.585220','23','sgpltr@gmail.com',3,'',5,2),(215,'2024-10-07 11:07:02.075500','24','pshweta@cdac.in',3,'',5,2),(216,'2024-10-08 05:52:53.267603','7','abc@gmail.com',3,'',5,2),(217,'2024-10-08 05:52:53.308343','26','abcd@gmail.com',3,'',5,2),(218,'2024-10-08 05:52:53.311933','27','pqrst@gmail.com',3,'',5,2),(219,'2024-10-08 05:52:53.313474','25','pshweta@cdac.in',3,'',5,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(1,'admin_interface','theme'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(8,'CORE','announcements'),(9,'CORE','article'),(10,'CORE','bestpractices'),(53,'CORE','blog'),(52,'CORE','blogcategory'),(51,'CORE','customforgotpassword'),(50,'CORE','document'),(11,'CORE','documentcategory'),(12,'CORE','documentcategorywithouttrans'),(49,'CORE','documentwithouttrans'),(13,'CORE','domainsyntax'),(14,'CORE','emailaddressinternationalization'),(15,'CORE','emailsyntax'),(16,'CORE','faqcategory'),(48,'CORE','faqs'),(17,'CORE','feedbackcategory'),(18,'CORE','galleryheadings'),(47,'CORE','galleryvideos'),(19,'CORE','genericlist'),(20,'CORE','idncctlds'),(21,'CORE','idnlanguages'),(22,'CORE','idnreadywebsites'),(23,'CORE','idnreadywebsitescategory'),(24,'CORE','idnreadywebsiteslanguages'),(46,'CORE','idnreadywebsiteslangugeurlmapping'),(45,'CORE','idnrequestforuserwebsites'),(25,'CORE','idnrequestforuserwebsitescategories'),(26,'CORE','limitcheck'),(27,'CORE','objectives'),(28,'CORE','otp_for_idnrequestforuserwebsites'),(70,'CORE','otp_for_userregistration'),(29,'CORE','privacypolicy'),(44,'CORE','sopdownloadcounter'),(30,'CORE','soptechnologycategory'),(43,'CORE','soptechnologydocument'),(31,'CORE','stackholder'),(32,'CORE','subscriber'),(33,'CORE','termsandconditions'),(34,'CORE','testimonials'),(35,'CORE','testimonialsmessages'),(36,'CORE','tools'),(37,'CORE','uaindiaprogramme'),(38,'CORE','universalacceptance'),(42,'CORE','userfeedbackdata'),(41,'CORE','userprofile'),(39,'CORE','userrole'),(40,'CORE','userrolemapping'),(64,'dashboard','bulkemail'),(65,'dashboard','bulkemailattachments'),(67,'dashboard','category_list'),(69,'dashboard','english_domain'),(68,'dashboard','language_list'),(66,'dashboard','url_dashboard'),(60,'discussion_forum','answerreplies'),(59,'discussion_forum','answeruserreview'),(56,'discussion_forum','topic'),(58,'discussion_forum','topicanswer'),(57,'discussion_forum','topiccategory'),(62,'django_celery_results','chordcounter'),(63,'django_celery_results','groupresult'),(61,'django_celery_results','taskresult'),(55,'MASS_MAIL','emailattachment'),(54,'MASS_MAIL','emailsend'),(7,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-23 06:15:05.318818'),(2,'auth','0001_initial','2024-04-23 06:15:06.838453'),(3,'CORE','0001_initial','2024-04-23 06:15:11.936772'),(4,'MASS_MAIL','0001_initial','2024-04-23 06:15:12.161718'),(5,'admin','0001_initial','2024-04-23 06:15:12.493376'),(6,'admin','0002_logentry_remove_auto_add','2024-04-23 06:15:12.508970'),(7,'admin','0003_logentry_add_action_flag_choices','2024-04-23 06:15:12.529426'),(8,'admin_interface','0001_initial','2024-04-23 06:15:12.581380'),(9,'admin_interface','0002_add_related_modal','2024-04-23 06:15:13.004090'),(10,'admin_interface','0003_add_logo_color','2024-04-23 06:15:13.100608'),(11,'admin_interface','0004_rename_title_color','2024-04-23 06:15:13.184269'),(12,'admin_interface','0005_add_recent_actions_visible','2024-04-23 06:15:13.262138'),(13,'admin_interface','0006_bytes_to_str','2024-04-23 06:15:13.355849'),(14,'admin_interface','0007_add_favicon','2024-04-23 06:15:13.453644'),(15,'admin_interface','0008_change_related_modal_background_opacity_type','2024-04-23 06:15:13.635918'),(16,'admin_interface','0009_add_enviroment','2024-04-23 06:15:13.820184'),(17,'admin_interface','0010_add_localization','2024-04-23 06:15:13.852792'),(18,'admin_interface','0011_add_environment_options','2024-04-23 06:15:14.109481'),(19,'admin_interface','0012_update_verbose_names','2024-04-23 06:15:14.137378'),(20,'admin_interface','0013_add_related_modal_close_button','2024-04-23 06:15:14.220851'),(21,'admin_interface','0014_name_unique','2024-04-23 06:15:14.269747'),(22,'admin_interface','0015_add_language_chooser_active','2024-04-23 06:15:14.330633'),(23,'admin_interface','0016_add_language_chooser_display','2024-04-23 06:15:14.416966'),(24,'admin_interface','0017_change_list_filter_dropdown','2024-04-23 06:15:14.434876'),(25,'admin_interface','0018_theme_list_filter_sticky','2024-04-23 06:15:14.514420'),(26,'admin_interface','0019_add_form_sticky','2024-04-23 06:15:14.663348'),(27,'admin_interface','0020_module_selected_colors','2024-04-23 06:15:14.876872'),(28,'admin_interface','0021_file_extension_validator','2024-04-23 06:15:14.892575'),(29,'admin_interface','0022_add_logo_max_width_and_height','2024-04-23 06:15:15.130466'),(30,'admin_interface','0023_theme_foldable_apps','2024-04-23 06:15:15.215601'),(31,'admin_interface','0024_remove_theme_css','2024-04-23 06:15:15.248006'),(32,'admin_interface','0025_theme_language_chooser_control','2024-04-23 06:15:15.365782'),(33,'admin_interface','0026_theme_list_filter_highlight','2024-04-23 06:15:15.431626'),(34,'admin_interface','0027_theme_list_filter_removal_links','2024-04-23 06:15:15.519397'),(35,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2024-04-23 06:15:15.679945'),(36,'admin_interface','0029_theme_css_generic_link_active_color','2024-04-23 06:15:15.770176'),(37,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2024-04-23 06:15:16.252987'),(38,'contenttypes','0002_remove_content_type_name','2024-04-23 06:15:16.458985'),(39,'auth','0002_alter_permission_name_max_length','2024-04-23 06:15:16.582363'),(40,'auth','0003_alter_user_email_max_length','2024-04-23 06:15:16.703857'),(41,'auth','0004_alter_user_username_opts','2024-04-23 06:15:16.722340'),(42,'auth','0005_alter_user_last_login_null','2024-04-23 06:15:16.813972'),(43,'auth','0006_require_contenttypes_0002','2024-04-23 06:15:16.822177'),(44,'auth','0007_alter_validators_add_error_messages','2024-04-23 06:15:16.843856'),(45,'auth','0008_alter_user_username_max_length','2024-04-23 06:15:16.872883'),(46,'auth','0009_alter_user_last_name_max_length','2024-04-23 06:15:16.891091'),(47,'auth','0010_alter_group_name_max_length','2024-04-23 06:15:17.001905'),(48,'auth','0011_update_proxy_permissions','2024-04-23 06:15:17.035578'),(49,'auth','0012_alter_user_first_name_max_length','2024-04-23 06:15:17.106830'),(50,'discussion_forum','0001_initial','2024-04-23 06:15:18.673343'),(51,'django_celery_results','0001_initial','2024-04-23 06:15:18.801485'),(52,'django_celery_results','0002_add_task_name_args_kwargs','2024-04-23 06:15:18.934677'),(53,'django_celery_results','0003_auto_20181106_1101','2024-04-23 06:15:18.950302'),(54,'django_celery_results','0004_auto_20190516_0412','2024-04-23 06:15:19.142769'),(55,'django_celery_results','0005_taskresult_worker','2024-04-23 06:15:19.249007'),(56,'django_celery_results','0006_taskresult_date_created','2024-04-23 06:15:19.414706'),(57,'django_celery_results','0007_remove_taskresult_hidden','2024-04-23 06:15:19.451216'),(58,'django_celery_results','0008_chordcounter','2024-04-23 06:15:19.476853'),(59,'django_celery_results','0009_groupresult','2024-04-23 06:15:20.708333'),(60,'django_celery_results','0010_remove_duplicate_indices','2024-04-23 06:15:20.730459'),(61,'django_celery_results','0011_taskresult_periodic_task_name','2024-04-23 06:15:20.770015'),(62,'sessions','0001_initial','2024-04-23 06:15:20.920831'),(63,'dashboard','0001_initial','2024-10-04 10:48:52.767724'),(64,'CORE','0002_otp_for_userregistration','2024-10-07 05:50:55.692850');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02m1qvelsl2ka82no14iwdz36bcfgiz3','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1rzXHV:bP73p7N3PhH4rjfaPyFHW45nPDE5WD3zF5QgP6l8jhg','2024-05-08 07:43:05.558377'),('1cg2ifaofwmd9863tenzifnagzzhyroe','.eJxtj7sOwjAMRX8lykyrplQ8utKBDSSYWCJDTYmU2qVJ6ID4d1JQJ5AHS8dHtu9TOnTOMGkL1ARoUEPXEbQoS4kkZ7LHe0DnsdahtxEeuKt4IMtQbziQxz5K7gdq00VZ5cs0i6W-jp4k7c3nQp7lRZIVSV4c1aJUqizm6XqlTv9XRrRFqA014x-7vaj4ElokL67cixs84kQMeHbGo6i5BUNijCJit3wBK6aQ8vUG-wBVag:1rza5F:xtdi9gH0wzn6NrY5AJdH_EFFPiuybhT3UINQepgP0C0','2024-05-08 10:42:37.513439'),('2fl1z5qreo9cm2f6w8tvyn7b7cm8dtfa','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJIaW5kaSIsInNlYXJjaF9ibG9nX3N0cmluZyI6IlVBIn0:1swI0f:OA1micXJR6hoawk7QiZ0kjcmwJ-WSgtsIqii9kZ4FPs','2024-10-17 09:20:33.077017'),('2k6s2n5njzlyjsdilpja1zjskb1r4x4j','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1s7UBW:e92b-LWLo0d8hNUgRMFFzTQOZUSmI7rvTLJDJjCCH2o','2024-05-30 06:01:46.161312'),('35m53mjnejd9sncrxtpzr57274no9q8k','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJuZSJ9:1rzV9r:ApaHuM9zLPE_jBq62cYkvRqGZvjEhmXrNiD-1jfFYck','2024-05-08 05:27:03.174898'),('3ohghqymnaat6zx2it8ko1ca2jl8mlry','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJrbiJ9:1rzWyJ:wOtxS515YgCbxbls1eYAeYN89NRpeh6LHsUnmfWcqfk','2024-05-08 07:23:15.690109'),('4360zrj26ic9sooe8cozj8inp9c1hukr','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1svFNk:N1sEgNW9Y7udU9-vzd9-3ads9eIAhYjfms-rF6gnJ6o','2024-10-14 12:20:04.897931'),('4wuzdx32m8a9pomrdsirvjh8kcqm4yrv','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtYWkifQ:1rzZMq:CFno4xBnTIFOVxEipijGdaMxASqz-0LWWrf3DL7Axvw','2024-05-08 09:56:44.350313'),('5x37riiwwh2e9ej38it8extaq1hemzkn','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJkb2kifQ:1rzV9k:fROJ6f-XSHRDf1o__75Fu3EYwotHc-3-YrAIgLPL1ls','2024-05-08 05:26:56.954806'),('63g0b75kleyvd56n7lcen5e5kzjv05q4','.eJxVjLsOAiEUBf-F2hCeCpb2fgPhPpBVA8myWxn_XTfZQtszM-clUl6XmtbBc5pInIURh98NMj64bYDuud26xN6WeQK5KXKnQ1478fOyu38HNY_6rT0b9N6Cj6BsYHXEkyuEFBWC1sURBC7GoiXkohSZ4gxxyORUNLoE8f4A--w4tw:1rzVWJ:hHRfCAnczJQ2ssuxfl8EWSDLAwGL1qQfhiUqaulLlCo','2024-05-08 05:50:15.914208'),('6cyvsgxu80xz4npuy3dsqxbdh3ug5u60','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYXQifQ:1rzZNg:lgZbQlnAFY-JdtEI9J6vYEDvHPBM8esmcHjO0Eo1tyw','2024-05-08 09:57:36.541960'),('6tm3plid82pspy660n3so1tjjqay5phc','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1rzaxf:3Mvk6pPrQeB6GlafNJGXESvqNk6FQl7M1Bn2BfUdMgM','2024-05-08 11:38:51.659436'),('7hsdltd6sqk5agbjpywuopoo07yfw5mc','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1rzb5E:5sMHktM3Cks4AhFd772KQJviMfxlyVzUXuTN5yHK9og','2024-05-08 11:46:40.935431'),('849eosd7bcnb88guk9qrgwpundcxx2vu','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1svCVv:48Dgc0Ilx1KJV7ZpjDqUzoDYrTC2rManksjGWzZdOc8','2024-10-14 09:16:19.738810'),('8lkkkwd61lppte2w0wimygxjod75dgee','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJndSJ9:1rzVSG:W5c_o8yM1UL2BqqdIGZ91Vd1XBfU-iUh9WoyOrApChQ','2024-05-08 05:46:04.430186'),('8xmvy0ea23it6b4oq7y236f09jkygqaa','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJIaW5kaSJ9:1svYuy:srNVvoXxyJnN1W4mSx0mDFipbal8pnXyrvKCp7-xPzQ','2024-10-15 09:11:40.466369'),('925gjvlz56g9ygko5wyviiyovnn7uf7p','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJkb2kifQ:1s221w:Bid7kgY9OnhaGwuFKcgJAvDx2HYi01QIXDQEjwm13o4','2024-05-15 04:57:20.356810'),('97qa9v88igwnb0vjyev491coijn9606b','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJIaW5kaSJ9:1svbEf:wTIzd7KSNb7NUkHyWukmCWJt5m__OdkWLL1GoRjKtS0','2024-10-15 11:40:09.135435'),('9og0fndnkl7cuodpl3lqeguk92kuk51e','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1s7rZ8:9IHAmfUEJlEcSYlYIbQkdrd0FX6lJq3jTHw7SU28Jeg','2024-05-31 06:59:42.478989'),('abtjqdo8zm3k2o1xhpkkiulqcmqqf6r0','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtbmkifQ:1rzZMy:dQZuADfRqfdMA8hLsGD0iNhLZVpB1Ezd9hMb_7rScsk','2024-05-08 09:56:52.404526'),('afpmmhqvgqzfm4ye9fsyxabx1e199mo2','.eJxtj7EOwjAMRH8lygyoLZGArnRgAwkmlshtTRspjUucwID4d1IQE8iDpfPT-e4hGZkNOW3BdRE61DCODgaUpQSWM-nxGpEDtjp6m8QjjRXdnSVotxRdQJ8g_hG1GROcF6tFlib_MPoL6WDeH4qsUPNMzQt1ylWZqVJtFuvN8vzfMkk7hNa4bsqxP4iKmjigC-JCXvRwSxdxx5pNQNHSAMaJqYpI21IDVnxLTv4Ivul1banTHPzH9BBra7hHls8Xy9Jhfw:1rzY9C:bcAKHmwqkp5yYiQW6IHgeNXHgbX-KCkbI00JCyfiljg','2024-05-08 08:38:34.867144'),('ajprf3dc0uild5vdi7wng26gruo25lci','.eJxVjDsOwyAQBe9CHSEWDGtSpvcZ0PILTiKQjF1FuXtsyUXSvpl5b-ZoW4vbelrcHNmVSXb53TyFZ6oHiA-q98ZDq-sye34o_KSdTy2m1-10_w4K9bLXIQtEGTwgaqEMoB2yUlqAtQLAoBmHEAFUGjMCaZFDjrS7GSQpUMQ-X6nvNqk:1swEaU:U3kXeLHC9zqitpdsBxVbe7dRJPfTgEr3DtqWTCJel2k','2024-10-17 05:41:18.798100'),('cac4jtxdda6dp3t2dr3176jc6bue83ug','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtbCJ9:1rzYpt:FTveNAcXnqOe8l6sjApIaXp4BHNVs96zXABf4k47mj0','2024-05-08 09:22:41.178495'),('caeqluqrwvua2w6b7rpf8e5j7xwuv6ij','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s7v66:O_Q44lYsGkgdOCMEUtCfG63fTYoItIf-zl0tfDlDcdE','2024-05-31 10:45:58.233190'),('clnlg7ao4qjn34h0belt2l12mcmnr2tg','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJ1ciJ9:1rzWbR:6_C0iDLL1eCLYSUlYK1yA4a33X6ozksM3SyYsUipFRw','2024-05-08 06:59:37.640094'),('dhvjhqo4lzkznnec851z2qddonvz0xz7','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1sCvFb:vDCph4vACI4k_A3JuCJm_PH2a00KINx3ZJZU-iorF14','2024-06-14 05:56:27.193329'),('dqq11vy2je019le9ij74mywa9wzvwmc7','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzZGluIn0:1rzZAY:eAallm8e2vr0ZzObptXer7IdF4OZr8Gl7Q-fINyseV4','2024-05-08 09:44:02.529529'),('e0an5o8b87o5btum0cv624s9pw6qswn5','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJwYSJ9:1rzZNH:aZMXWLmuRU6J4x0Aq6PDqllIVWH5hkU35-XF9jQmpis','2024-05-08 09:57:11.476774'),('e6mpuhti7oiaycywrftcwzwj4neej864','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s6hRZ:B5Z0eVY0B9Kj_M213SMOVf3rtXL5hfPQXTxzSfoz--M','2024-05-28 01:59:05.196875'),('e8i90ozcnu9ox1eu95bqwy79f6e9889l','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1s8w6y:OQ869HlKbFxkfh_060EU2PNrUXhNzrep4pVbv41aTjA','2024-06-03 06:03:04.053138'),('femeitt5xsxbctiz8590sxylnz8zvi7p','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1rzw4g:A60c78iwuIBtf25enbLjiQG5mPHDA1l2qH2YZci1tNQ','2024-05-09 10:11:30.479569'),('ffkjr5cwhukvhzawwajgj483gs2b7d1v','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJhcyJ9:1su5N1:r91qTMI22l0b8tojeQSu6vySpjYsa-G9zcVmjZuZICo','2024-10-11 07:26:31.334745'),('gk4xm89355ak2glfq4x8aq779fxht3jn','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s6hRY:YNovHBs739zdTjWCblrKIBSCFBFvTXGclTYylKJJlqQ','2024-05-28 01:59:04.321214'),('gmxhej0c9p8s9o6a72r5ia2iob53ple7','.eJxVjDsOwyAQBe9CHSEWDGtSpvcZ0PILTiKQjF1FuXtsyUXSvpl5b-ZoW4vbelrcHNmVSXb53TyFZ6oHiA-q98ZDq-sye34o_KSdTy2m1-10_w4K9bLXIQtEGTwgaqEMoB2yUlqAtQLAoBmHEAFUGjMCaZFDjrS7GSQpUMQ-X6nvNqk:1syTjt:1jWgY6QkSCb1q7Ull3Km95VrGofH4ZVzIHRkl0O_yw4','2024-10-23 10:16:17.068221'),('ikv934wgrjh89pfj5l528vrjgrinxlbr','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1rzWAO:GHiIWO9D3_fLvPHBD7dH4z-geX96DfWv6gh3qh0zja0','2024-05-08 06:31:40.951813'),('j5i5vscisvln1wav5ry6zi91ofdga72f','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1rzvk1:kLTFYsDaoe6Vn8ka5OPqdn2_XjKCsFlw0hCmoZ4mI48','2024-05-09 09:50:09.259764'),('jo3ak0eou3rni3ahot4dcfilp3ie3f52','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1s7t4m:wHOwl1DyD0hCgZXWbOy8Psfi89cMQ-xdQXXD8mRf9DU','2024-05-31 08:36:28.254316'),('kcghprjl20ihhgcauhr8dmaicyhptir5','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s9d9K:gQolbJ4tvh6_cs0FdN4QYxmTGVDrBQC_L7rq8nchBCo','2024-06-05 04:00:22.868512'),('kq9ka8wwdmm3t090grra5jfakjno6nvl','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJvciJ9:1rzZN9:J-X-FsKeUCtVwl9sqTSe7kKoFJ2tgLprwKIbZT40j60','2024-05-08 09:57:03.039749'),('ks9fo401e8paklzngl7m4vvelc3uhym4','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1su5MX:1NkuRIn3lES5kxakSM7l3_QQcMArhgsvxurNlCIq9Ng','2024-10-11 07:26:01.593508'),('lnispztutk966ymcbhuj3wnku81m5vlu','.eJxVjDsOwyAQBe9CHSEWDGtSpvcZ0PILTiKQjF1FuXtsyUXSvpl5b-ZoW4vbelrcHNmVSXb53TyFZ6oHiA-q98ZDq-sye34o_KSdTy2m1-10_w4K9bLXIQtEGTwgaqEMoB2yUlqAtQLAoBmHEAFUGjMCaZFDjrS7GSQpUMQ-X6nvNqk:1sxh4M:Dub_NcUCj5xYxUYDP15SJDAyEfy1mw5SDdKGlmiVlyk','2024-10-21 06:18:10.314010'),('ls6udah7px394wcnnphkasplx4ze9fbf','.eJxVjDsOwjAQBe_iGln-xD9Kes5grddrHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszyU6_WwJ8UNtBvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6reGhC5bg5MJmQIJ8snLYJyajJWBglLZ6kKkpNeiWG2VSojkQZQinQH2_gDlwTfj:1rz9lS:3exBspgrN-Ut0eiemGCrAJSOzojufYdzXA-KPOt5p2Y','2024-05-07 06:36:26.238758'),('m6lqdalalujdgm7leiwylsk9xtp64ry4','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1s7aW8:hLkp-jrKpErlAeFW8tgMPPs9LLeeUePHRwQBU3pTClQ','2024-05-30 12:47:28.951283'),('medj6uwe73n0abqjojjbzuc9pudrnvio','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1s7q7r:KwbfKEOproaMgEH23dTNyDr-YYM176J-ePsM2oDA8NY','2024-05-31 05:27:27.689468'),('n545ay7ofgfftfqeve778k2sfv8pqzi1','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJibiJ9:1rzYpi:guHUwGBEOY0eJv5DYrAUoRvIu_C8GRJZ_gbQ35WnnyU','2024-05-08 09:22:30.746700'),('n5hvt7rwd355ol2edlqseax3nqeh0fzb','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJ0YSJ9:1rzZNv:vN7iuqMtZSAVCwpchSrC4hA2FF-pAq0psM7noeqpRPk','2024-05-08 09:57:51.439593'),('n72qfsfzxcn5k4neyc1i3y0mod12p5c1','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJhcyJ9:1s7t5n:cjQGRIR4fRorNLl6Aq1I4jUVWPqfeAzQpuG0yTNR5SA','2024-05-31 08:37:31.546447'),('nfjogtmjfj9qaiom74v8nr3wzx7r9d4k','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJrcyJ9:1rzYww:J9sEVXDj49MB2BKsIdsYTy4r-4w3d01Rw2rl4ittt70','2024-05-08 09:29:58.210947'),('odao1c4b3f2re4i8rdbyy2ux53itwjo2','.eJxVjEEOwiAURO_C2pACv_6PS_eeoYEBbdVAUtqV8e7apAvdzntvXmoI6zIOa8vzMCV1UlbU4XeMAY9cNpLuodyqRi3LPEW9KXqnTV9qys_z7v4djKGN35ptD_HekBjrcm8ZHQmEOlggejoSwA7oo2PukmEyQQyCiZntVUi9P95dN0k:1sy3Ap:uIoE2k-yjiECWu-kXOepwpZLhRvaf5oAmBwapzXI70g','2024-10-22 05:54:19.835061'),('of0egvd9arq5tu1slgksstiq36scbtj0','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s7qO1:55gGXfQD0h4oQdzDBtghYxUpuh6tMLk0vpVUENxceMg','2024-05-31 05:44:09.304571'),('or1ldx9mjebu6exz3qd965n5pkz8fvfv','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1s7t67:OQzyIqey29qirvY1d0ZGAs5SbBBuicnlgAQoKrptldg','2024-05-31 08:37:51.119802'),('oseqewnlt2iifqh3hckf20uh9yzi4pvc','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1sYNBa:o7FQ7Kk3xO7lGowE43LMxiyfY9t1WV8Gw9m0ukVNP-4','2024-08-12 10:00:58.444763'),('pfnf7r36ihdtd0j5g3ket8kkdsewuu62','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1svFGk:1E9UfpemdRMzrqluqWce-qcel2VKoxvakYqiveMgXIE','2024-10-14 12:12:50.144366'),('pjyw20izgibbweidbjl5qbfd6jygreub','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJ0ZSJ9:1rzZO8:0CjAUQvE08H3sqcWDeE540CwLFTPJU4jPsDup28sbE0','2024-05-08 09:58:04.695487'),('po76xwjmexeacbzkavveltsss7bbmriv','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1svDXC:hMmO8Go-HoDv5N1IaBONuzmKHT8tFmIjd8CuuZ1IkiI','2024-10-14 10:21:42.436274'),('r8vb0m1a34f2oh2o1kw1jua0928b9a7l','.eJxVjLsOAiEUBf-F2hCeCpb2fgPhPpBVA8myWxn_XTfZQtszM-clUl6XmtbBc5pInIURh98NMj64bYDuud26xN6WeQK5KXKnQ1478fOyu38HNY_6rT0b9N6Cj6BsYHXEkyuEFBWC1sURBC7GoiXkohSZ4gxxyORUNLoE8f4A--w4tw:1rzVWe:90VEoOOEtw2zWoCcvOFmPwivWsl2ld2Q25XQnVS74LE','2024-05-08 05:50:36.321195'),('rk7utsmh37qzmk65tl4oq83ci76zymre','.eJxVjDsOwjAQBe_iGln-xD9Kes5grddrHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszyU6_WwJ8UNtBvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6reGhC5bg5MJmQIJ8snLYJyajJWBglLZ6kKkpNeiWG2VSojkQZQinQH2_gDlwTfj:1rz9gv:dw25lJGGJa1kmCUUcXNqQ8xBmqbyNeRw_sGr-E0VSIs','2024-05-07 06:31:45.455292'),('s4ufsa1x6qfrsc209bzxizfqjzjb7sit','.eJxtj8FOAyEQhl-F7NkSlgXd9lh78GI00ZMXMsDQRbewLmAPxneX1TbR6Ink_7_5mHlvFJQ8qJJwVt42m4Y3Fz8zDeYFw1LYZwj7SE0MefaaLgg9tYneRovj9sT-EgyQhjotkRspOy3XmnU9sktzJZw1ds2MblsnrO7R8c501qBjzHInuMUerGBr3rq-ShOm5GNQY92jwB4VTFOAA1Z7gtrP-FowZbSqzGMNH-K0i8cwRrDXsYSM8yL5Eyo_VbhllLOeSklbwb45dQZV9l-_cMbFiokVF48t20i-ET1lkj_9r63RDYL1Yb_scndPdtGUA4ZMXJzJAG-1IUfUyWckNh7AB7KcQ-o7RgMjOR_afHwCDKeOHQ:1s0I56:6Z3TERsQhdaieUS448Qo_d2zbjXpAWdbr2YPC0EdKEg','2024-05-10 09:41:24.272310'),('sazgcu2xep56mon1cncmdpso45cezhyp','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJrb2sifQ:1rzZMO:VkXhXM7x6yNCZTv1N62xF42f_fFqNUznSZnI-yTXQGw','2024-05-08 09:56:16.026009'),('sodqdpkciqo4254m8xke9tk390561yxb','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1rzZNW:dGYKacfbcIZyUFE8M_weNgt8MoOYg2Tled_rcqRrpEs','2024-05-08 09:57:26.991712'),('t05leh6a19sm51tdijkjp9tp6d31fyeo','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1s7rYN:WZTqzCPwl34zCFblHBREMA0A8P1ZbtNskWRD69i3mec','2024-05-31 06:58:55.377586'),('tga72vtkgv8oh3qa5r0mufr14cslvqnd','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJzYSJ9:1s6hRX:7GofEVRzxhvaEngCBApT0iAutD0nTnD6it6veg0qeeg','2024-05-28 01:59:03.977210'),('tlwtos49a82jwoli9z57q2ox3dtnxwup','.eJxVjLsOAiEUBf-F2hCeCpb2fgPhPpBVA8myWxn_XTfZQtszM-clUl6XmtbBc5pInIURh98NMj64bYDuud26xN6WeQK5KXKnQ1478fOyu38HNY_6rT0b9N6Cj6BsYHXEkyuEFBWC1sURBC7GoiXkohSZ4gxxyORUNLoE8f4A--w4tw:1rzVX9:u9cK4UmdZc7rOnaHcJYwUVfp6fpuqifGsFa4Kk7vQRM','2024-05-08 05:51:07.038899'),('tsh3133wvf9bky89p2nbv1gozesk1js4','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJicngifQ:1rzWup:HhK-bQdYPSg3mmyXPTJFc6mN-RUnwO_ig-8lBVz8VVo','2024-05-08 07:19:39.407655'),('vv8yud5f1z275r2bgn9v1cxnes863wa6','.eJxtjjELwjAQRv9KyGxLEitIVx3cFHRyCWdz1kCaq01iB_G_myqddPrg3eNxTz7gPWGIaHQaHK_5kfotjd4RmA0lH3HgCx5-oLZ9lqUolViXn5FfT8-ijrbD7CihqkJUhapOUtQrVQtVymV1_p_NaIdgrG-nX_YHtqUmdegju9LAbvDIFzbiJdiIzFAH1jMPHbK8jhpwzIFvE7Q49TEES17PSEPfT3JOB-CvNyihVh8:1s23z9:tkoR7q41eOZXGdrRljUsuE12Dj85WqBaD6U0x4gg_jE','2024-05-15 07:02:35.940873'),('wz5wrypmksqycmdm4y4y23hdb9fgcvfb','.eJxVjssOwiAURP-FtWkoD6Uu3fsN5MK9FLRCU9qV8d-lSRe6nTNzMm9mYVuj3SotNiG7MsFOv5kD_6S8A3xAHkvnS16X5Lq90h20dveCNN2O7p8gQo1trUl4raXTg-PSED_7iwroceDe9X1Q6AwFIb1ET4FzFEEJJAOo-CD6YJq0Uq2pZDu1HxuMZGGeM7yo2WNiny_WFERe:1rzXO1:bk7HgSwsQgyLRqKkdOPdA8UxJuWY3PuuVcZA4Xo4jks','2024-05-08 07:49:49.014559'),('y0hbr4y5gdvb6nhaedk87ajwl0vo8isj','.eJxVjEEOgyAQRe_CuiGMqKNddt8zkBEGtbVgRFZN715M3Lh97_3_FYlTmmMwC4Ux08iG1jXQh8VdxE3chKG8TyYn3szsCqyubCD75nAI9yoPUdoY9m0e5JHI0yb5jI6Xx9leDiZKU1lbrxArOwBio3QL2Nde60ZB3yuAFtuutg5Ac-cRqFHeekel9VCRBk3i9wdOo0Jg:1svZ9i:6tVNRsHQvleweMpCn4z3ymLbB5nYO8OEEWQVDUGS5hE','2024-10-15 09:26:54.727574'),('ykdleawq1910fi7acf8pwfba3n63bltj','.eJxVjDsOwyAQBe9CHSEWDGtSpvcZ0PILTiKQjF1FuXtsyUXSvpl5b-ZoW4vbelrcHNmVSXb53TyFZ6oHiA-q98ZDq-sye34o_KSdTy2m1-10_w4K9bLXIQtEGTwgaqEMoB2yUlqAtQLAoBmHEAFUGjMCaZFDjrS7GSQpUMQ-X6nvNqk:1swgfB:ytght-m-obAj7iRbsNR_PxBcAlz90basDldFmFbJ_o0','2024-10-18 11:40:01.353714'),('ypgz5jy81p4j8enwytgniuzlylo08k7f','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJlbiJ9:1s7sKm:TOOhKF7XVNnxDTjxVjUyaR3Wz7AqzP6mUNzHJosX5RA','2024-05-31 07:48:56.226514'),('z05yo9cc8zyqlkcfei5g2dtbotyq3qnf','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJtciJ9:1s7rZO:FJHoeLFj9ThZojapsK3Xhp7MlfekPiXZJ0yCnlLF_Mg','2024-05-31 06:59:58.819048'),('z0f7p610uapmqg08b75u12iax53yewhb','.eJxtjzkOwjAQRa9iuSYomwRKSwpoAAkqGmtIhmBwPMaLUiDujklEBdVI_73Zntyhc5K0UKC7AB0KMEZDj7ziDvgscrDNVZwVdcJ5K3UXyYCRWHwEdB5bEayK4YFMTYNWBO2KgvZoP-0_oZAmylk6z9PlfCyLyRNfUXg57s_TvEzSMsnLY5ZVxaL62EV5-j82RmuEdjrwsNuzmprQo_bsQpb1cI-E1bf4JrEBz056ZJt6yxrqjZKgPX-9AVZAW9I:1s21gW:-BZ8nc8EnvT7CRg1MfSc3jVkkiG3arhqYX_pX9HNukw','2024-05-15 04:35:12.762947'),('zcgotdps4qew4gfkcmrvnxikl1glriu1','eyJzZXNzaW9uX2xhbmd1YWdlX2FwcG5hbWUiOiJoaSJ9:1su5N5:Hm1sqxuYuC-ZM7iSxNvT-43amrSavCMMGkx0x5q_Kmg','2024-10-11 07:26:35.789238'),('zryzwp414ioica3es37q3ze02yf1tm1n','.eJxVjDsOwyAQBe9CHSEWDGtSpvcZ0PILTiKQjF1FuXtsyUXSvpl5b-ZoW4vbelrcHNmVSXb53TyFZ6oHiA-q98ZDq-sye34o_KSdTy2m1-10_w4K9bLXIQtEGTwgaqEMoB2yUlqAtQLAoBmHEAFUGjMCaZFDjrS7GSQpUMQ-X6nvNqk:1swhOw:5ndb7f-u3U--rHhwvDAQxUU2yrJxngoCrUdxo6yUv-c','2024-10-18 12:27:18.267337');
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

-- Dump completed on 2024-10-09 15:59:54
