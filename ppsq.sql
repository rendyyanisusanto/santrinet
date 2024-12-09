/*
 Navicat Premium Data Transfer

 Source Server         : server debian
 Source Server Type    : MySQL
 Source Server Version : 100526
 Source Host           : 192.168.100.100:3306
 Source Schema         : ppsq

 Target Server Type    : MySQL
 Target Server Version : 100526
 File Encoding         : 65001

 Date: 09/12/2024 13:46:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for akun
-- ----------------------------
DROP TABLE IF EXISTS `akun`;
CREATE TABLE `akun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_ref` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `indukakun_id` int(11) NULL DEFAULT NULL,
  `saldo_normal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `is_edit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for asrama
-- ----------------------------
DROP TABLE IF EXISTS `asrama`;
CREATE TABLE `asrama`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `submenu_id` int(11) NULL DEFAULT NULL,
  `c` tinyint(1) NULL DEFAULT NULL,
  `r` tinyint(1) NULL DEFAULT NULL,
  `u` tinyint(1) NULL DEFAULT NULL,
  `d` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groups_id`(`groups_id`) USING BTREE,
  CONSTRAINT `groups_detail_ibfk_1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 385 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
-- Table structure for kamar
-- ----------------------------
DROP TABLE IF EXISTS `kamar`;
CREATE TABLE `kamar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `asrama_id` int(11) NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `asrama_id`(`asrama_id`) USING BTREE,
  CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`asrama_id`) REFERENCES `asrama` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `santri_id` int(11) NULL DEFAULT NULL,
  `kamar_id` int(11) NULL DEFAULT NULL,
  `tahun` int(11) NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kamar_id`(`kamar_id`) USING BTREE,
  INDEX `santri_id`(`santri_id`) USING BTREE,
  CONSTRAINT `kamar_santri_ibfk_2` FOREIGN KEY (`kamar_id`) REFERENCES `kamar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `kamar_santri_ibfk_3` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kategori_tatib
-- ----------------------------
DROP TABLE IF EXISTS `kategori_tatib`;
CREATE TABLE `kategori_tatib`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int(11) NULL DEFAULT NULL,
  `keluhan_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for madin
-- ----------------------------
DROP TABLE IF EXISTS `madin`;
CREATE TABLE `madin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Pengadaan');
INSERT INTO `menu` VALUES (2, 'Persediaan');
INSERT INTO `menu` VALUES (3, 'Produksi');
INSERT INTO `menu` VALUES (4, 'Penjualan');
INSERT INTO `menu` VALUES (5, 'Pengiriman');
INSERT INTO `menu` VALUES (6, 'Keuangan');
INSERT INTO `menu` VALUES (7, 'Laporan');
INSERT INTO `menu` VALUES (8, 'HR');

-- ----------------------------
-- Table structure for obat
-- ----------------------------
DROP TABLE IF EXISTS `obat`;
CREATE TABLE `obat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int(11) NULL DEFAULT NULL,
  `obat_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `santri_id` int(11) NULL DEFAULT NULL,
  `pelanggaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tatib_id` int(11) NULL DEFAULT NULL,
  `takzir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pengurus_id` int(11) NULL DEFAULT NULL,
  `pelapor_id` int(11) NULL DEFAULT NULL,
  `status_dokumen_pelanggaran` enum('BELUM_MENGAMBIL','MENGAMBIL_BELUM_MENGEMBALIKAN','MENGAMBIL_SUDAH_MENGEMBALIKAN') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `kronologi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_takzir` enum('BELUM','SUDAH') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'BELUM',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggaran
-- ----------------------------
INSERT INTO `pelanggaran` VALUES (1, 'P9363', 1021, 'BELUM', 41, 'Nasehat + Gundul + SP1', 36, 9, 'BELUM_MENGAMBIL', '2024-11-08', 1, 'tes', 'e126391a91c049b228b2bb8d076aca65.jpg', 'e7349158-225a-40fa-8e6c-ddfd13e74722', 'BELUM');
INSERT INTO `pelanggaran` VALUES (2, 'P7208', 448, 'Berbohong membawa makanan banyak', 11, 'Nasehat + Gundul + SP1', 39, 44, 'BELUM_MENGAMBIL', '2024-11-08', 1, 'tidak jujur', '7f0128159bdf1c460560206a8c45e861.png', '82de3159-e826-4e9d-82ce-24f1306e0c31', 'BELUM');
INSERT INTO `pelanggaran` VALUES (3, 'P5925', 384, 'Menjemur pakaian', 62, 'Nasehat + Gundul + SP1', 40, 45, 'BELUM_MENGAMBIL', '2024-11-08', 1, 'menjemur pakaian', 'f4c3f5e29d01eaed4c0835dd2e4fdfd5.jpg', '48ee6a47-a60e-49d5-8434-1565d39ff95b', 'BELUM');
INSERT INTO `pelanggaran` VALUES (4, 'P7665', 1261, 'Merokok, Kabur, Berbohong', 41, 'Nasehat + Gundul + SP1', 47, 46, 'BELUM_MENGAMBIL', '2024-11-08', 1, 'menjemur pakaian', NULL, 'f2ab6e44-6faa-4a91-9ee8-bd3ddf6a862e', 'BELUM');
INSERT INTO `pelanggaran` VALUES (5, 'P3671', 448, 'Merokok di kamar mandi  ', 41, '', 0, 24, 'BELUM_MENGAMBIL', '2024-11-09', 1, '', NULL, 'd5565ad0-0dfe-4437-8388-32157aacae0c', 'BELUM');

-- ----------------------------
-- Table structure for pendidikan_santri
-- ----------------------------
DROP TABLE IF EXISTS `pendidikan_santri`;
CREATE TABLE `pendidikan_santri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `santri_id` int(11) NULL DEFAULT NULL,
  `madin_id` int(11) NULL DEFAULT NULL,
  `tahfidz_id` int(11) NULL DEFAULT NULL,
  `sekolah_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `madin_id`(`madin_id`) USING BTREE,
  INDEX `tahfidz_id`(`tahfidz_id`) USING BTREE,
  INDEX `sekolah_id`(`sekolah_id`) USING BTREE,
  INDEX `santri_id`(`santri_id`) USING BTREE,
  CONSTRAINT `pendidikan_santri_ibfk_2` FOREIGN KEY (`madin_id`) REFERENCES `madin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_3` FOREIGN KEY (`tahfidz_id`) REFERENCES `tahfidz` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_4` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pendidikan_santri_ibfk_5` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pengurus
-- ----------------------------
DROP TABLE IF EXISTS `pengurus`;
CREATE TABLE `pengurus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `santri_id` int(11) NULL DEFAULT NULL,
  `lembaga_pengurus_id` int(11) NULL DEFAULT NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengurus
-- ----------------------------
INSERT INTO `pengurus` VALUES (1, '1120', 1120, 10, 1);
INSERT INTO `pengurus` VALUES (2, '1121', 1121, 10, 1);
INSERT INTO `pengurus` VALUES (3, '1122', 1122, 10, 1);
INSERT INTO `pengurus` VALUES (4, '1123', 1123, 10, 1);
INSERT INTO `pengurus` VALUES (5, '1224', 1224, 2, 1);
INSERT INTO `pengurus` VALUES (6, '1225', 1225, 2, 1);
INSERT INTO `pengurus` VALUES (7, '1226', 1226, 2, 1);
INSERT INTO `pengurus` VALUES (8, '1227', 1227, 2, 1);
INSERT INTO `pengurus` VALUES (9, '1228', 1228, 2, 1);
INSERT INTO `pengurus` VALUES (10, '1229', 1229, 2, 1);
INSERT INTO `pengurus` VALUES (11, '1230', 1230, 2, 1);
INSERT INTO `pengurus` VALUES (12, '1231', 1231, 2, 1);
INSERT INTO `pengurus` VALUES (13, '1232', 1232, 1, 1);
INSERT INTO `pengurus` VALUES (14, '1233', 1233, 1, 1);
INSERT INTO `pengurus` VALUES (15, '1234', 1234, 1, 1);
INSERT INTO `pengurus` VALUES (16, '1235', 1235, 1, 1);
INSERT INTO `pengurus` VALUES (17, '1236', 1236, 1, 1);
INSERT INTO `pengurus` VALUES (18, '1237', 1237, 1, 1);
INSERT INTO `pengurus` VALUES (19, '1238', 1238, 1, 1);
INSERT INTO `pengurus` VALUES (20, '1239', 1239, 1, 1);
INSERT INTO `pengurus` VALUES (21, '1240', 1240, 1, 1);
INSERT INTO `pengurus` VALUES (22, '1241', 1241, 1, 1);
INSERT INTO `pengurus` VALUES (23, '1242', 1242, 1, 1);
INSERT INTO `pengurus` VALUES (24, '1243', 1243, 1, 1);
INSERT INTO `pengurus` VALUES (25, '1244', 1244, 1, 1);
INSERT INTO `pengurus` VALUES (26, '1245', 1245, 1, 1);
INSERT INTO `pengurus` VALUES (27, '1246', 1246, 1, 1);
INSERT INTO `pengurus` VALUES (28, '1247', 1247, 1, 1);
INSERT INTO `pengurus` VALUES (29, '1248', 1248, 1, 1);
INSERT INTO `pengurus` VALUES (30, '1249', 1249, 1, 1);
INSERT INTO `pengurus` VALUES (31, '1250', 1250, 1, 1);
INSERT INTO `pengurus` VALUES (32, '1251', 1251, 1, 1);
INSERT INTO `pengurus` VALUES (33, '1252', 1252, 1, 1);
INSERT INTO `pengurus` VALUES (34, '1253', 1253, 1, 1);
INSERT INTO `pengurus` VALUES (35, '1254', 1254, 1, 1);
INSERT INTO `pengurus` VALUES (36, '1255', 1255, 1, 1);
INSERT INTO `pengurus` VALUES (37, '1256', 1256, 1, 1);
INSERT INTO `pengurus` VALUES (38, '1257', 1257, 1, 1);
INSERT INTO `pengurus` VALUES (39, '1258', 1258, 1, 1);
INSERT INTO `pengurus` VALUES (40, '1259', 1259, 1, 1);
INSERT INTO `pengurus` VALUES (41, '1260', 1260, 1, 1);
INSERT INTO `pengurus` VALUES (42, '1261', 1261, 1, 1);
INSERT INTO `pengurus` VALUES (43, '1262', 1262, 1, 1);
INSERT INTO `pengurus` VALUES (44, '1263', 1263, 1, 1);
INSERT INTO `pengurus` VALUES (45, '1264', 1264, 1, 1);
INSERT INTO `pengurus` VALUES (46, '1265', 1265, 1, 1);
INSERT INTO `pengurus` VALUES (47, '1266', 1266, 1, 1);

-- ----------------------------
-- Table structure for perawat
-- ----------------------------
DROP TABLE IF EXISTS `perawat`;
CREATE TABLE `perawat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `no_hp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perawat
-- ----------------------------
INSERT INTO `perawat` VALUES (1, 'A1', 'Umam', '12313', 1);
INSERT INTO `perawat` VALUES (2, 'A2', 'Hamdan', '131231', 1);
INSERT INTO `perawat` VALUES (3, 'A3', 'Mufid', '131231', 1);
INSERT INTO `perawat` VALUES (4, 'A4', 'U.  Umam', '817382', 1);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profil_website
-- ----------------------------
INSERT INTO `profil_website` VALUES ('SIM PONDOK', 'Sumberpasir', '085894632505', 'fav.png', 'fav.png', 'SIM PONDOK', '-', '<p>The Balance Small Business makes launching and managing your own business easy. It is home to experts who provide clear, practical advice on entrepreneurship and management. Whether you&rsquo;re just starting up or you want to take your company to the next level, our 20-year-strong library of more than 7,000 pieces of content will answer your questions and turn your business dreams into reality.</p>\n\n<p><a href=\"https://www.thebalancesmb.com/\">The Balance</a>&nbsp;is part of The Balance family of sites, including&nbsp;<a href=\"https://www.thebalance.com/\" rel=\"noopener\" target=\"_blank\">The Balance</a>&nbsp;and&nbsp;<a href=\"https://www.thebalancecareers.com/\" rel=\"noopener\" target=\"_blank\">The Balance Careers</a>, covering personal finance, career, and small business topics. With more than 24 million monthly visitors, The Balance is among the top-10 largest finance properties as measured by comScore, a leading Internet measurement company. Our more than 50 expert writers have extensive qualifications and expertise in their topics, including MBAs, PhDs, CFPs, other advanced degrees and professional certifications.</p>\n\n<p>The Balance family of sites have been honored by multiple awards in the last year, including&nbsp;<a href=\"https://www.tellyawards.com/winners/2017/short-form-social/general-education-discovery\" rel=\"noopener nofollow\" target=\"_blank\">The Telly Awards</a>,&nbsp;<a href=\"https://www.communicatorawards.com/\" rel=\"noopener nofollow\" target=\"_blank\">The Communicator Awards</a>, and&nbsp;<a href=\"https://www.editorandpublisher.com/news/editor-publisher-announces-the-2017-eppy-award-finalists/\" rel=\"noopener nofollow\" target=\"_blank\">Eppy Awards</a>.</p>\n', 'hallo@impactfurniture.id', 'Andreas Hartanto', 'undefined', 'undefined', 'undefined', 'undefined', 'ea4d58dd1254aff316312b7ecbb5c410.jpg', 'Halo Admin, Saya ingin bertanya/membeli/.....', 'd797c14a0070235734508b7d9f409395.jpg', '&copy; 2019. <a href=\"#\">Core Master</a> by<a href=\"https://myber.co.id\" target=\"_blank\">Myber</a>', 'Core Master', 'IMPACT FURNITURE', 'Surabaya', 'Indonesia', '112.66307147573268', '-7.840640250568774', NULL);

-- ----------------------------
-- Table structure for rekam_medis
-- ----------------------------
DROP TABLE IF EXISTS `rekam_medis`;
CREATE TABLE `rekam_medis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `santri_id` int(11) NULL DEFAULT NULL,
  `status_rekam_medis_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `perawat_id` int(11) NULL DEFAULT NULL,
  `diagnosis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lama_sakit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1359 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of santri
-- ----------------------------
INSERT INTO `santri` VALUES (2, '8478394283', 'Dhoni Ahmad Muhajjir', 'L', 'Malang', '2005-10-10', NULL, 'uweir', 'sahdjk', '8038102831028', '9032843820', 1);
INSERT INTO `santri` VALUES (3, '0121060350', 'Ahmad Anwar', 'L', 'MALANG', '2005-10-10', 'JL. DIPONEGORO NO. 4 KEC. BULULAWANG KAB. MALANG JAWA TIMUR', '', NULL, 'AHMAD QUSYAIRI', NULL, 1);
INSERT INTO `santri` VALUES (4, '0122070358', 'Hamdani Badrul Akmal', 'L', 'SURABAYA', '2005-10-10', 'JL. GEBANG PUTIH NO. 64 RT. 03 RW. 02 KEL. GEBANG KIDUL KEC. SUKOLILO KOTA SURABAYA JAWA TIMUR', NULL, NULL, 'MOCH. HISYAM', NULL, 1);
INSERT INTO `santri` VALUES (5, '0122070242', 'M. Khomsunil Kamal', 'L', 'BATU', '2005-10-10', 'JL. DELIMA NO. 7 RT. 31 RW. 7 DESA PENDEM KEC. JUNREJO KOTA BATU JAWA TIMUR', NULL, NULL, 'M. KHOMSUN', NULL, 1);
INSERT INTO `santri` VALUES (6, '0120060195', 'Mohammad Abiyu Dafa', 'L', 'KEDIRI', '2005-10-10', 'JL. CENDRAWASIH RT. 03 RW. 02, DESA RINGINREJO, KEC. RINGINREJO, KAB. KEDIRI, JATIM', NULL, NULL, 'M BAHA UDIN', NULL, 1);
INSERT INTO `santri` VALUES (7, '0120060351', 'Muhammad Asadullah Dzulfiqor', 'L', 'MALANG', '2005-10-10', 'DUSUN KARANGANYAR, DESA KARANGANYAR, KEC. PONCOKUSUMO, KAB. MALANG, JATIM', NULL, NULL, 'SAIFUDIN ZUHRI (ALM)', NULL, 1);
INSERT INTO `santri` VALUES (8, '0121060354', 'Sayyidur Rival Hudani', 'L', 'MALANG', '2005-10-10', 'JL. KALISARI JAWA TIMUR KEC. KEDUNGKANDANG KOTA MALANG JAWA TIMUR', NULL, NULL, 'ASRARI', NULL, 1);
INSERT INTO `santri` VALUES (9, '0123050113', 'Irvan', 'L', 'GAYO LUES', '2005-10-10', 'DUSUN BUNTUL GADING, DESA RAKLUNUNG, KEC. BLANGKEJEREN, KAB. GAYO LUES, ACEH', NULL, NULL, 'SA\'AT', NULL, 1);
INSERT INTO `santri` VALUES (10, '0123100262', 'Jamhuri', 'L', 'BANGKALAN', '2005-10-10', 'MASARAN, PLANGGIRAN, TANJUNG BUMI, BANGKALAN, JAWA TIMUR', NULL, NULL, 'NIZAN B. SA\'I SARIMAN', NULL, 1);
INSERT INTO `santri` VALUES (11, '0123090260', 'Muhammad Fadhilah Fauzil Adhim', 'L', 'BALI', '2005-10-10', 'TANJUNG LAMIN, TANJUNG LAMIN, PAMENANG BARAT, MERANGIN, JAMBI', NULL, NULL, 'GIYANTO', NULL, 1);
INSERT INTO `santri` VALUES (12, '0123060215', 'Muhammad Qevin', 'L', 'PONTIANAK', '2005-10-10', 'JL. SELAT PANJANG GG. TAKARI, KEL. SIANTAN HULI, KEC. PONTIANAK UTARA, KOTA PONTIANAK, KALIMANTAN BARAT', NULL, NULL, 'ZHUBAIREY', NULL, 1);
INSERT INTO `santri` VALUES (13, '0123020064', 'Muhammad Rizqy', 'L', 'TANJUNG BALAI KARIMUN', '2005-10-10', 'KAMPUNG BARU MERAL, DESA SUNGAI PASIR, KEC. MERAL, KAB. KARIMUN, KEPULAUAN RIAU', NULL, NULL, 'SUPARMAN', NULL, 1);
INSERT INTO `santri` VALUES (14, '0123070258', 'Moh. Iklil Marzoeqie', 'L', 'PROBOLINGGO', '2005-10-10', 'JL. IR. SUTAMI, KEDUNGGALENG, WONOASIH, PROBOLINGGO, JAWA TIMUR', NULL, NULL, 'MOH. CHAERUL ANWAR', NULL, 1);
INSERT INTO `santri` VALUES (15, '0123110267', 'Muhammad Faza Fiddaroini', 'L', 'Pasuruan', '2005-10-10', 'Jl. Sumbersuko 53, Lawang, Lawang, Kab. Makang, Jawa Timur', NULL, NULL, 'Isnasah Muhaimin', NULL, 1);
INSERT INTO `santri` VALUES (16, '0117060019', 'Achmad Muzaiyin', 'L', 'MALANG', '2005-10-10', 'DESA PRINGGODANI, KEC. BANTUR, KAB. MALANG, JATIM', NULL, NULL, 'SUWANDI', NULL, 1);
INSERT INTO `santri` VALUES (17, '0116060028', 'Durry Abiyyu Nawwaf', 'L', 'MALANG', '2005-10-10', 'JL. BUKIT CEMARA TIDAR N1-3, KEL. KARANGBESUKI, KEC. SUKUN, KOTA MALANG, JATIM', NULL, NULL, 'NUR KHOLIS', NULL, 1);
INSERT INTO `santri` VALUES (18, '0120060023', 'Jefri Saputro', 'L', 'MALANG', '2005-10-10', 'JL. MONDOROKO SELATAN NO. 25, DESA BANJARARUM, KEC. SINGOSARI, KAB. MALANG, JATIM', NULL, NULL, 'SUTRISNO', NULL, 1);
INSERT INTO `santri` VALUES (19, '0117060052', 'Mochammad Hanif Zam Zam', 'L', 'MALANG', '2005-10-10', 'DUSUN PANDAN REJO CINCING, DESA SUKOPURO, KEC. JABUNG, KAB. MALANG, JATIM', NULL, NULL, 'KUSNAN', NULL, 1);
INSERT INTO `santri` VALUES (20, '0117060119', 'Muhammad Mun\'im Sholih', 'L', 'SURABAYA', '2005-10-10', 'DUSUN KEPUTIH UTARA, KEC. SUKOLILO, KOTA SURABAYA, JATIM', NULL, NULL, 'AHMAD MUDZAKIR', NULL, 1);
INSERT INTO `santri` VALUES (21, '0117060051', 'Muhammad Riziq Khalil Zad', 'L', 'MALANG', '2005-10-10', 'JL. TELUK PELABUHAN RATU, KEL. ARJOSARI, KEC. BLIMBING, KOTA MALANG, JATIM', NULL, NULL, 'M. ALI MURTADHO', NULL, 1);
INSERT INTO `santri` VALUES (22, '0115060056', 'Ahmad Nahij Najman Abu Saaih', 'L', 'Malang', '2005-10-10', 'Desa Pujon Kidul, Kec. Pujon, Kab. Malang, Jatim', NULL, NULL, 'Muhammad Annas', NULL, 1);
INSERT INTO `santri` VALUES (23, '0121060326', 'Muhammad Qoidul Ghurill Muhajjalin', 'L', 'MALANG', '2005-10-10', 'DESA KRANGGAN KEC. NGAJUM KAB. MALANG JAWA TIMUR', NULL, NULL, 'M. MAHMUD', NULL, 1);
INSERT INTO `santri` VALUES (24, '0120060334', 'Muhammad Subhan', 'L', 'MALANG', '2005-10-10', 'DUSUN GANJARAN INDAH, DESA GANJARAN, KEC. GONDANGLEGI, KAB. MALANG, JATIM', NULL, NULL, 'ASMUNI', NULL, 1);
INSERT INTO `santri` VALUES (25, '0121060277', 'Imam Faruq Mujahidin', 'L', 'MALANG', '2005-10-10', 'DUSUN BUSU RT.32 RW.05 DESA SLAMPAREJO KEC. JABUNG KAB. MALANG JAWA TIMUR', NULL, NULL, 'LASTRO', NULL, 1);
INSERT INTO `santri` VALUES (26, '0120010010', 'Muhammad Fatah', 'L', 'SUMATERA UTARA', '2005-10-10', 'JL. IMAM BONJOL, DESA BINARAGA, KEC. RANTAU UTARA, KAB. LABUHAN BATU, SUMUT', NULL, NULL, 'AHAD AZHARI', NULL, 1);
INSERT INTO `santri` VALUES (27, '0115060010', 'RaihanMaulana Ismail', 'L', 'BONTANG', '2005-10-10', '', NULL, NULL, 'MUSTAJAB', NULL, 1);
INSERT INTO `santri` VALUES (28, '0123070229', 'Haydar Radya Dwi Putra', 'L', 'SIDOARJO', '2005-10-10', 'DUSUN SANAN, DESA WATUGEDE, KEC. SINGOSARI, KAB. MALANG, JAWA TIMUR', NULL, NULL, 'MOH. LUKMAN HUDA', NULL, 1);
INSERT INTO `santri` VALUES (29, '0124050119', 'Gabriel', 'L', 'Demak', '2005-10-10', 'Pondok, Sidomulyo, Dempet, Demak, Jawa tengah, 59573', NULL, NULL, 'FAUZI', NULL, 1);
INSERT INTO `santri` VALUES (30, '0119060236', 'Muhammad Rahmat Kholili', 'L', 'MALANG', '2005-10-10', 'DUSUN KRAJAN, DESA DENGKOL, KEC. SINGOSARI, KAB. MALANG, JATIM', NULL, NULL, 'AHMAD SYAIKHU', NULL, 1);
INSERT INTO `santri` VALUES (31, '0124050118', 'M.Aghosana Asadila', 'L', 'Kediri', '2005-10-10', 'Kebanan, Desa Ploso , Mojo, Kab.Kediri, Jawa timur, 64162', NULL, NULL, 'Khafid Imroni', NULL, 1);
INSERT INTO `santri` VALUES (32, '0124050141', 'Abdi Asmoro Kondi', 'L', 'Malang', '2005-10-10', 'Jl Embong Brantas No.6 depan Gg.2, Kidul Dalem, Klojen, Malang, Jawa Timur, 65119', NULL, NULL, 'SYAM ABDI', NULL, 1);
INSERT INTO `santri` VALUES (33, '0124040088', 'Mochamad Alim', 'L', 'MALANG', '2005-10-10', 'JL. AGROWAYANG, WIYUREJO, PUJON, MALANG, JAWA TIMUR, 65391', NULL, NULL, 'FAYAKUN YUSUF', NULL, 1);
INSERT INTO `santri` VALUES (34, '0124060180', 'Mohammad Chusein Murtadlo', 'L', 'JOMBANG', '2005-10-10', 'TAMBAKREJO, TAMBAKREJO, JOMBANG, JOMBANG, JAWA TIMUR, 61415', NULL, NULL, 'H.ABD HOLIK,M.Hi.,Dr.', NULL, 1);
INSERT INTO `santri` VALUES (35, '0124090221', 'Farhan Maulana Ibrahim', 'L', 'LUMAJANG', '2005-10-10', 'DSN. KALIBENING. RT 05 RW 03, PRONOJIWO, PRONOJIWO, LUMAJANG, JAWA TIMUR, 67374', NULL, NULL, 'ABDUL ROHIM', NULL, 1);
INSERT INTO `santri` VALUES (36, '0118060105', 'Ahmad Hubail Badru Tamam', 'L', 'MALANG', '2005-10-10', 'JL. MELATI, DESA SEKARPURO, KEC. PAKIS, KAB. MALANG, JATIM', NULL, NULL, 'EDI SISWANTO', NULL, 1);
INSERT INTO `santri` VALUES (37, '0118060106', 'Ahmad Imam Syafi\'i', 'L', 'MALANG', '2005-10-10', 'JL. KH. AMIR, DESA NGEMBAL, KEC. WAJAK, KAB. MALANG, JATIM', NULL, NULL, 'MUHAMMAD YUSUF', NULL, 1);
INSERT INTO `santri` VALUES (38, '0119060062', 'Ahmad Rama Syaifuddin', 'L', 'MALANG', '2005-10-10', 'DUSUN KRAJAN, DESA BUNUT WETAN, KEC. PAKIS, KAB. MALANG, JATIM', NULL, NULL, 'ANDY SYAIFUDIN', NULL, 1);
INSERT INTO `santri` VALUES (39, '0122070258', 'Dimas Ardiansyah', 'L', 'BANYUASIN', '2005-10-10', 'DUSUN DELTA UPANG RT. 3 RW. 1 DESA DELTA UPANG KEC. MAKARTI JAYA KAB. BANYUASIN SUMSEL', NULL, NULL, 'TUMINO', NULL, 1);
INSERT INTO `santri` VALUES (40, '0118060262', 'Farhadika Hardiansyah', 'L', 'MALANG', '2005-10-10', 'DUSUN JURANG PEDAS, DESA KIDAL, KEC. TUMPANG, KAB. MALANG, JATIM', NULL, NULL, 'ARIP AGUS SETYO', NULL, 1);
INSERT INTO `santri` VALUES (41, '0118060051', 'Iltsar Nail Abdul', 'L', 'MALANG', '2005-10-10', 'DESA GUBUG KLAKAH, KEC. PONCOKUSUMO, KAB. MALANG, JATIM', NULL, NULL, 'ABDUL GHOFUR', NULL, 1);
INSERT INTO `santri` VALUES (42, '0118060175', 'Ilyas Mirza Zaki', 'L', 'SURABAYA', '2005-10-10', 'JL, MADE BARAT RT. 03 RW. 02, KEL. MADE, KEC. SAMBIKEREP, KOTA SURABAYA, JATIM', NULL, NULL, 'MIADI', NULL, 1);
INSERT INTO `santri` VALUES (43, '0118060163', 'Mochammad Chasanuddin', 'L', 'MALANG', '2005-10-10', 'JL. SIMPANG SULFAT UTARA, KEL. PANDANWANGI, KEC. BLIMBING, KOTA MALANG, JATIM', NULL, NULL, 'MARWAH JUNAEDI', NULL, 1);
INSERT INTO `santri` VALUES (44, '0118060119', 'Muhammad Adn Bahrul Alamsyah', 'L', 'MALANG', '2005-10-10', 'JL. PROF MOCH. YAMIN VI NO. 28, KEL. SUKOHARJO, KEC. KLOJEN, KOTA MALANG, JATIM', NULL, NULL, 'MOCH. HARDIANSYAH', NULL, 1);
INSERT INTO `santri` VALUES (45, '0118060078', 'Muhammad Ilham Jaya Kusuma', 'L', 'SURABAYA', '2005-10-10', 'DUSUN GENITRI, DESA TIRTOMOYO, KEC. PAKIS, KAB. MALANG, JATIM', NULL, NULL, 'ABDAN SYAKUR', NULL, 1);
INSERT INTO `santri` VALUES (46, '0121080309', 'Muhammad Rizky Syahputra', 'L', 'BIMA', '2005-10-10', 'KEL. RITE KEC. RABA KOTA BIMA NUSA TENGGARA BARAT', NULL, NULL, 'SUHERMAN', NULL, 1);
INSERT INTO `santri` VALUES (47, '0118060216', 'Muhammad Roizu Dzulfikri', 'L', 'MALANG', '2005-10-10', 'JL. MAYJEN SUNGKONO NO. 01, KEL. KEDUNGKANDANG, KEC. KEDUNGKANDANG, KOTA MALANG, JATIM', NULL, NULL, 'AHMAD YUSUF', NULL, 1);
INSERT INTO `santri` VALUES (48, '0118060085', 'Muhammad Subhan Majid', 'L', 'MALANG', '2005-10-10', 'JL. AMPRONG NO. 39F, KEL. BUNUL REJO, KEC. BLIMBING, KOTA MALANG, JATIM', NULL, NULL, 'ABDULLOH', NULL, 1);
INSERT INTO `santri` VALUES (49, '0121060349', 'Rafly Arna Didana', 'L', 'BERAU', '2005-10-10', 'JL. DANAU PANJANG, KAMPUNG TUBIMBIT DAYAK, KEC. SAMBAILIUNG, KAB. BERAU, KALTIM', NULL, NULL, 'M. SUNGKOHO', NULL, 1);
INSERT INTO `santri` VALUES (50, '0121070006', 'Shaula Ahmad Faiz Zauhair', 'L', 'MERAUKE', '2005-10-10', 'PERUM. SINGHASARI RESIDENCE E8/20, DESA PURWOASRI, KEC. SINGOSARI, KAB. MALANG, JATIM', NULL, NULL, 'ANANG WIBOWO', NULL, 1);
INSERT INTO `santri` VALUES (51, '0121070031', 'Widadul Mustofa Muhammad Abdillah', 'L', 'KEDIRI', '2005-10-10', 'DESA KARANGANYAR, KEC. WATES, KAB. KEDIRI, JATIM', NULL, NULL, 'MUHTAROM', NULL, 1);
INSERT INTO `santri` VALUES (52, '0121060291', 'Wildan Salasa', 'L', 'MALANG', '2005-10-10', 'DUSUN TEGAL PASANGAN RT. 02 RW. 08, DESA PAKISKEMBAR, KEC. PAKIS, KAB. MALANG, JATIM', NULL, NULL, 'ACHMAD SHOLEH', NULL, 1);
INSERT INTO `santri` VALUES (53, '0121060215', 'Muchammad Annizar Zahid', 'L', 'MALANG', '2005-10-10', 'PERUM. MALANG ANGGUN SEJAHTERA BLOK J6 NO. 11 RT. 03 RW. 16, DESA SUMBERPORONG, KEC. LAWANG, KAB. MALANG, JATIM', NULL, NULL, 'MOHAMMAD MUCHLAS', NULL, 1);
INSERT INTO `santri` VALUES (54, '0118060080', 'Muhammad Mukhshonil Huda', 'L', 'MALANG', '2005-10-10', 'DUSUN JAMBON, DESA PAKIS KEMBAR, KEC. PAKIS, KAB. MALANG, JATIM', NULL, NULL, 'MUHAMMAD TOKHIBI', NULL, 1);
INSERT INTO `santri` VALUES (55, '0121060034', 'Abdul Aziiz Fadhil Nur Sholeh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (56, '0121060037', 'Achmad Zaki Nasrulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (57, '0121060027', 'Ahmad Fahri Rojabbi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (58, '0121060015', 'Ahmad Ridho', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (59, '0121060017', 'Ahmad Yazidu Khoir', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (60, '0121060021', 'Faisal Alexandro Aprizal', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (61, '0121060016', 'Hafiz Rakha Nadhif', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (62, '0121060259', 'Imam Zerkazi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (63, '0121060031', 'Khoirus Zidan Al Farisi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (64, '0121060003', 'Lingga Aryasatyafathin Seleky', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (65, '0122070379', 'Moch. Ghanie Marshando Abi Nur Yusrizal', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (66, '0121060001', 'Mohammad Fajar Beny Setiawan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (67, '0121060041', 'Mohammad Fuad Al Ahsan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (68, '0121060028', 'Mohammad Milzam Haqqon Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (69, '0121060018', 'Muchammad Fahmi Zofiyun Rohman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (70, '0121060026', 'Muhammad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (71, '0121060130', 'Muhammad Agung Sanwamasel', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (72, '0121060029', 'Muhammad Arif Riski Fadillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (73, '0121060032', 'Muhammad Asrory', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (74, '0121060009', 'Muhammad Fu\'ad Fathoni', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (75, '0121060040', 'Muhammad Nizar Amniri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (76, '0121060262', 'Nabil Aula Mahfudz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (77, '0121060022', 'Qomar Fatir Nur Cahyo', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (78, '0121060025', 'Syaif Rohmat Alfani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (79, '0121060002', 'Zakky Fadlillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (80, '0121060038', 'Zidan Basori', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (81, '0121060327', 'Ahmad Farihin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (82, '0121060047', 'Ahmad Reyhan Putra Pratama', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (83, '0121070056', 'Hanif Rahman Prabahadi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (84, '0121060273', 'Mochammad Agil Efendi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (85, '0121060030', 'Mokhammad Amza Haidar Al Habsy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (86, '0121090333', 'Muhammad Abdul Hafiz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (87, '0121060156', 'Muhammad Fikri Firmansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (88, '0121060008', 'Muhammad Hafizh Ubaidillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (89, '0121060142', 'Muhammad Rahman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (90, '0121060317', 'Muhammad Rahmat Ramadani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (91, '0121060163', 'Muhammad Reyhan An Nafi\'', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (92, '0121060081', 'Muhammad Rifqi Fairuz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (93, '0121060124', 'Muhammad Syahrul Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (94, '0121060301', 'Muhammad Taufiqurrohman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (95, '0121060149', 'Muhammad Ulin Nuha Al Hasani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (96, '0121060062', 'Muhammad Wildan Ardiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (97, '0121060118', 'Nur Ahmad Zahdan Zidna Fann', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (98, '0121060295', 'Ragawa Bara Mandala', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (99, '0121060082', 'Reyhan Ananda Putra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (100, '0121060083', 'Rifki Ghofir Firdaus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (101, '0121060296', 'Rohmat Agung Mahendra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (102, '0121060116', 'Romzi Amrulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (103, '0121060052', 'Salman Faris Alfarizzi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (104, '0121060076', 'Yusrizal Izza Al Faris', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (105, '0121060232', 'Zaidan Nabil Ramadhan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (106, '0121060080', 'Achmad Syafianur Bastomi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (107, '0121060106', 'Aditya Isa Kholilur Rohman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (108, '0121060276', 'Adriyan Maulana Hamid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (109, '0121060264', 'Ahmad Amrin Hakiki', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (110, '0121070098', 'Ahmad Hadrian Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (111, '0121060272', 'Ahmad Kanza Aqiela Kholiq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (112, '0121060308', 'Ahmad Khafid Ar Rosyad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (113, '0121060050', 'Ahmad Mumtaz Nawakir', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (114, '0121060293', 'Ahmad Zidan Al Amin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (115, '0121060066', 'Alfian Andrian', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (116, '0121060236', 'Arga Prasetiya Saputra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (117, '0121060309', 'Cholis', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (118, '0121060275', 'Edgar Filosofi Ilmy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (119, '0121070085', 'Ghaisan Safly Wafiuddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (120, '0121060322', 'Hukama Muslim Islah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (121, '0121070081', 'Irsyad Aras Yasyawoh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (122, '0121060313', 'Muchammad Fu\'ad Sya\'ban', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (123, '0121060150', 'Muhammad Ali Akbar Arifin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (124, '0121070099', 'Muhammad Avicenna', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (125, '0121070076', 'Muhammad Hafidzul Ulum', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (126, '0121070065', 'Muhammad Hilmiy Amrullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (127, '0121060013', 'Muhammad Hisyam Sulthan Irsyad Alzuhdi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (128, '0121060209', 'Muhammad Ikmal Maromi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (129, '0121060188', 'Muhammad Syarif Dimas Sugeng Hidayat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (130, '0121070058', 'Muhammad Zufar Dhilal Ardan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (131, '0121060268', 'Niezam Zoel Fahmie', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (132, '0121060323', 'Rama Ahmad Dani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (133, '0121070073', 'Adam Dzakwan Annafi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (134, '0121060299', 'Ahmad Faiz Abdillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (135, '0121070078', 'Ahmad Husni Aunillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (136, '0121070077', 'Ahmadunnajah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (137, '0121060162', 'Ahsan Zayyan Suyuti', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (138, '0121060184', 'Alif Aufa Ardany', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (139, '0121070042', 'Ananda Lingga Amaanullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (140, '0121070068', 'Bahaudin Azzuhri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (141, '0121070040', 'Labib Adzkiya Abdullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (142, '0121070036', 'Mochammad Fauzi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (143, '0121060300', 'Mohammad Nur Syamsi Hayadi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (144, '0121070043', 'Muhammad Al Fathan Habibi Wibowo', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (145, '0121060305', 'Muhammad Alif Lidzin Nuha', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (146, '0121060181', 'Muhammad Alif Pradana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (147, '0121060020', 'Muhammad Andika Wida Pratama', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (148, '0121060304', 'Muhammad Aqil Hakim', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (149, '0121060093', 'Muhammad Dimas Permadi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (150, '0121080326', 'Muhammad Faizun Niam', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (151, '0121060185', 'Muhammad Haidar Naufal Afifuddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (152, '0121080340', 'Muhammad Luay Alawy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (153, '0121060010', 'Muhammad Mifzal Mafruh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (154, '0121060011', 'Muhammad Mirza Masrur', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (155, '0121060182', 'Muhammad Nur Ikhsan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (156, '0121060367', 'Muhammad Qori Dzikrillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (157, '0121060176', 'Nurul Iman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (158, '0121060127', 'Achmad Dahril Djiwandono', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (159, '0121060064', 'Achmad Hafidz Jalalludin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (160, '0121060056', 'Ahmad Ibnu Atho\'illah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (161, '0121060306', 'Ahmad Jindan Thufail Widad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (162, '0121060249', 'Ahmad Royyanikov Abdillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (163, '0121060141', 'Ahmad Syafi\'i', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (164, '0121060329', 'Allessa Ell Ninno', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (165, '0121060071', 'Elvyno Aditya Putra Efendi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (166, '0121060097', 'Farel Raditya Rahman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (167, '0121060067', 'Fatchul Washid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (168, '0121060298', 'Husni Mubarok', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (169, '0121060094', 'Mochammad Jibril Alaudhin Khoiron', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (170, '0121060087', 'Mohammad Fadhil Sah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (171, '0121060045', 'Mohammad Ramzi Badi\'uz Zaman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (172, '0121060151', 'Muhammad Alifatur Rahmad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (173, '0121060063', 'Muhammad Alik Fawwaz Zamzami', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (174, '0122070396', 'Muhammad Fachriansyah Hehanussa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (175, '0121060072', 'Muhammad Fahri Nur Isgianto', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (176, '0121060061', 'Muhammad Farel Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (177, '0121060143', 'Muhammad Fariduddin Attar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (178, '0121060112', 'Muhammad Fawaid Islami', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (179, '0121060055', 'Muhammad Ghaizan Kholil', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (180, '0121060294', 'Muhammad Iqbal', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (181, '0121060068', 'Muhammad Mu\'aafiddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (182, '0121060086', 'Muhammad Nur Angga Setyawan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (183, '0121070074', 'Muhammad Syarif Hiban Rabbani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (184, '0121060049', 'Nur Muhibbul Kholqis Surur', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (185, '0120060163', 'Abdul Hafidh Alannafys', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (186, '0120060141', 'Ahmad Faisal Anam', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (187, '0120060151', 'Ahmad Fauzan Al Idris', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (188, '0120060212', 'Ahmad Maulana Abbas', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (189, '0120060083', 'Ahmad Najib Ridwan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (190, '0120060074', 'Ahmad Sholakhudin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (191, '0120060299', 'AlifLamMim Sir Eisyi As Sanusi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (192, '0120060165', 'Ammarul Firos Hala', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (193, '0120060170', 'Azida Ashfi Azizi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (194, '0122070400', 'Fahmi Andi Syifaul Haq Al-Farisi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (195, '0120060071', 'Febrian Ferdiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (196, '0120060010', 'Fikrul Mas\'ud Akbar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (197, '0119060183', 'Galang Fauzi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (198, '0120060040', 'Ghalib Abdulloh Alchamid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (199, '0120060179', 'Mochammad Nidzam Bachtiar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (200, '0120060087', 'Muamar Khadafi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (201, '0120060269', 'Muchammad Miqdad Hanun Wajdi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (202, '0119060186', 'Muhammad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (203, '0120060237', 'Muhammad Adib In\'am Ramadhoni', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (204, '0120060116', 'Muhammad Ali Maskhan Aldafa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (205, '0120060102', 'Muhammad Amru Azzaky', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (206, '0120060115', 'Muhammad Fandi Narendra Muttaqin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (207, '0120060186', 'Muhammad Najah Zayd Elmi An Nafi\'', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (208, '0120060004', 'Muhammad Rifqi Mubarok', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (209, '0120060018', 'Muhammad Wildan Muzaki Afifuddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (210, '0120060160', 'Musthofa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (211, '0120060076', 'Nabil Maulana Amrulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (212, '0120060148', 'Nawaluddin Muhammad Danu Adi Surya', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (213, '0120060166', 'Pranaja Ardiona Mahardika', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (214, '0120060097', 'Royyan Abdillah Rifqi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (215, '0120060030', 'Abdulloh Rosyid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (216, '0120060041', 'Achmad Maulana Rizky', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (217, '0120060247', 'Ahkamil Hakim Abdillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (218, '0124010273', 'Ahmad Fauzan Afif Al Farisi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (219, '0120060140', 'Ahmad Iqbal Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (220, '0120060188', 'Ajib Multazam', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (221, '0120060273', 'Aqlihadis Imtiyas Arzak', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (222, '0120060224', 'Davy Firos Fawazi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (223, '0120060155', 'Dhimas Ali Muzakki', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (224, '0120060011', 'Dzikra Satya Nabini Syakir', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (225, '0120060060', 'Erlanda Zizoe Alana Wijaya', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (226, '0120060027', 'Fahri Ahmad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (227, '0120060069', 'Gamma Nur Putra Gasi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (228, '0120060092', 'Isa Maulana Abdullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (229, '0120060181', 'Jihan Azmir Hilmi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (230, '0120060019', 'Mochammad Galih Pratama Putra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (231, '0120060012', 'Muchammad Ando Antasena R.', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (232, '0120060272', 'Muhammad Dhafiq Khanz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (233, '0120060229', 'Muhammad Fikri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (234, '0120060149', 'Muhammad Firli Nuryahya', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (235, '0120060124', 'Muhammad Hafidh Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (236, '0120060057', 'Muhammad Ja\'far Shodiq Al Mubarok', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (237, '0120060310', 'Muhammad Nauval Widad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (238, '0120060104', 'Muhammad Nur Sefi Ulin Nuha Luthfilkariem', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (239, '0120060194', 'Muhammad Saifudin Zuhri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (240, '0120060125', 'Muhammad Vaza Zakiyyan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (241, '0120060063', 'Muhammad Yusril Faidzin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (242, '0120060216', 'Mukhammad Miftakhul Amin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (243, '0120060121', 'Razif Fahri Rabbani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (244, '0120060126', 'Zainul Muttaqin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (245, '0120060090', 'Achmad Zhafran Aly Amar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (246, '0120060277', 'Ahmad Arif Hidayat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (247, '0120060120', 'Alzam Mufid Zulhilmi Setiyawan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (248, '0121080325', 'Arvin Janitra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (249, '0120060014', 'Daffa Akbar Alaudin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (250, '0120060070', 'Davrillo Dwi Saputra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (251, '0120060296', 'Eka Wijayanto', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (252, '0120060142', 'Faza Aufa Haq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (253, '0120060198', 'Filo Igor Gibran Kuswara', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (254, '0120060053', 'Hafidh Arifianda Rizky', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (255, '0120060061', 'Hertanto Romi Suseno', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (256, '0120060329', 'Kafi Fahrilah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (257, '0120060050', 'Mochammad Fatihu Rasya Nusron', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (258, '0120060222', 'Mohammad Zia Ridlo Musyafi\' Alfathoni', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (259, '0120060196', 'Muhammad Fakhri Al Hasani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (260, '0120060016', 'Muhammad Fawaid Chabibur Rohman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (261, '0120060026', 'Muhammad Gabriel Aziz Alfani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (262, '0120060038', 'Muhammad Ikhsan Ulil Abror', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (263, '0120060311', 'Muhammad Mirza Aminullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (264, '0120060207', 'Muhammad Saakif Aufary', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (265, '0120060066', 'Muhammad Syaifuddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (266, '0120060062', 'Muhammad Ulul Albab Akbar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (267, '0120060200', 'Muhammad Wildan Ahsanakalloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (268, '0120060082', 'Oktavian Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (269, '0120060260', 'Raequl Habibi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (270, '0120060176', 'Reyza Muhammad Ulinnuha', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (271, '0120060009', 'Rifqi Rosul', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (272, '0120060100', 'Shufi Amaly Taufiqy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (273, '0120060254', 'Syauqi Fadhilul Hilmi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (274, '0120060118', 'Taqiyyudin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (275, '0120060175', 'Abdillah Lucky Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (276, '0120060084', 'Achmad Wahyu Hidayat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (277, '0120060271', 'Achmad Zaki Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (278, '0120060189', 'Ahmad Jaelani Junior Ramadhan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (279, '0120060278', 'Ahmad Roziin Hidayatullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (280, '0120060287', 'Ahmad Syahrul Laili', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (281, '0120060201', 'Ahmad Zaihan Al Qodri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (282, '0120060227', 'Alwi Musadat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (283, '0120060259', 'Bama Abdulloh Majidan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (284, '0120060144', 'Elang Figo Pratama', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (285, '0120060086', 'Excel Abdillah Firdaus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (286, '0120060215', 'Khy\'sh Manaj Muhammad Muhdy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (287, '0120060217', 'Maulana Dany Iskandar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (288, '0120060065', 'Mochammad Ba\'agil Ariry', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (289, '0120060059', 'Mochammad Nafis Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (290, '0120060108', 'Mohammad Afsya Rayhany', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (291, '0120060167', 'Muhammad Abdul Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (292, '0120060072', 'Muhammad Alfan Fahmi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (293, '0120060031', 'Muhammad Ali Maksum', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (294, '0120060013', 'Muhammad Hadyan Hasby', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (295, '0120060169', 'Muhammad Husein Umar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (296, '0120060251', 'Muhammad Iqbal Aqilah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (297, '0120060136', 'Muhammad Kanzun Najach', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (298, '0120060110', 'Muhammad Luhung Samudra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (299, '0120060078', 'Muhammad Nur Cahya Husaini', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (300, '0120060262', 'Mukhammad Farkhan Fadli', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (301, '0120060068', 'Reyfandi Fajar Sidiq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (302, '0120060058', 'Rozan Muhammad Laudza\'i', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (303, '0120060187', 'Syaifuddin Zuhry', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (304, '0120060230', 'Zidny Fakhri Ramadhan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (305, '0123020069', 'ACHMAD RIZKY HIDAYAH', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (306, '0123030089', 'AHMAD ADI SAPUTRA FEBRIANTO', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (307, '0123050117', 'AHMAD FIRDAUS ARI STIAWAN', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (308, '0123070232', 'AHMAD MAULANA MAQDUM IBRAHIM', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (309, '0123020038', 'AHMAD NAWWARU UKASYAH AZZAHIR', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (310, '0123070243', 'AHMAD PRABOWO TAMHER', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (311, '0123060219', 'AHMAD TAQIYUDIN AL FARUQ', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (312, '0123020070', 'FAWAZ IZZUDIN ARIEF', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (313, '0123060218', 'GHANI IBRAHIM ALKHALIS', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (314, '0123060188', 'HABIBIL AHSAN AL HUDA LATIF', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (315, '0123030085', 'M. HASBI ASSIDIQ', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (316, '0123050135', 'M. RAYHAN IBRAHIM', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (317, '0123040099', 'M. YAFI YUSRIANSYAH', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (318, '0123030081', 'MOCH. NASRULLAH AR RIFAI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (319, '0123070228', 'MUCH. ROIS ABRORI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (320, '0123030072', 'MUHAMMAD GHILMAN JAUHARUL MAKNUN', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (321, '0123060217', 'MUHAMMAD HUSEIN ALBY', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (322, '0123030078', 'MUHAMMAD KHASAN NASRULLAH', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (323, '0123070249', 'MUHAMMAD MA\'MUN', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (324, '0123020037', 'MUHAMMAD NABIL SIROJUDDIN', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (325, '0123020051', 'MUHAMMAD NANDA WIDYADANA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (326, '0123060194', 'NAUFAL MISBAHUDDIN', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (327, '0123040109', 'NUR MUHAMMAD KHAIDIR ALHAMID', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (328, '0123070239', 'RAVKA MAULANA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (329, '0123070253', 'Reno Helmy Fairus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (330, '0123020030', 'RIZAL ZIAT AL FIKRI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (331, '0123060222', 'SATRIA PRIMA PUTRA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (332, '0123070247', 'Subhie Soelaiman Fakoubun', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (333, '0122070263', 'Ahmad Aditya Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (334, '0122070140', 'Ahmad Akia Raihan Ilyasa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (335, '0122070189', 'Alif Nidaussholachi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (336, '0122070267', 'Fabyan Asvan Anugrah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (337, '0122070344', 'Farri Muhammad Irsyadil Haq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (338, '0122070326', 'Fathur Ridho Ramadan Rengifuryaan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (339, '0122070357', 'Ilham Imdady', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (340, '0122070248', 'Iqbal Azzahir Atmojo', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (341, '0122070022', 'Labib Muhammad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (342, '0122070171', 'Maulana Faiz Firmansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (343, '0122070219', 'Moch. Ikhsan Fadli', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (344, '0122070292', 'Moch. Rafy Denis Syahbana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (345, '0122070286', 'Muchammad Ali Wafa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (346, '0122070302', 'Muh. Sahrumubarok', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (347, '0122070324', 'Muhammad Ashrul', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (348, '0122070301', 'Muhammad Azkar Fu\'ad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (349, '0122070342', 'Muhammad Huda Ar Ridwan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (350, '0122070251', 'Muhammad Ilham Sulthoni', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (351, '0122070320', 'Muhammad Rizki Arifin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (352, '0122070278', 'Oryza Nisful Ghifari', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (353, '0122070162', 'Zainal Musthofa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (354, '0122070117', 'Zidane Ilman Zuhry', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (355, '0122070284', 'Zunnoon Nazran Janki Dausat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (356, '0119060031', 'Abdul Halim Radityansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (357, '0120060017', 'Achmad Azam Falichuddaroini', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (358, '0119060154', 'Aditya Ahmad Kurniawan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (359, '0119060190', 'Ahmad Firqi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (360, '0120060283', 'Andika Bayu Nugroho', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (361, '0119060170', 'Ary Ardiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (362, '0119060212', 'Fahrur Rozy Hidayatullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (363, '0119060153', 'Galang Ulul Albab', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (364, '0119060105', 'Imam Ahmad Khudaefi Albarr', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (365, '0119060016', 'Mochammad Abdul Hadi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (366, '0119060112', 'Mochammad Basuki Rahmat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (367, '0119060143', 'Mochammad Dhafa Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (368, '0119060200', 'Mochammad Saifi Abdillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (369, '0119060135', 'Mohammad Alfin Masro\'i', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (370, '0119060015', 'Mohammad Angga Ardiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (371, '0119060080', 'Muchammad Azam Fanani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (372, '0119060036', 'Muchammad Kamal Wajdi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (373, '0119060006', 'Muhammad Adilah Rayhan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (374, '0119060275', 'Muhammad Ahsanul Insani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (375, '0119060040', 'Muhammad Bagas Fathurrahman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (376, '0119060044', 'Muhammad Burhanuddin Yufi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (377, '0119060074', 'Muhammad Fakhri Jauhari', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (378, '0119060165', 'Muhammad Fakhrur Ramadhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (379, '0119060009', 'Muhammad Khanif Rahbini', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (380, '0119060068', 'Muhammad Khomsun Fadli', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (381, '0119060101', 'Muhammad Ridwan Kautsar Fatahillah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (382, '0119060191', 'Muhammad Roykhan Firdaus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (383, '0119060072', 'Muhammad Saiful Rizal', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (384, '0119060252', 'Muhammad Syauqi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (385, '0119060254', 'Syahrul Minan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (386, '0119060199', 'Trio Micki Galih Saputra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (387, '0119060116', 'A. Habibi Sulton Firdaus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (388, '0119060052', 'Abdul Mun\'im Zam Zamy', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (389, '0119060175', 'Achmad Falih Sabilarrosyad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (390, '0119060147', 'Achmad Fathir Fadillah Anam', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (391, '0119060197', 'Achmad Nabil', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (392, '0120060129', 'Adam Nahrowi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (393, '0119060210', 'Ahmad Habiburosyad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (394, '0119060060', 'Ahmad Mustofa', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (395, '0119060019', 'Ahmad Reyhan Maulidan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (396, '0119060198', 'Al Farda Rudianto Putra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (397, '0119060111', 'Andy Asrory', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (398, '0119060010', 'Dammawuz Zainal Alfath Arba Syifa\'', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (399, '0119060185', 'Dimas Ridho Ibrahim', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (400, '0119060097', 'Fahmi Zainul Muttaqin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (401, '0119060134', 'Faris Ilmi Al Khidir', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (402, '0119060115', 'Khansa Afrinanda Agasi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (403, '0119060148', 'Mochammad Farhan Yusron', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (404, '0119060202', 'Mochammad Miftah Ulumiddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (405, '0119060096', 'Mochammad Taufiqurahman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (406, '0119060026', 'Muhammad Abid Naufal', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (407, '0119060053', 'Muhammad Abyadl Wafi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (408, '0119060073', 'Muhammad Alfiatur Rohman', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (409, '0119060244', 'Muhammad Fachri Baqir', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (410, '0119060089', 'Muhammad Fachri Maulana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (411, '0119060042', 'Muhammad Faruq Abdul Ghoni', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (412, '0119060045', 'Muhammad Ihsanul Hasanain', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (413, '0119060085', 'Muhammad Saifuddin Zakaria', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (414, '0119060137', 'Reyhan Ahmad Zen Rofiq Al Hasani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (415, '0119060152', 'Ridho Saputra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (416, '0119060054', 'Rosyid Maulana Machrus', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (417, '0119060032', 'Vanesa Wildan Al Fatih', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (418, '0119060047', 'Achmad Fikri Akyas Zain', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (419, '0119060214', 'Ahmad Aqil Arafat', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (420, '0119060122', 'Ahmad Fayyadl Al Isyrofi Nazih', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (421, '0119060033', 'Ahmad Hafid Ilham', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (422, '0119060021', 'Ahmad Novel Ashshiddiqi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (423, '0119060030', 'Ahmad Rayhan Ardhani Putra', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (424, '0119060195', 'Annashr Royyan Sahara', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (425, '0119060102', 'Farel Azzahra Ahmada', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (426, '0119060001', 'Mochammad Amar Salman Alfarizi Ramdhani', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (427, '0119060041', 'Mohammad Limin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (428, '0119060136', 'Muhammad Alfa Syarif Hidayatulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (429, '0119060039', 'Muhammad Alif Wildan Aulia', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (430, '0119060106', 'Muhammad Assegaf', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (431, '0119060245', 'Muhammad Bachrelvi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (432, '0119060018', 'Muhammad Fachri Husein', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (433, '0119060014', 'Muhammad Gibran Moreno', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (434, '0120060281', 'Muhammad Hasyim Mashuri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (435, '0119060196', 'Muhammad Izzudin Rifqi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (436, '0119060207', 'Muhammad Khoiron Kholis', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (437, '0119060003', 'Muhammad Makayla Akbar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (438, '0119060005', 'Muhammad Najib Habibulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (439, '0119060174', 'Muhammad Nur Syauqi Habibi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (440, '0119060077', 'Muhammad Wafi Daniel Husamulloh', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (441, '0119060002', 'Nazaril Fajaruddin Ardiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (442, '0119060156', 'Nurman Hidayatullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (443, '0119060109', 'R. Fandi Mudian Pradana', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (444, '0119060146', 'Zidney Fahimsyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (445, '0122070249', 'Abdu Rahman Fansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (446, '0122070246', 'Abdulloh Abid Al Qodri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (447, '0122070285', 'Ahmad Nur Rofi\'uddin', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (448, '0122070058', 'Ajib Bahrul Ihsan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (449, '0122070158', 'Alif Muhammad Gatra Abdullah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (450, '0122070113', 'Brian Erlangga', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (451, '0122070136', 'Dimas Prawiro Ghifari', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (452, '0122070271', 'Farel Adyaksa Effendi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (453, '0122070291', 'Fian Maulidan Hardiyanta', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (454, '0122070023', 'Galih Zaidan Zaki', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (455, '0122070243', 'Jovanick Meywana Fajariano', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (456, '0122070134', 'Laksamana Moch. Cheng Ho', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (457, '0122070202', 'Moh. Daffa Safiruzzahiq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (458, '0122070296', 'Moh. Miftahunnada Nawafil Fajri', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (459, '0122070295', 'Muh. Maulana Fahmi Ramadan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (460, '0122070047', 'Muhammad Bayhaqi Husayn Maula', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (461, '0122070185', 'Muhammad Farkhan Hafid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (462, '0123100264', 'Muhammad Fatikh Al-Widad', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (463, '0122070218', 'Muhammad Rabbani Ardiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (464, '0123080256', 'Muhammad Ravis Alfi', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (465, '0122070348', 'Muhammad Rifqi Ferdiansyah', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (466, '0122070262', 'Nu\'man Abdul Haq', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (467, '0122070253', 'Qodimul Zakwan Muchtar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (468, '0124060154', 'Abdillah Yafi Prasetyo', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (469, '0124070213', 'Abdullah Ramlan Anwar', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (470, '0124040102', 'AHMAD IMADUDDIN AKMAL', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (471, '0124040096', 'ALDY VARINICO ENSA RIDWANDA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (472, '0124070220', 'Alif Maulana Fachris', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (473, '0124060191', 'AULIA MUHAMMAD ADITYA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (474, '0124050131', 'BARRLIAN MUHAMMAD RAAFI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (475, '0124050124', 'FAIRUZ FIRJATULLOH', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (476, '0124050128', 'Hazbil Ibrahim Avisena', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (477, '0124070216', 'Jalaludin Jafier Fakaubun', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (478, '0124030079', 'JAVANEZAR JUNAEDI DAIM', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (479, '0124070215', 'Mohamad Rizqi Saputro', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (480, '0124060178', 'Muhammad alfian rizki ramdhan', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (481, '0124060202', 'MUHAMMAD ALI ACHMADY BACHTIAR', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (482, '0124050140', 'MUHAMMAD ARBA SAHADEWA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (483, '0124060203', 'MUHAMMAD FACHRI HIDAYATULLOH AL MACHSUNI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (484, '0124020068', 'MUHAMMAD FAHMI RIZALDI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (485, '0124020063', 'MUHAMMAD HAFIDZ \'ALY NI\'AM', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (486, '0124020038', 'Muhammad Hasby Al-hafidz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (487, '0124060174', 'Muhammad Nur Mufid', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (488, '0124060152', 'NEO KERTA DEWATA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (489, '0124060192', 'NUR MUHAMMAD MAULIDI', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (490, '0124060181', 'Risard johansz', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (491, '0124050137', 'SABDO ALAM PANATA GAMANAGARA', 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (492, '0124020023', 'AHMAD DANNISH FAIZUL BAIHAQI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (493, '0124020062', 'MOHAMMAD UBAY DILAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (494, '0124030074', 'MUHAMMAD AMMAR AL FATHONY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (495, '0124020053', 'AHMAD NABIL NIZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (496, '0124050116', 'M ITAF ZAHRAN TAJUSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (497, '0124060183', 'MUHAMMAD FURQON IBRAHIM ALFIAN ZUNAIDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (498, '0124060199', 'AHMAD ZAIDAN NURYASIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (499, '0124050115', 'AHMAD JOHANDIAN ZACKY AMIRULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (500, '0124020047', 'DK LUTHAN AKBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (501, '0124020048', 'MOHAMMAD NIZAM NURROKHIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (502, '0124050127', 'ASSADIN AHMAD LABIB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (503, '0124050133', 'BAGUS SETIAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (504, '0124010011', 'RAHMAT NUR HIDAYAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (505, '0124010014', 'ALVARO HANAR RAFANDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (506, '0124010016', 'MUHAMMAD RIZKY AKBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (507, '0124020021', 'MOCHAMAD ARIF RAMADHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (508, '0124020056', 'FAIZUL HAMZAHNA PUTRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (509, '0124010005', 'MUHAMAD NOUVAL KHOLILULLOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (510, '0124030070', 'AZIZULLAH AL LATIF DZAKWAAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (511, '0124020052', 'MUHAMMAD ALI MUJAHIDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (512, '0124020051', 'NAFIDZ PUTRA MARSAPANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (513, '0124050105', 'PANDU SATRIATASA FUJIANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (514, '0124020024', 'MUHAMMAD ALIMUL MALIKI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (515, '0124060185', 'MUHAMMAD AHNAF AQIL ATHOILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (516, '0124060177', 'AHMAD MESYI GHOZWAN SAKHI ELSURURI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (517, '0124020027', 'MUHAMMAD HILMY IZZAKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (518, '0124010001', 'MUHAMMAD AZZAM AL AYUBI WIBOWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (519, '0124070211', 'BAGAS ADI PRATAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (520, '0124070212', 'Muhammad Akbar Zakka Wardhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (521, '0124050114', 'MOCH ZAHRIL HABIBI ARDANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (522, '0124010010', 'M.FAHRI HAIKAL MAULANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (523, '0124060190', 'HERLAMBANG ADI PRASETIYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (524, '0124060155', 'ACHMAD KHOBIR FAUZUL ADHIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (525, '0124050138', 'RAYHAN RABBANI ALQUSAYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (526, '0124060182', 'KAISAR ABDILLAH TAHAJJUDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (527, '0124060196', 'MUHAMMAD FAUZI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (528, '0124020049', 'MUHAMMAD BARIK FAUZAN ADZIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (529, '0124020058', 'SATRIA RAFIF SAKHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (530, '0124050130', 'RAFFASYA FALSHAHVAD ABIYYU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (531, '0124010007', 'FATKHUL WILDAN ATSAUQIY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (532, '0124040104', 'MUHAMAD RIZAL HIBATULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (533, '0124060198', 'AHMAD FAKHRUR ROZI AL-AZHAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (534, '0124040089', 'FAJAR MAULIDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (535, '0124020066', 'MUHAMMAD ADILLA ALGHIFARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (536, '0124060165', 'MUHAMMAD WILDAN FAHROZY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (537, '0124050150', 'MUHAMMAD ISHOMUDDIN KHAKIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (538, '0124050108', 'MOHAMMAD IBRAHIM ATHOILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (539, '0124050112', 'YARDAN FADHIL AQUILA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (540, '0124050148', 'MUHAMMAD RESTU ZAKARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (541, '0124010015', 'FIKRI MASBUCHIN ALFARIZKI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (542, '0124010019', 'ALANDRA FATHAN FADILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (543, '0124060156', 'BINTANG SATRIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (544, '0124020045', 'RINO SATRIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (545, '0124010002', 'MUHAMMAD BURHANUDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (546, '0124040101', 'DIRA ARDIANSYAH PUTRA WACHID WIJAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (547, '0124030073', 'MUHAMMAD AIDY ILHAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (548, '0124060157', 'Moch Ziyan El Ziven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (549, '0124070206', 'ERLANGGA YOSHIDA ANANTA WIJAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (550, '0124060187', 'NAZAL PUTRA AL ILYAN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (551, '0124010008', 'AHMAD KAFKA SATRIA HASAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (552, '0124050106', 'AHMAD SALABY ANNAFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (553, '0124060197', 'ALWAIY ZAINAL BUKHORI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (554, '0124070209', 'Arif Nur Fuadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (555, '0124020043', 'AZKA RAFA ALFARIZKY FATONI ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (556, '0124030082', 'FATHAN AHSAN ADIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (557, '0124040099', 'HELGA PRADANA RANGGI ATMAJAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (558, '0124030078', 'M.NIZAM MUBARAK ZAIDAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (559, '0124060189', 'MOHAMMAD ATHOUL HAMZAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (560, '0124020029', 'MOHAMMAD AZZAM HIDAYATULLOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (561, '0124050143', 'MUCHAMMAD IRZA MAULANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (562, '0124050121', 'MUHAMMAD AKYAS FUADY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (563, '0124060170', 'MUHAMMAD ASYROF KHO\'IFULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (564, '0124060194', 'MUHAMMAD EVAN ALVARO MAKHBUB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (565, '0124040085', 'MUHAMMAD FADLAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (566, '0124040103', 'MUHAMMAD GILANG FATHURRAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (567, '0124060188', 'MUHAMMAD HAKIM HABIBULLOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (568, '0124060172', 'MUHAMMAD MAULANA FAHRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (569, '0124050109', 'MUHAMMAD NADZIF ASYROFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (570, '0124040098', 'MUHAMMAD UWAYS AL QORNY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (571, '0124030075', 'OSKY PUTRA ARLAMANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (572, '0124020025', 'RAYHAN FADHIL ADIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (573, '0124040100', 'SAFA ABI AN-NAUVAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (574, '0124010017', 'SAFARAZ AKMA FADHIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (575, '0124060184', 'YUFFIDUDDINUR MIRZA A P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (576, '0124020055', 'YUSRON FUADIL MUBAROK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (577, '0124020069', 'Muhammad Zaki Yamani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (578, '0124070205', 'Abdulloh Faqih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (579, '0124060204', 'ASYRAF HAIDAR MAULANA MAHBUBY ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (580, '0124050107', 'M.KENZI HAIDAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (581, '0124020035', 'Achmad Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (582, '0124060186', 'ACHMAD MUNAZZIHAN AL-ASY\'ARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (583, '0124050134', 'ALAN ASYAM AL HAFIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (584, '0124050135', 'AHMAD ZACKY ILHAM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (585, '0124060161', 'MUHAMAD IQWAN ANDRIAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (586, '0124050149', 'MUHAMMAD TAUFIQURRAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (587, '0124060201', 'MOCH ZHARUL KHAYAH ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (588, '0124060179', 'Muhammad Farizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (589, '0124020037', 'Aza Aula Auziel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (590, '0124020030', 'Wahid Raja Alim Az-zaky ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (591, '0124030072', 'AHMAD \'AZZAL MUHIB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (592, '0124040084', 'Muhamad Farhan Ramadhana ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (593, '0124050125', 'Muhammad ilham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (594, '0124040091', 'ACHMAD AZRIL ALI FIRMANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (595, '0124020067', 'MUHAMMAD LAO ALWI DEBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (596, '0124050110', 'Muhammad Fitrah Rozikin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (597, '0124050129', 'Ahmad Mustafidz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (598, '0124060158', 'AHMAD RAHMATULLOH AL HAFIDZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (599, '0124060166', 'Rassendriya darreil candra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (600, '0124050145', 'Ahmad Atqo Imanul Wakil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (601, '0124060153', 'Danil Aisyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (602, '0124060200', 'SYA\'BAN ALIMUN HANIF PARULIAN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (603, '0124060168', 'M. Fahmi Arif Al Hasany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (604, '0124020059', 'Abdullah ihya\' ulummudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (605, '0124040097', 'Muhammad Jamil Sarmini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (606, '0124060164', 'Abdul Aziz Asyrofi ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (607, '0124070214', 'Muhammad Kenzie Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (608, '0124030071', 'MUHAMMAD DENISH AL- BAIHAQI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (609, '0124050123', 'Ahmad Zidane La Konde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (610, '0124040086', 'ACHMAD AHSAN DHIKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (611, '0124060176', 'Achmad Kevin Zakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (612, '0124040094', 'AHMAD ADHYA\' FAKHRUZZAIN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (613, '0124030080', 'AHMAD HILMI FAIQ AZAM SAFI\'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (614, '0124020044', 'Ahmad Nizam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (615, '0124020050', 'Aidan Ahmad Athaillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (616, '0124050151', 'AVISENA TAFTAZANI ARIFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (617, '0124060195', 'CLEON ALFARID YUSUF MUKAFIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (618, '0124060167', 'Denandra Gista Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (619, '0124050132', 'WIRA PRATIYATA PUTRA ADHIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (620, '0124010013', 'Farras Naufal Abbasy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (621, '0124060193', 'M. IQBAL HARIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (622, '0124010009', 'MUHAMMAD ALTAF ADABY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (623, '0124020054', 'Muhamad Fajar Rojaba ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (624, '0124060162', 'MUHAMMAD ATHO\' ROBBANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (625, '0124010003', 'Muhammad Daffa Izzul Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (626, '0124060171', 'MUHAMMAD FARRAS SYADDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (627, '0124050122', 'Muhammad Hasby Alkhalifi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (628, '0124040090', 'MUHAMMAD LUTFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (629, '0124040095', 'Muhammad syauqi al ghifari ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (630, '0124010006', 'Muhammad Tanzilul Furqoni ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (631, '0124070208', 'Muhammad Wijdan Haby Hannan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (632, '0124010012', 'Muhammad Wildan Alwiansyah Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (633, '0124020040', 'Muhammad Yusuf Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (634, '0124020041', 'Nino Eka Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (635, '0124060160', 'Noer bhakti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (636, '0124010018', 'Nur Muhammad Hafid ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (637, '0124070210', 'Ribhan Bintang Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (638, '0124020061', 'Rohmat wahyu satrio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (639, '0124020039', 'Muhammad Rofetho Faroghevaro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (640, '0124050136', 'MUHAMMAD AFFAN FAIRUZ SHOFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (641, '0124070217', 'Muhammad Luaay ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (642, '', 'Firman saleh narmawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (643, '0124060169', 'Muhammad Ramadhani Rahanyamtel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (644, '0124060163', 'MUHSIN ROFIQ SEKNUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (645, '0124100222', 'Ahmad Ghossan Arafat Zain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (646, '0124070213', 'Abdullah Ramlan Anwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (647, '0123060203', 'ACHMAD MUHIBUDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (648, '0123020053', 'ADAM KRESNA SEPTA SAPUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (649, '0123030088', 'AHMAD ABDULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (650, '0123050149', 'AHMAD FAZA FAUZAN ADZIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (651, '0124020034', 'ARIFILLAH EL HAKIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (652, '0123060208', 'ARMAN MAULANA ABDAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (653, '0123060209', 'BISRI SYAMSUDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (654, '0123060210', 'CHOLIKUL ANWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (655, '0123060189', 'GHOZI DZULHAQ AZMIL KHIDIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (656, '0123050162', 'KHULUQUL ULA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (657, '0124020064', 'Muhammad Wafa Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (658, '0123060206', 'M. FARAS ALFATIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (659, '0123080255', 'M. Faisal Ikhwan Alim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (660, '0123040110', 'MOCHAMMAD AZKA HAYFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (661, '0123030079', 'MOH. SABILAR ROSYAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (662, '0123050158', 'MUHAMMAD BUSRO ALHAFID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (663, '0123060187', 'MUHAMMAD NUGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (664, '0123020052', 'MUHAMMAD SUFYAN AL FARISI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (665, '0123020054', 'MUKHAMMAD ZIDANE IBRAHIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (666, '0123070250', 'Syakieb Achmad Fadhil Efendhy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (667, '0123040108', 'NAUFAL BILFAQIH FAEEYZA HIDAYAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (668, '0123020041', 'RUBI PARAMARTA ARDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (669, '0123060198', 'SATRIA BASKORO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (670, '0123060204', 'SYAHDAN MAULANA ARIF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (671, '0123060191', 'WAFI RAHMAN SYARIF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (672, '0124070207', 'MUHAMMAD ILHAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (673, '0123070230', 'ZIDAN ARKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (674, '0123020063', 'ABAD WAFI RABBANI ROCHMAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (675, '0123040093', 'ABD. LATHIF ABDULLOH ALI WARDANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (676, '0123020012', 'ABIYYU RASYAD ANDRIYANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (677, '0123060224', 'AHMAD BILAL MAULUDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (678, '0123050155', 'AHMAD FAKHRI HIDAYAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (679, '0123060212', 'AHMAD FAUZUL ADZIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (680, '0123020066', 'AHMAD JALALUDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (681, '0123060185', 'AHMAD MUHAMMAD IKMAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (682, '0123060181', 'AHMAD RAFI AL MUFASSHIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (683, '0123050118', 'AHNAF MUCHAMMAD AN NAUFAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (684, '0123050122', 'ARDILA AHMAD FAILASUF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (685, '0123050163', 'HASBI ILHAM ASSYAUQI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (686, '0123020031', 'HIQKIL AZHOM RAHARJA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (687, '0123060214', 'M. HAFIS JUNDALLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (688, '0123050124', 'M. HASBIL AZIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (689, '0123070233', 'M. SYAHRUL ADHIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (690, '0123020023', 'MAULANA BAGAS SATRIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (691, '0123020003', 'MOCH. AFIF CHOIRUL ANAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (692, '0123020045', 'MOCH. AKBAR SULTHON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (693, '0123020039', 'MOH. ALVIAN ARIF BILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (694, '0123020062', 'MOHAMMAD FARRIZ ARIFANDI ZUHRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (695, '0123060179', 'MUCH. ALFI ALFITHROH RAMDHANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (696, '0123040098', 'MUCHAMAD FA\'AL ASYAM MUKLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (697, '0123030090', 'MUHAMMAD ABDUL GHONI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (698, '0123020058', 'MUHAMMAD ANWARUL KARIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (699, '0123050142', 'MUHAMMAD AZKA DANTE SUTRISNO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (700, '0123040106', 'MUHAMMAD FATIH FARHAT HUSEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (701, '0123030086', 'MUHAMMAD HAFIDH ROYYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (702, '0123020005', 'MUHAMMAD IHYA\' ULUMUDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (703, '0123020021', 'MUHAMMAD IRFAN NUR SUHAIMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (704, '0123060213', 'MUHAMMAD LABIB ASY\'ROFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (705, '0123050173', 'MUHAMMAD MAULANA HASBY ASSYAIBANY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (706, '0123060180', 'MUHAMMAD NAUFAL ARIF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (707, '0123050178', 'MUHAMMAD RAFQI FAIZUDDIN AL FAJRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (708, '0123050136', 'MUKHAMMAD KENZIE ARKASATYA WIJAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (709, '0123070227', 'ZAHID AZKA HALIMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (710, '0123040102', 'ZIDNI ALFA IRFANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (711, '0123050151', 'ACHMAD MUHAMMAD CHILMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (712, '0123030075', 'ACHMAD NAZILUN NIAM ALAWI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (713, '0123040111', 'AHMAD MAULANA AVICENNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (714, '0123020071', 'AHMAD SYAIFURROZI RIF\'AN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (715, '0123020055', 'AHMAD SYARIFUL ASSHFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (716, '0123080251', 'AHMAD SYAUQI ABDILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (717, '0123040094', 'AHMAD WARITSUDDIN HAFIDZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (718, '0123040096', 'AZIZ HADI KUNCORO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (719, '0123070244', 'Ahmad Madani Tamher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (720, '0123020027', 'DIMAS ILHAM RAMADANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (721, '0123060195', 'FAQIH MUHAMMAD ALGHAZALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (722, '0123020022', 'FAWWAS ROIDUL IZAM WAHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (723, '0123020059', 'FUAD NAFIURRASYID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (724, '0123020029', 'HAIKAL ABDULLOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (725, '0123050126', 'HASIF HIRZUL FAHMIL AKBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (726, '0123050137', 'I PANDE RAFIF BINTANG PUTRA YALESFIANTARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (727, '0123020014', 'LAFIF FENDIDAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (728, '0123070241', 'M. IBNU ARROBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (729, '0123060182', 'M. IDRUS SHOHIBUL FADHOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (730, '0123050154', 'MACHFUDZ ABDULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (731, '0123050121', 'MOHAMAD NUZUL BARUR RAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (732, '0123070231', 'MUHAMMAD AYMAN ZAFRAN TAJUZZAMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (733, '0123060211', 'MUHAMMAD AZIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (734, '0123030083', 'MUHAMMAD FAQIH PUTRA WIRATAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (735, '0123040101', 'MUHAMMAD ILHAM EKA NURHAFIDS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (736, '0123050157', 'MUHAMMAD ILZAM ROSYADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (737, '0123020006', 'MUHAMMAD KHALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (738, '0123020036', 'MUHAMMAD KHOIRU SYIFA\'IRROHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (739, '0123060221', 'MUHAMMAD NUR HAMDAN RADITIA ASIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (740, '0123050138', 'MUHAMMAD PASHA IBNU ALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (741, '0123020046', 'MUHAMMAD RAMADHAN KHALIQIL AZAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (742, '0123020065', 'MUHAMMAD ULUL AZMI AL IDHOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (743, '0123070252', 'Muhammad Sa\'iduddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (744, '0123020034', 'NAUFAL AZZAM MUHAMMAD ABDUL HAQQ AL HAYATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (745, '0123070238', 'REVAN HANIF KAMILSALIK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (746, '0123030082', 'RIFYAL IBNU CHOIR AL BARRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (747, '0123020007', 'THORIQ HARISH ABRAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (748, '0123020010', 'WANDANA AJIE PRIANGGODO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (749, '0123030074', 'ZIDAN ZAINULLOH ARIFIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (750, '0123040103', 'ABDULLAH ZAHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (751, '0123060183', 'ACHMAD SOFYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (752, '0123030084', 'ACHMAD VALENDIO RASYA ALHUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (753, '0123050171', 'AGA ABIYU DANIYAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (754, '0123020050', 'AHMAD MAULANA YUSUF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (755, '0123050177', 'AKHMAD ZAKIY MUDZAKKIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (756, '0123060202', 'ATHALLAH AYDIN IBNU DHIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (757, '0123050166', 'KAFA ROBBY AHLA SYARIF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (758, '0123020013', 'M. ANGGER REKSA PRIMA YOGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (759, '0123050176', 'M. RAICHAN IZZAM AR-FIZAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (760, '0123030087', 'MOCHAMAD ROYHAN SYAHPUTRAWIBAWA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (761, '0123050168', 'MOCHAMMAD AZZAM WAHYU ROMADHON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (762, '0123050129', 'MOHAMMAD FAIZ AYDIN AMZAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (763, '0123070234', 'MUHAMAD ABDUL QODIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (764, '0123100265', 'Achmad syaibaan arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (765, '0123050160', 'MUHAMMAD \'ABDILBARR AL FATHIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (766, '0123060197', 'MUHAMMAD AFREZA NUGRAHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (767, '0123040104', 'MUHAMMAD CHOIRUL ULIL ABSHOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (768, '0123020015', 'MUHAMMAD FIKRI FADHILAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (769, '0123020026', 'MUHAMMAD PARVEZ ABYANOV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (770, '0123050164', 'MUHAMMAD REYSA ASY AL FARIZI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (771, '0123050131', 'MUHAMMAD SOFYAN DZIKRULLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (772, '0123020019', 'MUHAMMAD WAHYU KRISHDIANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (773, '0123050174', 'WAHYU BINTANG NURDIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (774, '0123050141', 'ACHMAD FARCHAN AL-MUZAKKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (775, '0123020002', 'ACHMAD LUTHFI HAKIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (776, '0123050140', 'ACHMAD SULTAN IZZUDIN AMIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (777, '0123020048', 'AHMAD FELIX MARIO DZAKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (778, '0123020044', 'ALVARO RAYHAN FEBRIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (779, '0123020018', 'ARSAVINASFA HAMDAN MEIHARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (780, '0123050112', 'BRILIANT LINGGA RAMADHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (781, '0123050128', 'FAHMI AQIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (782, '0123020056', 'HAFIZ NAUFAL EXEL LABIQUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (783, '0123030073', 'HAIKAL NAUFAL TRIYANTO PUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (784, '0123020042', 'HANIF TSAQIF ANDRIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (785, '0123040107', 'HILDAN ARDI RAMADANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (786, '0123020049', 'IRFAN ACHMAD HERTANTYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (787, '0123030092', 'JOFANKA RIZKY OKTAFIANO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (788, '0123020032', 'JUANNAUFAL RAFA TRISNAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (789, '0123050146', 'KEIN ADITYA FERNANDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (790, '0123050130', 'M. FARKHAN BAIHAQI FATHONI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (791, '0123050139', 'MISYARI AL-RASYID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (792, '0123050143', 'MOCH. BINTANG ERSA AL ZADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (793, '0123020024', 'MOCH. SYIFAUL ZAKARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (794, '0123020011', 'MOH. VAZA FAUZAN AL HAMZAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (795, '0123050116', 'MUCHAMMAD ARIZA ARROHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (796, '0123050114', 'MUCHAMMAD ZIDAN SYARIFUDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (797, '0123020028', 'MUHAMMAD \'ABDULLAH AL \'ATIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (798, '0123020004', 'MUHAMMAD ASWAB ARIEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (799, '0123070236', 'MUHAMMAD DAFFAN HERMAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (800, '0123050115', 'MUHAMMAD FAKHRI MUHAFIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (801, '0123030080', 'MUHAMMAD WINDIES FERDY ARDIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (802, '0123020067', 'WILDAN RIZKI WICAKSANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (803, '0123020020', 'ZIDANE ALFIN PRATAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (804, '0123020025', 'ACHMAD NAUFAL AZHAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (805, '0123050144', 'ACHMAD RIFKI RIDHO RAMADHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (806, '0123040100', 'ACHMAD RIFQY ZAHRONI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (807, '0123050169', 'AHMAD DELVIN SANDY SAPUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (808, '0123050156', 'AHMAD DEVAN EKA SEPTIAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (809, '0123020068', 'ALFIQH SYARIFIL AKBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (810, '0123020008', 'AMRIK ZAINAL SHETA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (811, '0123050159', 'ARIF FADIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (812, '0123050172', 'HAFIZH ZHAFRAN MIZAN ARIFIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (813, '0123030076', 'LEO CHIANO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (814, '0123080242', 'Lingga Satriya Mahardika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (815, '0123060205', 'M. NAJIH LUTHFILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (816, '0123050152', 'MIFTAKHUS SURUR RAMADHANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (817, '0123060193', 'MOCH. IBRAHIM MOVIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (818, '0123060200', 'MOCHAMMAD BRIYAN ARIFAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (819, '0123050120', 'MOHAMAD RIDHO AL FATTAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (820, '0123050167', 'MUCHAMMAD UBAIDILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (821, '0123050145', 'MUHAMMAD ARSENIO ADHILA PUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (822, '0123050147', 'MUHAMMAD AUFA\'A JUNI ALAMSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (823, '0123040097', 'MUHAMMAD EGA ARDIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (824, '0123060186', 'MUHAMMAD FAHRISUL ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (825, '0123030077', 'MUHAMMAD FARCHAN NURFI FUADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (826, '0123060199', 'MUHAMMAD FERDIANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (827, '0123020035', 'MUHAMMAD IZZUDDIN NAWWAF ATTAMIMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (828, '0123050153', 'MUHAMMAD NUSHSHAR RAIHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (829, '0123070245', 'Muhammad Khoirur Ryzqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (830, '0123020016', 'RADHITYA PRADANA PUTRA HUSEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (831, '0123060225', 'RASHYA RESKY FAHREZA S.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (832, '0123050127', 'SULTAN BAYU ARDIAN SUHAEMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (833, '0123020017', 'VINO ADRIAN PRATAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (834, '0123050123', 'WILLSON DESTIANO YUSUF PRANANDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (835, '0123060184', 'ZHAIDAN NUR RIZQI MUHAMMAD ZACKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (836, '0122070225', 'Achmad Akmal Faiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (837, '0122070193', 'Achmad Junaidi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (838, '0122070110', 'Afwan Maulana Azidan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (839, '0122070090', 'Ahmad Mauludi Syifa\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (840, '0122070014', 'Ahmad Nauval Hadi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (841, '0122070124', 'Akhmad Misbach Farizky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (842, '0122070045', 'Andri Nevan Athalla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (843, '0122070093', 'Danish Adwa Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (844, '0122070184', 'Dwi Alfarizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (845, '0122070215', 'Fadel Muhammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (846, '0122070096', 'Fahmi Rojabur Rosyid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (847, '0122070199', 'Farand Ahrir Asfa Muzaky Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (848, '0122070125', 'Hafiz Ferrydian Sastro Adi Wibowo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (849, '0122070087', 'Isa Al Kahfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (850, '0122070097', 'M. Yusfak Adli Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (851, '0122070213', 'Marga Dytian Lutfi Argani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (852, '0122070143', 'Mohammad Zafier Raka Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (853, '0122070186', 'Muhamad Kamaluddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (854, '0122070188', 'Muhammad Iqbal Alvanessa Pornadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (855, '0122070053', 'Muhammad Satria Langit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (856, '0122070118', 'Muhammad Wildan Zulfikri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (857, '0122070092', 'Muhammad Zaki Ibrahim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (858, '0122070154', 'Naufal Jazil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (859, '0122070049', 'Rafif Syariful Adyan Mu\'in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (860, '0122070103', 'Raskha Altaaf Fachrieza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (861, '0122070111', 'Salman Al Farizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (862, '0122070196', 'Syifa Al Qolbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (863, '0122070079', 'Yudha Echa Patria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (864, '0122070038', 'Zainul Ridho Sholeh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (865, '0122070019', 'Adyaksa Yogis Basanta Mulyadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (866, '0122070074', 'Ahmad Kurniawan Juliansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (867, '0122070101', 'Ahmad Rijal Daifullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (868, '0122070153', 'Ahmad Zam Zam Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (869, '0122070252', 'Al Khoiri Satrio Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (870, '0122070116', 'Aldico Rossi Hero Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (871, '0122070063', 'Arfan Arya Satya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (872, '0122070119', 'Deo Okta Mahardika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (873, '0122070042', 'Dicho Praditya Arjuna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (874, '0122070061', 'Dwi Marsellino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (875, '0122070144', 'Gilang Nabil Amin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (876, '0122070041', 'Giri Galuh Nata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (877, '0122070384', 'Hamim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (878, '0122070064', 'Hisyam Alby Syarifudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (879, '0122070089', 'Hisyam Asraf Huda Murthada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (880, '0122070245', 'Jusa Azfirah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (881, '0122070070', 'M. Alfahriza Akbar Rosyid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (882, '0122070009', 'M. Dhiyaa Bahri Luthfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (883, '0122070254', 'Moch. Davian Juliansyah Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (884, '0122070142', 'Moch. Yadzka Afta Al Wafie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (885, '0122070337', 'Muh. Najmuddin Fathur Roji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (886, '0122070011', 'Muhamad Syawal Sanjaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (887, '0122070339', 'Muhammad Dhamar Sirot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (888, '0122070062', 'Muhammad Rasya Rey Raditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (889, '0122070044', 'Muhammad Rifqillah Mumtaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (890, '0122070025', 'Muhammad Rizki Aryo Gumilang A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (891, '0122070160', 'Muhammad Zaha Asyrafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (892, '0122070003', 'Musyaffa Amirul Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (893, '0122070376', 'Nabil Faiz Yahya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (894, '0122070006', 'Nazril Hafizh Amaluddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (895, '0122070109', 'Rafa Syaputra Islam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (896, '0122070035', 'Rangga Andru Satria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (897, '0122070085', 'Aang Burhanudin Badsah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (898, '0122070266', 'Abdul Munir Adliansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (899, '0122070155', 'Afrian Gigantara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (900, '0122070021', 'Ahmad Ady Febriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (901, '0122070212', 'Ahmad Azka Fathoni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (902, '0122070033', 'Ahmad Azril Eka Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (903, '0122070261', 'Ahmad Nabil Alfaruq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (904, '0122070114', 'Ahmad Raihaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (905, '0122070341', 'Ahmad Ubaidillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (906, '0122070015', 'Alfi Nur Rakhman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (907, '0122070391', 'Ali Imron Fauji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (908, '0122070180', 'Andika Mario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (909, '0122070083', 'Bintang Mukhamad Habibi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (910, '0122070183', 'Farhan Ulin Nuha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (911, '0122070164', 'M. Fairuz Nadhir Aflah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (912, '0122070059', 'Moch. Ridho Dennis Abimanyu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (913, '0122070077', 'Muhammad Andhi Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (914, '0122070050', 'Muhammad Fahmil \'Ilmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (915, '0122070121', 'Muhammad Farchan Asrori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (916, '0122070190', 'Muhammad Fayadh Azizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (917, '0122070362', 'Muhammad Robert Alvin Haidar Shofi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (918, '0122070149', 'Muhammad Sofi\'ul Fuadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (919, '0122070168', 'Muhammad Subkhan Fauzi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (920, '0122070098', 'Mukhammad David Salomon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (921, '0122070016', 'Owynn Ayyuasi Taj Azzam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (922, '0122070081', 'Rahmat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (923, '0122070108', 'Revan Geovaldo Syahputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (924, '0122070057', 'Sakha Adinata Prawira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (925, '0122070264', 'Theda Rafif Arkana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (926, '0122070265', 'Akmal Raksi Atallah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (927, '0122070238', 'Alfin Zidna Faqih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (928, '0122070201', 'Bagas Permana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (929, '0122070197', 'Destra Yonando Prameringga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (930, '0122070327', 'Evan Widyadhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (931, '0122070018', 'Fadhil Abdi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (932, '0122070152', 'Fairuz Ramadhan Ana Fathoni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (933, '0122070094', 'Firman Aji Santoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (934, '0122070223', 'Gudvan Arif Rahman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (935, '0122070167', 'Hassan Raditya Lukman Syah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (936, '0122070233', 'Heifny Yazid Fairuz Zain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (937, '0122070112', 'Moch. Nurul Azhar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (938, '0122070017', 'Mochammad Aditya Rizqi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (939, '0122070037', 'Muhammad Alfin Mubarok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (940, '0122070163', 'Muhammad Haikal Amani Ns.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (941, '0122070395', 'Firqi Muhammad Syafiq Rahanyamtel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (942, '0122070234', 'Muhammad Nur Affan Rezky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (943, '0122070216', 'Muhammad Zidan Abiy Joeviansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (944, '0122070255', 'Mukhammad Minan Syahrittamam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (945, '0122070138', 'Naufal Chandra Syahdewo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (946, '0122070340', 'Parama Toyada Haque Abdillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (947, '0122070132', 'Rahmad Rizky Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (948, '0122070205', 'Sahil Ibrahim Movic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (949, '0122070338', 'Yogi Okta Nur Alamzah Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (950, '0122070204', 'Yusuf Zam Ertassuwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (951, '0122070046', 'Achmad Rafi Ahnaf Zainudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (952, '0122070129', 'Ahmad Dzaky Mawaridhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (953, '0122070054', 'Ahmad Fahri Firdaus Sauqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (954, '0122070107', 'Alif Zaim Irham Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (955, '0122070200', 'Aqil Zidny Rafail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (956, '0122070029', 'Ganendra Rafay Mahbeer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (957, '0122070027', 'Idham Hafidz Ansori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (958, '0122070088', 'Irsyad Hamdan Adinata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (959, '0122070347', 'Irsyad Mohammad Zaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (960, '0122070105', 'Krisna Fachrizal Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (961, '0122070237', 'Mahfudh Abdillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (962, '0122070004', 'Misbahuddin Nadhif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (963, '0122070257', 'Moch. Fachrudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (964, '0122070192', 'Moch. Fatich Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (965, '0122070175', 'Mochammad Alfin Zidna Faqih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (966, '0122070172', 'Mochammad Faiz Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (967, '0122070007', 'Muh. Shahibil Wafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (968, '0122070141', 'Muhamad Yasyfi Alfi Wardhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (969, '0122070231', 'Muhammad Adam El Zanaby', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (970, '0122070181', 'Muhammad Azka Ainuzzamzami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (971, '0122070145', 'Muhammad Faiq Asrori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (972, '0122070239', 'Muhammad Fairus Ali Nabil Arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (973, '0122070165', 'Muhammad Fakhri Haromaini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (974, '0122070039', 'Muhammad Ilmi Fadillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (975, '0122070260', 'Muhammad Raffiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (976, '0122070028', 'Muhammad Ratu Machzumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (977, '0122070013', 'Muhammad Rizki Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (978, '0122070068', 'Muhammad Zahril Ilmy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (979, '0122070156', 'Sulthon Zayyan Ma\'ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (980, '0122070232', 'Wafiq Rahman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (981, '0122070369', 'Abdul Ghofur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (982, '0122070187', 'Ahmad Dafa Valerian Romadhon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (983, '0122070229', 'Ahmad Firdaus Al Faarizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (984, '0122070294', 'Ahmad Naufal Wafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (985, '0122070318', 'Ahmad Rifqi Sauqi Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (986, '0122070122', 'Aryuda Reifan Mandalangi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (987, '0122070051', 'Farhan Zufarrachman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (988, '0122070104', 'Hafiz Naf\'an Sarvatra Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (989, '0122070076', 'M. Aqil Jauhari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (990, '0122070250', 'Marvel Chandra Adinata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (991, '0122070361', 'Mas Muhammad Shiddiq Abdullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (992, '0122070305', 'Maulana Al Farizy Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (993, '0122070240', 'Miftahul Fahmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (994, '0122070235', 'Moch. Fathir Fatkhulloh Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (995, '0122070203', 'Moch. Melvin Ridho Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (996, '0122070071', 'Muhajir Alzam Al Khoir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (997, '0122070086', 'Muhammad Afin Shidqi Fatiha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (998, '0122070287', 'Muhammad Alvin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (999, '0122070043', 'Muhammad Azzam Andharu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1000, '0122070308', 'Muhammad Barqi Mahasin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1001, '0122070380', 'Muhammad Habibul Ali El Gadri Romadhoni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1002, '0122070040', 'Muhammad Hafizhuddin Al Wafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1003, '0122070173', 'Muhammad Kafin Karim Basith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1004, '0122070352', 'Marhaban Syahrul Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1005, '0122070174', 'Muhammad Syavin Qirom Basith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1006, '0122070333', 'Muhammad Zidni Aunillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1007, '0122070335', 'Nauval Fahri Nuzron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1008, '0122070374', 'Nur Achmad Bagas Syaputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1009, '0122070055', 'Pasha Alexandria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1010, '0122070274', 'Rama Aldiassa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1011, '0122070360', 'Teguh Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1012, '0122070178', 'A. Kurrota A\'yunuddin Sauqil Adib', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1013, '0121103001', 'Abdillah Ridho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1014, '0122070030', 'Achmad Afrindias Alfitroh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1015, '0122070177', 'Achmad Iqbal Farauqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1016, '0122070397', 'Adib Masdarudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1017, '0122070065', 'Aditiya Putra Arifiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1018, '0122070282', 'Ahmad Fatkhur Rozaq Al Said', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1019, '0122070073', 'Ahmad Irfan Hafidz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1020, '0122070353', 'Ali Achmad Izzul Umam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1021, '0122070351', 'Ammar Alif Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1022, '0122070281', 'Anas Syaikhul Islami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1023, '0122070303', 'Bryan Wastu Firzan Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1024, '0122070256', 'Denis Ibrahim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1025, '0122070280', 'Fadli Latu Rahman Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1026, '0122070034', 'Fairuz Arkan Lazuardi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1027, '0122070067', 'Ibra Ayubi Atallah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1028, '0122070106', 'Imron Rosyadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1029, '0122070269', 'M. Alief Riski Sugihartono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1030, '0122070398', 'M. Bahauddin Alkubro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1031, '0122070146', 'M. Kenzie Fajrul Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1032, '0122070226', 'M. Naufal Haidarrohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1033, '0122070230', 'M. Reza Haikal Robbani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1034, '0122070095', 'Mochammad Fatihur Rohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1035, '0122070091', 'Muchamad Miftakhul Huda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1036, '0122070005', 'Muchammad Mu\'afi Mansur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1037, '0122070001', 'Muhammad Azriel Backtiar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1038, '0122070066', 'Muhammad Favian Zam Zami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1039, '0122070147', 'Muhammad Fawwaz Tsaqif Zahran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1040, '0122070198', 'Muhammad Ihsan Alfiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1041, '0122070314', 'Muhammad Khoiril Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1042, '0122070123', 'Muhammad Nabil Mirza Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1043, '0122070179', 'Muhammad Putra Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1044, '0122070304', 'Muhammad Rafif Al Farrash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1045, '0122070069', 'Muhammad Rehan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1046, '0122070300', 'Muhammad Rizki Asrori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1047, '0122070131', 'Muhammad Robertho Fabryano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1048, '0122070276', 'Muhammad Yazid Fauzi Aszuhri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1049, '0122070008', 'Nabil Siraj Basyari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1050, '0122070084', 'Nazril Widad Ahmad Zakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1051, '0122070217', 'Raditia Al Kalifi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1052, '0122070130', 'Rifqi Dzul Hazmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1053, '0122070405', 'Abdurrohman Ba\'abud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1054, '0121060284', 'Achmad Badawi Fachri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1055, '0122070268', 'Ahmad Azka Raja Alfakaromi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1056, '0121060179', 'Ahmad Balya Raja Faradisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1057, '0121060370', 'Ahmad Dafi Maulana Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1058, '0121060133', 'Ahmad Muhajir Assegaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1059, '0121060171', 'Daniel Abdul Hadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1060, '0121060241', 'Fadhil Raihan Muzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1061, '0121060334', 'Farhan Walid A. M.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1062, '0121090335', 'Husain Samy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1063, '0120060127', 'Iqbal Maulana Arya Adipati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1064, '0122070319', 'Kean Ibnu Raziq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1065, '0121080337', 'Lalu Faisal Khalid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1066, '0124050120', 'FACHRI MUBARAKH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1067, '0124050117', 'MUHAMMAD FAQIH HAMZAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1068, '0124020028', 'Muhammad Muwaffa Romadhon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1069, '0124060173', 'Sultan \'Atha Arkana Tsaqif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1070, '0122070126', 'M. Azkian Birbik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1071, '0121090403', 'M. Taufik Quais Rohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1072, '0121060368', 'Maulana Faiz Hamzah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1073, '0120060314', 'Maulana Gibriel Abdayyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1074, '0121060048', 'Mochammad Afdhal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1075, '0121090412', 'Moh. Nuris Asyrofi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1076, '0121060136', 'Muhammad Afwan Abdillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1077, '0122070150', 'Muhammad Ananda Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1078, '0121021314', 'Muhammad Arif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1079, '0121060369', 'Muhammad Lubby Abqary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1080, '0121060286', 'Muhammad Lucky Ubaidillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1081, '0122070359', 'Muhammad Mansur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1082, '0121060335', 'Muhammad Musyafak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1083, '0121060204', 'Muhammad Neil Aqsha Maromi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1084, '0121060242', 'Muhammad Shofa Khasani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1085, '0122070343', 'Nur Muhammad Farid Panoto Agomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1086, '0121060332', 'Roy Ahmad Danial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1087, '0122070206', 'Yaqut Nur Muhammad Shobah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1088, '0121060240', 'Zidan Ardani Hidayanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1089, '0122070298', 'Ahmad Hanif Suhail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1090, '0122070310', 'Ahmad Muhsin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1091, '0122070323', 'Ahmad Wahyu Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1092, '0122070316', 'Al Pino Rasit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1093, '0122070075', 'Andhi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1094, '0122070293', 'Ayatullah Ragil Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1095, '0122070317', 'Bayu Bintang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1096, '0122070214', 'Damar Bimantara Sarabiti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1097, '0122070176', 'M. Abid Nur Anggara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1098, '0122070228', 'M. Aufan Zacky Al Barr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1099, '0122070279', 'M. Azriel Chamiel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1100, '0122070048', 'M. Zefran Adliya\'ul Pramono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1101, '0122070363', 'MHD. Rendi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1102, '0122070336', 'Moch. Raychan Al Utsman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1103, '0122070135', 'Moh. Wafa Hukma Shobiyya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1104, '0122070080', 'Mohammad \'Abbad Nailun Nabhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1105, '0122070012', 'Muflih Fauz Al Zayyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1106, '0122070306', 'Muhammad Amirul Mukminin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1107, '0122070100', 'Muhammad Andika Ramadan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1108, '0122070133', 'Muhammad Asyam Haidar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1109, '0122070221', 'Muhammad Iqbal Albrianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1110, '0122070330', 'Muhammad Karimul Azam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1111, '0122070315', 'Muhammad Resqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1112, '0122070290', 'Nadhif Dhiya Ramadan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1113, '0122070102', 'Narendra Veda Putra Arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1114, '0122070321', 'Oki Rahmat Hidayatulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1115, '0122070311', 'Rangga Apriyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1116, '0122070010', 'Rasyha Gibran Irfansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1117, '0122070082', 'Rifqy Abiyyu Fawwaz Khoiruddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1118, '0122070307', 'Samudra Fatikha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1119, '0122070402', 'Sirojuddin Fahmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1120, '0113060005', 'Ahmad Nur Yazid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1121, '0115060036', 'Dedi Hariadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1122, '0116060060', 'Muhammad Nailul Chasany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1123, '0118060103', 'Achmad Ramadhani Khoiril Djazuli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1124, '0120060324', 'Ramadhan Dwi Putrawan Siamun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1125, '0119060050', 'Muhammad Arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1126, '0119060258', 'Muhammad Fuadi Choiruzain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1127, '0119060266', 'Achmad Ilham Riyadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1128, '0121060352', 'Kholidil Ulum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1129, '0116060098', 'Muhammad Saifuddin Zuhri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1130, '0118060037', 'Ahmad Arif Syar\'i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1131, '0118060004', 'Fikri Rahmat Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1132, '0118060227', 'Imam Zuhrudin Qomari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1133, '0112060012', 'Muhammad Rafli Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1134, '0115060008', 'Muhammad Irfan Muzakky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1135, '0116060011', 'Abdulloh Faqih Illiyyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1136, '0115060027', 'Mochammad Alief Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1137, '0118060218', 'Achmad Hunaifi Ramadlan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1138, '0116060125', 'Rizaldy Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1139, '0117060118', 'Mohammad Naufal Ad Daufi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1140, '0119060261', 'Ahmad Fadhlurrohman P. Hehanussa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1141, '0116060082', 'Achmad Ma\'rifatul Fiqhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1142, '0117060037', 'Muhammad Rifqi Baidlowi Mushlikh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1143, '0119060100', 'Achmad Faiz Mubarok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1144, '0115060002', 'Muhammad Syarifudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1145, '0114060038', 'Muhammad Badrus Salam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1146, '0115060011', 'Muhammad Agus Hermansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1147, '0115060060', 'Ahmad Abdul Ghofur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1148, '0120060333', 'Ahmad Safrudin Amirullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1149, '0120060101', 'Achmad Naufal Furqon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1150, '0118060033', 'Ahmad Syauqi Mubarok Izzy Billah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1151, '0117060067', 'Muhammad Farhan Rengifurya\'an', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1152, '0118060228', 'Abdillah Rosyid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1153, '0116060013', 'Ahmad Arifin Ilham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1154, '0120010009', 'Muhammad Haidar Iskandar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1155, '0123090261', 'M. Ali Murtadlo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1156, '0116060067', 'Muhammad Rizqy Syahrul Romadhon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1157, '0114060007', 'Ali Muhdlor Salam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1158, '0117060005', 'Muhammad Samsul Ma\'arif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1159, '0117060096', 'Fachris Firman Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1160, '0117060130', 'Ahmad Qoharuddin Thoha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1161, '0116060036', 'Muhammad Zainur Rozikin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1162, '0119060158', 'Muhammad Irfanudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1163, '0116060083', 'Mohammad Alfan Mubarok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1164, '0116060095', 'Muhammad Baha\'udin Zuhdin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1165, '0117060006', 'Miqdad Haidar Al Asyrof', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1166, '0117060034', 'Muhammad Ferdy Maulidan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1167, '0117060099', 'Mochammad Syamsudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1168, '0119060172', 'Rofi Abdul Kafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1169, '0120060321', 'Muhammad Nafi\' Addiyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1170, '0120060322', 'Ziddan Iffatul Lathoif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1171, '0121100432', 'Faisal Bakri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1172, '0121060351', 'Ahmad Zadin Sahil Ikhsani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1173, '0120060029', 'Dimas Dwitya Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1174, '0123080257', 'Fikri Jallaludin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1175, '0118060035', 'Abdulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1176, '0121060291', 'Muhammad Yasyfi Fuadana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1177, '0118060128', 'Mochammad Ikhwan Badaruddin Syafi\'i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1178, '0118060145', 'Ahmad Ainun Na\'im', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1179, '0115060023', 'Akhmad Zainul Mustofa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1180, '0116060069', 'Yogdya Fatwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1181, '0116060079', 'Muhammad Izzuddin Fahmi Abidin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1182, '0116060127', 'Ahmad Yafid Al Umam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1183, '0117060022', 'Achmad Diauddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1184, '0117060041', 'Ahmad Wildan Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1185, '0117060055', 'Muhammad Hasyim Saluki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1186, '0117060076', 'Dzateghib Roobith Aufi Halabiyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1187, '0117060081', 'Muhammad Syahrul Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1188, '0117060095', 'Achmad Farkhan Fernanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1189, '0118060129', 'Muhammad Nuriz Nurzaman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1190, '0118060172', 'Muhammad Fatirul Kamalil Hanif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1191, '0118060241', 'Muhammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1192, '0119060035', 'Rendi Ferdianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1193, '0119060083', 'Muhammad Ishomuddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1194, '0119060124', 'Fahmi Rofiqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1195, '0119060179', 'Muhammad Kaisar Fitrotan Faizin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1196, '0121100431', 'Akhmad Gambang Nurdiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1197, '0122070209', 'Saddam Hisyam Maulidi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1198, '0118060150', 'Muhammad Afriandhika Romli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1199, '0118060224', 'Achmad Thoriq Al Ayyubi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1200, '0118060016', 'Habib Mas\'ud Djazuli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1201, '0118060157', 'Muhammad Raihan Al Kautsar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1202, '0118060133', 'Muhammad Fadlil Ramdhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1203, '0115060025', 'Hafish Dhio Zaidan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1204, '0118060118', 'Muhammad Aimar Nur Ababiel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1205, '0119060192', 'Lutfi Arif Rifa\'i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1206, '0119060126', 'Muhammad Azzamul Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1207, '0117060010', 'Mochamad Fahmi Akmal Fanani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1208, '0116060001', 'Ahmad Abbas Fadillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1209, '0116060068', 'Rochit Santoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1210, '0116060097', 'Syarifuddin Aminulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1211, '0118060072', 'Muhammad Akmal Al Hafil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1212, '0119060251', 'Ruhul Aminul Wafy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1213, '0120060239', 'Mukhamad Fatkhurohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1214, '0116060080', 'Muhammad Muhaimin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1215, '0122070312', 'Dimas Nur Kholis Muhammad Robbani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1216, '0117060060', 'Abdul Qodir Jailani Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1217, '0116060025', 'Achmad Yusron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1218, '0116060061', 'Ahmad Nizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1219, '0117060084', 'Syahrul Mubaroq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1220, '0117060127', 'Nanda Frima Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1221, '0118060217', 'Nawwal Irfan Muhammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1222, '0120010001', 'Firhan Syauqi Assegaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1223, '0121060347', 'Muhammad Syariful Hafid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1224, '0115060037', 'Ahmad Faizul Musyafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1225, '0116060017', 'Muhammad Hamdan Yuwafi Al Azizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1226, '0119060217', 'Muhammad Khoirul Umam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1227, '0120060265', 'Aqib Irvan Purnomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1228, '0118060095', 'Doni Ahmad Muhajir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1229, '0118060096', 'Zufarullah Mus\'ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1230, '0121070012', 'Ali Mufid Zulkarnain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1231, '0118060107', 'Ahmad Islakhul Umam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1232, '0121070028', 'Muhammad Arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1233, '0121060007', 'Mochammad Iqbal Fahmi Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1234, '0118060101', 'Abil Hakim An Naja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1235, '0118060026', 'Abror Alkalali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1236, '0113060006', 'Achmad Alif Qomaruddin Irfansyah Khotib', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1237, '0117060061', 'Ahmad Dafri Dzayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1238, '0112060008', 'Ahmadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1239, '0117060088', 'Akbar Hasyim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1240, '0121060036', 'Aqila Febrian Murtadlo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1241, '0118060112', 'Bintang Ilham Kalam Mubarok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1242, '0116060094', 'Dandi Setyoko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1243, '0118060121', 'Hamizan Qowiem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1244, '0123020060', 'Luqman Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1245, '0117060011', 'Mochamad Ulul Albab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1246, '0121090404', 'Mohamad Fahmy Rosyadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1247, '0118060058', 'Mohammad Atho\'illah Khodamul Qudus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1248, '0118060243', 'Mohammad Robitulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1249, '0120060032', 'Muhammad Afif Ainur Rohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1250, '0118060251', 'Muhammad Ali Syafikri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1251, '0115060012', 'Muhammad Amien Quthbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1252, '0118060250', 'Muhammad Atho\'illah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1253, '0119060216', 'Muhammad Dawam Roihanul M.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1254, '0117060092', 'Muhammad Farhat Amin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1255, '0120060098', 'Muhammad Irfa\'ur Rizki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1256, '0118060063', 'Muhammad Rifqi Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1257, '0118060082', 'Muhammad Rizal Abdul Khamid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1258, '0117060036', 'Muhammad Septian Rizky Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1259, '0117060126', 'Muhammad Shofiyuddin Ainurridlo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1260, '0119060177', 'Muhammad Sudarmawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1261, '0115060044', 'Muhammad Syahrul Mukarrom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1262, '0119060238', 'Muhammad Ubaidillah Ma\'mun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1263, '0122070366', 'Nasrullah Husein', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1264, '0121070015', 'Qodri Shihab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1265, '0117060072', 'Rifa\' Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1266, '0115060013', 'Septi Andi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1267, '0112060002', 'Muhammad Irfan Abadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1268, '0112060007', 'Imam Basori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1269, '0115060006', 'Muchammad Al Ghifary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1270, '0116060032', 'Muhammad Irfan Maulana Ishak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1271, '0116060046', 'Ahmad Hunain Ailfa Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1272, '0118060045', 'Fadlan Hafidz Ramadana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1273, '0118060255', 'Muhammad Taufiqurrohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1274, '0120060123', 'Misbahul Mukarom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1275, '0121060206', 'Muhammad Alif Muzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1276, '0121070052', 'Reyhan Cahya Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1277, '0121090334', 'Muhammad Ainul Khaq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1278, '0121120001', 'M. Kevin Ramdhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1279, '0122070404', 'M. Aufal Marom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1280, '0118060131', 'Muhammad Alvin Zakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1281, '0123120269', 'Rudi Hartono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1282, '0117060031', 'Ahmad Fauzul Adhim Sholeh Amir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1283, '0118060111', 'Arilianto Batama Surya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1284, '0121070019', 'Irfan Zamil Taufiqurrahman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1285, '0117060079', 'Muhammad Fahrul Huda Azzaini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1286, '0118060198', 'Miftakhul Huda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1287, '0117060026', 'Choiru Mazkuri Rahman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1288, '0117060074', 'Ahmad Hilmi Wildana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1289, '0117060040', 'Akhdan Naufal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1290, '0118060089', 'Rifky Ahmad Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1291, '0118060138', 'Sandi Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1292, '0111060008', 'Muhammad Izzul Ulum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1293, '0120060206', 'Muhammad Faiq Masdar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1294, '0124010271', 'Muhammad Cavan Felix Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1295, '0118060152', 'Muhammad Dzakiy Wahyu Sambada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1296, '0119060220', 'Ahmad Syauqi Muttaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1297, '0112060003', 'Achmad Syahrul Mahbub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1298, '0118060040', 'Ananda Alim Daim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1299, '0118060076', 'Muhammad Hasan Ali Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1300, '0118060219', 'Achmad Wahyu Al Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1301, '0116060101', 'Anang Ma\'ruf Amin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1302, '0117060085', 'Ahmad Zainal Falah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1303, '0118060113', 'Faiq Nasrullah Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1304, '0121060346', 'Fitra Al Insani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1305, '0117060047', 'Gumilang Akhtar Rifqi Asya\'bani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1306, '0118060260', 'Muhammad Afton Anja Billah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1307, '0114060027', 'Muhammad Fahreza Ubaidillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1308, '0118060155', 'Muhammad Ibnu Nafi\' Al Faqih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1309, '0115060005', 'Muhammad Ifki Tibbil Kulub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1310, '0116060071', 'Muhammad Izzul Bachri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1311, '0116060084', 'Muhammad Jauhirul Makhzun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1312, '0118060015', 'Mustofa bin Isa Alhabsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1313, '0120060308', 'Nurul Huda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1314, '0121060164', 'Zanuar Tegar Budiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1315, '0115060043', 'Ahmad Qusyairi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1316, '0117060129', 'Muhammad Rofiqi Al Kubro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1317, '0118060253', 'Muhammad Ainul Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1318, '0119060277', 'Bahrudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1319, '', 'Agus Hariadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1320, '0111060348', 'Muhammad Ainul Yaqin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1321, '0115060041', 'Muhammad Nafrijal Haq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1322, '0115060015', 'Muhammad Wafi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1323, '0118060154', 'Muhammad Habib Annajar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1324, '0118060201', 'Mochammad Roykhan Ken Izzuddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1325, '0118060013', 'Muhtady Ali Asy Syadzily', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1326, '0118060102', 'Achmad Maula Dani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1327, '0118060259', 'Allif Fathul Ihsan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1328, '0114060003', 'Muhammad Zam Zami Irsyad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1329, '0120060054', 'Robby Zidny Zidan Fadla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1330, '0118060090', 'Roisul Ahyer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1331, '0115060021', 'Ahmad Ihsan Safiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1332, '0116060077', 'Ilham Islamuddin Ma\'ruf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1333, '0121060172', 'Hidayatulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1334, '0118060153', 'Muhammad Faris Audah Iman Hajwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1335, '0121060211', 'Muhammad Roiqul Bihar Anwarul Wahid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1336, '0118060208', 'Muhammad Zidan Abdul Adzim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1337, '0118060104', 'Ahmad Fatih Sidra Muntaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1338, '0118060163', 'Manna Ilham Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1339, '0121070017', 'Salsawa Arhanda Abzahky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1340, '0118060042', 'Daniel Deco Najhan Zalfa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1341, '0115060018', 'Chasan Umar Faruq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1342, '0115060040', 'Ahmad Busthonul Faizin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1343, '0116060016', 'Muhammad Bintang Rabbani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1344, '0119060063', 'Ahmad Rikhal Islahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1345, '0119060128', 'Ahmad Farihur Romadloni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1346, '0115060053', 'Muhammad Ilhamul Kholiq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1347, '0108060001', 'Amir Hamzah Furqon Rahanyamtel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1348, '0113060017', 'Muhammad Syahrul Al Amin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1349, '0108060005', 'Muhammad Fahrizal Fakaubun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1350, '0116060057', 'Achmad Khoirun Naufal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1351, '0113060010', 'Mochammad Ibnu Yaasin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1352, '0109060002', 'Muhammad Abdiy Lillah Afis Sholeh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1353, '0116060031', 'Hamam Alwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1354, '0118060264', 'Muhammad Razan Fatih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1355, '0119060094', 'Muhammad Albar Suaedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1356, '0119060132', 'Alfan Rizqana Arga Prakasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1357, '012062022001', 'Muhammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `santri` VALUES (1358, '0118060077', 'Muhammad Hilmy Zulfikar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for sekolah
-- ----------------------------
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `groups` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `id_setting_table` int(11) NOT NULL AUTO_INCREMENT,
  `table` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_setting_table`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for status_rekam_medis
-- ----------------------------
DROP TABLE IF EXISTS `status_rekam_medis`;
CREATE TABLE `status_rekam_medis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `submenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `c` tinyint(4) NULL DEFAULT NULL,
  `r` tinyint(4) NULL DEFAULT NULL,
  `u` tinyint(4) NULL DEFAULT NULL,
  `d` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (1, 1, 'Master Data Suplier', 'master_data_suplier/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (2, 1, 'Master Data Bahan', 'master_data_bahan/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (3, 1, 'Master Data Produk', 'produk/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (4, 1, 'Purchase Order', 'purchase_order/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (5, 1, 'Penerimaan Barang', 'penerimaan_barang/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (6, 1, 'Pembayaran Tagihan', 'pembayaran_tagihan/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (7, 3, 'Produksi', 'produksi/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (8, 3, 'Template Produk', 'produk/template', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (9, 4, 'Master Data Customer', 'master_data_customer/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (10, 4, 'Faktur Penjualan', 'sales_order/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (11, 4, 'Pembayaran Sales Order', 'Pembayaran_sales_order/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (12, 5, 'Form Surat Jalan', 'Surat_jalan/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (13, 6, 'Chart of Account', 'Coa/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (14, 6, 'Pemasukan Lain', 'Pemasukan_lain/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (15, 6, 'Pengeluaran Lain', 'Pengeluaran_lain/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (16, 7, 'Pembelian', 'Laporan/pembelian', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (17, 7, 'Penjualan', 'Laporan/penjualan', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (18, 7, 'Kartu Stok', 'Laporan/kartu_stok', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (19, 7, 'Mutasi Stok', 'Laporan/mutasi_stok', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (20, 7, 'Statistik Customer', 'Laporan/customer', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (21, 7, 'Jurnal Umum', 'Jurnal_umum/get_data', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (22, 7, 'Neraca', 'Laporan/neraca', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (23, 7, 'Laba Rugi', 'Laporan/laba_rugi', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (24, 7, 'Buku Besar', 'Laporan/buku_besar', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (25, 7, 'Customer', 'Laporan/customer', 1, 1, 0, 0);
INSERT INTO `submenu` VALUES (26, 8, 'Master Data Karyawan', 'karyawan/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (27, 8, 'Presensi', 'presensi/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (29, 2, 'Master Data Bahan', 'master_data_bahan/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (30, 2, 'Master Data Produk', 'produk/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (31, 2, 'Penyesuaian Stok Bahan', 'penyesuaian_stok/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (32, 8, 'Master Data Status Shift', 'Status_shift/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (33, 8, 'Master Data Jadwal', 'Jadwal/get_data', 1, 1, 1, 1);
INSERT INTO `submenu` VALUES (34, 2, 'Mutasi Bahan', 'mutasi_bahan/get_data', 1, 1, 1, 1);

-- ----------------------------
-- Table structure for surat_ijin_poskestren
-- ----------------------------
DROP TABLE IF EXISTS `surat_ijin_poskestren`;
CREATE TABLE `surat_ijin_poskestren`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rekam_medis_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal_kembali` date NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for surat_pernyataan
-- ----------------------------
DROP TABLE IF EXISTS `surat_pernyataan`;
CREATE TABLE `surat_pernyataan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelanggaran_id` int(11) NULL DEFAULT NULL,
  `santri_id` int(11) NULL DEFAULT NULL,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jenis` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kategori_tatib_id` int(11) NULL DEFAULT NULL,
  `status_aktif` int(11) NULL DEFAULT NULL,
  `poin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED NULL DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anggota_id` int(11) NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `activation_selector`(`activation_selector`) USING BTREE,
  UNIQUE INDEX `forgotten_password_selector`(`forgotten_password_selector`) USING BTREE,
  UNIQUE INDEX `remember_selector`(`remember_selector`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1732166503, 1, 'Admin', 'istrator', 'ADMIN', '0', '123', NULL, NULL, NULL);
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
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- View structure for v_groups_detail_submenu
-- ----------------------------
DROP VIEW IF EXISTS `v_groups_detail_submenu`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_groups_detail_submenu` AS select `groups_detail`.`id` AS `id`,`groups_detail`.`groups_id` AS `groups_id`,`groups_detail`.`submenu_id` AS `submenu_id`,`groups_detail`.`c` AS `c`,`groups_detail`.`r` AS `r`,`groups_detail`.`u` AS `u`,`groups_detail`.`d` AS `d`,`submenu`.`menu_id` AS `menu_id`,`submenu`.`submenu` AS `submenu`,`submenu`.`link` AS `link` from (`groups_detail` join `submenu` on(`groups_detail`.`submenu_id` = `submenu`.`id`));

SET FOREIGN_KEY_CHECKS = 1;
