/*
 Navicat Premium Dump SQL

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ppsq

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 15/03/2025 09:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for akun
-- ----------------------------
DROP TABLE IF EXISTS `akun`;
CREATE TABLE `akun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_ref` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `indukakun_id` int NULL DEFAULT NULL,
  `saldo_normal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `is_edit` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of akun
-- ----------------------------
INSERT INTO `akun` VALUES (1, '1101', 'Kas', 1, 'D', '2020-12-12 04:39:34', 0);
INSERT INTO `akun` VALUES (2, '1102', 'BANK', 1, 'D', '2020-12-12 04:39:44', 0);
INSERT INTO `akun` VALUES (3, '1103', 'Deposito', 1, 'D', '2020-12-12 04:39:55', 0);
INSERT INTO `akun` VALUES (4, '1104', 'Piutang', 1, 'D', '2020-12-12 04:40:04', 0);
INSERT INTO `akun` VALUES (5, '1105', 'Persediaan', 1, 'D', '2020-12-12 04:40:12', 0);
INSERT INTO `akun` VALUES (6, '1201', 'Aktiva Tetap', 2, 'D', '2020-12-12 04:40:39', 0);
INSERT INTO `akun` VALUES (7, '1202', 'Penyusutan', 2, 'D', '2020-12-12 04:40:47', 0);
INSERT INTO `akun` VALUES (8, '1203', 'Investasi', 2, 'D', '2020-12-12 04:40:58', 0);
INSERT INTO `akun` VALUES (9, '2101', 'Hutang Usaha', 3, 'K', '2020-12-12 04:41:10', 0);
INSERT INTO `akun` VALUES (10, '2102', 'Hutang Pajak', 3, 'K', '2020-12-12 04:41:22', 0);
INSERT INTO `akun` VALUES (11, '2103', 'Kewajiban Lancar Lain', 3, 'K', '2020-12-12 04:41:35', 0);
INSERT INTO `akun` VALUES (12, '2201', 'Hutang Pihak ke 3', 4, 'K', '2020-12-12 04:41:49', 0);
INSERT INTO `akun` VALUES (13, '2202', 'Hutang Program Lain', 4, 'K', '2020-12-12 04:42:01', 0);
INSERT INTO `akun` VALUES (14, '2203', 'Kewajiban Jangka Panjang Lain', 4, 'K', '2020-12-12 04:42:16', 0);
INSERT INTO `akun` VALUES (15, '3101', 'Modal Usaha', 5, 'K', '2020-12-12 04:42:26', 0);
INSERT INTO `akun` VALUES (16, '3102', 'Prive', 5, 'D', '2020-12-12 04:42:35', 0);
INSERT INTO `akun` VALUES (17, '4101', 'Donasi', 6, 'D', '2020-12-12 04:42:47', 0);
INSERT INTO `akun` VALUES (18, '4102', 'Sumbangan', 6, 'D', '2020-12-12 04:42:55', 0);
INSERT INTO `akun` VALUES (19, '4201', 'Penghasilan Layanan', 7, 'K', '2020-12-12 04:43:12', 0);
INSERT INTO `akun` VALUES (20, '4202', 'Pendapatan', 7, 'K', '2020-12-12 04:43:35', 0);
INSERT INTO `akun` VALUES (21, '4301', 'Pendapatan Lain', 8, 'K', '2020-12-12 04:44:06', 0);
INSERT INTO `akun` VALUES (22, '5101', 'Beban Gaji', 9, 'D', '2020-12-12 04:44:15', 0);
INSERT INTO `akun` VALUES (23, '5102', 'Biaya Perjalanan', 9, 'D', '2020-12-12 04:44:27', 0);
INSERT INTO `akun` VALUES (24, '5103', 'Biaya Kantor', 9, 'D', '2020-12-12 04:44:42', 0);
INSERT INTO `akun` VALUES (25, '5104', 'Biaya Sewa', 9, 'D', '2020-12-12 04:44:52', 0);
INSERT INTO `akun` VALUES (26, '5105', 'Biaya Pemeliharaan', 9, 'D', '2020-12-12 04:45:02', 0);
INSERT INTO `akun` VALUES (27, '5106', 'Biaya Rapat', 9, 'D', '2020-12-12 04:45:14', 0);
INSERT INTO `akun` VALUES (28, '5107', 'Biaya Lain', 9, 'D', '2020-12-12 04:45:20', 0);
INSERT INTO `akun` VALUES (35, '4104', 'Diskon Lain', 6, 'D', '2022-07-23 19:31:56', 0);
INSERT INTO `akun` VALUES (36, '4203', 'Diskon Penjualan', 7, 'D', '2023-05-05 07:27:20', 0);
INSERT INTO `akun` VALUES (37, '1106', 'Diskon Pembelian', 1, 'K', '2023-05-05 07:30:00', 0);
INSERT INTO `akun` VALUES (38, '1108', 'PPn Pembelian', 1, 'K', '2023-05-06 08:03:37', 0);
INSERT INTO `akun` VALUES (39, '4204', 'PPn Penjualan', 7, 'D', '2023-05-06 08:03:56', 0);
INSERT INTO `akun` VALUES (40, '1108', 'Persediaan Produk', 1, 'D', '2023-05-21 18:35:11', 0);

-- ----------------------------
-- Table structure for alumni
-- ----------------------------
DROP TABLE IF EXISTS `alumni`;
CREATE TABLE `alumni`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `tahun_lulus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alumni
-- ----------------------------

-- ----------------------------
-- Table structure for asatid
-- ----------------------------
DROP TABLE IF EXISTS `asatid`;
CREATE TABLE `asatid`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of asatid
-- ----------------------------
INSERT INTO `asatid` VALUES (1, 77);
INSERT INTO `asatid` VALUES (2, 1363);
INSERT INTO `asatid` VALUES (3, 1364);
INSERT INTO `asatid` VALUES (4, 1366);

-- ----------------------------
-- Table structure for asrama
-- ----------------------------
DROP TABLE IF EXISTS `asrama`;
CREATE TABLE `asrama`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of asrama
-- ----------------------------
INSERT INTO `asrama` VALUES (2, 'A', 'Asrama A', '#000000', 1, '2024-11-02 03:02:04');
INSERT INTO `asrama` VALUES (3, 'B', 'Asrama B', '#0537ff', 1, '2024-11-02 03:02:15');
INSERT INTO `asrama` VALUES (4, 'C', 'Asrama C', '#ff0000', 1, '2024-11-02 03:02:25');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` VALUES (2, 'general', 'General User');
INSERT INTO `groups` VALUES (4, 'Gudang', 'Khusus administrasi gudang');
INSERT INTO `groups` VALUES (5, 'driver', 'Driver');
INSERT INTO `groups` VALUES (6, 'Co Admin', 'untuk asisten admin');
INSERT INTO `groups` VALUES (7, 'Warehouse 2', 'Khusus admin warehouse 2');
INSERT INTO `groups` VALUES (8, 'Produksi', 'Ningsih');
INSERT INTO `groups` VALUES (9, 'FINANCE', 'Vindy');

-- ----------------------------
-- Table structure for groups_detail
-- ----------------------------
DROP TABLE IF EXISTS `groups_detail`;
CREATE TABLE `groups_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `groups_id` int UNSIGNED NULL DEFAULT NULL,
  `submenu_id` int NULL DEFAULT NULL,
  `c` tinyint(1) NULL DEFAULT NULL,
  `r` tinyint(1) NULL DEFAULT NULL,
  `u` tinyint(1) NULL DEFAULT NULL,
  `d` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groups_id`(`groups_id` ASC) USING BTREE,
  CONSTRAINT `groups_detail_ibfk_1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 385 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups_detail
-- ----------------------------
INSERT INTO `groups_detail` VALUES (124, 5, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (125, 5, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (126, 5, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (127, 5, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (128, 5, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (129, 5, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (130, 5, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (131, 5, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (132, 5, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (133, 5, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (134, 5, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (135, 5, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (136, 5, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (137, 5, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (138, 5, 12, 0, 1, 0, 0);
INSERT INTO `groups_detail` VALUES (139, 5, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (140, 5, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (141, 5, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (142, 5, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (143, 5, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (144, 5, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (145, 5, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (146, 5, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (147, 5, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (148, 5, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (149, 5, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (150, 5, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (151, 5, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (152, 5, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (153, 5, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (154, 5, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (155, 5, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (156, 1, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (157, 1, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (158, 1, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (159, 1, 4, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (160, 1, 5, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (161, 1, 6, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (162, 1, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (163, 1, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (164, 1, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (165, 1, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (166, 1, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (167, 1, 9, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (168, 1, 10, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (169, 1, 11, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (170, 1, 12, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (171, 1, 13, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (172, 1, 14, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (173, 1, 15, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (174, 1, 16, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (175, 1, 17, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (176, 1, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (177, 1, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (178, 1, 20, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (179, 1, 21, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (180, 1, 22, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (181, 1, 23, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (182, 1, 24, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (183, 1, 25, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (184, 1, 26, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (185, 1, 27, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (186, 1, 32, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (187, 1, 33, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (188, 6, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (189, 6, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (190, 6, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (191, 6, 4, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (192, 6, 5, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (193, 6, 6, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (194, 6, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (195, 6, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (196, 6, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (197, 6, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (198, 6, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (199, 6, 9, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (200, 6, 10, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (201, 6, 11, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (202, 6, 12, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (203, 6, 13, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (204, 6, 14, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (205, 6, 15, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (206, 6, 16, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (207, 6, 17, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (208, 6, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (209, 6, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (210, 6, 20, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (211, 6, 21, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (212, 6, 22, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (213, 6, 23, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (214, 6, 24, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (215, 6, 25, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (216, 6, 26, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (217, 6, 27, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (218, 6, 32, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (219, 6, 33, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (253, 7, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (254, 7, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (255, 7, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (256, 7, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (257, 7, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (258, 7, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (259, 7, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (260, 7, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (261, 7, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (262, 7, 34, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (263, 7, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (264, 7, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (265, 7, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (266, 7, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (267, 7, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (268, 7, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (269, 7, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (270, 7, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (271, 7, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (272, 7, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (273, 7, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (274, 7, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (275, 7, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (276, 7, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (277, 7, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (278, 7, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (279, 7, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (280, 7, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (281, 7, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (282, 7, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (283, 7, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (284, 7, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (285, 7, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (286, 8, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (287, 8, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (288, 8, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (289, 8, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (290, 8, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (291, 8, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (292, 8, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (293, 8, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (294, 8, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (295, 8, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (296, 8, 7, 1, 1, 1, 0);
INSERT INTO `groups_detail` VALUES (297, 8, 8, 1, 1, 1, 0);
INSERT INTO `groups_detail` VALUES (298, 8, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (299, 8, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (300, 8, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (301, 8, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (302, 8, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (303, 8, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (304, 8, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (305, 8, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (306, 8, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (307, 8, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (308, 8, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (309, 8, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (310, 8, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (311, 8, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (312, 8, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (313, 8, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (314, 8, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (315, 8, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (316, 8, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (317, 8, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (318, 8, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (319, 9, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (320, 9, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (321, 9, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (322, 9, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (323, 9, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (324, 9, 6, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (325, 9, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (326, 9, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (327, 9, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (328, 9, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (329, 9, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (330, 9, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (331, 9, 9, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (332, 9, 10, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (333, 9, 11, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (334, 9, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (335, 9, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (336, 9, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (337, 9, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (338, 9, 16, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (339, 9, 17, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (340, 9, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (341, 9, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (342, 9, 20, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (343, 9, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (344, 9, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (345, 9, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (346, 9, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (347, 9, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (348, 9, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (349, 9, 27, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (350, 9, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (351, 9, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (352, 4, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (353, 4, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (354, 4, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (355, 4, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (356, 4, 5, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (357, 4, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (358, 4, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (359, 4, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (360, 4, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (361, 4, 34, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (362, 4, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (363, 4, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (364, 4, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (365, 4, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (366, 4, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (367, 4, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (368, 4, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (369, 4, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (370, 4, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (371, 4, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (372, 4, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (373, 4, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (374, 4, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (375, 4, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (376, 4, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (377, 4, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (378, 4, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (379, 4, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (380, 4, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (381, 4, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (382, 4, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (383, 4, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (384, 4, 33, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for jadwal_presensi
-- ----------------------------
DROP TABLE IF EXISTS `jadwal_presensi`;
CREATE TABLE `jadwal_presensi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `waktu_presensi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jadwal_presensi
-- ----------------------------
INSERT INTO `jadwal_presensi` VALUES (1, 'Pagi');
INSERT INTO `jadwal_presensi` VALUES (2, 'Malam');

-- ----------------------------
-- Table structure for kafil
-- ----------------------------
DROP TABLE IF EXISTS `kafil`;
CREATE TABLE `kafil`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kafil
-- ----------------------------
INSERT INTO `kafil` VALUES (2, 1363);
INSERT INTO `kafil` VALUES (3, 1364);
INSERT INTO `kafil` VALUES (4, 1367);

-- ----------------------------
-- Table structure for kamar
-- ----------------------------
DROP TABLE IF EXISTS `kamar`;
CREATE TABLE `kamar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `asrama_id` int NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `asrama_id`(`asrama_id` ASC) USING BTREE,
  CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`asrama_id`) REFERENCES `asrama` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kamar
-- ----------------------------
INSERT INTO `kamar` VALUES (1, 'A1', 'Kamar A1', 2, 1);
INSERT INTO `kamar` VALUES (2, 'A2', 'Kamar A2', 2, 1);
INSERT INTO `kamar` VALUES (3, 'A3', 'Kamar A3', 2, 1);
INSERT INTO `kamar` VALUES (4, 'B1', 'Kamar B1', 3, 1);
INSERT INTO `kamar` VALUES (5, 'B2', 'Kamar B2', 3, 1);
INSERT INTO `kamar` VALUES (6, 'C1', 'Kamar C1', 4, 1);
INSERT INTO `kamar` VALUES (7, 'C2', 'Kamar C2', 4, 1);

-- ----------------------------
-- Table structure for kamar_santri
-- ----------------------------
DROP TABLE IF EXISTS `kamar_santri`;
CREATE TABLE `kamar_santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `kamar_id` int NULL DEFAULT NULL,
  `tahun` int NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kamar_id`(`kamar_id` ASC) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  CONSTRAINT `kamar_santri_ibfk_2` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `kamar_santri_ibfk_3` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kamar_santri
-- ----------------------------
INSERT INTO `kamar_santri` VALUES (22, 1360, 1, 0, 1);

-- ----------------------------
-- Table structure for kategori_tatib
-- ----------------------------
DROP TABLE IF EXISTS `kategori_tatib`;
CREATE TABLE `kategori_tatib`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori_tatib
-- ----------------------------
INSERT INTO `kategori_tatib` VALUES (1, 'A', 'RINGAN', 1, 'green');
INSERT INTO `kategori_tatib` VALUES (2, 'B', 'SEDANG', 1, 'yellow');
INSERT INTO `kategori_tatib` VALUES (3, 'C', 'BERAT', 1, 'red');

-- ----------------------------
-- Table structure for keluhan
-- ----------------------------
DROP TABLE IF EXISTS `keluhan`;
CREATE TABLE `keluhan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keluhan
-- ----------------------------
INSERT INTO `keluhan` VALUES (1, 'Sakit Kepala', 'KLH001', NULL);
INSERT INTO `keluhan` VALUES (2, 'Demam', 'KLH002', NULL);
INSERT INTO `keluhan` VALUES (3, 'Batuk', 'KLH003', NULL);
INSERT INTO `keluhan` VALUES (4, 'Pusing', 'KLH004', NULL);
INSERT INTO `keluhan` VALUES (5, 'Mual', 'KLH005', NULL);
INSERT INTO `keluhan` VALUES (6, 'Sakit Perut', 'KLH006', NULL);
INSERT INTO `keluhan` VALUES (7, 'Nyeri Sendi', 'KLH007', NULL);
INSERT INTO `keluhan` VALUES (8, 'Sesak Napas', 'KLH008', NULL);
INSERT INTO `keluhan` VALUES (9, 'Pilek', 'KLH009', NULL);
INSERT INTO `keluhan` VALUES (10, 'Gatal-gatal', 'KLH010', NULL);
INSERT INTO `keluhan` VALUES (11, 'Cacingan', 'KLH011', NULL);
INSERT INTO `keluhan` VALUES (12, 'Sakit Tenggorokan', 'KLH012', NULL);
INSERT INTO `keluhan` VALUES (13, 'Infeksi Saluran Kemih', 'KLH013', NULL);
INSERT INTO `keluhan` VALUES (14, 'Radang Paru-paru', 'KLH014', NULL);
INSERT INTO `keluhan` VALUES (15, 'Gastroenteritis', 'KLH015', NULL);
INSERT INTO `keluhan` VALUES (16, 'Alergi', 'KLH016', NULL);
INSERT INTO `keluhan` VALUES (17, 'Sakit Jantung', 'KLH017', NULL);
INSERT INTO `keluhan` VALUES (18, 'Diabetes', 'KLH018', NULL);
INSERT INTO `keluhan` VALUES (19, 'Hipertensi', 'KLH019', NULL);
INSERT INTO `keluhan` VALUES (20, 'Kanker', 'KLH020', NULL);
INSERT INTO `keluhan` VALUES (21, 'Asma', 'KLH021', NULL);
INSERT INTO `keluhan` VALUES (22, 'Sakit Gigi', 'KLH022', NULL);
INSERT INTO `keluhan` VALUES (23, 'Infeksi Kulit', 'KLH023', NULL);
INSERT INTO `keluhan` VALUES (24, 'Radang Usus', 'KLH024', NULL);
INSERT INTO `keluhan` VALUES (25, 'Flu', 'KLH025', NULL);
INSERT INTO `keluhan` VALUES (26, 'Penyakit Jantung Koroner', 'KLH026', NULL);
INSERT INTO `keluhan` VALUES (27, 'Sakit Punggung', 'KLH027', NULL);
INSERT INTO `keluhan` VALUES (28, 'Sakit Leher', 'KLH028', NULL);
INSERT INTO `keluhan` VALUES (29, 'Kram Perut', 'KLH029', NULL);
INSERT INTO `keluhan` VALUES (30, 'Terlambat Menstruasi', 'KLH030', NULL);
INSERT INTO `keluhan` VALUES (31, 'Mata Merah', 'KLH031', NULL);
INSERT INTO `keluhan` VALUES (32, 'Sariawan', 'KLH032', NULL);
INSERT INTO `keluhan` VALUES (33, 'Kecelakaan', 'KLH033', NULL);
INSERT INTO `keluhan` VALUES (34, 'Penyakit Kuning', 'KLH034', NULL);
INSERT INTO `keluhan` VALUES (35, 'Penyakit Paru Obstruktif Kronis', 'KLH035', NULL);
INSERT INTO `keluhan` VALUES (36, 'Cidera Olahraga', 'KLH036', NULL);
INSERT INTO `keluhan` VALUES (37, 'Gastritis', 'KLH037', NULL);
INSERT INTO `keluhan` VALUES (38, 'Pneumonia', 'KLH038', NULL);
INSERT INTO `keluhan` VALUES (39, 'Infeksi Virus', 'KLH039', NULL);
INSERT INTO `keluhan` VALUES (40, 'Sakit Kaki', 'KLH040', NULL);
INSERT INTO `keluhan` VALUES (41, 'Bengkak', 'KLH041', NULL);
INSERT INTO `keluhan` VALUES (42, 'Sakit Pundak', 'KLH042', NULL);
INSERT INTO `keluhan` VALUES (43, 'Sakit Kembali', 'KLH043', NULL);
INSERT INTO `keluhan` VALUES (44, 'Kehamilan Ektopik', 'KLH044', NULL);
INSERT INTO `keluhan` VALUES (45, 'TBC', 'KLH045', NULL);
INSERT INTO `keluhan` VALUES (46, 'Penyakit Autoimun', 'KLH046', NULL);
INSERT INTO `keluhan` VALUES (47, 'Sakit Hati', 'KLH047', NULL);
INSERT INTO `keluhan` VALUES (48, 'Kanker Payudara', 'KLH048', NULL);
INSERT INTO `keluhan` VALUES (49, 'Kanker Prostat', 'KLH049', NULL);
INSERT INTO `keluhan` VALUES (50, 'Kanker Paru-paru', 'KLH050', NULL);
INSERT INTO `keluhan` VALUES (51, 'Depresi', 'KLH051', NULL);
INSERT INTO `keluhan` VALUES (52, 'Kecemasan', 'KLH052', NULL);
INSERT INTO `keluhan` VALUES (53, 'Bipolar', 'KLH053', NULL);
INSERT INTO `keluhan` VALUES (54, 'Skizofrenia', 'KLH054', NULL);
INSERT INTO `keluhan` VALUES (55, 'Penyakit Alzheimer', 'KLH055', NULL);
INSERT INTO `keluhan` VALUES (56, 'Insomnia', 'KLH056', NULL);
INSERT INTO `keluhan` VALUES (57, 'Obesitas', 'KLH057', NULL);
INSERT INTO `keluhan` VALUES (58, 'Anemia', 'KLH058', NULL);
INSERT INTO `keluhan` VALUES (59, 'Diabetes Tipe 1', 'KLH059', NULL);
INSERT INTO `keluhan` VALUES (60, 'Diabetes Tipe 2', 'KLH060', NULL);
INSERT INTO `keluhan` VALUES (61, 'Gout', 'KLH061', NULL);
INSERT INTO `keluhan` VALUES (62, 'Artritis', 'KLH062', NULL);
INSERT INTO `keluhan` VALUES (63, 'Penyakit Ginjal', 'KLH063', NULL);
INSERT INTO `keluhan` VALUES (64, 'Disfungsi Ereksi', 'KLH064', NULL);
INSERT INTO `keluhan` VALUES (65, 'Infertilitas', 'KLH065', NULL);
INSERT INTO `keluhan` VALUES (66, 'Kanker Rahim', 'KLH066', NULL);
INSERT INTO `keluhan` VALUES (67, 'Kanker Usus', 'KLH067', NULL);
INSERT INTO `keluhan` VALUES (68, 'Sembelit', 'KLH068', NULL);
INSERT INTO `keluhan` VALUES (69, 'Diare', 'KLH069', NULL);
INSERT INTO `keluhan` VALUES (70, 'Penyakit Celiac', 'KLH070', NULL);
INSERT INTO `keluhan` VALUES (71, 'Aneurisma', 'KLH071', NULL);
INSERT INTO `keluhan` VALUES (72, 'Aritmia', 'KLH072', NULL);
INSERT INTO `keluhan` VALUES (73, 'Penyakit Raynaud', 'KLH073', NULL);
INSERT INTO `keluhan` VALUES (74, 'Hiperlipidemia', 'KLH074', NULL);
INSERT INTO `keluhan` VALUES (75, 'Hipoalergi', 'KLH075', NULL);
INSERT INTO `keluhan` VALUES (76, 'Hipersensitivitas', 'KLH076', NULL);
INSERT INTO `keluhan` VALUES (77, 'Katarak', 'KLH077', NULL);
INSERT INTO `keluhan` VALUES (78, 'Glaukoma', 'KLH078', NULL);
INSERT INTO `keluhan` VALUES (79, 'Infeksi Telinga', 'KLH079', NULL);
INSERT INTO `keluhan` VALUES (80, 'Rinitis Alergi', 'KLH080', NULL);
INSERT INTO `keluhan` VALUES (81, 'Sakit Punggung Bawah', 'KLH081', NULL);
INSERT INTO `keluhan` VALUES (82, 'Hipotiroidisme', 'KLH082', NULL);
INSERT INTO `keluhan` VALUES (83, 'Hipertiroidisme', 'KLH083', NULL);
INSERT INTO `keluhan` VALUES (84, 'Penyakit Tiroid', 'KLH084', NULL);
INSERT INTO `keluhan` VALUES (85, 'Sindrom Metabolik', 'KLH085', NULL);
INSERT INTO `keluhan` VALUES (86, 'Infeksi Jamur', 'KLH086', NULL);
INSERT INTO `keluhan` VALUES (87, 'Penyakit Kulit Psoriasis', 'KLH087', NULL);
INSERT INTO `keluhan` VALUES (88, 'Penyakit Kulit Eksim', 'KLH088', NULL);
INSERT INTO `keluhan` VALUES (89, 'Penyakit Cacar Air', 'KLH089', NULL);
INSERT INTO `keluhan` VALUES (90, 'Herpes Zoster', 'KLH090', NULL);
INSERT INTO `keluhan` VALUES (91, 'Kutil', 'KLH091', NULL);
INSERT INTO `keluhan` VALUES (92, 'Keratoma', 'KLH092', NULL);
INSERT INTO `keluhan` VALUES (93, 'Melasma', 'KLH093', NULL);
INSERT INTO `keluhan` VALUES (94, 'Flek Hitam', 'KLH094', NULL);
INSERT INTO `keluhan` VALUES (95, 'Penyakit Jantung Bawaan', 'KLH095', NULL);
INSERT INTO `keluhan` VALUES (96, 'Kardiomiopati', 'KLH096', NULL);
INSERT INTO `keluhan` VALUES (97, 'Penyakit Hati Berlemak', 'KLH097', NULL);
INSERT INTO `keluhan` VALUES (98, 'Penyakit Cirohis', 'KLH098', NULL);
INSERT INTO `keluhan` VALUES (99, 'Sistik Fibrosis', 'KLH099', NULL);
INSERT INTO `keluhan` VALUES (100, 'Penyakit Huntington', 'KLH100', NULL);
INSERT INTO `keluhan` VALUES (101, 'Penyakit Legg-Calve-Perthes', 'KLH101', NULL);
INSERT INTO `keluhan` VALUES (102, 'Penyakit Lyme', 'KLH102', NULL);
INSERT INTO `keluhan` VALUES (103, 'Penyakit Meniere', 'KLH103', NULL);
INSERT INTO `keluhan` VALUES (104, 'Sindrom Down', 'KLH104', NULL);
INSERT INTO `keluhan` VALUES (105, 'Penyakit Parkinson', 'KLH105', NULL);
INSERT INTO `keluhan` VALUES (106, 'Penyakit Guillain-Barre', 'KLH106', NULL);
INSERT INTO `keluhan` VALUES (107, 'Penyakit Bawaan', 'KLH107', NULL);
INSERT INTO `keluhan` VALUES (108, 'Penyakit Kapiler', 'KLH108', NULL);
INSERT INTO `keluhan` VALUES (109, 'Penyakit Vancomycin', 'KLH109', NULL);
INSERT INTO `keluhan` VALUES (110, 'Penyakit Saraf', 'KLH110', NULL);
INSERT INTO `keluhan` VALUES (111, 'Penyakit Neurofibromatosis', 'KLH111', NULL);
INSERT INTO `keluhan` VALUES (112, 'Penyakit Penyempitan Pembuluh Darah', 'KLH112', NULL);
INSERT INTO `keluhan` VALUES (113, 'Penyakit Kardiovaskular', 'KLH113', NULL);
INSERT INTO `keluhan` VALUES (114, 'Penyakit Strok', 'KLH114', NULL);
INSERT INTO `keluhan` VALUES (115, 'Penyakit Kaki Diabetik', 'KLH115', NULL);
INSERT INTO `keluhan` VALUES (116, 'Penyakit Hemoroid', 'KLH116', NULL);
INSERT INTO `keluhan` VALUES (117, 'Penyakit Liver', 'KLH117', NULL);
INSERT INTO `keluhan` VALUES (118, 'Penyakit Hemophilia', 'KLH118', NULL);
INSERT INTO `keluhan` VALUES (119, 'Penyakit Distrofi Otot', 'KLH119', NULL);
INSERT INTO `keluhan` VALUES (120, 'Penyakit Ovarium Polikistik', 'KLH120', NULL);
INSERT INTO `keluhan` VALUES (121, 'Penyakit Autoimun Lupus', 'KLH121', NULL);
INSERT INTO `keluhan` VALUES (122, 'Penyakit Iritasi Usus', 'KLH122', NULL);
INSERT INTO `keluhan` VALUES (123, 'Penyakit Sifilis', 'KLH123', NULL);
INSERT INTO `keluhan` VALUES (124, 'Penyakit Gonore', 'KLH124', NULL);
INSERT INTO `keluhan` VALUES (125, 'Penyakit HIV/AIDS', 'KLH125', NULL);
INSERT INTO `keluhan` VALUES (126, 'Penyakit Hepatitis A', 'KLH126', NULL);
INSERT INTO `keluhan` VALUES (127, 'Penyakit Hepatitis B', 'KLH127', NULL);
INSERT INTO `keluhan` VALUES (128, 'Penyakit Hepatitis C', 'KLH128', NULL);
INSERT INTO `keluhan` VALUES (129, 'Penyakit Tetanus', 'KLH129', NULL);
INSERT INTO `keluhan` VALUES (130, 'Penyakit Difteri', 'KLH130', NULL);
INSERT INTO `keluhan` VALUES (131, 'Penyakit Polio', 'KLH131', NULL);
INSERT INTO `keluhan` VALUES (132, 'Penyakit Batuk Rejan', 'KLH132', NULL);
INSERT INTO `keluhan` VALUES (133, 'Penyakit Campak', 'KLH133', NULL);
INSERT INTO `keluhan` VALUES (134, 'Penyakit Rubeola', 'KLH134', NULL);
INSERT INTO `keluhan` VALUES (135, 'Penyakit SARS', 'KLH135', NULL);
INSERT INTO `keluhan` VALUES (136, 'Penyakit MERS', 'KLH136', NULL);
INSERT INTO `keluhan` VALUES (137, 'Penyakit COVID-19', 'KLH137', NULL);
INSERT INTO `keluhan` VALUES (138, 'Penyakit Flu Burung', 'KLH138', NULL);
INSERT INTO `keluhan` VALUES (139, 'Penyakit Flu Babi', 'KLH139', NULL);
INSERT INTO `keluhan` VALUES (140, 'Penyakit Leptospirosis', 'KLH140', NULL);
INSERT INTO `keluhan` VALUES (141, 'Penyakit Brucellosis', 'KLH141', NULL);
INSERT INTO `keluhan` VALUES (142, 'Penyakit Chagas', 'KLH142', NULL);
INSERT INTO `keluhan` VALUES (143, 'Penyakit Kuku dan Mulut', 'KLH143', NULL);
INSERT INTO `keluhan` VALUES (144, 'Penyakit Kaki Babi', 'KLH144', NULL);
INSERT INTO `keluhan` VALUES (145, 'Penyakit DBD', 'KLH145', NULL);
INSERT INTO `keluhan` VALUES (146, 'Penyakit Malaria', 'KLH146', NULL);
INSERT INTO `keluhan` VALUES (147, 'Penyakit Leptospirosis', 'KLH147', NULL);
INSERT INTO `keluhan` VALUES (148, 'Penyakit Kecacingan', 'KLH148', NULL);
INSERT INTO `keluhan` VALUES (149, 'Penyakit Filariasis', 'KLH149', NULL);
INSERT INTO `keluhan` VALUES (150, 'Penyakit Tifus', 'KLH150', NULL);
INSERT INTO `keluhan` VALUES (151, 'Penyakit Toxoplasmosis', 'KLH151', NULL);
INSERT INTO `keluhan` VALUES (152, 'Penyakit Antraks', 'KLH152', NULL);
INSERT INTO `keluhan` VALUES (153, 'Penyakit Rabies', 'KLH153', NULL);
INSERT INTO `keluhan` VALUES (154, 'Penyakit Skabies', 'KLH154', NULL);
INSERT INTO `keluhan` VALUES (155, 'Penyakit HIV', 'KLH155', NULL);
INSERT INTO `keluhan` VALUES (156, 'Penyakit Penyakit Menular Seksual', 'KLH156', NULL);
INSERT INTO `keluhan` VALUES (157, 'Penyakit Chlamydia', 'KLH157', NULL);
INSERT INTO `keluhan` VALUES (158, 'Penyakit Gonore', 'KLH158', NULL);
INSERT INTO `keluhan` VALUES (159, 'Penyakit Penyakit Menular', 'KLH159', NULL);
INSERT INTO `keluhan` VALUES (160, 'Penyakit Narkolepsi', 'KLH160', NULL);
INSERT INTO `keluhan` VALUES (161, 'Penyakit Fibromyalgia', 'KLH161', NULL);
INSERT INTO `keluhan` VALUES (162, 'Penyakit Chronic Fatigue Syndrome', 'KLH162', NULL);
INSERT INTO `keluhan` VALUES (163, 'Penyakit Scleroderma', 'KLH163', NULL);
INSERT INTO `keluhan` VALUES (164, 'Penyakit Rheumatoid Arthritis', 'KLH164', NULL);
INSERT INTO `keluhan` VALUES (165, 'Penyakit Multiple Sclerosis', 'KLH165', NULL);
INSERT INTO `keluhan` VALUES (166, 'Penyakit Amyotrophic L', 'KLH166', NULL);
INSERT INTO `keluhan` VALUES (167, 'BAPILNAS', 'A100', NULL);
INSERT INTO `keluhan` VALUES (168, 'NYERI PINGGANG', 'KEL229', 1);
INSERT INTO `keluhan` VALUES (169, 'NYERI BADAN', 'KEL1476', 1);
INSERT INTO `keluhan` VALUES (170, 'Kaki Bolong', NULL, 1);

-- ----------------------------
-- Table structure for keluhan_rm
-- ----------------------------
DROP TABLE IF EXISTS `keluhan_rm`;
CREATE TABLE `keluhan_rm`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int NULL DEFAULT NULL,
  `keluhan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keluhan_rm
-- ----------------------------
INSERT INTO `keluhan_rm` VALUES (1, 2, 166);
INSERT INTO `keluhan_rm` VALUES (2, 2, 162);
INSERT INTO `keluhan_rm` VALUES (3, 2, 158);
INSERT INTO `keluhan_rm` VALUES (4, 2, 157);
INSERT INTO `keluhan_rm` VALUES (5, 2, 160);
INSERT INTO `keluhan_rm` VALUES (6, 3, 164);
INSERT INTO `keluhan_rm` VALUES (7, 3, 163);
INSERT INTO `keluhan_rm` VALUES (8, 3, 166);
INSERT INTO `keluhan_rm` VALUES (9, 3, 161);
INSERT INTO `keluhan_rm` VALUES (10, 3, 157);
INSERT INTO `keluhan_rm` VALUES (11, 4, 165);
INSERT INTO `keluhan_rm` VALUES (12, 4, 166);
INSERT INTO `keluhan_rm` VALUES (13, 5, 165);
INSERT INTO `keluhan_rm` VALUES (14, 5, 164);
INSERT INTO `keluhan_rm` VALUES (15, 6, 166);
INSERT INTO `keluhan_rm` VALUES (16, 7, 166);
INSERT INTO `keluhan_rm` VALUES (17, 8, 167);
INSERT INTO `keluhan_rm` VALUES (18, 8, 163);
INSERT INTO `keluhan_rm` VALUES (19, 9, 167);
INSERT INTO `keluhan_rm` VALUES (20, 9, 166);
INSERT INTO `keluhan_rm` VALUES (21, 9, 164);
INSERT INTO `keluhan_rm` VALUES (22, 10, 167);
INSERT INTO `keluhan_rm` VALUES (23, 10, 164);
INSERT INTO `keluhan_rm` VALUES (24, 10, 163);
INSERT INTO `keluhan_rm` VALUES (25, 11, 166);
INSERT INTO `keluhan_rm` VALUES (26, 11, 165);
INSERT INTO `keluhan_rm` VALUES (27, 12, 169);
INSERT INTO `keluhan_rm` VALUES (28, 12, 168);
INSERT INTO `keluhan_rm` VALUES (29, 13, 169);
INSERT INTO `keluhan_rm` VALUES (30, 13, 166);
INSERT INTO `keluhan_rm` VALUES (31, 14, 169);
INSERT INTO `keluhan_rm` VALUES (32, 14, 170);
INSERT INTO `keluhan_rm` VALUES (38, 15, 169);
INSERT INTO `keluhan_rm` VALUES (39, 15, 170);

-- ----------------------------
-- Table structure for lembaga_pengurus
-- ----------------------------
DROP TABLE IF EXISTS `lembaga_pengurus`;
CREATE TABLE `lembaga_pengurus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lembaga_pengurus
-- ----------------------------
INSERT INTO `lembaga_pengurus` VALUES (1, 'A', 'KEAMANAN');
INSERT INTO `lembaga_pengurus` VALUES (2, 'B', 'POSKESTREN');
INSERT INTO `lembaga_pengurus` VALUES (3, 'C', 'ASRAMA A');
INSERT INTO `lembaga_pengurus` VALUES (4, 'D', 'ASRAMA B');
INSERT INTO `lembaga_pengurus` VALUES (5, 'E', 'ASRAMA C');
INSERT INTO `lembaga_pengurus` VALUES (6, 'F', 'KEBERSIHAN');
INSERT INTO `lembaga_pengurus` VALUES (7, 'G', 'SARPRAS');
INSERT INTO `lembaga_pengurus` VALUES (8, 'H', 'SMC');
INSERT INTO `lembaga_pengurus` VALUES (9, 'I', 'KOPERASI');
INSERT INTO `lembaga_pengurus` VALUES (10, 'J', 'PAU');

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for madin
-- ----------------------------
DROP TABLE IF EXISTS `madin`;
CREATE TABLE `madin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of madin
-- ----------------------------
INSERT INTO `madin` VALUES (1, 'M1688', 'Ula', '#ff0000', 1, '2024-11-02 01:42:53');
INSERT INTO `madin` VALUES (3, 'M2412', 'Tsani', '#000000', 1, '2024-11-02 01:50:33');
INSERT INTO `madin` VALUES (4, 'K001', 'KELAS 1A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (5, 'K002', 'KELAS 1B', '#d8abab', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (6, 'K003', 'KELAS 1C', '#fa0000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (7, 'K004', 'KELAS 2A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (8, 'K005', 'KELAS 2B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (9, 'K006', 'KELAS 2C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (10, 'K007', 'KELAS 3A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (11, 'K008', 'KELAS 3B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (12, 'K009', 'KELAS 3C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (13, 'K010', 'KELAS 4A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (14, 'K011', 'KELAS 4B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (15, 'K012', 'KELAS 4C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (16, 'K013', 'KELAS 5A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (17, 'K014', 'KELAS 5B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (18, 'K015', 'KELAS 5C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (19, 'K016', 'KELAS 6A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (20, 'K017', 'KELAS 6B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (21, 'K018', 'KELAS 6C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (22, 'K019', 'KELAS 7A', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (23, 'K020', 'KELAS 7B', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (24, 'K021', 'KELAS 7C', '#000000', 1, '2024-11-02 02:08:33');
INSERT INTO `madin` VALUES (25, 'K022', 'KELAS 8A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (26, 'K023', 'KELAS 8B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (27, 'K024', 'KELAS 8C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (28, 'K025', 'KELAS 9A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (29, 'K026', 'KELAS 9B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (30, 'K027', 'KELAS 9C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (31, 'K028', 'KELAS 10A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (32, 'K029', 'KELAS 10B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (33, 'K030', 'KELAS 10C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (34, 'K031', 'KELAS 11A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (35, 'K032', 'KELAS 11B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (36, 'K033', 'KELAS 11C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (37, 'K034', 'KELAS 12A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (38, 'K035', 'KELAS 12B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (39, 'K036', 'KELAS 12C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (40, 'K037', 'KELAS 13A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (41, 'K038', 'KELAS 13B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (42, 'K039', 'KELAS 13C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (43, 'K040', 'KELAS 14A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (44, 'K041', 'KELAS 14B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (45, 'K042', 'KELAS 14C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (46, 'K043', 'KELAS 15A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (47, 'K044', 'KELAS 15B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (48, 'K045', 'KELAS 15C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (49, 'K046', 'KELAS 16A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (50, 'K047', 'KELAS 16B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (51, 'K048', 'KELAS 16C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (52, 'K049', 'KELAS 17A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (53, 'K050', 'KELAS 17B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (54, 'K051', 'KELAS 17C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (55, 'K052', 'KELAS 18A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (56, 'K053', 'KELAS 18B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (57, 'K054', 'KELAS 18C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (58, 'K055', 'KELAS 19A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (59, 'K056', 'KELAS 19B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (60, 'K057', 'KELAS 19C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (61, 'K058', 'KELAS 20A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (62, 'K059', 'KELAS 20B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (63, 'K060', 'KELAS 20C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (64, 'K061', 'KELAS 21A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (65, 'K062', 'KELAS 21B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (66, 'K063', 'KELAS 21C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (67, 'K064', 'KELAS 22A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (68, 'K065', 'KELAS 22B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (69, 'K066', 'KELAS 22C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (70, 'K067', 'KELAS 23A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (71, 'K068', 'KELAS 23B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (72, 'K069', 'KELAS 23C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (73, 'K070', 'KELAS 24A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (74, 'K071', 'KELAS 24B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (75, 'K072', 'KELAS 24C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (76, 'K073', 'KELAS 25A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (77, 'K074', 'KELAS 25B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (78, 'K075', 'KELAS 25C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (79, 'K076', 'KELAS 26A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (80, 'K077', 'KELAS 26B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (81, 'K078', 'KELAS 26C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (82, 'K079', 'KELAS 27A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (83, 'K080', 'KELAS 27B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (84, 'K081', 'KELAS 27C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (85, 'K082', 'KELAS 28A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (86, 'K083', 'KELAS 28B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (87, 'K084', 'KELAS 28C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (88, 'K085', 'KELAS 29A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (89, 'K086', 'KELAS 29B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (90, 'K087', 'KELAS 29C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (91, 'K088', 'KELAS 30A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (92, 'K089', 'KELAS 30B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (93, 'K090', 'KELAS 30C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (94, 'K091', 'KELAS 31A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (95, 'K092', 'KELAS 31B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (96, 'K093', 'KELAS 31C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (97, 'K094', 'KELAS 32A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (98, 'K095', 'KELAS 32B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (99, 'K096', 'KELAS 32C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (100, 'K097', 'KELAS 33A', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (101, 'K098', 'KELAS 33B', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (102, 'K099', 'KELAS 33C', '#000000', 1, '2024-11-02 02:08:34');
INSERT INTO `madin` VALUES (103, 'K100', 'KELAS 34A', '#000000', 1, '2024-11-02 02:08:34');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Administrasi');
INSERT INTO `menu` VALUES (2, 'Asrama');
INSERT INTO `menu` VALUES (3, 'Ketertiban');
INSERT INTO `menu` VALUES (4, 'Tahfid');
INSERT INTO `menu` VALUES (5, 'Madin');
INSERT INTO `menu` VALUES (6, 'Kesehatan');
INSERT INTO `menu` VALUES (7, 'Kepala Bidang');
INSERT INTO `menu` VALUES (8, 'BUMP');
INSERT INTO `menu` VALUES (9, 'Sekolah');
INSERT INTO `menu` VALUES (10, 'Ketua Kamar');

-- ----------------------------
-- Table structure for obat
-- ----------------------------
DROP TABLE IF EXISTS `obat`;
CREATE TABLE `obat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of obat
-- ----------------------------
INSERT INTO `obat` VALUES (1, 'OBT001', 'Paracetamol', 1);
INSERT INTO `obat` VALUES (2, 'OBT002', 'Ibuprofen', 1);
INSERT INTO `obat` VALUES (3, 'OBT003', 'Amoxicillin', 1);
INSERT INTO `obat` VALUES (4, 'OBT004', 'Cetirizine', 1);
INSERT INTO `obat` VALUES (5, 'OBT005', 'Loratadine', 1);
INSERT INTO `obat` VALUES (6, 'OBT006', 'Metformin', 1);
INSERT INTO `obat` VALUES (7, 'OBT007', 'Atorvastatin', 1);
INSERT INTO `obat` VALUES (8, 'OBT008', 'Amlodipine', 1);
INSERT INTO `obat` VALUES (9, 'OBT009', 'Omeprazole', 1);
INSERT INTO `obat` VALUES (10, 'OBT010', 'Simvastatin', 1);
INSERT INTO `obat` VALUES (11, 'OBT011', 'Losartan', 1);
INSERT INTO `obat` VALUES (12, 'OBT012', 'Levothyroxine', 1);
INSERT INTO `obat` VALUES (13, 'OBT013', 'Gabapentin', 1);
INSERT INTO `obat` VALUES (14, 'OBT014', 'Doxycycline', 1);
INSERT INTO `obat` VALUES (15, 'OBT015', 'Sertraline', 1);
INSERT INTO `obat` VALUES (16, 'OBT016', 'Tamsulosin', 1);
INSERT INTO `obat` VALUES (17, 'OBT017', 'Lisinopril', 1);
INSERT INTO `obat` VALUES (18, 'OBT018', 'Furosemide', 1);
INSERT INTO `obat` VALUES (19, 'OBT019', 'Hydrochlorothiazide', 1);
INSERT INTO `obat` VALUES (20, 'OBT020', 'Clopidogrel', 1);
INSERT INTO `obat` VALUES (21, 'OBT021', 'Warfarin', 1);
INSERT INTO `obat` VALUES (22, 'OBT022', 'Ranitidine', 1);
INSERT INTO `obat` VALUES (23, 'OBT023', 'Esomeprazole', 1);
INSERT INTO `obat` VALUES (24, 'OBT024', 'Ciprofloxacin', 1);
INSERT INTO `obat` VALUES (25, 'OBT025', 'Naproxen', 1);
INSERT INTO `obat` VALUES (26, 'OBT026', 'Sildenafil', 1);
INSERT INTO `obat` VALUES (27, 'OBT027', 'Prednisone', 1);
INSERT INTO `obat` VALUES (28, 'OBT028', 'Montelukast', 1);
INSERT INTO `obat` VALUES (29, 'OBT029', 'Citalopram', 1);
INSERT INTO `obat` VALUES (30, 'OBT030', 'Venlafaxine', 1);
INSERT INTO `obat` VALUES (31, 'OBT031', 'Tramadol', 1);
INSERT INTO `obat` VALUES (32, 'OBT032', 'Diclofenac', 1);
INSERT INTO `obat` VALUES (33, 'OBT033', 'Omeprazole', 1);
INSERT INTO `obat` VALUES (34, 'OBT034', 'Rifampicin', 1);
INSERT INTO `obat` VALUES (35, 'OBT035', 'Atenolol', 1);
INSERT INTO `obat` VALUES (36, 'OBT036', 'Bupropion', 1);
INSERT INTO `obat` VALUES (37, 'OBT037', 'Clonazepam', 1);
INSERT INTO `obat` VALUES (38, 'OBT038', 'Mirtazapine', 1);
INSERT INTO `obat` VALUES (39, 'OBT039', 'Dexlansoprazole', 1);
INSERT INTO `obat` VALUES (40, 'OBT040', 'Lithium', 1);
INSERT INTO `obat` VALUES (41, 'OBT041', 'Acarbose', 1);
INSERT INTO `obat` VALUES (42, 'OBT042', 'Carvedilol', 1);
INSERT INTO `obat` VALUES (43, 'OBT043', 'Dexamethasone', 1);
INSERT INTO `obat` VALUES (44, 'OBT044', 'Gabapentin', 1);
INSERT INTO `obat` VALUES (45, 'OBT045', 'Ketorolac', 1);
INSERT INTO `obat` VALUES (46, 'OBT046', 'Lansoprazole', 1);
INSERT INTO `obat` VALUES (47, 'OBT047', 'Piroxicam', 1);
INSERT INTO `obat` VALUES (48, 'OBT048', 'Candesartan', 1);
INSERT INTO `obat` VALUES (49, 'OBT049', 'Pravastatin', 1);
INSERT INTO `obat` VALUES (50, 'OBT050', 'Rosuvastatin', 1);
INSERT INTO `obat` VALUES (51, 'OBT051', 'Insulin', 1);
INSERT INTO `obat` VALUES (52, 'OBT052', 'Glimepiride', 1);
INSERT INTO `obat` VALUES (53, 'OBT053', 'Liraglutide', 1);
INSERT INTO `obat` VALUES (54, 'OBT054', 'Methotrexate', 1);
INSERT INTO `obat` VALUES (55, 'OBT055', 'Nifedipine', 1);
INSERT INTO `obat` VALUES (56, 'OBT056', 'Phenylephrine', 1);
INSERT INTO `obat` VALUES (57, 'OBT057', 'Thyroxine', 1);
INSERT INTO `obat` VALUES (58, 'OBT058', 'Zolpidem', 1);
INSERT INTO `obat` VALUES (59, 'OBT059', 'Clonidine', 1);
INSERT INTO `obat` VALUES (60, 'OBT060', 'Quetiapine', 1);
INSERT INTO `obat` VALUES (61, 'OBT061', 'Olanzapine', 1);
INSERT INTO `obat` VALUES (62, 'OBT062', 'Escitalopram', 1);
INSERT INTO `obat` VALUES (63, 'OBT063', 'Risperidone', 1);
INSERT INTO `obat` VALUES (64, 'OBT064', 'Aripiprazole', 1);
INSERT INTO `obat` VALUES (65, 'OBT065', 'Nitroglycerin', 1);
INSERT INTO `obat` VALUES (66, 'OBT066', 'Topiramate', 1);
INSERT INTO `obat` VALUES (67, 'OBT067', 'Benzatropine', 1);
INSERT INTO `obat` VALUES (68, 'OBT068', 'Memantine', 1);
INSERT INTO `obat` VALUES (69, 'OBT069', 'Donepezil', 1);
INSERT INTO `obat` VALUES (70, 'OBT070', 'Sitagliptin', 1);
INSERT INTO `obat` VALUES (71, 'OBT071', 'Metoclopramide', 1);
INSERT INTO `obat` VALUES (72, 'OBT072', 'Dicyclomine', 1);
INSERT INTO `obat` VALUES (73, 'OBT073', 'Sodium Bicarbonate', 1);
INSERT INTO `obat` VALUES (74, 'OBT074', 'Albuterol', 1);
INSERT INTO `obat` VALUES (75, 'OBT075', 'Fluticasone', 1);
INSERT INTO `obat` VALUES (76, 'OBT076', 'Salmeterol', 1);
INSERT INTO `obat` VALUES (77, 'OBT077', 'Budesonide', 1);
INSERT INTO `obat` VALUES (78, 'OBT078', 'Montelukast', 1);
INSERT INTO `obat` VALUES (79, 'OBT079', 'Roflumilast', 1);
INSERT INTO `obat` VALUES (80, 'OBT080', 'Bromhexine', 1);
INSERT INTO `obat` VALUES (81, 'OBT081', 'Ambroxol', 1);
INSERT INTO `obat` VALUES (82, 'OBT082', 'Codeine', 1);
INSERT INTO `obat` VALUES (83, 'OBT083', 'Guaifenesin', 1);
INSERT INTO `obat` VALUES (84, 'OBT084', 'Baclofen', 1);
INSERT INTO `obat` VALUES (85, 'OBT085', 'Carisoprodol', 1);
INSERT INTO `obat` VALUES (86, 'OBT086', 'Cyclobenzaprine', 1);
INSERT INTO `obat` VALUES (87, 'OBT087', 'Dantrolene', 1);
INSERT INTO `obat` VALUES (88, 'OBT088', 'Methocarbamol', 1);
INSERT INTO `obat` VALUES (89, 'OBT089', 'Paroxetine', 1);
INSERT INTO `obat` VALUES (90, 'OBT090', 'Trazodone', 1);
INSERT INTO `obat` VALUES (91, 'OBT091', 'Propranolol', 1);
INSERT INTO `obat` VALUES (92, 'OBT092', 'Timolol', 1);
INSERT INTO `obat` VALUES (93, 'OBT093', 'Sotalol', 1);
INSERT INTO `obat` VALUES (94, 'OBT094', 'Diltiazem', 1);
INSERT INTO `obat` VALUES (95, 'OBT095', 'Verapamil', 1);
INSERT INTO `obat` VALUES (96, 'OBT096', 'Esmolol', 1);
INSERT INTO `obat` VALUES (97, 'OBT097', 'Ranolazine', 1);
INSERT INTO `obat` VALUES (98, 'OBT098', 'Dabigatran', 1);
INSERT INTO `obat` VALUES (99, 'OBT099', 'Apixaban', 1);
INSERT INTO `obat` VALUES (100, 'OBT100', 'Edoxaban', 1);
INSERT INTO `obat` VALUES (101, 'OBT1001', 'OBAT A', 1);
INSERT INTO `obat` VALUES (102, 'OBTA001', 'OBAT REFLEXIN', 1);

-- ----------------------------
-- Table structure for obat_rm
-- ----------------------------
DROP TABLE IF EXISTS `obat_rm`;
CREATE TABLE `obat_rm`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int NULL DEFAULT NULL,
  `obat_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of obat_rm
-- ----------------------------
INSERT INTO `obat_rm` VALUES (1, 2, 100);
INSERT INTO `obat_rm` VALUES (2, 2, 99);
INSERT INTO `obat_rm` VALUES (3, 2, 98);
INSERT INTO `obat_rm` VALUES (4, 2, 96);
INSERT INTO `obat_rm` VALUES (5, 2, 93);
INSERT INTO `obat_rm` VALUES (6, 3, 97);
INSERT INTO `obat_rm` VALUES (7, 3, 99);
INSERT INTO `obat_rm` VALUES (8, 3, 100);
INSERT INTO `obat_rm` VALUES (9, 3, 92);
INSERT INTO `obat_rm` VALUES (10, 3, 96);
INSERT INTO `obat_rm` VALUES (11, 4, 99);
INSERT INTO `obat_rm` VALUES (12, 5, 100);
INSERT INTO `obat_rm` VALUES (13, 5, 99);
INSERT INTO `obat_rm` VALUES (14, 6, 99);
INSERT INTO `obat_rm` VALUES (15, 7, 100);
INSERT INTO `obat_rm` VALUES (16, 8, 101);
INSERT INTO `obat_rm` VALUES (17, 8, 99);
INSERT INTO `obat_rm` VALUES (18, 9, 101);
INSERT INTO `obat_rm` VALUES (19, 9, 100);
INSERT INTO `obat_rm` VALUES (20, 9, 98);
INSERT INTO `obat_rm` VALUES (21, 9, 97);
INSERT INTO `obat_rm` VALUES (22, 10, 100);
INSERT INTO `obat_rm` VALUES (23, 10, 101);
INSERT INTO `obat_rm` VALUES (24, 10, 97);
INSERT INTO `obat_rm` VALUES (25, 11, 101);
INSERT INTO `obat_rm` VALUES (26, 11, 99);
INSERT INTO `obat_rm` VALUES (27, 12, 102);
INSERT INTO `obat_rm` VALUES (28, 12, 101);
INSERT INTO `obat_rm` VALUES (29, 13, 102);
INSERT INTO `obat_rm` VALUES (30, 14, 96);
INSERT INTO `obat_rm` VALUES (31, 14, 97);
INSERT INTO `obat_rm` VALUES (38, 15, 102);
INSERT INTO `obat_rm` VALUES (39, 15, 99);

-- ----------------------------
-- Table structure for pelanggaran
-- ----------------------------
DROP TABLE IF EXISTS `pelanggaran`;
CREATE TABLE `pelanggaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `santri_id` int NULL DEFAULT NULL,
  `pelanggaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tatib_id` int NULL DEFAULT NULL,
  `takzir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pengurus_id` int NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `status_dokumen_pelanggaran` enum('BELUM_MENGAMBIL','MENGAMBIL_BELUM_MENGEMBALIKAN','MENGAMBIL_SUDAH_MENGEMBALIKAN') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `kronologi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_takzir` enum('BELUM','SUDAH') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'BELUM',
  `status_pengajuan` enum('BUKAN PENGAJUAN','BELUM DIPROSES','DITERIMA','DITOLAK') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'BUKAN PENGAJUAN',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pelanggaran
-- ----------------------------
INSERT INTO `pelanggaran` VALUES (6, '968284427', 1358, 'asd', 62, 'tes', 50, 51, 'BELUM_MENGAMBIL', '2025-01-24', 1, 'asdasd', 'f6c58c21e5a340183a048913dc2eaba3.jpeg', NULL, 'BELUM', 'DITERIMA');
INSERT INTO `pelanggaran` VALUES (7, '1405522001', 1357, 'dasdasd', 59, 'coba', 50, 51, 'BELUM_MENGAMBIL', '2025-01-24', 1, 'asd', '98994b94baaf4e7eb0ed81bc48b3d053.png', NULL, 'BELUM', 'DITERIMA');
INSERT INTO `pelanggaran` VALUES (8, '1511421364', 1358, 'dsadasaaa', 57, NULL, NULL, 50, NULL, '2025-01-24', 1, 'aaassd', NULL, NULL, 'BELUM', 'BELUM DIPROSES');

-- ----------------------------
-- Table structure for pendidikan_santri
-- ----------------------------
DROP TABLE IF EXISTS `pendidikan_santri`;
CREATE TABLE `pendidikan_santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `madin_id` int NULL DEFAULT NULL,
  `tahfidz_id` int NULL DEFAULT NULL,
  `sekolah_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `madin_id`(`madin_id` ASC) USING BTREE,
  INDEX `tahfidz_id`(`tahfidz_id` ASC) USING BTREE,
  INDEX `sekolah_id`(`sekolah_id` ASC) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  CONSTRAINT `pendidikan_santri_ibfk_2` FOREIGN KEY (`madin_id`) REFERENCES `madin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_3` FOREIGN KEY (`tahfidz_id`) REFERENCES `tahfidz` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_4` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_5` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pendidikan_santri
-- ----------------------------

-- ----------------------------
-- Table structure for pengurus
-- ----------------------------
DROP TABLE IF EXISTS `pengurus`;
CREATE TABLE `pengurus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `lembaga_pengurus_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengurus
-- ----------------------------
INSERT INTO `pengurus` VALUES (52, 1364, 7);
INSERT INTO `pengurus` VALUES (53, 1365, 6);

-- ----------------------------
-- Table structure for perawat
-- ----------------------------
DROP TABLE IF EXISTS `perawat`;
CREATE TABLE `perawat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `no_hp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of perawat
-- ----------------------------
INSERT INTO `perawat` VALUES (1, 'A1', 'Umam', '12313', 1);
INSERT INTO `perawat` VALUES (2, 'A2', 'Hamdan', '131231', 1);
INSERT INTO `perawat` VALUES (3, 'A3', 'Mufid', '131231', 1);
INSERT INTO `perawat` VALUES (4, 'A4', 'U.  Umam', '817382', 1);

-- ----------------------------
-- Table structure for perijinan_santri
-- ----------------------------
DROP TABLE IF EXISTS `perijinan_santri`;
CREATE TABLE `perijinan_santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `tanggal_ijin` date NULL DEFAULT NULL,
  `tanggal_kembali` date NULL DEFAULT NULL,
  `alasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jenis_ijin` enum('PULANG','SAKIT','ACARA KELUARGA','URUSAN LAIN') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perijinan_santri
-- ----------------------------

-- ----------------------------
-- Table structure for personal_titles
-- ----------------------------
DROP TABLE IF EXISTS `personal_titles`;
CREATE TABLE `personal_titles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `personal_id` int NULL DEFAULT NULL,
  `titles_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_titles
-- ----------------------------

-- ----------------------------
-- Table structure for personals
-- ----------------------------
DROP TABLE IF EXISTS `personals`;
CREATE TABLE `personals`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `status` enum('SANTRI','ALUMNI','LAINNYA') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personals
-- ----------------------------

-- ----------------------------
-- Table structure for presensi_santri
-- ----------------------------
DROP TABLE IF EXISTS `presensi_santri`;
CREATE TABLE `presensi_santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` date NULL DEFAULT NULL,
  `santri_id` int NULL DEFAULT NULL,
  `status_kehadiran` enum('HADIR','SAKIT','IJIN','ALPHA') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jadwal_presensi_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  INDEX `presensi_santri_ibfk_2`(`jadwal_presensi_id` ASC) USING BTREE,
  CONSTRAINT `presensi_santri_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `presensi_santri_ibfk_2` FOREIGN KEY (`jadwal_presensi_id`) REFERENCES `jadwal_presensi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi_santri
-- ----------------------------

-- ----------------------------
-- Table structure for profil_website
-- ----------------------------
DROP TABLE IF EXISTS `profil_website`;
CREATE TABLE `profil_website`  (
  `nama_website` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `no_hp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `logo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `icon` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `singkatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tagline` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `about_us` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pemilik` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `twitter` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `youtube` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instagram` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `img_about_us` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `wa_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `background` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `credit_by` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `breadcrumb_elements` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kota` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `negara` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lng` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `api_fingerprint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profil_website
-- ----------------------------
INSERT INTO `profil_website` VALUES ('SIM PONDOK', 'Sumberpasir', '085894632505', 'fav.png', 'fav.png', 'SIM PONDOK', '-', '<p>The Balance Small Business makes launching and managing your own business easy. It is home to experts who provide clear, practical advice on entrepreneurship and management. Whether you&rsquo;re just starting up or you want to take your company to the next level, our 20-year-strong library of more than 7,000 pieces of content will answer your questions and turn your business dreams into reality.</p>\n\n<p><a href=\"https://www.thebalancesmb.com/\">The Balance</a>&nbsp;is part of The Balance family of sites, including&nbsp;<a href=\"https://www.thebalance.com/\" rel=\"noopener\" target=\"_blank\">The Balance</a>&nbsp;and&nbsp;<a href=\"https://www.thebalancecareers.com/\" rel=\"noopener\" target=\"_blank\">The Balance Careers</a>, covering personal finance, career, and small business topics. With more than 24 million monthly visitors, The Balance is among the top-10 largest finance properties as measured by comScore, a leading Internet measurement company. Our more than 50 expert writers have extensive qualifications and expertise in their topics, including MBAs, PhDs, CFPs, other advanced degrees and professional certifications.</p>\n\n<p>The Balance family of sites have been honored by multiple awards in the last year, including&nbsp;<a href=\"https://www.tellyawards.com/winners/2017/short-form-social/general-education-discovery\" rel=\"noopener nofollow\" target=\"_blank\">The Telly Awards</a>,&nbsp;<a href=\"https://www.communicatorawards.com/\" rel=\"noopener nofollow\" target=\"_blank\">The Communicator Awards</a>, and&nbsp;<a href=\"https://www.editorandpublisher.com/news/editor-publisher-announces-the-2017-eppy-award-finalists/\" rel=\"noopener nofollow\" target=\"_blank\">Eppy Awards</a>.</p>\n', 'hallo@impactfurniture.id', 'Andreas Hartanto', 'undefined', 'undefined', 'undefined', 'undefined', 'ea4d58dd1254aff316312b7ecbb5c410.jpg', 'Halo Admin, Saya ingin bertanya/membeli/.....', 'd797c14a0070235734508b7d9f409395.jpg', '&copy; 2019. <a href=\"#\">Core Master</a> by<a href=\"https://myber.co.id\" target=\"_blank\">Myber</a>', 'Core Master', 'IMPACT FURNITURE', 'Surabaya', 'Indonesia', '112.66307147573268', '-7.840640250568774', NULL);

-- ----------------------------
-- Table structure for rekam_medis
-- ----------------------------
DROP TABLE IF EXISTS `rekam_medis`;
CREATE TABLE `rekam_medis`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `status_rekam_medis_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `perawat_id` int NULL DEFAULT NULL,
  `diagnosis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lama_sakit` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rekam_medis
-- ----------------------------
INSERT INTO `rekam_medis` VALUES (2, 54, 1, '2024-11-05', NULL, 'RM2279', '566468e5-9327-496e-a514-718a390aa9e9', 1, 4, 'Sakit Jantung', 'Harus rawat inap', NULL);
INSERT INTO `rekam_medis` VALUES (3, 53, 1, '2024-11-04', '', 'RM8165', '6449bd25-3142-4abc-b870-28bc110a483e', 1, 3, 'Sakit', 'Harus Istirahat', NULL);
INSERT INTO `rekam_medis` VALUES (4, 52, 1, '2024-11-03', NULL, 'RM2566', '0f9c260b-805f-4bec-b2b9-c3f784b56a78', 1, 4, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (5, 47, 1, '2024-11-04', NULL, 'RM314', '81f695a4-ec2c-46c0-82f0-05ce072dc4aa', 1, 4, 'Sakit', 'trsss', NULL);
INSERT INTO `rekam_medis` VALUES (6, 54, 2, '2024-11-03', NULL, 'RM7815', '4c48bc6b-2ece-45b4-a1d3-31dbb659c5e5', 1, 1, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (7, 49, 3, '2024-11-04', 'e10f92f6ff16f4e8a8564ba4a69be10f.png', 'RM1125', 'fc1aafb0-4fed-45b4-944e-0e02c5bf12cd', 1, 4, 'Sakit', 'trsss', NULL);
INSERT INTO `rekam_medis` VALUES (8, 46, 1, '2024-11-06', '3968b05cc047a0e82d55895b51a4bdc5.jpg', 'RM13', 'e92bf0fc-d9f6-4aac-a311-476710c38774', 1, 1, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (9, 50, 3, '2024-11-04', '', 'RM4186', '6102d327-fd9b-4367-bf49-94ed60d98888', 1, 1, 'Sakit Jantung', 'trsss', NULL);
INSERT INTO `rekam_medis` VALUES (10, 49, 1, '2024-11-03', '', 'RM2603', '5dcfac4f-b58d-4a51-be8d-40f339881323', 1, 2, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (11, 48, 1, '2024-11-06', '', 'RM8853', '239bd161-5168-4b92-a7c0-14ed1e3b1141', 1, 4, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (12, 52, 2, '2024-11-07', '', 'RM7046', '0b011ac4-e34c-4a09-a6e3-4135b8650404', 1, 3, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (13, 53, 3, '2024-11-07', '', 'RM5249', '42739c41-9440-4a4d-a124-78a063be42c0', 1, 2, 'Sakit', 'tes', NULL);
INSERT INTO `rekam_medis` VALUES (15, 1357, 2, '2024-11-07', '777f78cbb7c8b24600f4036a4a37a077.png', 'RM9200', 'cb9ddebb-92a8-4b84-9d3e-ec69ea7e4bd2', 1, 4, 'sakit1', 'tes1', 6);

-- ----------------------------
-- Table structure for santri
-- ----------------------------
DROP TABLE IF EXISTS `santri`;
CREATE TABLE `santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  `status_santri` enum('ALUMNI','AKTIF') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `asrama_id` int NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1372 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of santri
-- ----------------------------
INSERT INTO `santri` VALUES (1359, '123', 'Rendy Yani Susanto', 'L', 'Malang', '1993-01-03', NULL, 'Sugianto', 'BBB', '08588238', '31820381', 1, 'AKTIF', 'CCC', '83102390', '1739698515_Sertifikat_Donasi_(1).jpg', 3, NULL);
INSERT INTO `santri` VALUES (1360, '44223', 'yayan', 'L', 'Malang', '2025-02-16', NULL, 'Ponidi', '', '', '', 1, 'AKTIF', '', '', '1739703605_multiply.png', 2, NULL);
INSERT INTO `santri` VALUES (1361, '44332', 'Muh. Saifuddin Zakaria', 'L', '', '0000-00-00', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, NULL);
INSERT INTO `santri` VALUES (1362, '37128739', 'jaskjdla', 'L', '', '0000-00-00', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, NULL);
INSERT INTO `santri` VALUES (1363, '898098', 'CIcik WInarsih', 'L', '', '0000-00-00', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, NULL);
INSERT INTO `santri` VALUES (1364, '13291', 'Muhammad Hilmy Zulfikar', 'L', '', '0000-00-00', NULL, '', '', '', '', 1, 'AKTIF', '', '', '1739705622_WhatsApp_Image_2025-01-07_at_18_41_09.jpeg', 3, NULL);
INSERT INTO `santri` VALUES (1365, '83127931', 'Pengurus 1', 'L', 'Malang', '2025-02-17', NULL, 'aaa', 'bbb', '8028103', '91839012', 1, 'AKTIF', 'ccc', '89048302', '1739770548_46A.jpg', 3, NULL);
INSERT INTO `santri` VALUES (1366, '38127398', 'Asatid 1', 'L', 'Malang', '2025-02-18', NULL, 'MAMA', 'BBB', '08588238', '31820381', 1, 'AKTIF', 'CCC', '83102390', '1739773496_46B.jpg', 3, NULL);
INSERT INTO `santri` VALUES (1367, '0118060077', 'kafil 1', 'L', 'Malang', '2025-02-17', NULL, 'MAMA', '', '', '', 1, 'AKTIF', '', '', '1739774757_Sertifikat_Donasi_(3).jpg', 2, NULL);
INSERT INTO `santri` VALUES (1368, '3213123', 'Rendy Yani Susanto', 'L', 'Malang', '2025-03-04', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, '44341231232');
INSERT INTO `santri` VALUES (1369, '32131', 'CIcik WInarsih', 'L', 'Malang', '2025-03-04', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, '350741115505');
INSERT INTO `santri` VALUES (1370, '12323', 'Rendy Yani Susanto123', 'L', '', '0000-00-00', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, '5544');
INSERT INTO `santri` VALUES (1371, '0118060077', 'Rendy Yani Susanto 444', 'L', 'Malang', '2025-03-04', NULL, '', '', '', '', 1, 'AKTIF', '', '', NULL, 2, '44341231232');

-- ----------------------------
-- Table structure for santri_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `santri_dokumen`;
CREATE TABLE `santri_dokumen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of santri_dokumen
-- ----------------------------
INSERT INTO `santri_dokumen` VALUES (1, 1371, 'KTP', '1741058559_SPLKS_-_UBIG_-_PROVINSI_-_2025-18.pdf');
INSERT INTO `santri_dokumen` VALUES (2, 1371, 'KK', '1741058559_SPLKS_-_UBIG_-_PROVINSI_-_2025-181.pdf');
INSERT INTO `santri_dokumen` VALUES (3, 1371, 'tes', '1741058559_SPLKS_-_UBIG_-_PROVINSI_-_2025-182.pdf');

-- ----------------------------
-- Table structure for sekolah
-- ----------------------------
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sekolah
-- ----------------------------
INSERT INTO `sekolah` VALUES (1, 'SD', 'SD IT Asy-Syadzili', '#000000', 1, '2024-11-02 02:20:55');
INSERT INTO `sekolah` VALUES (2, 'SMP', 'SMP IT ASY-SYADZILI', '#000000', 1, '2024-11-02 02:22:05');
INSERT INTO `sekolah` VALUES (3, 'SMA ', 'SMA IT ASY-SYADZILI', '#000000', 1, '2024-11-02 02:22:05');
INSERT INTO `sekolah` VALUES (4, 'SMK', 'SMK IT ASY-SYADZILI', '#000000', 1, '2024-11-02 02:22:05');

-- ----------------------------
-- Table structure for setting_status
-- ----------------------------
DROP TABLE IF EXISTS `setting_status`;
CREATE TABLE `setting_status`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `groups` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting_status
-- ----------------------------
INSERT INTO `setting_status` VALUES (1, 'Draft', '1', 'default', 'transaction');
INSERT INTO `setting_status` VALUES (2, 'Successed', '0', 'success', 'transaction');
INSERT INTO `setting_status` VALUES (3, 'Aktif', '1', 'primary', 'active');
INSERT INTO `setting_status` VALUES (4, 'Non Aktif', '0', 'warning', 'active');

-- ----------------------------
-- Table structure for setting_table
-- ----------------------------
DROP TABLE IF EXISTS `setting_table`;
CREATE TABLE `setting_table`  (
  `id_setting_table` int NOT NULL AUTO_INCREMENT,
  `table` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_setting_table`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting_table
-- ----------------------------
INSERT INTO `setting_table` VALUES (109, 'madin', 'kode', 'M{rand}', NULL);
INSERT INTO `setting_table` VALUES (110, 'madin', 'template_excel', 'madin.xlsx', NULL);
INSERT INTO `setting_table` VALUES (111, 'madin', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (112, 'tahfidz', 'kode', 'T{rand}', NULL);
INSERT INTO `setting_table` VALUES (113, 'tahfidz', 'template_excel', 'tahfidz.xlsx', NULL);
INSERT INTO `setting_table` VALUES (114, 'tahfidz', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (115, 'sekolah', 'template_excel', 'sekolah.xlsx', NULL);
INSERT INTO `setting_table` VALUES (116, 'sekolah', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (117, 'sekolah', 'kode', 'S{rand}', NULL);
INSERT INTO `setting_table` VALUES (118, 'asrama', 'kode', 'A{rand}', NULL);
INSERT INTO `setting_table` VALUES (119, 'kamar', 'kode', 'K{order_number}', NULL);
INSERT INTO `setting_table` VALUES (120, 'rekam_medis', 'kode', 'RM{rand}', NULL);
INSERT INTO `setting_table` VALUES (121, 'keluhan', 'kode', 'KEL{rand}', NULL);
INSERT INTO `setting_table` VALUES (122, 'tatib', 'kode', 'KT{rand}', NULL);
INSERT INTO `setting_table` VALUES (123, 'pelanggaran', 'kode', 'P{rand}', NULL);
INSERT INTO `setting_table` VALUES (124, 'obat', 'kode', 'OBT{rand}', NULL);
INSERT INTO `setting_table` VALUES (125, 'pengurus', 'kode', 'P{rand}', NULL);
INSERT INTO `setting_table` VALUES (126, 'asatid', 'kode', 'AS{rand}', NULL);
INSERT INTO `setting_table` VALUES (127, 'kafil', 'kode', 'K{rand}', NULL);

-- ----------------------------
-- Table structure for status_rekam_medis
-- ----------------------------
DROP TABLE IF EXISTS `status_rekam_medis`;
CREATE TABLE `status_rekam_medis`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of status_rekam_medis
-- ----------------------------
INSERT INTO `status_rekam_medis` VALUES (1, 'Rawat Inap', '#c0392b', 1, 'A1');
INSERT INTO `status_rekam_medis` VALUES (2, 'Rawat Jalan', '#16a085', 1, 'A2');
INSERT INTO `status_rekam_medis` VALUES (3, 'Istirahat di Kamar', '#d35400', 1, 'A3');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_id` int NULL DEFAULT NULL,
  `submenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `c` tinyint NULL DEFAULT NULL,
  `r` tinyint NULL DEFAULT NULL,
  `u` tinyint NULL DEFAULT NULL,
  `d` tinyint NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (1, 1, 'Master Data Santri', 'santri/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (2, 1, 'Master Data Pengurus', 'pengurus/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (3, 1, 'Master Data Asatid', 'asatid/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (4, 1, 'Master Data Kafil', 'kafil/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (5, 1, 'Master Data Alumni', 'santri/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (6, 1, 'Master Data Madin', 'madin/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (7, 1, 'Master Data Tahfidz', 'tahfidz/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (8, 1, 'Master Data Sekolah', 'santri/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (9, 1, 'Master Data Asrama', 'asrama/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (10, 2, 'Master Data Kamar', 'kamar/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (11, 2, 'Perizinan', 'perizinan/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (12, 2, 'Pelaporan', 'perizinan/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (13, 3, 'Pengajuan Pelanggaran', 'Pelanggaran/pengajuan', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (14, 3, 'Data Pelanggaran', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (15, 3, 'Surat Pernyataan (SP)', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (16, 3, 'Berita Acara Pemeriksaan (BAP)', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (17, 3, 'Tata Tertib', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (18, 3, 'Kategori Tata Tertib', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (19, 3, 'Laporan Pelanggaran', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (20, 3, 'Statistik Pelanggaran', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (21, 3, 'Poin Santri', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (22, 4, 'Absensi Tahfidz', 'Tahfidz/absensi', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (23, 4, 'Perkembangan Tahfidz', 'Tahfidz/perkembangan', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (24, 4, 'Laporan', 'Tahfidz/laporan', 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (25, 5, 'Absensi Tahfidz', 'Tahfidz/absensi', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (26, 5, 'Perkembangan Tahfidz', 'Tahfidz/perkembangan', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (27, 5, 'Laporan', 'Tahfidz/laporan', 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (28, 6, 'Rekam Medis', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (29, 6, 'Data Obat', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (30, 6, 'Data Keluhan', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (31, 6, 'Status Rekam Medis', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (32, 6, 'Surat Ijin Sakit', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (33, 6, 'Surat Ijin Lain', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (34, 6, 'Laporan Rekam Medis', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (35, 6, 'Laporan Ijin', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (36, 2, 'Setting Kamar Santri', 'kamar/kamar_santri', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (37, 10, 'Presensi Harian Santri', 'presensi_harian/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (38, 1, 'Semua Data Santri & Pengurus', 'personal/get_data', 1, 1, 1, 1, 'icon-folder3');

-- ----------------------------
-- Table structure for surat_ijin_poskestren
-- ----------------------------
DROP TABLE IF EXISTS `surat_ijin_poskestren`;
CREATE TABLE `surat_ijin_poskestren`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal_kembali` date NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of surat_ijin_poskestren
-- ----------------------------

-- ----------------------------
-- Table structure for surat_pernyataan
-- ----------------------------
DROP TABLE IF EXISTS `surat_pernyataan`;
CREATE TABLE `surat_pernyataan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pelanggaran_id` int NULL DEFAULT NULL,
  `santri_id` int NULL DEFAULT NULL,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jenis` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of surat_pernyataan
-- ----------------------------
INSERT INTO `surat_pernyataan` VALUES (9, 4, 1261, 't43t323r2r', '2024-11-09', 1);
INSERT INTO `surat_pernyataan` VALUES (10, 5, 448, '\'fowdwd', '2024-11-09', 1);
INSERT INTO `surat_pernyataan` VALUES (11, 5, 448, 'r2r2', '2024-11-09', 1);
INSERT INTO `surat_pernyataan` VALUES (12, 5, 448, 'SO/24/07/10011', '2024-11-13', 1);

-- ----------------------------
-- Table structure for tahfidz
-- ----------------------------
DROP TABLE IF EXISTS `tahfidz`;
CREATE TABLE `tahfidz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tahfidz
-- ----------------------------
INSERT INTO `tahfidz` VALUES (1, 'T6252', '1A', '#e69494', 1, '2024-11-02 02:10:55');
INSERT INTO `tahfidz` VALUES (3, 'T001', 'TAHFIDZ 1A', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (4, 'T002', 'TAHFIDZ 1B', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (5, 'T003', 'TAHFIDZ 1C', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (6, 'T004', 'TAHFIDZ 2A', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (7, 'T005', 'TAHFIDZ 2B', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (8, 'T006', 'TAHFIDZ 2C', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (9, 'T007', 'TAHFIDZ 3A', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (10, 'T008', 'TAHFIDZ 3B', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (11, 'T009', 'TAHFIDZ 3C', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (12, 'T010', 'TAHFIDZ 4A', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (13, 'T011', 'TAHFIDZ 4B', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (14, 'T012', 'TAHFIDZ 4C', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (15, 'T013', 'TAHFIDZ 5A', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (16, 'T014', 'TAHFIDZ 5B', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (17, 'T015', 'TAHFIDZ 5C', '#000000', 1, '2024-11-02 02:16:31');
INSERT INTO `tahfidz` VALUES (18, 'T016', 'TAHFIDZ 6A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (19, 'T017', 'TAHFIDZ 6B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (20, 'T018', 'TAHFIDZ 6C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (21, 'T019', 'TAHFIDZ 7A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (22, 'T020', 'TAHFIDZ 7B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (23, 'T021', 'TAHFIDZ 7C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (24, 'T022', 'TAHFIDZ 8A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (25, 'T023', 'TAHFIDZ 8B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (26, 'T024', 'TAHFIDZ 8C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (27, 'T025', 'TAHFIDZ 9A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (28, 'T026', 'TAHFIDZ 9B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (29, 'T027', 'TAHFIDZ 9C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (30, 'T028', 'TAHFIDZ 10A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (31, 'T029', 'TAHFIDZ 10B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (32, 'T030', 'TAHFIDZ 10C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (33, 'T031', 'TAHFIDZ 11A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (34, 'T032', 'TAHFIDZ 11B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (35, 'T033', 'TAHFIDZ 11C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (36, 'T034', 'TAHFIDZ 12A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (37, 'T035', 'TAHFIDZ 12B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (38, 'T036', 'TAHFIDZ 12C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (39, 'T037', 'TAHFIDZ 13A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (40, 'T038', 'TAHFIDZ 13B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (41, 'T039', 'TAHFIDZ 13C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (42, 'T040', 'TAHFIDZ 14A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (43, 'T041', 'TAHFIDZ 14B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (44, 'T042', 'TAHFIDZ 14C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (45, 'T043', 'TAHFIDZ 15A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (46, 'T044', 'TAHFIDZ 15B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (47, 'T045', 'TAHFIDZ 15C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (48, 'T046', 'TAHFIDZ 16A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (49, 'T047', 'TAHFIDZ 16B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (50, 'T048', 'TAHFIDZ 16C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (51, 'T049', 'TAHFIDZ 17A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (52, 'T050', 'TAHFIDZ 17B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (53, 'T051', 'TAHFIDZ 17C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (54, 'T052', 'TAHFIDZ 18A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (55, 'T053', 'TAHFIDZ 18B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (56, 'T054', 'TAHFIDZ 18C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (57, 'T055', 'TAHFIDZ 19A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (58, 'T056', 'TAHFIDZ 19B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (59, 'T057', 'TAHFIDZ 19C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (60, 'T058', 'TAHFIDZ 20A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (61, 'T059', 'TAHFIDZ 20B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (62, 'T060', 'TAHFIDZ 20C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (63, 'T061', 'TAHFIDZ 21A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (64, 'T062', 'TAHFIDZ 21B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (65, 'T063', 'TAHFIDZ 21C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (66, 'T064', 'TAHFIDZ 22A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (67, 'T065', 'TAHFIDZ 22B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (68, 'T066', 'TAHFIDZ 22C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (69, 'T067', 'TAHFIDZ 23A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (70, 'T068', 'TAHFIDZ 23B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (71, 'T069', 'TAHFIDZ 23C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (72, 'T070', 'TAHFIDZ 24A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (73, 'T071', 'TAHFIDZ 24B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (74, 'T072', 'TAHFIDZ 24C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (75, 'T073', 'TAHFIDZ 25A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (76, 'T074', 'TAHFIDZ 25B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (77, 'T075', 'TAHFIDZ 25C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (78, 'T076', 'TAHFIDZ 26A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (79, 'T077', 'TAHFIDZ 26B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (80, 'T078', 'TAHFIDZ 26C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (81, 'T079', 'TAHFIDZ 27A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (82, 'T080', 'TAHFIDZ 27B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (83, 'T081', 'TAHFIDZ 27C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (84, 'T082', 'TAHFIDZ 28A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (85, 'T083', 'TAHFIDZ 28B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (86, 'T084', 'TAHFIDZ 28C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (87, 'T085', 'TAHFIDZ 29A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (88, 'T086', 'TAHFIDZ 29B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (89, 'T087', 'TAHFIDZ 29C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (90, 'T088', 'TAHFIDZ 30A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (91, 'T089', 'TAHFIDZ 30B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (92, 'T090', 'TAHFIDZ 30C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (93, 'T091', 'TAHFIDZ 31A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (94, 'T092', 'TAHFIDZ 31B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (95, 'T093', 'TAHFIDZ 31C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (96, 'T094', 'TAHFIDZ 32A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (97, 'T095', 'TAHFIDZ 32B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (98, 'T096', 'TAHFIDZ 32C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (99, 'T097', 'TAHFIDZ 33A', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (100, 'T098', 'TAHFIDZ 33B', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (101, 'T099', 'TAHFIDZ 33C', '#000000', 1, '2024-11-02 02:16:32');
INSERT INTO `tahfidz` VALUES (102, 'T100', 'TAHFIDZ 34A', '#000000', 1, '2024-11-02 02:16:32');

-- ----------------------------
-- Table structure for tatib
-- ----------------------------
DROP TABLE IF EXISTS `tatib`;
CREATE TABLE `tatib`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kategori_tatib_id` int NULL DEFAULT NULL,
  `status_aktif` int NULL DEFAULT NULL,
  `poin` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tatib
-- ----------------------------
INSERT INTO `tatib` VALUES (2, 'A2', 'Membawa dan/menyimpan uang diatas 50.000', 1, 1, 10);
INSERT INTO `tatib` VALUES (3, 'A3', 'Melakukan hal lain saat kegiatan', 1, 1, 10);
INSERT INTO `tatib` VALUES (4, 'A4', 'Memakai pakaian dengan gambar/simbol, gelang, kalung dan aksesoris yang tidak wajar', 1, 1, 10);
INSERT INTO `tatib` VALUES (5, 'A5', 'Mencuci tangan, kaki atau peralatan makan tidak pada tempatnya', 1, 1, 10);
INSERT INTO `tatib` VALUES (6, 'A6', 'Tidak melaksanakan piket', 1, 1, 10);
INSERT INTO `tatib` VALUES (7, 'A7', 'Tidak memakai Seragam sesuai ketentuan Pesatren', 1, 1, 10);
INSERT INTO `tatib` VALUES (8, 'A8', 'Membawa hewan peliharaan dengan jenis apapun', 1, 1, 10);
INSERT INTO `tatib` VALUES (9, 'A9', 'Terlambat kembali ke Pesantren sepulang sekolah', 1, 1, 10);
INSERT INTO `tatib` VALUES (10, 'A10', 'Bergurau melampaui batas kewajaran', 1, 1, 10);
INSERT INTO `tatib` VALUES (11, 'A11', 'Berbohong/tidak jujur', 1, 1, 10);
INSERT INTO `tatib` VALUES (12, 'B1', 'Menetap di kamar yang bukan kamarnya', 2, 1, 30);
INSERT INTO `tatib` VALUES (13, 'B2', 'Tidak membawa perlengkapan/peralatan saat kegiatan', 2, 1, 30);
INSERT INTO `tatib` VALUES (14, 'B3', 'Meninggalkan kegiatan sebelum waktunya', 2, 1, 30);
INSERT INTO `tatib` VALUES (15, 'B4', 'Meludah, membuang air atau sampah sembarangan', 2, 1, 30);
INSERT INTO `tatib` VALUES (16, 'B5', 'Membawa  dan / memakai alat lahwi (kartu, game, komik, layang-layang dll)', 2, 1, 30);
INSERT INTO `tatib` VALUES (17, 'B6', 'Terlambat 10 menit mengikuti kegiatan ', 2, 1, 30);
INSERT INTO `tatib` VALUES (18, 'B7', 'Olahraga tidak pada waktu dan tempat yang ditentukan', 2, 1, 30);
INSERT INTO `tatib` VALUES (19, 'B8', 'Tidur tidak memakai daleman (Celana pendek)', 2, 1, 30);
INSERT INTO `tatib` VALUES (20, 'B9', 'Istirahat/berada di kamar ketika sakit tanpa keterangan/izin dari Poskestren', 2, 1, 30);
INSERT INTO `tatib` VALUES (21, 'B10', 'Memakai celana pendek/tidak memakai baju diluar kamar', 2, 1, 30);
INSERT INTO `tatib` VALUES (22, 'B11', 'Membuat kegaduhan', 2, 1, 30);
INSERT INTO `tatib` VALUES (23, 'B12', 'Menambah/membuat fasilitas pribadi tanpa seizin pengurus', 2, 1, 30);
INSERT INTO `tatib` VALUES (24, 'B13', 'Berdagang secara ilegal didalam pesantren', 2, 1, 30);
INSERT INTO `tatib` VALUES (25, 'B14', 'Berhutang tanpa konfirmasi ke ketua kamar', 2, 1, 30);
INSERT INTO `tatib` VALUES (26, 'B15', 'Membuat seragam tertentu tanpa seizin pengurus', 2, 1, 30);
INSERT INTO `tatib` VALUES (27, 'B16', 'Ghosob/menggunakan barang orang lain tanpa izin', 2, 1, 30);
INSERT INTO `tatib` VALUES (28, 'B17', 'Warna/model rambut tidak wajar', 2, 1, 30);
INSERT INTO `tatib` VALUES (29, 'B18', 'Berkata tidak sopan/jorok', 2, 1, 30);
INSERT INTO `tatib` VALUES (30, 'B19', 'Menyalahgunakan identitas orang lain', 2, 1, 30);
INSERT INTO `tatib` VALUES (31, 'B20', 'Terlambat kembali ke Pesantren tanpa keterangan (setelah liburan/izin pulang) ', 2, 1, 30);
INSERT INTO `tatib` VALUES (32, 'B21', ' Menggunakan fasilitas pengurus, ustad, kafil dan guru tanpa ijin', 2, 1, 30);
INSERT INTO `tatib` VALUES (33, 'B22', 'Tidak Puasa Sunnah yang diwajibkan Pesantren', 2, 1, 30);
INSERT INTO `tatib` VALUES (34, 'C1', 'Tidak mengikuti sholat jama’ah, deresan/setoran tahfidh, madrasah diniyah tanpa keterangan', 3, 1, 50);
INSERT INTO `tatib` VALUES (35, 'C2', 'Menyelenggarakan kegiatan diluar agenda pesantren tanpa seizin pengurus', 3, 1, 50);
INSERT INTO `tatib` VALUES (36, 'C3', 'Memalsukan surat atau tanda tangan pengurus, guru dan orang tua', 3, 1, 50);
INSERT INTO `tatib` VALUES (37, 'C4', 'Melakukan transaksi ilegal dengan pihak luar pesantren/COD', 3, 1, 50);
INSERT INTO `tatib` VALUES (38, 'C5', 'Melakukan doktrinisasi untuk kepentingan pribadi dan atau golongan', 3, 1, 50);
INSERT INTO `tatib` VALUES (39, 'C6', 'Memberikan kesaksian palsu ', 3, 1, 50);
INSERT INTO `tatib` VALUES (40, 'C7', 'Membawa dan / memakai kendaraan, handphone dan barang elektronik kecuali mendapatkan izin dari Pengurus', 3, 1, 50);
INSERT INTO `tatib` VALUES (41, 'C8', 'Membawa dan merokok dalam bentuk dan jenis apapun', 3, 1, 50);
INSERT INTO `tatib` VALUES (42, 'C9', 'Menyalahgunakan Izin ', 3, 1, 50);
INSERT INTO `tatib` VALUES (43, 'C10', 'Keluar/Pulang tanpa izin', 3, 1, 50);
INSERT INTO `tatib` VALUES (44, 'C11', 'Tidak membayar uang syahriah', 3, 1, 50);
INSERT INTO `tatib` VALUES (45, 'C12', 'Merusak, Vandalisme atau mengotori sarana prasarana pesantren', 3, 1, 50);
INSERT INTO `tatib` VALUES (46, 'C13', 'Melakukan pelecehan terhadap simbol-simbol Agama, Negara dan Almamater', 3, 1, 50);
INSERT INTO `tatib` VALUES (47, 'C14', 'Berhubungan dengan lawan jenis yang bukan mahromnya (pacaran, dll)', 3, 1, 50);
INSERT INTO `tatib` VALUES (48, 'C15', 'Membuat gank', 3, 1, 50);
INSERT INTO `tatib` VALUES (49, 'C16', 'Memakai tindik, tato dalam bentuk apapun', 3, 1, 50);
INSERT INTO `tatib` VALUES (50, 'C17', 'Mencuri', 3, 1, 50);
INSERT INTO `tatib` VALUES (51, 'C18', 'Pornografi dan atau Pornoaksi', 3, 1, 50);
INSERT INTO `tatib` VALUES (52, 'C19', 'Berkelahi atau bertengkar dengan alasan apapun dan bentuk apapun', 3, 1, 50);
INSERT INTO `tatib` VALUES (53, 'C20', 'Pengancaman dan Pemerasan (Penargetan)', 3, 1, 50);
INSERT INTO `tatib` VALUES (54, 'C21', 'Melakukan bullying (Verbal)', 3, 1, 50);
INSERT INTO `tatib` VALUES (55, 'C22', 'Melakukan pelecehan dan atau meremehkan pengurus, ustad, kafil, guru, dan orang tua santri', 3, 1, 50);
INSERT INTO `tatib` VALUES (56, 'C23', 'Tidak melaksanakan Puasa Ramadhan', 3, 1, 50);
INSERT INTO `tatib` VALUES (57, 'C24', 'Membawa, mengedarkan, dan atau menggunakan minuman keras dan obat-obatan terlarang (Narkoba).', 3, 1, 50);
INSERT INTO `tatib` VALUES (58, 'C25', 'Penganiayaan/Pemukulan', 3, 1, 50);
INSERT INTO `tatib` VALUES (59, 'C26', 'Berzina/Homo', 3, 1, 50);
INSERT INTO `tatib` VALUES (62, 'A1', 'Dilarang Menjemur Pakaian ', 1, 1, 10);

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of titles
-- ----------------------------
INSERT INTO `titles` VALUES (1, 'SANTRI');
INSERT INTO `titles` VALUES (2, 'KAFIL');
INSERT INTO `titles` VALUES (3, 'ASATID');
INSERT INTO `titles` VALUES (4, 'PENGURUS');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int UNSIGNED NULL DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anggota_id` int NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `activation_selector`(`activation_selector` ASC) USING BTREE,
  UNIQUE INDEX `forgotten_password_selector`(`forgotten_password_selector` ASC) USING BTREE,
  UNIQUE INDEX `remember_selector`(`remember_selector` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1741825623, 1, 'Admin', 'istrator', 'ADMIN', '0', '123', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, '::1', 'ahm', '$2y$10$Hojls1F0e38bTgB9Gyn8Cer.L.3Ak0T3rx5MyDvE3teoxXmawwGFG', 'ahmad@impact.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1692973423, 1715747442, 1, 'AHM', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, '112.215.237.81', 'rendy', '$2y$10$Zexem4W9luDl6kK6lUJfTet.gqskrcQqkFbK9osLRfEVYgp3wRJuq', 'rendy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1697964271, 1697964280, 1, 'rendy', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (21, '158.140.169.138', 'totok', '$2y$10$52VxVZPcFFMmD.WCYdihZeAUexuJHiEELQlR7jNlOuQWuKZwVy5te', 'totok@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1715824768, 1720236542, 1, 'SUHARIYANTO/TOTOK', NULL, NULL, NULL, NULL, NULL, 57, 'karyawan');
INSERT INTO `users` VALUES (22, '158.140.169.138', 'soedjai', '$2y$10$3hiEa1ssO8w61iuwlFQWK.tINivkNd55qcvI3/T2rYXYBsUP.7Zm2', 'soedjai@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1715827049, 1724508985, 1, 'SOEDJAI', NULL, NULL, NULL, NULL, NULL, 55, 'karyawan');
INSERT INTO `users` VALUES (23, '103.181.255.125', 'agus', '$2y$10$Ux1Jpu54FFtiHkepou9Y1e39yOgAbAMHPd/mHEzxjVl0QVKYPpFAm', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1715850306, 1715921393, 1, 'AGUS JUNIANTO/ENCEK', NULL, NULL, NULL, NULL, NULL, 64, 'karyawan');
INSERT INTO `users` VALUES (24, '125.163.127.49', 'markus', '$2y$10$qnjYJ.5QAYboVBxffZQxuuBY6fhclSmifFLu0gsHZr6a9RDza59Fa', 'markus@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1716171935, 1717824868, 1, 'TANO/MARKUS', NULL, NULL, NULL, NULL, NULL, 56, 'karyawan');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES (1, 1, 1);
INSERT INTO `users_groups` VALUES (2, 4, 2);
INSERT INTO `users_groups` VALUES (3, 5, 2);
INSERT INTO `users_groups` VALUES (4, 6, 3);
INSERT INTO `users_groups` VALUES (5, 7, 4);
INSERT INTO `users_groups` VALUES (6, 8, 4);
INSERT INTO `users_groups` VALUES (7, 10, 5);
INSERT INTO `users_groups` VALUES (8, 11, 5);
INSERT INTO `users_groups` VALUES (9, 12, 6);
INSERT INTO `users_groups` VALUES (10, 15, 4);
INSERT INTO `users_groups` VALUES (11, 16, 5);
INSERT INTO `users_groups` VALUES (12, 17, 5);
INSERT INTO `users_groups` VALUES (13, 18, 7);
INSERT INTO `users_groups` VALUES (14, 19, 5);
INSERT INTO `users_groups` VALUES (15, 20, 8);
INSERT INTO `users_groups` VALUES (16, 21, 5);
INSERT INTO `users_groups` VALUES (17, 22, 5);
INSERT INTO `users_groups` VALUES (18, 23, 5);
INSERT INTO `users_groups` VALUES (19, 24, 5);

-- ----------------------------
-- View structure for v_all_data
-- ----------------------------
DROP VIEW IF EXISTS `v_all_data`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_all_data` AS SELECT
        s.*, 
        IFNULL(a.santri_id, 0) AS asatid, 
        IFNULL(k.santri_id, 0) AS kafil, 
        IFNULL(lp.nama, "-") AS pengurus
    FROM santri s
    LEFT JOIN asatid a ON s.id = a.santri_id
    LEFT JOIN kafil k ON s.id = k.santri_id
    LEFT JOIN pengurus p ON s.id = p.santri_id
    LEFT JOIN lembaga_pengurus lp ON p.lembaga_pengurus_id = lp.id
    ORDER BY s.nama ASC ;

-- ----------------------------
-- View structure for v_asatid
-- ----------------------------
DROP VIEW IF EXISTS `v_asatid`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_asatid` AS SELECT
	asatid.id AS id_asatid, 
	santri.*
FROM
	asatid
	INNER JOIN
	santri
	ON 
		asatid.santri_id = santri.id ;

-- ----------------------------
-- View structure for v_groups_detail_submenu
-- ----------------------------
DROP VIEW IF EXISTS `v_groups_detail_submenu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_groups_detail_submenu` AS select `groups_detail`.`id` AS `id`,`groups_detail`.`groups_id` AS `groups_id`,`groups_detail`.`submenu_id` AS `submenu_id`,`groups_detail`.`c` AS `c`,`groups_detail`.`r` AS `r`,`groups_detail`.`u` AS `u`,`groups_detail`.`d` AS `d`,`submenu`.`menu_id` AS `menu_id`,`submenu`.`submenu` AS `submenu`,`submenu`.`link` AS `link` from (`groups_detail` join `submenu` on(`groups_detail`.`submenu_id` = `submenu`.`id`)) ;

-- ----------------------------
-- View structure for v_kafil
-- ----------------------------
DROP VIEW IF EXISTS `v_kafil`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_kafil` AS SELECT
	santri.*
FROM
	santri
	INNER JOIN
	kafil
	ON 
		santri.id = kafil.santri_id ;

-- ----------------------------
-- View structure for v_pengurus
-- ----------------------------
DROP VIEW IF EXISTS `v_pengurus`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_pengurus` AS SELECT
	pengurus.id AS id_pengurus, 
	lembaga_pengurus.id, 
	lembaga_pengurus.kode, 
	lembaga_pengurus.nama as nama_lembaga, 
	santri.id AS id_santri, 
	santri.nis, 
	santri.nama, 
	santri.jenis_kelamin, 
	santri.tempat_lahir, 
	santri.tanggal_lahir, 
	santri.alamat, 
	santri.nama_ayah, 
	santri.nama_ibu, 
	santri.no_hp_ayah, 
	santri.no_hp_ibu, 
	santri.status_aktif, 
	santri.status_santri, 
	santri.nama_wali, 
	santri.no_hp_wali, 
	santri.foto, 
	santri.asrama_id
FROM
	pengurus
	INNER JOIN
	santri
	ON 
		pengurus.santri_id = santri.id
	INNER JOIN
	lembaga_pengurus
	ON 
		pengurus.lembaga_pengurus_id = lembaga_pengurus.id ;

-- ----------------------------
-- View structure for v_santri_aktif
-- ----------------------------
DROP VIEW IF EXISTS `v_santri_aktif`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_santri_aktif` AS SELECT 
        s.*, 
        (SELECT nama FROM asrama WHERE asrama.id = s.asrama_id) AS nama_asrama
    FROM santri s
    LEFT JOIN kafil k ON s.id = k.santri_id
    LEFT JOIN asatid a ON s.id = a.santri_id
    LEFT JOIN pengurus p ON s.id = p.santri_id
    WHERE k.santri_id IS NULL 
      AND a.santri_id IS NULL 
      AND p.santri_id IS NULL 
      AND s.status_aktif = 1 ;

SET FOREIGN_KEY_CHECKS = 1;
