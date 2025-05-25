/*
 Navicat Premium Dump SQL

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ppsq

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 26/05/2025 06:50:28
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
  `create_at` timestamp NULL DEFAULT current_timestamp,
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `tahun_lulus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alumni
-- ----------------------------
INSERT INTO `alumni` VALUES (2, 1534, 1, '2025-05-20 16:35:06', '2025', NULL);
INSERT INTO `alumni` VALUES (3, 1551, 1, '2025-05-20 16:36:02', '2025', NULL);

-- ----------------------------
-- Table structure for angkatan
-- ----------------------------
DROP TABLE IF EXISTS `angkatan`;
CREATE TABLE `angkatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of angkatan
-- ----------------------------
INSERT INTO `angkatan` VALUES (1, '2019');
INSERT INTO `angkatan` VALUES (2, '2020');
INSERT INTO `angkatan` VALUES (3, '2021');
INSERT INTO `angkatan` VALUES (4, '2022');
INSERT INTO `angkatan` VALUES (5, '2023');
INSERT INTO `angkatan` VALUES (6, '2024');
INSERT INTO `angkatan` VALUES (7, '2025');

-- ----------------------------
-- Table structure for asatid
-- ----------------------------
DROP TABLE IF EXISTS `asatid`;
CREATE TABLE `asatid`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of asatid
-- ----------------------------

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
  `created_at` timestamp NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of asrama
-- ----------------------------
INSERT INTO `asrama` VALUES (2, 'A', 'Asrama A', '#000000', 1, '2024-11-02 03:02:04');
INSERT INTO `asrama` VALUES (3, 'B', 'Asrama B', '#0537ff', 1, '2024-11-02 03:02:15');
INSERT INTO `asrama` VALUES (4, 'C', 'Asrama C', '#ff0000', 1, '2024-11-02 03:02:25');

-- ----------------------------
-- Table structure for buku_tahfidz
-- ----------------------------
DROP TABLE IF EXISTS `buku_tahfidz`;
CREATE TABLE `buku_tahfidz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` enum('MUROJAAH','TAMBAHAN') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `juz` int NOT NULL,
  `surat_id` int NULL DEFAULT NULL,
  `lembar` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ayat_awal` int NULL DEFAULT NULL,
  `ayat_akhir` int NULL DEFAULT NULL,
  `nilai` int NULL DEFAULT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  INDEX `surat_id`(`surat_id` ASC) USING BTREE,
  CONSTRAINT `buku_tahfidz_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `buku_tahfidz_ibfk_2` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku_tahfidz
-- ----------------------------
INSERT INTO `buku_tahfidz` VALUES (1, 1565, '2025-05-25', 'MUROJAAH', 1, 1, '1', 1, 7, 80, '-', '2025-05-25 19:57:35');
INSERT INTO `buku_tahfidz` VALUES (2, 1556, '2025-05-25', 'TAMBAHAN', 4, 4, '4', 1, 10, 80, 'tes', '2025-05-25 21:02:29');
INSERT INTO `buku_tahfidz` VALUES (3, 1558, '2025-05-25', 'TAMBAHAN', 1, 1, '1', 1, 7, 70, 'tete', '2025-05-25 21:03:05');
INSERT INTO `buku_tahfidz` VALUES (4, 1559, '2025-05-25', 'TAMBAHAN', 2, 2, '2', 1, 5, 80, 'asd', '2025-05-25 21:03:34');

-- ----------------------------
-- Table structure for detail_pengajuan_pelanggaran
-- ----------------------------
DROP TABLE IF EXISTS `detail_pengajuan_pelanggaran`;
CREATE TABLE `detail_pengajuan_pelanggaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_pelanggaran_id` int NULL DEFAULT NULL,
  `santri_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detail_pengajuan_pelanggaran
-- ----------------------------
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (1, 1, 1539);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (2, 1, 1540);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (3, 1, 1541);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (4, 2, 0);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (5, 3, 0);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (6, 4, 0);
INSERT INTO `detail_pengajuan_pelanggaran` VALUES (7, 5, 0);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` VALUES (10, 'SUPERADMIN', 'Grup untuk administrator');
INSERT INTO `groups` VALUES (11, 'PAU', 'Grup untuk PAU/ADMINISTRASI');
INSERT INTO `groups` VALUES (12, 'ASRAMA', 'Grup untuk ASRAMA');
INSERT INTO `groups` VALUES (13, 'KETERTIBAN', 'Grup untuk ketertiban');
INSERT INTO `groups` VALUES (14, 'TAHFIDZ', 'Grup untuk tahfidz');
INSERT INTO `groups` VALUES (15, 'MADIN', 'Grup untuk madin');
INSERT INTO `groups` VALUES (16, 'UKP', 'Grup untuk Unit Kesehatan Pesantren');
INSERT INTO `groups` VALUES (17, 'KETUA KAMAR', 'Grup untuk ketua kamar');
INSERT INTO `groups` VALUES (18, 'ORTU', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 689 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups_detail
-- ----------------------------
INSERT INTO `groups_detail` VALUES (385, 10, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (386, 10, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (387, 10, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (388, 10, 4, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (389, 10, 5, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (390, 10, 6, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (391, 10, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (392, 10, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (393, 10, 9, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (394, 10, 38, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (395, 10, 10, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (396, 10, 11, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (397, 10, 12, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (398, 10, 36, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (399, 10, 13, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (400, 10, 14, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (401, 10, 15, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (402, 10, 16, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (403, 10, 17, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (404, 10, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (405, 10, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (406, 10, 20, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (407, 10, 21, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (408, 10, 22, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (409, 10, 23, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (410, 10, 24, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (411, 10, 25, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (412, 10, 26, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (413, 10, 27, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (414, 10, 28, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (415, 10, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (416, 10, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (417, 10, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (418, 10, 32, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (419, 10, 33, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (420, 10, 34, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (421, 10, 35, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (422, 10, 37, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (423, 11, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (424, 11, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (425, 11, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (426, 11, 4, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (427, 11, 5, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (428, 11, 6, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (429, 11, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (430, 11, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (431, 11, 9, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (432, 11, 38, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (433, 11, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (434, 11, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (435, 11, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (436, 11, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (437, 11, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (438, 11, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (439, 11, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (440, 11, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (441, 11, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (442, 11, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (443, 11, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (444, 11, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (445, 11, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (446, 11, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (447, 11, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (448, 11, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (449, 11, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (450, 11, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (451, 11, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (452, 11, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (453, 11, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (454, 11, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (455, 11, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (456, 11, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (457, 11, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (458, 11, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (459, 11, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (460, 11, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (461, 12, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (462, 12, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (463, 12, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (464, 12, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (465, 12, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (466, 12, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (467, 12, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (468, 12, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (469, 12, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (470, 12, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (471, 12, 10, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (472, 12, 11, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (473, 12, 12, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (474, 12, 36, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (475, 12, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (476, 12, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (477, 12, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (478, 12, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (479, 12, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (480, 12, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (481, 12, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (482, 12, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (483, 12, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (484, 12, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (485, 12, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (486, 12, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (487, 12, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (488, 12, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (489, 12, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (490, 12, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (491, 12, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (492, 12, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (493, 12, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (494, 12, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (495, 12, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (496, 12, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (497, 12, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (498, 12, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (499, 13, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (500, 13, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (501, 13, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (502, 13, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (503, 13, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (504, 13, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (505, 13, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (506, 13, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (507, 13, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (508, 13, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (509, 13, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (510, 13, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (511, 13, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (512, 13, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (513, 13, 13, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (514, 13, 14, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (515, 13, 15, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (516, 13, 16, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (517, 13, 17, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (518, 13, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (519, 13, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (520, 13, 20, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (521, 13, 21, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (522, 13, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (523, 13, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (524, 13, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (525, 13, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (526, 13, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (527, 13, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (528, 13, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (529, 13, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (530, 13, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (531, 13, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (532, 13, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (533, 13, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (534, 13, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (535, 13, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (536, 13, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (537, 14, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (538, 14, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (539, 14, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (540, 14, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (541, 14, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (542, 14, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (543, 14, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (544, 14, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (545, 14, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (546, 14, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (547, 14, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (548, 14, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (549, 14, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (550, 14, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (551, 14, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (552, 14, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (553, 14, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (554, 14, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (555, 14, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (556, 14, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (557, 14, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (558, 14, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (559, 14, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (560, 14, 22, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (561, 14, 23, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (562, 14, 24, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (563, 14, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (564, 14, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (565, 14, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (566, 14, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (567, 14, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (568, 14, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (569, 14, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (570, 14, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (571, 14, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (572, 14, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (573, 14, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (574, 14, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (575, 15, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (576, 15, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (577, 15, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (578, 15, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (579, 15, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (580, 15, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (581, 15, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (582, 15, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (583, 15, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (584, 15, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (585, 15, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (586, 15, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (587, 15, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (588, 15, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (589, 15, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (590, 15, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (591, 15, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (592, 15, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (593, 15, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (594, 15, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (595, 15, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (596, 15, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (597, 15, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (598, 15, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (599, 15, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (600, 15, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (601, 15, 25, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (602, 15, 26, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (603, 15, 27, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (604, 15, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (605, 15, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (606, 15, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (607, 15, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (608, 15, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (609, 15, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (610, 15, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (611, 15, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (612, 15, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (613, 16, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (614, 16, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (615, 16, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (616, 16, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (617, 16, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (618, 16, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (619, 16, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (620, 16, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (621, 16, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (622, 16, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (623, 16, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (624, 16, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (625, 16, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (626, 16, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (627, 16, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (628, 16, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (629, 16, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (630, 16, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (631, 16, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (632, 16, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (633, 16, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (634, 16, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (635, 16, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (636, 16, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (637, 16, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (638, 16, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (639, 16, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (640, 16, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (641, 16, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (642, 16, 28, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (643, 16, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (644, 16, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (645, 16, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (646, 16, 32, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (647, 16, 33, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (648, 16, 34, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (649, 16, 35, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (650, 16, 37, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (651, 17, 1, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (652, 17, 2, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (653, 17, 3, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (654, 17, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (655, 17, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (656, 17, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (657, 17, 7, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (658, 17, 8, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (659, 17, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (660, 17, 38, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (661, 17, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (662, 17, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (663, 17, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (664, 17, 36, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (665, 17, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (666, 17, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (667, 17, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (668, 17, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (669, 17, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (670, 17, 18, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (671, 17, 19, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (672, 17, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (673, 17, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (674, 17, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (675, 17, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (676, 17, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (677, 17, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (678, 17, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (679, 17, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (680, 17, 28, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (681, 17, 29, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (682, 17, 30, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (683, 17, 31, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (684, 17, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (685, 17, 33, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (686, 17, 34, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (687, 17, 35, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (688, 17, 37, 1, 1, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kafil
-- ----------------------------
INSERT INTO `kafil` VALUES (12, 1555);

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
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kamar_santri
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keluhan_rm
-- ----------------------------

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
  `created_at` timestamp NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of madin
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of obat_rm
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pelanggaran
-- ----------------------------
INSERT INTO `pelanggaran` VALUES (10, 'P3799', 1558, NULL, 31, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)', 62, 63, 'BELUM_MENGAMBIL', '2025-05-20', 1, 'tes', '1078b495b03b1ea99ed4d895132cd626.png', 'f2a124f5-f92a-45e9-9a65-46bc38e11e3a', 'BELUM', 'BUKAN PENGAJUAN');

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
-- Table structure for pengajuan_pelanggaran
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_pelanggaran`;
CREATE TABLE `pengajuan_pelanggaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tatib_id` int NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT NULL,
  `kronologi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_pengajuan` enum('BELUM DIPROSES','DITERIMA','DITOLAK') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'BELUM DIPROSES',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengajuan_pelanggaran
-- ----------------------------
INSERT INTO `pengajuan_pelanggaran` VALUES (1, 'PEL-001', 2, 1538, '2025-05-17', 1, 'Santri meninggalkan kegiatan tanpa izin.', '', 'BELUM DIPROSES');
INSERT INTO `pengajuan_pelanggaran` VALUES (4, 'PEL-7f1b2c02', 3, 1538, '2025-05-22', 1, 'm,smdf,.msd.', 'uploads/ChatGPT Image 28 Apr 2025, 17.14.14.png', 'BELUM DIPROSES');
INSERT INTO `pengajuan_pelanggaran` VALUES (5, 'PEL-3d686ed4', 17, 1538, '2025-05-22', 1, 'santri kabur dan terlambat mengikuti kegiatan', 'uploads/eParenting-App.png', 'BELUM DIPROSES');

-- ----------------------------
-- Table structure for pengurus
-- ----------------------------
DROP TABLE IF EXISTS `pengurus`;
CREATE TABLE `pengurus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `lembaga_pengurus_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengurus
-- ----------------------------
INSERT INTO `pengurus` VALUES (61, 1534, 1);
INSERT INTO `pengurus` VALUES (62, 1535, 1);
INSERT INTO `pengurus` VALUES (63, 1536, 1);

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
-- Table structure for perizinan_santri
-- ----------------------------
DROP TABLE IF EXISTS `perizinan_santri`;
CREATE TABLE `perizinan_santri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `tanggal_izin` date NULL DEFAULT NULL,
  `tanggal_kembali` date NULL DEFAULT NULL,
  `alasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jenis_izin` enum('PULANG','SAKIT','ACARA_KELUARGA','URUSAN_LAIN') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_aktif` tinyint NULL DEFAULT NULL,
  `status_dokumen` enum('DIAJUKAN_ASRAMA','DIAJUKAN_POSKESTREN','DIKETAHUI_KETUA_KAMAR','DIKETAHUI_KABID','SELESAI','DITOLAK') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'DIAJUKAN_ASRAMA',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of perizinan_santri
-- ----------------------------
INSERT INTO `perizinan_santri` VALUES (1, 1565, '2025-05-25', '2025-05-30', 'ijin mengurus ktp', 'PULANG', 'A0001', 0, 'DIAJUKAN_ASRAMA');
INSERT INTO `perizinan_santri` VALUES (3, 1564, '2025-05-25', '2025-05-27', 'Kunjungan ke rumah nenek', 'ACARA_KELUARGA', 'A002', 1, 'SELESAI');
INSERT INTO `perizinan_santri` VALUES (5, 1557, '2025-05-25', '2025-05-30', 'Acara Keluarga', 'PULANG', 'PS-100', 1, 'DIAJUKAN_ASRAMA');
INSERT INTO `perizinan_santri` VALUES (6, 1558, '2025-05-18', '2025-05-25', 'Sakit tenggorokan', 'SAKIT', 'PS-2505-101', 1, 'DIAJUKAN_POSKESTREN');
INSERT INTO `perizinan_santri` VALUES (7, 1558, '2025-05-19', '2025-05-25', 'urusan keluarga', 'URUSAN_LAIN', 'PS-2505-102', 1, 'DIAJUKAN_ASRAMA');

-- ----------------------------
-- Table structure for perolehan_tahfidz
-- ----------------------------
DROP TABLE IF EXISTS `perolehan_tahfidz`;
CREATE TABLE `perolehan_tahfidz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NOT NULL,
  `juz_terakhir` int NOT NULL,
  `surat_id` int NULL DEFAULT NULL,
  `ayat_terakhir` int NULL DEFAULT NULL,
  `tanggal_update` date NULL DEFAULT curdate,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `santri_id`(`santri_id` ASC) USING BTREE,
  INDEX `surat_id`(`surat_id` ASC) USING BTREE,
  CONSTRAINT `perolehan_tahfidz_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `perolehan_tahfidz_ibfk_2` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perolehan_tahfidz
-- ----------------------------
INSERT INTO `perolehan_tahfidz` VALUES (1, 1559, 2, NULL, NULL, '2025-05-25', NULL);

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
-- Table structure for peserta_madin
-- ----------------------------
DROP TABLE IF EXISTS `peserta_madin`;
CREATE TABLE `peserta_madin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `madin_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of peserta_madin
-- ----------------------------

-- ----------------------------
-- Table structure for peserta_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `peserta_sekolah`;
CREATE TABLE `peserta_sekolah`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `santri_id` int NULL DEFAULT NULL,
  `sekolah_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of peserta_sekolah
-- ----------------------------

-- ----------------------------
-- Table structure for peserta_tahfidz
-- ----------------------------
DROP TABLE IF EXISTS `peserta_tahfidz`;
CREATE TABLE `peserta_tahfidz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahfidz_id` int NULL DEFAULT NULL,
  `santri_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of peserta_tahfidz
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
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `profil_website` VALUES ('www.santripasir.id', 'Jl. Sumber Pasir No.99A, Krajan, Sumberpasir, Kec. Pakis, Kabupaten Malang, Jawa Timur 65154', '085894632505', 'fav.png', 'fav.png', 'SIM PONDOK', '-', '<p>The Balance Small Business makes launching and managing your own business easy. It is home to experts who provide clear, practical advice on entrepreneurship and management. Whether you&rsquo;re just starting up or you want to take your company to the next level, our 20-year-strong library of more than 7,000 pieces of content will answer your questions and turn your business dreams into reality.</p>\n\n<p><a href=\"https://www.thebalancesmb.com/\">The Balance</a>&nbsp;is part of The Balance family of sites, including&nbsp;<a href=\"https://www.thebalance.com/\" rel=\"noopener\" target=\"_blank\">The Balance</a>&nbsp;and&nbsp;<a href=\"https://www.thebalancecareers.com/\" rel=\"noopener\" target=\"_blank\">The Balance Careers</a>, covering personal finance, career, and small business topics. With more than 24 million monthly visitors, The Balance is among the top-10 largest finance properties as measured by comScore, a leading Internet measurement company. Our more than 50 expert writers have extensive qualifications and expertise in their topics, including MBAs, PhDs, CFPs, other advanced degrees and professional certifications.</p>\n\n<p>The Balance family of sites have been honored by multiple awards in the last year, including&nbsp;<a href=\"https://www.tellyawards.com/winners/2017/short-form-social/general-education-discovery\" rel=\"noopener nofollow\" target=\"_blank\">The Telly Awards</a>,&nbsp;<a href=\"https://www.communicatorawards.com/\" rel=\"noopener nofollow\" target=\"_blank\">The Communicator Awards</a>, and&nbsp;<a href=\"https://www.editorandpublisher.com/news/editor-publisher-announces-the-2017-eppy-award-finalists/\" rel=\"noopener nofollow\" target=\"_blank\">Eppy Awards</a>.</p>\n', 'hallo@impactfurniture.id', 'Andreas Hartanto', 'undefined', 'undefined', 'undefined', 'undefined', 'ea4d58dd1254aff316312b7ecbb5c410.jpg', 'Halo Admin, Saya ingin bertanya/membeli/.....', 'd797c14a0070235734508b7d9f409395.jpg', '&copy; 2019. <a href=\"#\">Core Master</a> by<a href=\"https://myber.co.id\" target=\"_blank\">Myber</a>', 'Core Master', 'Pondok Pesantren Salaf Quran Asy-Syadzili 1', 'Surabaya', 'Indonesia', '112.66307147573268', '-7.840640250568774', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rekam_medis
-- ----------------------------

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
  `angkatan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1566 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of santri
-- ----------------------------
INSERT INTO `santri` VALUES (1534, '0119060052', 'Abdul Mun\'im Zam Zamy', 'L', 'MOJOKERTO', '2006-06-02', 'DESA MOJOGENENG, KEC. JATIREJO, KAB. MOJOKERTO, JATIM', 'MOH. SUBKHAN', 'ALFIYATUN NISA\'', '6285706270450', '6285706270450', 1, 'ALUMNI', '', '', NULL, NULL, '3516010206060001', NULL);
INSERT INTO `santri` VALUES (1535, '0119060147', 'Achmad Fathir Fadillah Anam', 'L', 'MALANG', '2007-03-13', 'JL. MUHARTO NO. 35, KEL. JODIPAN, KEC. BLIMBING, KOTA. MALANG, JATIM', 'CHOIRUL ANAM', 'NURUL AINI', '6289654491144', '6289654491144', 1, 'AKTIF', '', '', NULL, NULL, '3573011303070005', NULL);
INSERT INTO `santri` VALUES (1536, '0119060197', 'Achmad Nabil', 'L', 'MALANG', '2006-05-01', 'JL. TERNATE NO. 26, KEL. KASIN, KEC. KLOJEN, KOTA MALANG, JATIM', 'M. YAZID BUSTHAMI', 'ISTIANAH', '6285101363903', '6285101363903', 1, 'AKTIF', '', '', NULL, NULL, '3573020105060001', NULL);
INSERT INTO `santri` VALUES (1537, '0122070263', 'Ahmad Aditya Ramadhani', 'L', 'MALANG', '2007-09-24', 'DUSUN PETUNGWULUNG RT. 7 RW. 6 DESA TOYOMARTO KEC. SINGOSARI KAB. MALANG JAWA TIMUR', 'AGUS EFENDI', 'HERY SULISTYOWATI', '', '', 1, 'AKTIF', '6283853584607', '', NULL, NULL, '3507242409070006', NULL);
INSERT INTO `santri` VALUES (1538, '0119060021', 'Ahmad Novel Ashshidiqi', 'L', 'MALANG', '2006-11-20', 'DUSUN TENAGA TURI, DESA KEPUHARJO, KEC. KARANGPLOSO, KAB. MALANG, JATIM', 'NGADI SLAMET', 'ROIKHATUL JANNAH', '6285924312845', '6285924312845', 1, 'AKTIF', '', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1539, '0122070113', 'Brian Erlangga', 'L', 'TULUNGANGUNG', '2006-05-10', 'DUSUN NGRAWAN RT. 3 RW. 6 DESA TEMPURSARI KEC. TEMPURSARI KAB. LUMAJANG JAWA TIMUR', 'SUGENG HARIANTO', 'SITI NUR ALIFAH', '', '', 1, 'AKTIF', '6285258749102', '', NULL, NULL, '3504031005060001', NULL);
INSERT INTO `santri` VALUES (1540, '0119060212', 'Fahrur Rozy Hidayatullah', 'L', 'MALANG', '2007-10-31', 'JL. WARINOI III NO. 9, KEL. BUNUL, KEC. BLIMBING, KOTA MALANG, JATIM', 'BUDI KUSTIYONO (ALM)', 'SITI ZUMAROH', '6287851295138', '6287851295138', 1, 'AKTIF', '', '', NULL, NULL, '3573013110070003', NULL);
INSERT INTO `santri` VALUES (1541, '0122070344', 'Farri Muhammad Irsyadil Haq', 'L', 'GRESIK', '2007-08-10', 'DUSU SUKOWATI RT. 01 RW. 01 DESA SUKOWATI KEC. BUNGAH KAB. GRESIK JAWA TIMUR', 'MUKHOIRI', 'KHANIFAH', '', '6281553086762', 1, 'AKTIF', '', '', NULL, NULL, '3525121008070003', NULL);
INSERT INTO `santri` VALUES (1542, '0122070326', 'Fathur Ridho Ramadan Rengifuryaan', 'L', 'TUAL', '2008-09-11', 'DUSUN UTAN TEL TIMUR, KEL. OHOITAHIT, KEC. PULAU DULLAH UTARA, KOTA TUAL, MALUKU', 'SABAN REGIFURYAAN', 'RAHMA RUMLES', '', '', 1, 'AKTIF', '', '', NULL, NULL, '8172011109080001', NULL);
INSERT INTO `santri` VALUES (1543, '0122070243', 'Jovanick Meywana Fajariano', 'L', 'LUMAJANG', '2007-05-23', 'DUSUN KRAJAN II RT. 1 RW. 3 DESA PASRUJAMBE KEC. PASRUJAMBE KAB. LUMAJANG JAWA TIMUR', 'SINDU', 'YUNI WULANDARI', '', '', 1, 'AKTIF', '6282332588812', '', NULL, NULL, '3508112305070001', NULL);
INSERT INTO `santri` VALUES (1544, '0122070292', 'Moch. Rafy Denis Syahbana', 'L', 'MALANG', '2006-09-19', 'JL. CILIWUNG IIA NO. 24 RT. 13 RW. 07 KEL. PURWANTORO KEC. BLIMBING KOTA MALANG JAWA TIMUR', 'ACHMAD HUDA', 'SITI MASRUROH', '', '', 1, 'AKTIF', '', '', NULL, NULL, '3573011909060001', NULL);
INSERT INTO `santri` VALUES (1545, '0119060001', 'Mochammad Amar Salman Alfarizi Ramdhani', 'L', 'MALANG', '2006-10-21', 'JL. KOL. SUGIONO NO. 12A, KEL. MERGOSONO, KEC. KEDUNGKANDANG, KOTA MALANG, JATIM', 'KUSMINDAR', 'SAB\'ATUR ROSYIDA', '6285732964639', '6285732964639', 1, 'AKTIF', '', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1546, '0119060143', 'Mochammad Dhafa Maulana', 'L', 'MALANG', '2007-07-10', 'JL. KENANGA NO. 254, DESA KEBONSARI, KEC. TUMPANG, KAB. MALANG, JATIM', 'AKHMAD FAHRU RIZAL', 'SITI SOLIKAH', '6285100733412', '6285100733412', 1, 'AKTIF', '', '', NULL, NULL, '3507161007070002', NULL);
INSERT INTO `santri` VALUES (1547, '0119060096', 'Mochammad Taufiqurahman', 'L', 'MALANG', '2007-04-30', 'JL. DIPONEGORO NO. 287, DESA SUKOHARJO, KEC. KEPANJEN, KAB MALANG, JATIM', 'HATONO', 'TRIYATMI', '62881036013996', '62881036013996', 1, 'AKTIF', '', '', NULL, NULL, '3573043004070005', NULL);
INSERT INTO `santri` VALUES (1548, '0119060015', 'Mohammad Angga Ardiansyah', 'L', 'PASURUAN', '2006-09-16', 'DUSUN TAMAN, DESA KAYU KEBEK, KEC. TUTUR, KAB. PASURUAN, JATIM', 'HANDOKO', 'NURUL AINI', '6285697670037', '6285697670037', 1, 'AKTIF', '', '', NULL, NULL, '3514021609060001', NULL);
INSERT INTO `santri` VALUES (1549, '0119060053', 'Muhammad Abyadl Wafi', 'L', 'SURABAYA', '2007-01-08', 'JL. KEPUTIH UTARA NO. 19B, KEL. KEPUTIH, KEC. SUKOLILO, KOTA SURABAYA, JATIM', 'AHMAD MUDZAKKIR', 'DESI SAPARINI', '62628123087509', '62628123087509', 1, 'AKTIF', '', '', NULL, NULL, '3578090801070001', NULL);
INSERT INTO `santri` VALUES (1550, '0119060275', 'Muhammad Ahsanul Insani', 'L', 'BANYUWANGI', '2006-12-18', 'JL. KAPUAS NO. 74, DESA PENGANJURAN, KEC. BANYUWANGI, KAB. BANYUWANGI, JATIM', 'ABDUL HAMIM', 'ANITA EVIANA VAN EST', '6281336569975', '6281336569975', 1, 'AKTIF', '', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1551, '0119060044', 'Muhammad Burhanuddin Yufi', 'L', 'MALANG', '2007-01-07', 'JL. LESANPURO GG. 1 NO. 9, RT. 08, RW. 03, KEL. LESANPURO KEC. KEDUNGKANDANG, KOTA MALANG, JATIM', 'LASIANTO', 'SITI KHUSNAIDAH', '6281335637591', '6281335637591', 1, 'ALUMNI', '6285749640163', '', NULL, NULL, '3573030601070007', NULL);
INSERT INTO `santri` VALUES (1552, '0119060074', 'Muhammad Fakhri Jauhari', 'L', 'GRESIK', '2006-12-06', 'JL. BUNGAH NO. 20, DESA BUNGAH, KEC. BUNGAH, KAB. GRESIK, JATIM', 'AHMAD HADI', 'MUTHOHHAROH', '62813300701686', '62813300701686', 1, 'AKTIF', '', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1553, '0122070185', 'Muhammad Farkhan Hafid', 'L', 'MOJOKERTO', '2007-06-21', 'JL. MASTO RT. 6 RW. 4 DESA PUNGGING KEC. PUNGGING KAB. MOJOKERTO JAWA TIMUR', 'BUDIONO', 'MURYATIN', '', '', 1, 'AKTIF', '6283832128204', '', NULL, NULL, '3516062106070003', NULL);
INSERT INTO `santri` VALUES (1554, '0119060042', 'Muhammad Faruq Abdul Ghoni', 'L', 'MALANG', '2006-10-16', 'JL. PLAOSAN BARAT NO. 58B, KEL. PURWODADI, KEC. BLIMBING, KOTA MALANG, JATIM', 'MOH. SUPRIYADI', 'UMUL HAYATI', '6285103012725', '6285103012725', 1, 'AKTIF', '', '', NULL, NULL, '3573011610060006', NULL);
INSERT INTO `santri` VALUES (1555, '0123100264', 'Muhammad Fatikh Al-Widad', 'L', 'Sidoarjo', '2006-11-02', 'Raden Fatah/Sidomulyo, Jambangan, Candi, Sidoarjo, Jawa Timur', 'H.Ach.Muntafa Maimun', 'Hj.Siti Lailatus Sholihah', '', '6281233974870', 1, 'AKTIF', '', '', '', 2, '3515070211060001', 7);
INSERT INTO `santri` VALUES (1556, '0120060281', 'Muhammad Hasyim Mashuri', 'L', 'BERAU', '2007-04-20', 'JL. KENARI, DESA LEBANAN MAKMUR, KEC. TELUK BAYUR, KAB. BERAU, KALTIM', 'AGUS SUGIHARTO', 'WIWIK WIDAYAWATI', '6281348564416', '6281348564416', 1, 'AKTIF', '', '', NULL, NULL, '6403092004070001', NULL);
INSERT INTO `santri` VALUES (1557, '0119060045', 'Muhammad Ihsanul Hasanain', 'L', 'BENGKULU', '2007-07-15', 'JL. LETJEN SUPRAPTO, KEL. ANGGUT DALAM, KEC. RATU SAMBAN, KOTA BENGKULU, BENGKULU', 'M. RIJALUDDIN', 'SUFIA HERLINA', '6282281110007', '6282281110007', 1, 'AKTIF', '', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1558, '0122070251', 'Muhammad Ilham Sulthoni', 'L', 'SIDOARJO', '2006-08-07', 'JL. MARSIDIN RT. 6 RW. 1 DESA SAWOHAN KEC. BUDURAN KAB. SIDOARJO JAWA TIMUR', 'AHMAD JUNAIDI', 'LAILLATUZ ZAHRO', '', '', 1, 'AKTIF', '6282131976939', '', NULL, NULL, '3515090708060003', NULL);
INSERT INTO `santri` VALUES (1559, '0119060003', 'Muhammad Makayla Akbar', 'L', 'PASURUAN', '2007-06-27', 'JL, DERMO NO. 22, DESA DERMO, KEC. BANGIL, KAB. PASURUAN, JATIM', 'NUR KHOLIS', 'HARTATIK', '6282232127206', '6282232127206', 1, 'AKTIF', '', '', NULL, NULL, '3514142706070001', NULL);
INSERT INTO `santri` VALUES (1560, '0119060174', 'Muhammad Nur Syauqi Habibi', 'L', 'MALANG', '2007-07-15', 'DESA DONOWARIH, KEC. KARANGPLOSO, KAB. MALANG, JATIM', 'SYAIFUL ARIF', 'SITTI ROMLAH', '6285100129195', '6285100129195', 1, 'AKTIF', '', '', NULL, NULL, '3507231507070001', NULL);
INSERT INTO `santri` VALUES (1561, '0119060085', 'Muhammad Saifuddin Zakaria', 'L', 'MALANG', '2008-05-03', 'JL. GANG INDAH RT. 06 RW. 01, DESA GANJARAN, KEC. GONDANGLEGI, KAB. MALANG, JATIM', 'AMSORI', 'RUCHI', '6281554151500', '6281554151500', 1, 'AKTIF', '', '', NULL, NULL, '3507100305080001', NULL);
INSERT INTO `santri` VALUES (1562, '0122070262', 'Nu\'man Abdul Haq', 'L', 'PROBOLINGGO', '2006-05-31', 'JL. IKAN KAKAP RT. 6 RW. 3 KEL. MAYANGAN DESA MAYANGAN KOTA PROBOLINGGO JAWA TIMUR', 'CHOIRUL ANAM', 'EVI ZAQIYA', '', '', 1, 'AKTIF', '6282229352778', '', NULL, NULL, '', NULL);
INSERT INTO `santri` VALUES (1563, '0119060156', 'Nurman Hidayatullah', 'L', 'BANGKALAN', '2007-05-01', 'JL. MUHARTO GG. 5B, KEL. KOTALAMA, KEC. KEDUNGKANDANG, KOTA MALANG, JATM', 'MOH NUR ROHMAN', 'SITI QURI\'AH', '6281944819448', '6281944819448', 1, 'AKTIF', '', '', NULL, NULL, '3573030105070007', NULL);
INSERT INTO `santri` VALUES (1564, '0119060254', 'Syahrul Minan', 'L', 'MALANG', '2006-07-06', 'DUSUN BALEWARTI, DESA REJOSARI, KEC. BANTUR, KAB. MALANG, JATIM', 'M. HODRI', 'MUAWENAH', '62822132445299', '62822132445299', 1, 'AKTIF', 'irfaur', '9130912803', '1747724154_java.png', 3, '3507030607060003', 2);
INSERT INTO `santri` VALUES (1565, '0122070162', 'Zainal Musthofa', 'L', 'MALANG', '2007-07-31', 'JL. SIDODADI 5 RT. 22 RW. 5 DESA WANDANPURO KEC. BULULAWANG KAB. MALANG JAWA TIMUR', 'MULYONO', 'NURUL KHOIRIYAH', '', '', 1, 'AKTIF', '6285100632623', '', '', 2, '', 6);

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of santri_dokumen
-- ----------------------------
INSERT INTO `santri_dokumen` VALUES (4, 1564, 'KTP', '1747724822_WhatsApp_Image_2025-05-13_at_09.23.16.jpeg');
INSERT INTO `santri_dokumen` VALUES (5, 1564, 'KK', '1747724822_WhatsApp_Image_2025-05-13_at_09.23.161.jpeg');
INSERT INTO `santri_dokumen` VALUES (6, 1564, 'KS', '1747724822_WhatsApp_Image_2025-05-13_at_09.23.162.jpeg');
INSERT INTO `santri_dokumen` VALUES (12, 1555, 'KTP', '1748093413_WhatsApp_Image_2025-05-12_at_09.14.18.jpeg');
INSERT INTO `santri_dokumen` VALUES (13, 1555, 'KK', '1748093413_WhatsApp_Image_2025-05-12_at_09.14.181.jpeg');

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
  `created_at` timestamp NULL DEFAULT current_timestamp,
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
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `setting_table` VALUES (128, 'perizinan_santri', 'kode', 'PS-{date_of_month}{month}-{last_number}', NULL);

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
INSERT INTO `submenu` VALUES (1, 1, 'Data Santri', 'santri/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (2, 1, 'Data Pengurus', 'pengurus/add_page_pengurus', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (3, 1, 'Data Asatid', 'asatid/add_page_asatid', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (4, 1, 'Data Kafil', 'kafil/add_page_kafil', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (5, 1, 'Data Alumni', 'alumni/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (6, 1, 'Kelas Madin', 'madin/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (7, 1, 'Kelas Tahfidz', 'tahfidz/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (8, 1, 'Master Sekolah', 'sekolah/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (9, 1, 'Master Asrama', 'asrama/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (10, 2, 'Master Kamar', 'kamar/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (11, 2, 'Perizinan', 'perizinan_santri/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (12, 2, 'Pelaporan', 'perizinan/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (13, 3, 'Pengajuan Pelanggaran', 'Pelanggaran/pengajuan', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (14, 3, 'Data Pelanggaran', 'Pelanggaran/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (15, 3, 'Surat Pernyataan (SP)', 'Surat_pernyataan/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (16, 3, 'Berita Acara Pemeriksaan (BAP)', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (17, 3, 'Tata Tertib', 'Tatib/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (18, 3, 'Kategori Tata Tertib', 'Kategori_tatib/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (19, 3, 'Laporan Pelanggaran', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (20, 3, 'Statistik Pelanggaran', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (21, 3, 'Poin Santri', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (22, 4, 'Absensi Tahfidz', 'Tahfidz/absensi', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (23, 4, 'Buku Tahfidz', 'Buku_tahfidz/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (24, 4, 'Laporan', 'Tahfidz/laporan', 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (25, 5, 'Absensi Tahfidz', 'Tahfidz/absensi', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (26, 5, 'Perkembangan Tahfidz', 'Tahfidz/perkembangan', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (27, 5, 'Laporan', 'Tahfidz/laporan', 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (28, 6, 'Rekam Medis', 'Rekam_medis/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (29, 6, 'Data Obat', 'Obat/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (30, 6, 'Data Keluhan', 'Keluhan/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (31, 6, 'Status Rekam Medis', '', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (32, 6, 'Surat Ijin Sakit', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (33, 6, 'Surat Ijin Lain', NULL, 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (34, 6, 'Laporan Rekam Medis', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (35, 6, 'Laporan Ijin', NULL, 1, 1, 1, 1, 'icon-file-text2');
INSERT INTO `submenu` VALUES (36, 2, 'Setting Kamar Santri', 'kamar/kamar_santri', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (37, 10, 'Presensi Harian Santri', 'presensi_harian/get_data', 1, 1, 1, 1, 'icon-folder3');
INSERT INTO `submenu` VALUES (38, 1, 'Semua Data Santri & Pengurus', 'personal/get_data', 1, 1, 1, 1, 'icon-folder3');

-- ----------------------------
-- Table structure for surat
-- ----------------------------
DROP TABLE IF EXISTS `surat`;
CREATE TABLE `surat`  (
  `id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `juz_awal` int NOT NULL,
  `jumlah_ayat` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat
-- ----------------------------
INSERT INTO `surat` VALUES (1, 'Al-Fatihah', 1, 7);
INSERT INTO `surat` VALUES (2, 'Al-Baqarah', 1, 286);
INSERT INTO `surat` VALUES (3, 'Ali Imran', 3, 200);
INSERT INTO `surat` VALUES (4, 'An-Nisa', 4, 176);
INSERT INTO `surat` VALUES (5, 'Al-Ma\'idah', 6, 120);
INSERT INTO `surat` VALUES (6, 'Al-An\'am', 7, 165);
INSERT INTO `surat` VALUES (7, 'Al-A\'raf', 8, 206);
INSERT INTO `surat` VALUES (8, 'Al-Anfal', 9, 75);
INSERT INTO `surat` VALUES (9, 'At-Tawbah', 10, 129);
INSERT INTO `surat` VALUES (10, 'Yunus', 11, 109);
INSERT INTO `surat` VALUES (11, 'Hud', 11, 123);
INSERT INTO `surat` VALUES (12, 'Yusuf', 12, 111);
INSERT INTO `surat` VALUES (13, 'Ar-Ra\'d', 13, 43);
INSERT INTO `surat` VALUES (14, 'Ibrahim', 13, 52);
INSERT INTO `surat` VALUES (15, 'Al-Hijr', 14, 99);
INSERT INTO `surat` VALUES (16, 'An-Nahl', 14, 128);
INSERT INTO `surat` VALUES (17, 'Al-Isra', 15, 111);
INSERT INTO `surat` VALUES (18, 'Al-Kahf', 15, 110);
INSERT INTO `surat` VALUES (19, 'Maryam', 16, 98);
INSERT INTO `surat` VALUES (20, 'Ta-Ha', 16, 135);
INSERT INTO `surat` VALUES (21, 'Al-Anbiya', 17, 112);
INSERT INTO `surat` VALUES (22, 'Al-Hajj', 17, 78);
INSERT INTO `surat` VALUES (23, 'Al-Mu\'minun', 18, 118);
INSERT INTO `surat` VALUES (24, 'An-Nur', 18, 64);
INSERT INTO `surat` VALUES (25, 'Al-Furqan', 19, 77);
INSERT INTO `surat` VALUES (26, 'Ash-Shu\'ara', 19, 227);
INSERT INTO `surat` VALUES (27, 'An-Naml', 19, 93);
INSERT INTO `surat` VALUES (28, 'Al-Qasas', 20, 88);
INSERT INTO `surat` VALUES (29, 'Al-Ankabut', 20, 69);
INSERT INTO `surat` VALUES (30, 'Ar-Rum', 21, 60);
INSERT INTO `surat` VALUES (31, 'Luqman', 21, 34);
INSERT INTO `surat` VALUES (32, 'As-Sajdah', 21, 30);
INSERT INTO `surat` VALUES (33, 'Al-Ahzab', 21, 73);
INSERT INTO `surat` VALUES (34, 'Saba', 22, 54);
INSERT INTO `surat` VALUES (35, 'Fatir', 22, 45);
INSERT INTO `surat` VALUES (36, 'Yasin', 22, 83);
INSERT INTO `surat` VALUES (37, 'As-Saffat', 23, 182);
INSERT INTO `surat` VALUES (38, 'Sad', 23, 88);
INSERT INTO `surat` VALUES (39, 'Az-Zumar', 23, 75);
INSERT INTO `surat` VALUES (40, 'Ghafir', 24, 85);
INSERT INTO `surat` VALUES (41, 'Fussilat', 24, 54);
INSERT INTO `surat` VALUES (42, 'Ash-Shura', 25, 53);
INSERT INTO `surat` VALUES (43, 'Az-Zukhruf', 25, 89);
INSERT INTO `surat` VALUES (44, 'Ad-Dukhan', 25, 59);
INSERT INTO `surat` VALUES (45, 'Al-Jathiyah', 25, 37);
INSERT INTO `surat` VALUES (46, 'Al-Ahqaf', 26, 35);
INSERT INTO `surat` VALUES (47, 'Muhammad', 26, 38);
INSERT INTO `surat` VALUES (48, 'Al-Fath', 26, 29);
INSERT INTO `surat` VALUES (49, 'Al-Hujurat', 26, 18);
INSERT INTO `surat` VALUES (50, 'Qaf', 26, 45);
INSERT INTO `surat` VALUES (51, 'Adh-Dhariyat', 27, 60);
INSERT INTO `surat` VALUES (52, 'At-Tur', 27, 49);
INSERT INTO `surat` VALUES (53, 'An-Najm', 27, 62);
INSERT INTO `surat` VALUES (54, 'Al-Qamar', 27, 55);
INSERT INTO `surat` VALUES (55, 'Ar-Rahman', 27, 78);
INSERT INTO `surat` VALUES (56, 'Al-Waqi\'ah', 27, 96);
INSERT INTO `surat` VALUES (57, 'Al-Hadid', 27, 29);
INSERT INTO `surat` VALUES (58, 'Al-Mujadilah', 28, 22);
INSERT INTO `surat` VALUES (59, 'Al-Hashr', 28, 24);
INSERT INTO `surat` VALUES (60, 'Al-Mumtahanah', 28, 13);
INSERT INTO `surat` VALUES (61, 'As-Saff', 28, 14);
INSERT INTO `surat` VALUES (62, 'Al-Jumu\'ah', 28, 11);
INSERT INTO `surat` VALUES (63, 'Al-Munafiqun', 28, 11);
INSERT INTO `surat` VALUES (64, 'At-Taghabun', 28, 18);
INSERT INTO `surat` VALUES (65, 'At-Talaq', 28, 12);
INSERT INTO `surat` VALUES (66, 'At-Tahrim', 28, 12);
INSERT INTO `surat` VALUES (67, 'Al-Mulk', 29, 30);
INSERT INTO `surat` VALUES (68, 'Al-Qalam', 29, 52);
INSERT INTO `surat` VALUES (69, 'Al-Haqqah', 29, 52);
INSERT INTO `surat` VALUES (70, 'Al-Ma\'arij', 29, 44);
INSERT INTO `surat` VALUES (71, 'Nuh', 29, 28);
INSERT INTO `surat` VALUES (72, 'Al-Jinn', 29, 28);
INSERT INTO `surat` VALUES (73, 'Al-Muzzammil', 29, 20);
INSERT INTO `surat` VALUES (74, 'Al-Muddathir', 29, 56);
INSERT INTO `surat` VALUES (75, 'Al-Qiyamah', 29, 40);
INSERT INTO `surat` VALUES (76, 'Al-Insan', 29, 31);
INSERT INTO `surat` VALUES (77, 'Al-Mursalat', 29, 50);
INSERT INTO `surat` VALUES (78, 'An-Naba', 30, 40);
INSERT INTO `surat` VALUES (79, 'An-Nazi\'at', 30, 46);
INSERT INTO `surat` VALUES (80, 'Abasa', 30, 42);
INSERT INTO `surat` VALUES (81, 'At-Takwir', 30, 29);
INSERT INTO `surat` VALUES (82, 'Al-Infitar', 30, 19);
INSERT INTO `surat` VALUES (83, 'Al-Mutaffifin', 30, 36);
INSERT INTO `surat` VALUES (84, 'Al-Inshiqaq', 30, 25);
INSERT INTO `surat` VALUES (85, 'Al-Buruj', 30, 22);
INSERT INTO `surat` VALUES (86, 'At-Tariq', 30, 17);
INSERT INTO `surat` VALUES (87, 'Al-A\'la', 30, 19);
INSERT INTO `surat` VALUES (88, 'Al-Ghashiyah', 30, 26);
INSERT INTO `surat` VALUES (89, 'Al-Fajr', 30, 30);
INSERT INTO `surat` VALUES (90, 'Al-Balad', 30, 20);
INSERT INTO `surat` VALUES (91, 'Ash-Shams', 30, 15);
INSERT INTO `surat` VALUES (92, 'Al-Lail', 30, 21);
INSERT INTO `surat` VALUES (93, 'Adh-Dhuha', 30, 11);
INSERT INTO `surat` VALUES (94, 'Ash-Sharh', 30, 8);
INSERT INTO `surat` VALUES (95, 'At-Tin', 30, 8);
INSERT INTO `surat` VALUES (96, 'Al-\'Alaq', 30, 19);
INSERT INTO `surat` VALUES (97, 'Al-Qadr', 30, 5);
INSERT INTO `surat` VALUES (98, 'Al-Bayyinah', 30, 8);
INSERT INTO `surat` VALUES (99, 'Az-Zalzalah', 30, 8);
INSERT INTO `surat` VALUES (100, 'Al-\'Adiyat', 30, 11);
INSERT INTO `surat` VALUES (101, 'Al-Qari\'ah', 30, 11);
INSERT INTO `surat` VALUES (102, 'At-Takathur', 30, 8);
INSERT INTO `surat` VALUES (103, 'Al-Asr', 30, 3);
INSERT INTO `surat` VALUES (104, 'Al-Humazah', 30, 9);
INSERT INTO `surat` VALUES (105, 'Al-Fil', 30, 5);
INSERT INTO `surat` VALUES (106, 'Quraisy', 30, 4);
INSERT INTO `surat` VALUES (107, 'Al-Ma\'un', 30, 7);
INSERT INTO `surat` VALUES (108, 'Al-Kautsar', 30, 3);
INSERT INTO `surat` VALUES (109, 'Al-Kafirun', 30, 6);
INSERT INTO `surat` VALUES (110, 'An-Nasr', 30, 3);
INSERT INTO `surat` VALUES (111, 'Al-Lahab', 30, 5);
INSERT INTO `surat` VALUES (112, 'Al-Ikhlas', 30, 4);
INSERT INTO `surat` VALUES (113, 'Al-Falaq', 30, 5);
INSERT INTO `surat` VALUES (114, 'An-Nas', 30, 6);

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
  `created_at` timestamp NULL DEFAULT current_timestamp,
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
  `sanksi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tatib
-- ----------------------------
INSERT INTO `tatib` VALUES (2, 'A2', 'Membawa dan/menyimpan uang diatas 50.000', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (3, 'A3', 'Melakukan hal lain saat kegiatan', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (4, 'A4', 'Memakai pakaian dengan gambar/simbol, gelang, kalung dan aksesoris yang tidak wajar', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (5, 'A5', 'Mencuci tangan, kaki atau peralatan makan tidak pada tempatnya', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (6, 'A6', 'Tidak melaksanakan piket', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (7, 'A7', 'Tidak memakai Seragam sesuai ketentuan Pesatren', 1, 1, 10, 'Membersihkan Tempat Wudhu');
INSERT INTO `tatib` VALUES (8, 'A8', 'Membawa hewan peliharaan dengan jenis apapun', 1, 1, 10, 'Nulis Pegon 10 Halaman');
INSERT INTO `tatib` VALUES (9, 'A9', 'Terlambat kembali ke Pesantren sepulang sekolah', 1, 1, 10, 'Nulis Pegon 10 Halaman');
INSERT INTO `tatib` VALUES (10, 'A10', 'Bergurau melampaui batas kewajaran', 1, 1, 10, 'Nulis Pegon 10 Halaman');
INSERT INTO `tatib` VALUES (11, 'A11', 'Berbohong/tidak jujur', 1, 1, 10, 'Nulis Pegon 10 Halaman');
INSERT INTO `tatib` VALUES (12, 'B1', 'Menetap di kamar yang bukan kamarnya', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (13, 'B2', 'Tidak membawa perlengkapan/peralatan saat kegiatan', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (14, 'B3', 'Meninggalkan kegiatan sebelum waktunya', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (15, 'B4', 'Meludah, membuang air atau sampah sembarangan', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (16, 'B5', 'Membawa  dan / memakai alat lahwi (kartu, game, komik, layang-layang dll)', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (17, 'B6', 'Terlambat 10 menit mengikuti kegiatan ', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (18, 'B7', 'Olahraga tidak pada waktu dan tempat yang ditentukan', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (19, 'B8', 'Tidur tidak memakai daleman (Celana pendek)', 2, 1, 30, 'Membersihkan Lapangan (Futsal/Volly) atau Gedung (Asrama C/Asrama B/ Masjid/Gedung Baru)');
INSERT INTO `tatib` VALUES (20, 'B9', 'Istirahat/berada di kamar ketika sakit tanpa keterangan/izin dari Poskestren', 2, 1, 30, 'Membersihkan Kamar mandi Pengurus/Santri');
INSERT INTO `tatib` VALUES (21, 'B10', 'Memakai celana pendek/tidak memakai baju diluar kamar', 2, 1, 30, 'Membersihkan Kamar mandi Pengurus/Santri');
INSERT INTO `tatib` VALUES (22, 'B11', 'Membuat kegaduhan', 2, 1, 30, 'Membersihkan Kamar mandi Pengurus/Santri');
INSERT INTO `tatib` VALUES (23, 'B12', 'Menambah/membuat fasilitas pribadi tanpa seizin pengurus', 2, 1, 30, 'Membersihkan Kamar mandi Pengurus/Santri');
INSERT INTO `tatib` VALUES (24, 'B13', 'Berdagang secara ilegal didalam pesantren', 2, 1, 30, 'Membersihkan Kamar mandi Pengurus/Santri');
INSERT INTO `tatib` VALUES (25, 'B14', 'Berhutang tanpa konfirmasi ke ketua kamar', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (26, 'B15', 'Membuat seragam tertentu tanpa seizin pengurus', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (27, 'B16', 'Ghosob/menggunakan barang orang lain tanpa izin', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (28, 'B17', 'Warna/model rambut tidak wajar', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (29, 'B18', 'Berkata tidak sopan/jorok', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (30, 'B19', 'Menyalahgunakan identitas orang lain', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (31, 'B20', 'Terlambat kembali ke Pesantren tanpa keterangan (setelah liburan/izin pulang) ', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (32, 'B21', ' Menggunakan fasilitas pengurus, ustad, kafil dan guru tanpa ijin', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (33, 'B22', 'Tidak Puasa Sunnah yang diwajibkan Pesantren', 2, 1, 30, 'Nulis Kalimat Toyyibah 20 Halaman  (Minimal 5 Macam)');
INSERT INTO `tatib` VALUES (34, 'C1', 'Tidak mengikuti sholat jama’ah, deresan/setoran tahfidh, madrasah diniyah tanpa keterangan', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (35, 'C2', 'Menyelenggarakan kegiatan diluar agenda pesantren tanpa seizin pengurus', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (36, 'C3', 'Memalsukan surat atau tanda tangan pengurus, guru dan orang tua', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (37, 'C4', 'Melakukan transaksi ilegal dengan pihak luar pesantren/COD', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (38, 'C5', 'Melakukan doktrinisasi untuk kepentingan pribadi dan atau golongan', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (39, 'C6', 'Memberikan kesaksian palsu ', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (40, 'C7', 'Membawa dan / memakai kendaraan, handphone dan barang elektronik kecuali mendapatkan izin dari Pengurus', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (41, 'C8', 'Membawa dan merokok dalam bentuk dan jenis apapun', 3, 1, 50, 'Menulis 1/2 Juz (Surah Asy-Syams - An-Nas)');
INSERT INTO `tatib` VALUES (42, 'C9', 'Menyalahgunakan Izin ', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (43, 'C10', 'Keluar/Pulang tanpa izin', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (44, 'C11', 'Tidak membayar uang syahriah', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (45, 'C12', 'Merusak, Vandalisme atau mengotori sarana prasarana pesantren', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (46, 'C13', 'Melakukan pelecehan terhadap simbol-simbol Agama, Negara dan Almamater', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (47, 'C14', 'Berhubungan dengan lawan jenis yang bukan mahromnya (pacaran, dll)', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (48, 'C15', 'Membuat gank', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (49, 'C16', 'Memakai tindik, tato dalam bentuk apapun', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (50, 'C17', 'Mencuri', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (51, 'C18', 'Pornografi dan atau Pornoaksi', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (52, 'C19', 'Berkelahi atau bertengkar dengan alasan apapun dan bentuk apapun', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (53, 'C20', 'Pengancaman dan Pemerasan (Penargetan)', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (54, 'C21', 'Melakukan bullying (Verbal)', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (55, 'C22', 'Melakukan pelecehan dan atau meremehkan pengurus, ustad, kafil, guru, dan orang tua santri', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (56, 'C23', 'Tidak melaksanakan Puasa Ramadhan', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (57, 'C24', 'Membawa, mengedarkan, dan atau menggunakan minuman keras dan obat-obatan terlarang (Narkoba).', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (58, 'C25', 'Penganiayaan/Pemukulan', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (59, 'C26', 'Berzina/Homo', 3, 1, 50, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');
INSERT INTO `tatib` VALUES (62, 'A1', 'Dilarang Menjemur Pakaian ', 1, 1, 10, 'Menulis 1 Juz (Surah An-Naba\' - An-Nas)');

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1748172766, 1, 'Admin', 'istrator', 'ADMIN', '0', '123', NULL, NULL, NULL);
INSERT INTO `users` VALUES (25, '::1', 'mir', '$2y$10$7CtyYQ1SxDYSjYyssEFWle4FJD.12O9biLP5vcH4wAi37v5lNTawW', 'irfaur@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746599349, 1746599358, 1, 'M. Irfaur Rizky', NULL, NULL, NULL, NULL, NULL, 1372, 'karyawan');
INSERT INTO `users` VALUES (26, '::1', 'rendy', '$2y$10$Bz3IJjHsT86GzE0hb5IBZeZVubG9Resb/W1YIWVGG7rOE1uzTlNEO', 'rendyyanisusanto@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746607038, 1746607047, 1, 'rendy', NULL, NULL, NULL, NULL, NULL, 1359, 'karyawan');
INSERT INTO `users` VALUES (27, '::1', 'pau', '$2y$10$Q2Qu7gbHIE1VxCY0OxOgJORnU.smVgiY0C0wp7TbNnCvJkv4oac4O', 'pau@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746862620, NULL, 1, 'pau', NULL, NULL, NULL, NULL, NULL, 1359, 'karyawan');
INSERT INTO `users` VALUES (28, '::1', 'ketertiban', '$2y$10$Nwq8ZZTjwzgZKryPFffCjOB9TGz0VZcC/61Zr10EoIVxUGic3Zy7W', 'ketertiban@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746862651, NULL, 1, 'ketertiban', NULL, NULL, NULL, NULL, NULL, 1359, 'karyawan');
INSERT INTO `users` VALUES (29, '::1', 'asrama', '$2y$10$KdfMqD5THqlp5hY9.sJmjusqw1BY.ltF3tjBafAQl/Jqere9AvVOu', 'asrama@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746862712, NULL, 1, 'asrama', NULL, NULL, NULL, NULL, NULL, 1368, 'karyawan');
INSERT INTO `users` VALUES (30, '::1', 'ketuakamar', '$2y$10$oe.kt.bsjj13t09fEz0woOmYp7cNf1NwxFi7EfTAW6W8iOGxHM8q2', 'ketuakamar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746862749, NULL, 1, 'ketuakamar', NULL, NULL, NULL, NULL, NULL, 1359, 'karyawan');
INSERT INTO `users` VALUES (31, '127.0.0.1', 'ortu', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'ortu@gmail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1747447694, 1, 'Admin', 'istrator', 'ADMIN', '0', '123', NULL, 1373, 'santri');
INSERT INTO `users` VALUES (32, '::1', 'amar', '$2y$10$9tmW9T6pC.lZWL7lS4obC.DxCVpcpgdGrNEgvUaSo16oDj2nvczAW', 'amar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1747745240, NULL, 1, 'Amar', NULL, NULL, NULL, NULL, NULL, 1545, 'santri');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `users_groups` VALUES (20, 25, 13);
INSERT INTO `users_groups` VALUES (21, 26, 11);
INSERT INTO `users_groups` VALUES (22, 27, 11);
INSERT INTO `users_groups` VALUES (23, 28, 13);
INSERT INTO `users_groups` VALUES (24, 29, 12);
INSERT INTO `users_groups` VALUES (25, 30, 17);
INSERT INTO `users_groups` VALUES (26, 31, 18);

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
-- View structure for v_alumni
-- ----------------------------
DROP VIEW IF EXISTS `v_alumni`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_alumni` AS SELECT
	santri.*, 
	alumni.tahun_lulus, 
	alumni.id AS alumni_id, 
	alumni.keterangan, 
	angkatan.nama as nama_angkatan, 
	asrama.nama as nama_asrama
FROM
	santri
	INNER JOIN
	alumni
	ON 
		santri.id = alumni.santri_id
	LEFT JOIN
	angkatan
	ON 
		santri.angkatan_id = angkatan.id
	LEFT JOIN
	asrama
	ON 
		santri.asrama_id = asrama.id ;

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

-- ----------------------------
-- View structure for v_sekolah
-- ----------------------------
DROP VIEW IF EXISTS `v_sekolah`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_sekolah` AS SELECT
	sekolah.nama AS nama_sekolah, 
	peserta_sekolah.santri_id, 
	peserta_sekolah.sekolah_id, 
	peserta_sekolah.id, 
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
	santri.asrama_id, 
	santri.nik, 
	santri.angkatan_id
FROM
	santri
	INNER JOIN
	peserta_sekolah
	ON 
		santri.id = peserta_sekolah.santri_id
	INNER JOIN
	sekolah
	ON 
		sekolah.id = peserta_sekolah.sekolah_id ;

SET FOREIGN_KEY_CHECKS = 1;
