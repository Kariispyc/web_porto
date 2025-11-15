-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: web_porto
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biodatas`
--

DROP TABLE IF EXISTS `biodatas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biodatas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `foto_diri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodatas`
--

LOCK TABLES `biodatas` WRITE;
/*!40000 ALTER TABLE `biodatas` DISABLE KEYS */;
INSERT INTO `biodatas` VALUES (1,'Hikari Naufal','2004-04-18','Sukabumi - Jawa Barat','kariispyc@gmail.com','085659453319','Saya sangat antusias dengan desain web dan aplikasi, dengan minat yang kuat pada videografi dan fotografi. Saya senang menciptakan pengalaman digital yang menarik secara visual dan ramah pengguna, sekaligus menceritakan kisah melalui lensa. Saya selalu bersemangat mempelajari perangkat baru, mengeksplorasi ide-ide segar, dan berkolaborasi dalam proyek-proyek kreatif yang mendobrak batasan.','images/hikari.jpg',NULL,NULL);
/*!40000 ALTER TABLE `biodatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `biodata_id` bigint unsigned NOT NULL,
  `nama_penghargaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemberi_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_biodata_id_foreign` (`biodata_id`),
  CONSTRAINT `certificates_biodata_id_foreign` FOREIGN KEY (`biodata_id`) REFERENCES `biodatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (1,1,'FLS2N Tingkat Provinsi Jawa Barat','Dinas Pendidikan','Juara 2',2021,NULL,NULL),(2,1,'Certificate of Competence TV Broadcasting','Badan Nasional Sertifikasi Profesi (BNSP)','Competent as an Editor',2022,NULL,NULL),(3,1,'Certificate of Competence TV Broadcasting','Badan Nasional Sertifikasi Profesi (BNSP)','Competent as an Junior Photography',2022,NULL,NULL),(4,1,'Certificate of Competence TV Broadcasting','Badan Nasional Sertifikasi Profesi (BNSP)','Competent as an Camera Operator',2022,NULL,NULL);
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2025_11_08_200243_create_biodatas_table',1),(2,'2025_11_08_200344_create_pendidikans_table',1),(3,'2025_11_08_200356_create_pengalamans_table',1),(4,'2025_11_08_200407_create_skills_table',1),(5,'2025_11_08_200417_create_portofolios_table',1),(6,'2025_11_08_200845_create_certificates_table',1),(7,'2025_11_08_202023_create_sessions_table',1),(8,'2025_11_08_202322_create_cache_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendidikans`
--

DROP TABLE IF EXISTS `pendidikans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pendidikans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `biodata_id` bigint unsigned NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk` year DEFAULT NULL,
  `tahun_lulus` year DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pendidikans_biodata_id_foreign` (`biodata_id`),
  CONSTRAINT `pendidikans_biodata_id_foreign` FOREIGN KEY (`biodata_id`) REFERENCES `biodatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendidikans`
--

LOCK TABLES `pendidikans` WRITE;
/*!40000 ALTER TABLE `pendidikans` DISABLE KEYS */;
INSERT INTO `pendidikans` VALUES (4,1,'SMK Negeri 1 Kota Sukabumi','Menengah Kejuruan','Teknik Produksi Film',2019,2022,'',NULL,NULL),(5,1,'Universitas Muhammadiyah Sukabumi','Strata 1','Teknik Informatika',2023,2027,'',NULL,NULL);
/*!40000 ALTER TABLE `pendidikans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengalamans`
--

DROP TABLE IF EXISTS `pengalamans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengalamans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `biodata_id` bigint unsigned NOT NULL,
  `jenis_pengalaman` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_mulai` year DEFAULT NULL,
  `tahun_selesai` year DEFAULT NULL,
  `bulan` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengalamans_biodata_id_foreign` (`biodata_id`),
  CONSTRAINT `pengalamans_biodata_id_foreign` FOREIGN KEY (`biodata_id`) REFERENCES `biodatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengalamans`
--

LOCK TABLES `pengalamans` WRITE;
/*!40000 ALTER TABLE `pengalamans` DISABLE KEYS */;
INSERT INTO `pengalamans` VALUES (1,1,'Freelance','Wibawa Picture','Editor Behind The Scene - Short Movie : Cenayang',2019,NULL,'','',NULL,NULL),(2,1,'Freelance','Stekmensi Channel','Content Creator',2019,2022,NULL,NULL,NULL,NULL),(3,1,'Freelance ','SpeakOutYouth Indoensia','Animator',2021,NULL,NULL,'nanti',NULL,NULL),(4,1,'Magang','Barcode Organizer','Documentation Team at Impactnation Japan Festival 2023',2023,NULL,'Februari - Juli',NULL,NULL,NULL),(5,1,'Freelance','Barcode Organizer','Crowd Control at Nandayo Japan Festival',2024,NULL,'Februari',NULL,NULL,NULL),(6,1,'Magang\r\n','MentalHealing.ID','Bussines Depelovment as Editor & Videographer',2025,NULL,'Januari - April',NULL,NULL,NULL),(7,1,'Organisasi','Himpunan Mahasiswa Teknik Informatika','Editor | Videographer | Social Media Management',2025,NULL,'Januari - Agustus',NULL,NULL,NULL),(8,1,'Pemberdayaan Kepada Masyarakat','Universitas Muhammadiyah Sukabumi','Editor | Videographer | Social Media Management',2025,NULL,NULL,NULL,NULL,NULL),(9,1,'Organisasi','BEM Fakultas Sains dan Teknologi','Editor | Videographer | Social Media Management',2025,NULL,'September',NULL,NULL,NULL),(10,1,'Freelance','Barcode Organizer','Crowd Control at Impact Japan Festival 2025',2025,NULL,'Oktober',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pengalamans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portofolios`
--

DROP TABLE IF EXISTS `portofolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portofolios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `biodata_id` bigint unsigned NOT NULL,
  `nama_project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year DEFAULT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_project` enum('storage','public') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `tipe_konten` enum('gambar','youtube','reels') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gambar',
  `link_project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portofolios_biodata_id_foreign` (`biodata_id`),
  CONSTRAINT `portofolios_biodata_id_foreign` FOREIGN KEY (`biodata_id`) REFERENCES `biodatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portofolios`
--

LOCK TABLES `portofolios` WRITE;
/*!40000 ALTER TABLE `portofolios` DISABLE KEYS */;
INSERT INTO `portofolios` VALUES (1,1,'Reels - MentalHealing',2025,'Editor','images/thumbnail/reels-mh1.jpg','public','reels','https://www.instagram.com/reel/DIOV7bITlV5/','',NULL,NULL),(2,1,'Reels - MentalHealing',2025,'Editor & Videographer','images/thumbnail/reels-mh3.jpg','public','reels','https://www.instagram.com/reel/DHV7movTroL/','',NULL,NULL),(3,1,'Reels - MentalHealing',2025,'Editor','images/thumbnail/reels-mh2.jpg','public','reels','https://www.instagram.com/reel/DHvcOvbzQcH/',NULL,NULL,NULL),(4,1,'Film Pendek - SNTR',2025,'Direct of Photography & Editor','','public','youtube','MsE8EHnuS4c','',NULL,NULL),(5,1,'Film Pendek - Cerita Kopi',2021,'Direct of Photography & Editor',NULL,'public','youtube','fXqahW2uAaw',NULL,NULL,NULL),(6,1,'Taring Series - EP : Teliti',2021,'Direct of Photography & Editor',NULL,'public','youtube','VZ6v02npokU',NULL,NULL,NULL),(7,1,'UI/UX - Stekpro Rental',2025,'Designer UI/UX','images/thumbnail/stekpro.png','public','gambar','https://www.figma.com/proto/pvhGQEox0HufXm0nHqAcZ4/Stekpro?node-id=13-7&starting-point-node-id=13%3A7',NULL,NULL,NULL),(8,1,'UI/UX - Sukabumi Serenity',2024,'Designer UI/UX','images/thumbnail/serenity.png','public','gambar','https://www.figma.com/proto/G1fQywbCooperSy34lecGM/SS?node-id=1-3&t=N9n6FOXIuTpjZMW3-1',NULL,NULL,NULL),(9,1,'UI/UX - Saji.in',2023,'Designer UI/UX','images/thumbnail/sajiin.png','public','gambar','https://www.figma.com/proto/HQvcUXIH4NWZzO6ynjKk5g/Saji.in?t=SIFNYYVfewWvtVY7-1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `portofolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2QDnGp4Rx2OG0GxcsFNnVJV3weT5N9lLO1CltTQT',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmVxVGJuTGtiQ3hiZVJVZUlMejV1ZTFRVjk3V2VJMXVkZDI3WXVLcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763200815),('6l5uJNRIs5PM5dRKyFymILH0ExW1jyOBYp69zRlU',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3o5YXRFeTMzU3duVFZWajlEZENhallSanFMcmxicHpkOTBDdTVYTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763222311),('9DHN4cH2aFp0kV2p0jLJJLDWKCCQR7TLsGTBm2jB',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUJUOUxmYzB4bnFTbW9ITVpHcXNkdzl0VEpGd0NZS2tpTnNCMTFRViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763038346),('cEbaaK3V1ir12C27MpjBu5uYNxSdIV0aMGApCqjr',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFo4ajBlOHM4TUZ0bFdEc2ttSmlyelVRTVJzUHE3WnFMNEc3Y2JBcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763038373),('pyK7k4wVxOPxghTDgv4e84ibDxjNHbBtpb4aJwOX',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUldQZ2dUQTYxb2Znb29iRmVyZ0NKbklhd2tId3BWOVpXaDhvYVpRcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763197760),('X3GGEbisL41dh4BLDT8Ocdfn1WJXTSB5rsSAOAIU',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEU5ajFRdmJ0NFc0M2htUVZUU3dmVW1ub0ZyRmVONXZGV1V5M2RqQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763058379);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `biodata_id` bigint unsigned NOT NULL,
  `nama_skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber_skill` enum('storage','public') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skills_biodata_id_foreign` (`biodata_id`),
  CONSTRAINT `skills_biodata_id_foreign` FOREIGN KEY (`biodata_id`) REFERENCES `biodatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,1,'Premiere Pro','images\\pp.png','public','Mahir',NULL,NULL),(2,1,'After Effects','images\\ae.png','public','Beginer',NULL,NULL),(3,1,'Photoshop','images\\ps.png','public','Mahir',NULL,NULL),(4,1,'Canva','images\\canva.png','public','Mahir',NULL,NULL),(5,1,'Figma','images\\figma.png','public','Beginer',NULL,NULL);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 23:01:08
