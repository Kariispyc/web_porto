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
INSERT INTO `biodatas` VALUES (1,'Hikari Naufal','2004-04-18','Sukabumi - Jawa Barat','kariispycc@gmail.com','085659453319','Informatic Engineering Student at Muhammadiyah University Sukabumi | Video & PhotoGrapher | Editor | Media Specialist | Graphic Design | UI/UX |',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (1,1,'FLS2N Tingkat Provinsi Jawa Barat','Dinas Pendidikan','Juara 2',2021,NULL,NULL),(2,1,'Certificate of Competence TV Broadcasting','Badan Nasional Sertifikasi Profesi (BNSP)','Competent as an Editor',2022,NULL,NULL);
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
INSERT INTO `migrations` VALUES (1,'2025_11_08_200243_create_biodatas_table',1),(2,'2025_11_08_200344_create_pendidikans_table',1),(3,'2025_11_08_200356_create_pengalamans_table',1),(4,'2025_11_08_200407_create_skills_table',1),(5,'2025_11_08_200417_create_portofolios_table',1),(6,'2025_11_08_200845_create_certificates_table',1),(7,'2025_11_08_202023_create_sessions_table',2),(8,'2025_11_08_202322_create_cache_table',3);
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
INSERT INTO `pendidikans` VALUES (4,1,'SMK Negeri 1 Kota Sukabumi','Menengah Kejuruan','Teknik Produksi Film',2019,2022,'Saya memilih ini karena saya memiliki ketertarikan yang besar terhadap dunia audio-visual dan ingin memahami bagaimana sebuah ide bisa diwujudkan menjadi karya yang hidup dan bermakna melalui film. Bagi saya, film bukan hanya hiburan, tetapi juga media untuk menyampaikan pesan, emosi, dan nilai-nilai kehidupan kepada banyak orang.',NULL,NULL),(5,1,'Universitas Muhammadiyah Sukabumi','Strata 1','Teknik Informatika',2023,2022,'Saya memilih jurusan ini karena memiliki keterkaitan dengan passion saya di bidang desain dan media, yang sebelumnya telah saya dalami saat menempuh jurusan Teknik Produksi Film. Dari pengalaman tersebut, saya menyadari bahwa unsur visual dan kreativitas juga berperan penting dalam dunia teknologi. Hal itu mendorong saya untuk mendalami UI/UX Design dan Web Development, di mana saya dapat menggabungkan kemampuan teknis dengan sisi artistik untuk menciptakan tampilan digital yang menarik, interaktif, dan bermanfaat bagi pengguna.',NULL,NULL);
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
INSERT INTO `pengalamans` VALUES (1,1,'Freelance','Wibawa Picture','Editor Behind The Scene - Short Movie : Cenayang',2019,NULL,'','Pengalaman pertama saya menjadi editor behind the scene untuk film pendek “Cenayang” merupakan tantangan yang sangat berkesan. Saat itu saya masih duduk di kelas 10 semester 1, dan proyek ini menjadi kesempatan pertama saya bekerja dengan arahan langsung dari klien. Yang membuat pengalaman ini semakin berharga, film pendek “Cenayang” berhasil meraih Juara 2 tingkat Asia, dan saya merasa bangga dapat berkontribusi di balik layar melalui hasil editing yang mendukung kesuksesan karya tersebut.',NULL,NULL),(2,1,'Freelance','Stekmensi Channel','Content Creator',2019,2022,NULL,NULL,NULL,NULL),(3,1,'Freelance ','SpeakOutYouth Indoensia','Animator',2021,NULL,NULL,'nanti',NULL,NULL),(4,1,'Magang','Barcode Organizer','Documentation Team at Impactnation Japan Festival 2023',2023,NULL,'Februari - Juli',NULL,NULL,NULL),(5,1,'Freelance','Barcode Organizer','Crowd Control at Nandayo Japan Festival',2024,NULL,'Februari',NULL,NULL,NULL),(6,1,'Magang\r\n','MentalHealing.ID','Bussines Depelovment as Editor & Videographer',2025,NULL,'Januari - April',NULL,NULL,NULL),(7,1,'Organisasi','Himpunan Mahasiswa Teknik Informatika','Editor | Videographer | Social Media Management',2025,NULL,'Januari - Agustus',NULL,NULL,NULL),(8,1,'Pemberdayaan Kepada Masyarakat','Universitas Muhammadiyah Sukabumi','Editor | Videographer | Social Media Management',2025,NULL,NULL,NULL,NULL,NULL),(9,1,'Organisasi','BEM Fakultas Sains dan Teknologi','Editor | Videographer | Social Media Management',2025,NULL,'September',NULL,NULL,NULL),(10,1,'Freelance','Barcode Organizer','Crowd Control at Impact Japan Festival 2025',2025,NULL,'Oktober',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portofolios`
--

LOCK TABLES `portofolios` WRITE;
/*!40000 ALTER TABLE `portofolios` DISABLE KEYS */;
INSERT INTO `portofolios` VALUES (1,1,'Reels MH',2025,'Editor','images/ae.png','public','gambar',NULL,'saya yang mengerjakan project ini',NULL,NULL),(2,1,'Web',2025,'[PM','images/ae.png','public','gambar',NULL,'A',NULL,NULL),(3,1,'Web',2025,'[PM','images/ae.png','public','gambar',NULL,'A',NULL,NULL);
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
INSERT INTO `sessions` VALUES ('9crnWutp5wDvv1FE1uQkt2Rv3JQjh4VrNORavs8x',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXhXR2Rib2ZDeVZiR2R6Q05nOEJZaDRoZXRZZ3RaU2dRVkptV2FMZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762845183),('9G6nJe2H5uqCnbLKBbYjSKDPaMejq1bPGVxFuFhP',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicUZBNlA5cWRSdlRQY1ZMYWdZUHVYSGgzN0VuUW9nY3YxU2twYUVtZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762974369),('A994dkxohuggr21Udos2QZOPYkKvEoFFaI4snEpz',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzhmakdLUVF3Sm1UQ29lYVdwM3RnNmZUU0poSmhBVDVrQ2ZaN2xKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762849108),('k17MQoVRdKPkGGpwZEjdNmaVqAGFdZApN44aBbeQ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieEtqQk1DSXhaZzN6Z1FBeGRjVklQYXU4RXFFOXFmQ1l1YXphQUNmMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762948131),('lFkELN6VanIuycFRRbadskTqABVBHgQJi3CJYrAM',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHRmZXhzcTd3S0x0a0lSNXlVZ1YyMzZlWFVHeTd1em1Bd1N1eUp0RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762950649),('PTkx5lAdUS4L7nuf6Q1er5otAqVxiCz9pCYL9xrU',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzJoQ2p2S1dQQnpPd1hPeU90SjVyWVhoeHV0bVdLVmpjSlB4ODFFdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762861241),('v97f3h8B0jOTxU8tueK33WSUPQcBQKfGGKs6SmKO',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmozN3ExQlZyOXNBWkY2S3dDNHZqcUltWEtnRTVQUEhwNk42Z3lNbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762833533),('Ysxs02gbsTOL4BaFlNy7L87VoFnNByeawJFj5RO1',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWhFZXV3cU13N1RaOHNsMUk0R3V3TlJWTTByVDc5ODh6OW9nRUtpMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1762974375);
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

-- Dump completed on 2025-11-13  3:14:16
