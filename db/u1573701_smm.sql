/*
 Navicat Premium Data Transfer

 Source Server         : impact
 Source Server Type    : MySQL
 Source Server Version : 100616
 Source Host           : impactfurniture.id:3306
 Source Schema         : u1573701_smm

 Target Server Type    : MySQL
 Target Server Version : 100616
 File Encoding         : 65001

 Date: 29/01/2024 10:05:22
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
INSERT INTO `akun` VALUES (1, '1101', 'Kas', 1, 'D', '2020-12-11 16:39:34', 0);
INSERT INTO `akun` VALUES (2, '1102', 'BANK', 1, 'D', '2020-12-11 16:39:44', 0);
INSERT INTO `akun` VALUES (3, '1103', 'Deposito', 1, 'D', '2020-12-11 16:39:55', 0);
INSERT INTO `akun` VALUES (4, '1104', 'Piutang', 1, 'D', '2020-12-11 16:40:04', 0);
INSERT INTO `akun` VALUES (5, '1105', 'Persediaan', 1, 'D', '2020-12-11 16:40:12', 0);
INSERT INTO `akun` VALUES (6, '1201', 'Aktiva Tetap', 2, 'D', '2020-12-11 16:40:39', 0);
INSERT INTO `akun` VALUES (7, '1202', 'Penyusutan', 2, 'D', '2020-12-11 16:40:47', 0);
INSERT INTO `akun` VALUES (8, '1203', 'Investasi', 2, 'D', '2020-12-11 16:40:58', 0);
INSERT INTO `akun` VALUES (9, '2101', 'Hutang Usaha', 3, 'K', '2020-12-11 16:41:10', 0);
INSERT INTO `akun` VALUES (10, '2102', 'Hutang Pajak', 3, 'K', '2020-12-11 16:41:22', 0);
INSERT INTO `akun` VALUES (11, '2103', 'Kewajiban Lancar Lain', 3, 'K', '2020-12-11 16:41:35', 0);
INSERT INTO `akun` VALUES (12, '2201', 'Hutang Pihak ke 3', 4, 'K', '2020-12-11 16:41:49', 0);
INSERT INTO `akun` VALUES (13, '2202', 'Hutang Program Lain', 4, 'K', '2020-12-11 16:42:01', 0);
INSERT INTO `akun` VALUES (14, '2203', 'Kewajiban Jangka Panjang Lain', 4, 'K', '2020-12-11 16:42:16', 0);
INSERT INTO `akun` VALUES (15, '3101', 'Modal Usaha', 5, 'K', '2020-12-11 16:42:26', 0);
INSERT INTO `akun` VALUES (16, '3102', 'Prive', 5, 'D', '2020-12-11 16:42:35', 0);
INSERT INTO `akun` VALUES (17, '4101', 'Donasi', 6, 'D', '2020-12-11 16:42:47', 0);
INSERT INTO `akun` VALUES (18, '4102', 'Sumbangan', 6, 'D', '2020-12-11 16:42:55', 0);
INSERT INTO `akun` VALUES (19, '4201', 'Penghasilan Layanan', 7, 'K', '2020-12-11 16:43:12', 0);
INSERT INTO `akun` VALUES (20, '4202', 'Pendapatan', 7, 'K', '2020-12-11 16:43:35', 0);
INSERT INTO `akun` VALUES (21, '4301', 'Pendapatan Lain', 8, 'K', '2020-12-11 16:44:06', 0);
INSERT INTO `akun` VALUES (22, '5101', 'Beban Gaji', 9, 'D', '2020-12-11 16:44:15', 0);
INSERT INTO `akun` VALUES (23, '5102', 'Biaya Perjalanan', 9, 'D', '2020-12-11 16:44:27', 0);
INSERT INTO `akun` VALUES (24, '5103', 'Biaya Kantor', 9, 'D', '2020-12-11 16:44:42', 0);
INSERT INTO `akun` VALUES (25, '5104', 'Biaya Sewa', 9, 'D', '2020-12-11 16:44:52', 0);
INSERT INTO `akun` VALUES (26, '5105', 'Biaya Pemeliharaan', 9, 'D', '2020-12-11 16:45:02', 0);
INSERT INTO `akun` VALUES (27, '5106', 'Biaya Rapat', 9, 'D', '2020-12-11 16:45:14', 0);
INSERT INTO `akun` VALUES (28, '5107', 'Biaya Lain', 9, 'D', '2020-12-11 16:45:20', 0);
INSERT INTO `akun` VALUES (35, '4104', 'Diskon Lain', 6, 'D', '2022-07-23 08:31:56', 0);
INSERT INTO `akun` VALUES (36, '4203', 'Diskon Penjualan', 7, 'D', '2023-05-04 20:27:20', 0);
INSERT INTO `akun` VALUES (37, '1106', 'Diskon Pembelian', 1, 'K', '2023-05-04 20:30:00', 0);
INSERT INTO `akun` VALUES (38, '1108', 'PPn Pembelian', 1, 'K', '2023-05-05 21:03:37', 0);
INSERT INTO `akun` VALUES (39, '4204', 'PPn Penjualan', 7, 'D', '2023-05-05 21:03:56', 0);
INSERT INTO `akun` VALUES (40, '1108', 'Persediaan Produk', 1, 'D', '2023-05-21 07:35:11', 0);

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rekening` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (1, 'BRI', '12312312');
INSERT INTO `bank` VALUES (2, 'BCA', '23322123');
INSERT INTO `bank` VALUES (3, 'BNI', '3123128309');

-- ----------------------------
-- Table structure for check_log
-- ----------------------------
DROP TABLE IF EXISTS `check_log`;
CREATE TABLE `check_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan_id` int(11) NULL DEFAULT NULL,
  `uid_finger` int(11) NULL DEFAULT NULL,
  `status_absen_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `jam` time(0) NULL DEFAULT NULL,
  `timestamp` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of check_log
-- ----------------------------
INSERT INTO `check_log` VALUES (5, 2, 212, 0, '2024-01-25', '09:04:28', '2024-01-25 09:04:28', '2024-01-25 14:03:55');
INSERT INTO `check_log` VALUES (6, 1, 111, 1, '2024-01-25', '09:16:57', '2024-01-25 09:16:57', '2024-01-25 14:03:55');
INSERT INTO `check_log` VALUES (7, 1, 111, 0, '2024-01-25', '10:57:26', '2024-01-25 10:57:26', '2024-01-25 14:03:55');
INSERT INTO `check_log` VALUES (8, 2, 212, 1, '2024-01-25', '10:58:10', '2024-01-25 10:58:10', '2024-01-25 14:03:55');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 500 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, 'Kab. Simeulue', 1, '2019-10-22 07:49:46', '2019-10-25 20:50:05');
INSERT INTO `cities` VALUES (2, 'Kab. Aceh Singkil', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (3, 'Kab. Aceh Selatan', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (4, 'Kab. Aceh Tenggara', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (5, 'Kab. Aceh Timur', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (6, 'Kab. Aceh Tengah', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (7, 'Kab. Aceh Barat', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (8, 'Kab. Aceh Besar', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (9, 'Kab. Pidie', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (10, 'Kab. Bireuen', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (11, 'Kab. Aceh Utara', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (12, 'Kab. Aceh Barat Daya', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (13, 'Kab. Gayo Lues', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (14, 'Kab. Aceh Tamiang', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (15, 'Kab. Nagan Raya', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (16, 'Kab. Aceh Jaya', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (17, 'Kab. Bener Meriah', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (18, 'Kab. Pidie Jaya', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (19, 'Kota Banda Aceh', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (20, 'Kota Sabang', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (21, 'Kota Langsa', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (22, 'Kota Lhokseumawe', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (23, 'Kota Subulussalam', 1, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (24, 'Kab. Nias', 2, '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `cities` VALUES (25, 'Kab. Mandailing Natal', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (26, 'Kab. Tapanuli Selatan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (27, 'Kab. Tapanuli Tengah', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (28, 'Kab. Tapanuli Utara', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (29, 'Kab. Toba Samosir', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (30, 'Kab. Labuhan Batu', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (31, 'Kab. Asahan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (32, 'Kab. Simalungun', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (33, 'Kab. Dairi', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (34, 'Kab. Karo', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (35, 'Kab. Deli Serdang', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (36, 'Kab. Langkat', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (37, 'Kab. Nias Selatan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (38, 'Kab. Humbang Hasundutan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (39, 'Kab. Pakpak Bharat', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (40, 'Kab. Samosir', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (41, 'Kab. Serdang Bedagai', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (42, 'Kab. Batu Bara', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (43, 'Kab. Padang Lawas Utara', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (44, 'Kab. Padang Lawas', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (45, 'Kab. Labuhan Batu Selatan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (46, 'Kab. Labuhan Batu Utara', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (47, 'Kab. Nias Utara', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (48, 'Kab. Nias Barat', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (49, 'Kota Sibolga', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (50, 'Kota Tanjung Balai', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (51, 'Kota Pematang Siantar', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (52, 'Kota Tebing Tinggi', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (53, 'Kota Medan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (54, 'Kota Binjai', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (55, 'Kota Padangsidimpuan', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (56, 'Kota Gunungsitoli', 2, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (57, 'Kab. Kepulauan Mentawai', 3, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (58, 'Kab. Pesisir Selatan', 3, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (59, 'Kab. Solok', 3, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (60, 'Kab. Sijunjung', 3, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (61, 'Kab. Tanah Datar', 3, '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `cities` VALUES (62, 'Kab. Padang Pariaman', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (63, 'Kab. Agam', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (64, 'Kab. Lima Puluh Kota', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (65, 'Kab. Pasaman', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (66, 'Kab. Solok Selatan', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (67, 'Kab. Dharmasraya', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (68, 'Kab. Pasaman Barat', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (69, 'Kota Padang', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (70, 'Kota Solok', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (71, 'Kota Sawah Lunto', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (72, 'Kota Padang Panjang', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (73, 'Kota Bukittinggi', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (74, 'Kota Payakumbuh', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (75, 'Kota Pariaman', 3, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (76, 'Kab. Kuantan Singingi', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (77, 'Kab. Indragiri Hulu', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (78, 'Kab. Indragiri Hilir', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (79, 'Kab. Pelalawan', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (80, 'Kab. S I A K', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (81, 'Kab. Kampar', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (82, 'Kab. Rokan Hulu', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (83, 'Kab. Bengkalis', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (84, 'Kab. Rokan Hilir', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (85, 'Kab. Kepulauan Meranti', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (86, 'Kota Pekanbaru', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (87, 'Kota D U M A I', 4, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (88, 'Kab. Kerinci', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (89, 'Kab. Merangin', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (90, 'Kab. Sarolangun', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (91, 'Kab. Batang Hari', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (92, 'Kab. Muaro Jambi', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (93, 'Kab. Tanjung Jabung Timur', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (94, 'Kab. Tanjung Jabung Barat', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (95, 'Kab. Tebo', 5, '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `cities` VALUES (96, 'Kab. Bungo', 5, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (97, 'Kota Jambi', 5, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (98, 'Kota Sungai Penuh', 5, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (99, 'Kab. Ogan Komering Ulu', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (100, 'Kab. Ogan Komering Ilir', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (101, 'Kab. Muara Enim', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (102, 'Kab. Lahat', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (103, 'Kab. Musi Rawas', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (104, 'Kab. Musi Banyuasin', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (105, 'Kab. Banyu Asin', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (106, 'Kab. Ogan Komering Ulu Selatan', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (107, 'Kab. Ogan Komering Ulu Timur', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (108, 'Kab. Ogan Ilir', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (109, 'Kab. Empat Lawang', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (110, 'Kota Palembang', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (111, 'Kota Prabumulih', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (112, 'Kota Pagar Alam', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (113, 'Kota Lubuklinggau', 6, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (114, 'Kab. Bengkulu Selatan', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (115, 'Kab. Rejang Lebong', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (116, 'Kab. Bengkulu Utara', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (117, 'Kab. Kaur', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (118, 'Kab. Seluma', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (119, 'Kab. Mukomuko', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (120, 'Kab. Lebong', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (121, 'Kab. Kepahiang', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (122, 'Kab. Bengkulu Tengah', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (123, 'Kota Bengkulu', 7, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (124, 'Kab. Lampung Barat', 8, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (125, 'Kab. Tanggamus', 8, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (126, 'Kab. Lampung Selatan', 8, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (127, 'Kab. Lampung Timur', 8, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (128, 'Kab. Lampung Tengah', 8, '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `cities` VALUES (129, 'Kab. Lampung Utara', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (130, 'Kab. Way Kanan', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (131, 'Kab. Tulangbawang', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (132, 'Kab. Pesawaran', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (133, 'Kab. Pringsewu', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (134, 'Kab. Mesuji', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (135, 'Kab. Tulang Bawang Barat', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (136, 'Kab. Pesisir Barat', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (137, 'Kota Bandar Lampung', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (138, 'Kota Metro', 8, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (139, 'Kab. Bangka', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (140, 'Kab. Belitung', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (141, 'Kab. Bangka Barat', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (142, 'Kab. Bangka Tengah', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (143, 'Kab. Bangka Selatan', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (144, 'Kab. Belitung Timur', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (145, 'Kota Pangkal Pinang', 9, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (146, 'Kab. Karimun', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (147, 'Kab. Bintan', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (148, 'Kab. Natuna', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (149, 'Kab. Lingga', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (150, 'Kab. Kepulauan Anambas', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (151, 'Kota B A T A M', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (152, 'Kota Tanjung Pinang', 10, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (153, 'Kab. Kepulauan Seribu', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (154, 'Kota Jakarta Selatan', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (155, 'Kota Jakarta Timur', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (156, 'Kota Jakarta Pusat', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (157, 'Kota Jakarta Barat', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (158, 'Kota Jakarta Utara', 11, '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `cities` VALUES (159, 'Kab. Bogor', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (160, 'Kab. Sukabumi', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (161, 'Kab. Cianjur', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (162, 'Kab. Bandung', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (163, 'Kab. Garut', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (164, 'Kab. Tasikmalaya', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (165, 'Kab. Ciamis', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (166, 'Kab. Kuningan', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (167, 'Kab. Cirebon', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (168, 'Kab. Majalengka', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (169, 'Kab. Sumedang', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (170, 'Kab. Indramayu', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (171, 'Kab. Subang', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (172, 'Kab. Purwakarta', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (173, 'Kab. Karawang', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (174, 'Kab. Bekasi', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (175, 'Kab. Bandung Barat', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (176, 'Kab. Pangandaran', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (177, 'Kota Bogor', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (178, 'Kota Sukabumi', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (179, 'Kota Bandung', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (180, 'Kota Cirebon', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (181, 'Kota Bekasi', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (182, 'Kota Depok', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (183, 'Kota Cimahi', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (184, 'Kota Tasikmalaya', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (185, 'Kota Banjar', 12, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (186, 'Kab. Cilacap', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (187, 'Kab. Banyumas', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (188, 'Kab. Purbalingga', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (189, 'Kab. Banjarnegara', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (190, 'Kab. Kebumen', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (191, 'Kab. Purworejo', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (192, 'Kab. Wonosobo', 13, '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `cities` VALUES (193, 'Kab. Magelang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (194, 'Kab. Boyolali', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (195, 'Kab. Klaten', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (196, 'Kab. Sukoharjo', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (197, 'Kab. Wonogiri', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (198, 'Kab. Karanganyar', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (199, 'Kab. Sragen', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (200, 'Kab. Grobogan', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (201, 'Kab. Blora', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (202, 'Kab. Rembang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (203, 'Kab. Pati', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (204, 'Kab. Kudus', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (205, 'Kab. Jepara', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (206, 'Kab. Demak', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (207, 'Kab. Semarang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (208, 'Kab. Temanggung', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (209, 'Kab. Kendal', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (210, 'Kab. Batang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (211, 'Kab. Pekalongan', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (212, 'Kab. Pemalang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (213, 'Kab. Tegal', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (214, 'Kab. Brebes', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (215, 'Kota Magelang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (216, 'Kota Surakarta', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (217, 'Kota Salatiga', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (218, 'Kota Semarang', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (219, 'Kota Pekalongan', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (220, 'Kota Tegal', 13, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (221, 'Kab. Kulon Progo', 14, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (222, 'Kab. Bantul', 14, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (223, 'Kab. Gunung Kidul', 14, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (224, 'Kab. Sleman', 14, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (225, 'Kota Yogyakarta', 14, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (226, 'Kab. Pacitan', 15, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (227, 'Kab. Ponorogo', 15, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (228, 'Kab. Trenggalek', 15, '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `cities` VALUES (229, 'Kab. Tulungagung', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (230, 'Kab. Blitar', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (231, 'Kab. Kediri', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (232, 'Kab. Malang', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (233, 'Kab. Lumajang', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (234, 'Kab. Jember', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (235, 'Kab. Banyuwangi', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (236, 'Kab. Bondowoso', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (237, 'Kab. Situbondo', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (238, 'Kab. Probolinggo', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (239, 'Kab. Pasuruan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (240, 'Kab. Sidoarjo', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (241, 'Kab. Mojokerto', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (242, 'Kab. Jombang', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (243, 'Kab. Nganjuk', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (244, 'Kab. Madiun', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (245, 'Kab. Magetan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (246, 'Kab. Ngawi', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (247, 'Kab. Bojonegoro', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (248, 'Kab. Tuban', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (249, 'Kab. Lamongan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (250, 'Kab. Gresik', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (251, 'Kab. Bangkalan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (252, 'Kab. Sampang', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (253, 'Kab. Pamekasan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (254, 'Kab. Sumenep', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (255, 'Kota Kediri', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (256, 'Kota Blitar', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (257, 'Kota Malang', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (258, 'Kota Probolinggo', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (259, 'Kota Pasuruan', 15, '2019-10-22 07:49:53', '2019-10-22 07:49:53');
INSERT INTO `cities` VALUES (260, 'Kota Mojokerto', 15, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (261, 'Kota Madiun', 15, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (262, 'Kota Surabaya', 15, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (263, 'Kota Batu', 15, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (264, 'Kab. Pandeglang', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (265, 'Kab. Lebak', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (266, 'Kab. Tangerang', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (267, 'Kab. Serang', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (268, 'Kota Tangerang', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (269, 'Kota Cilegon', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (270, 'Kota Serang', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (271, 'Kota Tangerang Selatan', 16, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (272, 'Kab. Jembrana', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (273, 'Kab. Tabanan', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (274, 'Kab. Badung', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (275, 'Kab. Gianyar', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (276, 'Kab. Klungkung', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (277, 'Kab. Bangli', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (278, 'Kab. Karang Asem', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (279, 'Kab. Buleleng', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (280, 'Kota Denpasar', 17, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (281, 'Kab. Lombok Barat', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (282, 'Kab. Lombok Tengah', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (283, 'Kab. Lombok Timur', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (284, 'Kab. Sumbawa', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (285, 'Kab. Dompu', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (286, 'Kab. Bima', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (287, 'Kab. Sumbawa Barat', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (288, 'Kab. Lombok Utara', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (289, 'Kota Mataram', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (290, 'Kota Bima', 18, '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `cities` VALUES (291, 'Kab. Sumba Barat', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (292, 'Kab. Sumba Timur', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (293, 'Kab. Kupang', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (294, 'Kab. Timor Tengah Selatan', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (295, 'Kab. Timor Tengah Utara', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (296, 'Kab. Belu', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (297, 'Kab. Alor', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (298, 'Kab. Lembata', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (299, 'Kab. Flores Timur', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (300, 'Kab. Sikka', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (301, 'Kab. Ende', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (302, 'Kab. Ngada', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (303, 'Kab. Manggarai', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (304, 'Kab. Rote Ndao', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (305, 'Kab. Manggarai Barat', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (306, 'Kab. Sumba Tengah', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (307, 'Kab. Sumba Barat Daya', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (308, 'Kab. Nagekeo', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (309, 'Kab. Manggarai Timur', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (310, 'Kab. Sabu Raijua', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (311, 'Kota Kupang', 19, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (312, 'Kab. Sambas', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (313, 'Kab. Bengkayang', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (314, 'Kab. Landak', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (315, 'Kab. Pontianak', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (316, 'Kab. Sanggau', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (317, 'Kab. Ketapang', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (318, 'Kab. Sintang', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (319, 'Kab. Kapuas Hulu', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (320, 'Kab. Sekadau', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (321, 'Kab. Melawi', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (322, 'Kab. Kayong Utara', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (323, 'Kab. Kubu Raya', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (324, 'Kota Pontianak', 20, '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `cities` VALUES (325, 'Kota Singkawang', 20, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (326, 'Kab. Kotawaringin Barat', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (327, 'Kab. Kotawaringin Timur', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (328, 'Kab. Kapuas', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (329, 'Kab. Barito Selatan', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (330, 'Kab. Barito Utara', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (331, 'Kab. Sukamara', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (332, 'Kab. Lamandau', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (333, 'Kab. Seruyan', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (334, 'Kab. Katingan', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (335, 'Kab. Pulang Pisau', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (336, 'Kab. Gunung Mas', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (337, 'Kab. Barito Timur', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (338, 'Kab. Murung Raya', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (339, 'Kota Palangka Raya', 21, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (340, 'Kab. Tanah Laut', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (341, 'Kab. Kota Baru', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (342, 'Kab. Banjar', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (343, 'Kab. Barito Kuala', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (344, 'Kab. Tapin', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (345, 'Kab. Hulu Sungai Selatan', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (346, 'Kab. Hulu Sungai Tengah', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (347, 'Kab. Hulu Sungai Utara', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (348, 'Kab. Tabalong', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (349, 'Kab. Tanah Bumbu', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (350, 'Kab. Balangan', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (351, 'Kota Banjarmasin', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (352, 'Kota Banjar Baru', 22, '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `cities` VALUES (353, 'Kab. Paser', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (354, 'Kab. Kutai Barat', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (355, 'Kab. Kutai Kartanegara', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (356, 'Kab. Kutai Timur', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (357, 'Kab. Berau', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (358, 'Kab. Penajam Paser Utara', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (359, 'Kota Balikpapan', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (360, 'Kota Samarinda', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (361, 'Kota Bontang', 23, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (362, 'Kab. Malinau', 24, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (363, 'Kab. Bulungan', 24, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (364, 'Kab. Tana Tidung', 24, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (365, 'Kab. Nunukan', 24, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (366, 'Kota Tarakan', 24, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (367, 'Kab. Bolaang Mongondow', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (368, 'Kab. Minahasa', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (369, 'Kab. Kepulauan Sangihe', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (370, 'Kab. Kepulauan Talaud', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (371, 'Kab. Minahasa Selatan', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (372, 'Kab. Minahasa Utara', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (373, 'Kab. Bolaang Mongondow Utara', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (374, 'Kab. Siau Tagulandang Biaro', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (375, 'Kab. Minahasa Tenggara', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (376, 'Kab. Bolaang Mongondow Selatan', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (377, 'Kab. Bolaang Mongondow Timur', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (378, 'Kota Manado', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (379, 'Kota Bitung', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (380, 'Kota Tomohon', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (381, 'Kota Kotamobagu', 25, '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `cities` VALUES (382, 'Kab. Banggai Kepulauan', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (383, 'Kab. Banggai', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (384, 'Kab. Morowali', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (385, 'Kab. Poso', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (386, 'Kab. Donggala', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (387, 'Kab. Toli-toli', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (388, 'Kab. Buol', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (389, 'Kab. Parigi Moutong', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (390, 'Kab. Tojo Una-una', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (391, 'Kab. Sigi', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (392, 'Kota Palu', 26, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (393, 'Kab. Kepulauan Selayar', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (394, 'Kab. Bulukumba', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (395, 'Kab. Bantaeng', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (396, 'Kab. Jeneponto', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (397, 'Kab. Takalar', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (398, 'Kab. Gowa', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (399, 'Kab. Sinjai', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (400, 'Kab. Maros', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (401, 'Kab. Pangkajene Dan Kepulauan', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (402, 'Kab. Barru', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (403, 'Kab. Bone', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (404, 'Kab. Soppeng', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (405, 'Kab. Wajo', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (406, 'Kab. Sidenreng Rappang', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (407, 'Kab. Pinrang', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (408, 'Kab. Enrekang', 27, '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `cities` VALUES (409, 'Kab. Luwu', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (410, 'Kab. Tana Toraja', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (411, 'Kab. Luwu Utara', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (412, 'Kab. Luwu Timur', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (413, 'Kab. Toraja Utara', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (414, 'Kota Makassar', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (415, 'Kota Parepare', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (416, 'Kota Palopo', 27, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (417, 'Kab. Buton', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (418, 'Kab. Muna', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (419, 'Kab. Konawe', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (420, 'Kab. Kolaka', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (421, 'Kab. Konawe Selatan', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (422, 'Kab. Bombana', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (423, 'Kab. Wakatobi', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (424, 'Kab. Kolaka Utara', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (425, 'Kab. Buton Utara', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (426, 'Kab. Konawe Utara', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (427, 'Kota Kendari', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (428, 'Kota Baubau', 28, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (429, 'Kab. Boalemo', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (430, 'Kab. Gorontalo', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (431, 'Kab. Pohuwato', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (432, 'Kab. Bone Bolango', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (433, 'Kab. Gorontalo Utara', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (434, 'Kota Gorontalo', 29, '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `cities` VALUES (435, 'Kab. Majene', 30, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (436, 'Kab. Polewali Mandar', 30, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (437, 'Kab. Mamasa', 30, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (438, 'Kab. Mamuju', 30, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (439, 'Kab. Mamuju Utara', 30, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (440, 'Kab. Maluku Tenggara Barat', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (441, 'Kab. Maluku Tenggara', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (442, 'Kab. Maluku Tengah', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (443, 'Kab. Buru', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (444, 'Kab. Kepulauan Aru', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (445, 'Kab. Seram Bagian Barat', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (446, 'Kab. Seram Bagian Timur', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (447, 'Kab. Maluku Barat Daya', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (448, 'Kab. Buru Selatan', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (449, 'Kota Ambon', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (450, 'Kota Tual', 31, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (451, 'Kab. Halmahera Barat', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (452, 'Kab. Halmahera Tengah', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (453, 'Kab. Kepulauan Sula', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (454, 'Kab. Halmahera Selatan', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (455, 'Kab. Halmahera Utara', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (456, 'Kab. Halmahera Timur', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (457, 'Kab. Pulau Morotai', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (458, 'Kota Ternate', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (459, 'Kota Tidore Kepulauan', 32, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (460, 'Kab. Fakfak', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (461, 'Kab. Kaimana', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (462, 'Kab. Teluk Wondama', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (463, 'Kab. Teluk Bintuni', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (464, 'Kab. Manokwari', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (465, 'Kab. Sorong Selatan', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (466, 'Kab. Sorong', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (467, 'Kab. Raja Ampat', 33, '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `cities` VALUES (468, 'Kab. Tambrauw', 33, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (469, 'Kab. Maybrat', 33, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (470, 'Kota Sorong', 33, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (471, 'Kab. Merauke', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (472, 'Kab. Jayawijaya', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (473, 'Kab. Jayapura', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (474, 'Kab. Nabire', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (475, 'Kab. Kepulauan Yapen', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (476, 'Kab. Biak Numfor', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (477, 'Kab. Paniai', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (478, 'Kab. Puncak Jaya', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (479, 'Kab. Mimika', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (480, 'Kab. Boven Digoel', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (481, 'Kab. Mappi', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (482, 'Kab. Asmat', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (483, 'Kab. Yahukimo', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (484, 'Kab. Pegunungan Bintang', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (485, 'Kab. Tolikara', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (486, 'Kab. Sarmi', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (487, 'Kab. Keerom', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (488, 'Kab. Waropen', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (489, 'Kab. Supiori', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (490, 'Kab. Mamberamo Raya', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (491, 'Kab. Nduga', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (492, 'Kab. Lanny Jaya', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (493, 'Kab. Mamberamo Tengah', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (494, 'Kab. Yalimo', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (495, 'Kab. Puncak', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (496, 'Kab. Dogiyai', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (497, 'Kab. Intan Jaya', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (498, 'Kab. Deiyai', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');
INSERT INTO `cities` VALUES (499, 'Kota Jayapura', 34, '2019-10-22 07:50:01', '2019-10-22 07:50:01');

-- ----------------------------
-- Table structure for coa
-- ----------------------------
DROP TABLE IF EXISTS `coa`;
CREATE TABLE `coa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coa
-- ----------------------------
INSERT INTO `coa` VALUES (1, 'Aktiva');
INSERT INTO `coa` VALUES (2, 'Kewajiban');
INSERT INTO `coa` VALUES (3, 'Aktiva Bersih');
INSERT INTO `coa` VALUES (4, 'Penerimaan');
INSERT INTO `coa` VALUES (5, 'Biaya');

-- ----------------------------
-- Table structure for detail_bahan_produksi
-- ----------------------------
DROP TABLE IF EXISTS `detail_bahan_produksi`;
CREATE TABLE `detail_bahan_produksi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NULL DEFAULT NULL,
  `produksi_id` int(11) NULL DEFAULT NULL,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `satuan_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produksi_id`(`produksi_id`) USING BTREE,
  CONSTRAINT `detail_bahan_produksi_ibfk_1` FOREIGN KEY (`produksi_id`) REFERENCES `produksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_bahan_produksi
-- ----------------------------
INSERT INTO `detail_bahan_produksi` VALUES (1, 1, 1, 59, 10, 5);
INSERT INTO `detail_bahan_produksi` VALUES (2, 1, 1, 64, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (3, 3, 1, 65, 1, 3);
INSERT INTO `detail_bahan_produksi` VALUES (4, 3, 1, 59, 4, 5);
INSERT INTO `detail_bahan_produksi` VALUES (5, 3, 1, 64, 2, 5);
INSERT INTO `detail_bahan_produksi` VALUES (6, 1, 3, 59, 50, 4);
INSERT INTO `detail_bahan_produksi` VALUES (7, 1, 3, 64, 10, 4);
INSERT INTO `detail_bahan_produksi` VALUES (8, 2, 3, 59, 30, 4);
INSERT INTO `detail_bahan_produksi` VALUES (9, 12, 4, 59, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (10, 12, 4, 64, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (11, 13, 5, 59, 50, 4);
INSERT INTO `detail_bahan_produksi` VALUES (12, 14, 5, 62, 10, 4);
INSERT INTO `detail_bahan_produksi` VALUES (13, 10, 2, 59, 50, 4);
INSERT INTO `detail_bahan_produksi` VALUES (14, 11, 2, 64, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (15, 15, 6, 59, 40, 4);
INSERT INTO `detail_bahan_produksi` VALUES (16, 16, 7, 59, 30, 4);
INSERT INTO `detail_bahan_produksi` VALUES (17, 16, 7, 64, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (18, 1, 8, 59, 1, 3);
INSERT INTO `detail_bahan_produksi` VALUES (19, 3, 8, 64, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (20, 3, 8, 65, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (21, NULL, 9, 66, 4, 4);
INSERT INTO `detail_bahan_produksi` VALUES (22, 5, 9, NULL, NULL, NULL);
INSERT INTO `detail_bahan_produksi` VALUES (23, NULL, 9, 65, 6, 4);
INSERT INTO `detail_bahan_produksi` VALUES (24, 5, 9, 58, 1, 1);
INSERT INTO `detail_bahan_produksi` VALUES (25, 17, 10, 58, 1, 1);
INSERT INTO `detail_bahan_produksi` VALUES (26, 17, 10, 59, 10, 4);
INSERT INTO `detail_bahan_produksi` VALUES (27, 4, 11, 67, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (28, NULL, 11, 67, 16, 4);
INSERT INTO `detail_bahan_produksi` VALUES (29, 4, 11, NULL, NULL, NULL);
INSERT INTO `detail_bahan_produksi` VALUES (30, NULL, 11, 64, 8, 4);
INSERT INTO `detail_bahan_produksi` VALUES (31, NULL, 11, 63, 4, 5);
INSERT INTO `detail_bahan_produksi` VALUES (32, NULL, 12, 66, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (33, 1, 12, NULL, NULL, NULL);
INSERT INTO `detail_bahan_produksi` VALUES (34, NULL, 12, 65, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (35, 2, 13, 67, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (36, 2, 14, 60, 10, 4);
INSERT INTO `detail_bahan_produksi` VALUES (37, NULL, 14, 67, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (38, 3, 14, NULL, NULL, NULL);
INSERT INTO `detail_bahan_produksi` VALUES (39, NULL, 14, 66, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (40, NULL, 14, 65, 9, 4);
INSERT INTO `detail_bahan_produksi` VALUES (43, 2, 15, 59, 11, 4);
INSERT INTO `detail_bahan_produksi` VALUES (46, 5, 15, 66, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (47, 5, 15, 65, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (48, 1, 16, 59, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (49, 1, 17, 59, 50, 4);
INSERT INTO `detail_bahan_produksi` VALUES (50, 1, 17, 64, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (51, 20, 22, 59, 10, 3);
INSERT INTO `detail_bahan_produksi` VALUES (52, 22, 23, 64, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (53, 1, 24, 63, 4, 3);
INSERT INTO `detail_bahan_produksi` VALUES (54, 22, 25, 63, 5, 3);
INSERT INTO `detail_bahan_produksi` VALUES (55, 22, 26, 73, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (56, 22, 27, 73, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (57, 22, 28, 73, 1, 6);
INSERT INTO `detail_bahan_produksi` VALUES (58, 22, 29, 73, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (59, 22, 30, 73, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (60, 23, 31, 73, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (61, 23, 31, 71, 1, 5);
INSERT INTO `detail_bahan_produksi` VALUES (62, 1, 32, 66, 500, 4);
INSERT INTO `detail_bahan_produksi` VALUES (63, 1, 32, 65, 300, 4);
INSERT INTO `detail_bahan_produksi` VALUES (64, 1, 34, 145, 100, 6);
INSERT INTO `detail_bahan_produksi` VALUES (65, 1, 35, 66, 5, 4);
INSERT INTO `detail_bahan_produksi` VALUES (66, 1, 35, 65, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (67, 3, 35, 67, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (68, 3, 35, 66, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (69, 3, 35, 65, 6, 4);
INSERT INTO `detail_bahan_produksi` VALUES (70, 4, 35, 67, 12, 4);
INSERT INTO `detail_bahan_produksi` VALUES (71, 4, 35, 64, 6, 4);
INSERT INTO `detail_bahan_produksi` VALUES (72, 4, 35, 63, 3, 5);
INSERT INTO `detail_bahan_produksi` VALUES (73, 5, 35, 66, 2, 4);
INSERT INTO `detail_bahan_produksi` VALUES (74, 5, 35, 65, 3, 4);
INSERT INTO `detail_bahan_produksi` VALUES (75, 1, 36, 58, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (76, 1, 37, 128, 2, 3);
INSERT INTO `detail_bahan_produksi` VALUES (77, 1, 37, 94, 4, 4);
INSERT INTO `detail_bahan_produksi` VALUES (78, 1, 37, 58, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (79, 2, 37, 128, 1, 3);
INSERT INTO `detail_bahan_produksi` VALUES (80, 2, 37, 127, 1, 4);
INSERT INTO `detail_bahan_produksi` VALUES (81, 41, 38, 63, 3, 5);
INSERT INTO `detail_bahan_produksi` VALUES (82, 42, 38, 90, 1, 4);

-- ----------------------------
-- Table structure for detail_mutasi_bahan
-- ----------------------------
DROP TABLE IF EXISTS `detail_mutasi_bahan`;
CREATE TABLE `detail_mutasi_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mutasi_bahan_id` int(11) NULL DEFAULT NULL,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `satuan_beli_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_mutasi_bahan
-- ----------------------------
INSERT INTO `detail_mutasi_bahan` VALUES (1, 2, 144, 60, 1);
INSERT INTO `detail_mutasi_bahan` VALUES (2, 2, 92, 6, 4);
INSERT INTO `detail_mutasi_bahan` VALUES (3, 2, 143, 3, 3);
INSERT INTO `detail_mutasi_bahan` VALUES (4, 2, 94, 4, 4);
INSERT INTO `detail_mutasi_bahan` VALUES (5, 2, 92, 6, 4);
INSERT INTO `detail_mutasi_bahan` VALUES (6, 3, 68, 1, 4);
INSERT INTO `detail_mutasi_bahan` VALUES (7, 4, 146, 10, 4);

-- ----------------------------
-- Table structure for detail_pb_pt
-- ----------------------------
DROP TABLE IF EXISTS `detail_pb_pt`;
CREATE TABLE `detail_pb_pt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pb_id` int(11) NULL DEFAULT NULL,
  `pt_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_pb_pt
-- ----------------------------
INSERT INTO `detail_pb_pt` VALUES (1, 10, 1);
INSERT INTO `detail_pb_pt` VALUES (2, 11, 1);
INSERT INTO `detail_pb_pt` VALUES (3, 12, 2);
INSERT INTO `detail_pb_pt` VALUES (4, 14, 3);
INSERT INTO `detail_pb_pt` VALUES (5, 15, 3);
INSERT INTO `detail_pb_pt` VALUES (6, 16, 4);
INSERT INTO `detail_pb_pt` VALUES (7, 17, 4);
INSERT INTO `detail_pb_pt` VALUES (8, 18, 5);
INSERT INTO `detail_pb_pt` VALUES (9, 19, 5);
INSERT INTO `detail_pb_pt` VALUES (10, 23, 6);
INSERT INTO `detail_pb_pt` VALUES (11, 22, 7);
INSERT INTO `detail_pb_pt` VALUES (12, 23, 8);
INSERT INTO `detail_pb_pt` VALUES (13, 24, 9);
INSERT INTO `detail_pb_pt` VALUES (14, 25, 10);
INSERT INTO `detail_pb_pt` VALUES (15, 32, 11);
INSERT INTO `detail_pb_pt` VALUES (16, 38, 12);
INSERT INTO `detail_pb_pt` VALUES (17, 39, 13);
INSERT INTO `detail_pb_pt` VALUES (18, 40, 14);
INSERT INTO `detail_pb_pt` VALUES (19, 43, 15);

-- ----------------------------
-- Table structure for detail_pemasukan_lain
-- ----------------------------
DROP TABLE IF EXISTS `detail_pemasukan_lain`;
CREATE TABLE `detail_pemasukan_lain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemasukanlain_id` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jumlah` double(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_pemasukan_lain
-- ----------------------------
INSERT INTO `detail_pemasukan_lain` VALUES (3, 2, 'TV', 500000.00);
INSERT INTO `detail_pemasukan_lain` VALUES (4, 2, 'Kabel', 50000.00);
INSERT INTO `detail_pemasukan_lain` VALUES (5, 3, 'Kayu Bekas', 500000.00);
INSERT INTO `detail_pemasukan_lain` VALUES (6, 3, 'Kursi Bekas', 250000.00);
INSERT INTO `detail_pemasukan_lain` VALUES (7, 4, 'Besi', 500000.00);

-- ----------------------------
-- Table structure for detail_pembayaran_sales_order
-- ----------------------------
DROP TABLE IF EXISTS `detail_pembayaran_sales_order`;
CREATE TABLE `detail_pembayaran_sales_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pembayaran_sales_order_id` int(11) NULL DEFAULT NULL,
  `metode_pembayaran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bank_id` int(11) NULL DEFAULT NULL,
  `jumlah` decimal(20, 0) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_pembayaran_sales_order
-- ----------------------------
INSERT INTO `detail_pembayaran_sales_order` VALUES (1, 2, 'TUNAI', 0, 500000, 'dp');
INSERT INTO `detail_pembayaran_sales_order` VALUES (2, 2, 'TRANSFER', 1, 100000, 'dp bank');
INSERT INTO `detail_pembayaran_sales_order` VALUES (3, 4, 'TUNAI', 0, 100000, 'dp');
INSERT INTO `detail_pembayaran_sales_order` VALUES (4, 4, 'TRANSFER', 1, 200000, 'dp');
INSERT INTO `detail_pembayaran_sales_order` VALUES (5, 5, 'TUNAI', 0, 300000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (6, 5, 'TRANSFER', 3, 300000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (7, 6, 'TUNAI', 0, 50000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (8, 7, 'TUNAI', 0, 500000, 'bayar');
INSERT INTO `detail_pembayaran_sales_order` VALUES (9, 8, 'TUNAI', 0, 220000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (10, 9, 'TUNAI', 0, 200000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (11, 10, 'TUNAI', 0, 500000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (12, 11, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (13, 12, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (18, 15, 'TUNAI', 0, 50000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (19, 15, 'TUNAI', 0, 25000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (20, 16, 'TUNAI', 0, 500000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (21, 17, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (22, 18, 'TUNAI', 0, 200000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (23, 19, 'TRANSFER', 0, 6500000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (24, 20, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (25, 21, 'TRANSFER', 2, 400000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (26, NULL, 'TUNAI', 0, 10000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (27, NULL, 'TUNAI', 0, 10000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (28, 24, 'TUNAI', 0, 10000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (29, 25, 'TUNAI', 0, 300000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (30, 26, 'TRANSFER', 1, 1000000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (31, 27, 'TUNAI', 0, 120000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (32, NULL, 'TUNAI', 0, 500000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (33, NULL, 'TUNAI', 0, 400000, 'Pembayaran kedua');
INSERT INTO `detail_pembayaran_sales_order` VALUES (34, 30, 'TUNAI', 0, 50000, 'DP1');
INSERT INTO `detail_pembayaran_sales_order` VALUES (35, 30, 'TRANSFER', 1, 50000, 'DP1 dengan Bank');
INSERT INTO `detail_pembayaran_sales_order` VALUES (36, 31, 'TUNAI', 0, 50000, 'DP 2');
INSERT INTO `detail_pembayaran_sales_order` VALUES (37, 32, 'TUNAI', 0, 25000, 'DP 2');
INSERT INTO `detail_pembayaran_sales_order` VALUES (38, 33, 'TUNAI', 0, 75000, 'Lunas');
INSERT INTO `detail_pembayaran_sales_order` VALUES (39, 34, 'TRANSFER', 1, 120000, 'dfdf');
INSERT INTO `detail_pembayaran_sales_order` VALUES (40, 34, 'TRANSFER', 3, 130000, 'dfdf');
INSERT INTO `detail_pembayaran_sales_order` VALUES (41, 34, 'TUNAI', 0, 500000, 'asd');
INSERT INTO `detail_pembayaran_sales_order` VALUES (42, 34, 'TRANSFER', 2, 200000, 'asd444');
INSERT INTO `detail_pembayaran_sales_order` VALUES (59, 34, 'TUNAI', 0, 50000, 'sad');
INSERT INTO `detail_pembayaran_sales_order` VALUES (80, 34, 'TUNAI', 0, 12500, 'asddd');
INSERT INTO `detail_pembayaran_sales_order` VALUES (136, 34, 'TRANSFER', 1, 12000, 'ds');
INSERT INTO `detail_pembayaran_sales_order` VALUES (137, 34, 'TUNAI', 0, 50000, 'tes');
INSERT INTO `detail_pembayaran_sales_order` VALUES (138, 35, 'TUNAI', 0, 9157500, 'Lunas');
INSERT INTO `detail_pembayaran_sales_order` VALUES (139, 36, 'TUNAI', 0, 1498500, 'Lunas');
INSERT INTO `detail_pembayaran_sales_order` VALUES (140, 37, 'TUNAI', 0, 444000, '');
INSERT INTO `detail_pembayaran_sales_order` VALUES (141, 38, 'TRANSFER', 1, 775000, 'DP TUNAI');
INSERT INTO `detail_pembayaran_sales_order` VALUES (142, 38, 'TUNAI', 0, 1000000, 'DP TUNAI 2');
INSERT INTO `detail_pembayaran_sales_order` VALUES (143, 38, 'TUNAI', 0, 1000000, 'DP TUNAI 3');
INSERT INTO `detail_pembayaran_sales_order` VALUES (144, 39, 'TUNAI', 0, 50000, 'DP');
INSERT INTO `detail_pembayaran_sales_order` VALUES (145, 40, 'TUNAI', 0, 500000, 'dp');
INSERT INTO `detail_pembayaran_sales_order` VALUES (146, 41, 'TUNAI', 0, 2000000, 'DP');

-- ----------------------------
-- Table structure for detail_pembayaran_tagihan
-- ----------------------------
DROP TABLE IF EXISTS `detail_pembayaran_tagihan`;
CREATE TABLE `detail_pembayaran_tagihan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pembayaran_tagihan_id` int(11) NULL DEFAULT NULL,
  `metode_pembayaran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bank_id` int(11) NULL DEFAULT NULL,
  `jumlah` decimal(20, 0) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_pembayaran_tagihan
-- ----------------------------
INSERT INTO `detail_pembayaran_tagihan` VALUES (1, 1, 'TUNAI', 0, 1250000, '-');
INSERT INTO `detail_pembayaran_tagihan` VALUES (2, 1, 'TRANSFER', 1, 12500000, 'DP');
INSERT INTO `detail_pembayaran_tagihan` VALUES (3, 2, 'TUNAI', 0, 1250000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (4, 3, 'TUNAI', 0, 2000000, '-');
INSERT INTO `detail_pembayaran_tagihan` VALUES (5, 4, 'TUNAI', 0, 50000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (6, 5, 'TUNAI', 0, 300000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (7, 5, 'TRANSFER', 1, 50000, 'asd');
INSERT INTO `detail_pembayaran_tagihan` VALUES (8, 5, 'TUNAI', 0, 50000, 'tes');
INSERT INTO `detail_pembayaran_tagihan` VALUES (9, 6, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (10, 7, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (11, 8, 'TUNAI', 0, 100000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (12, 9, 'TUNAI', 0, 162500, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (13, 10, 'TUNAI', 0, 225000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (14, 11, 'TUNAI', 0, 3500000, 'tunai');
INSERT INTO `detail_pembayaran_tagihan` VALUES (15, 12, 'TUNAI', 0, 220000, '');
INSERT INTO `detail_pembayaran_tagihan` VALUES (16, 14, 'TUNAI', 0, 15000000, 'Lunas');
INSERT INTO `detail_pembayaran_tagihan` VALUES (17, 15, 'TUNAI', 0, 2000000, 'Lunas');

-- ----------------------------
-- Table structure for detail_penerimaan_barang
-- ----------------------------
DROP TABLE IF EXISTS `detail_penerimaan_barang`;
CREATE TABLE `detail_penerimaan_barang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `penerimaan_barang_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `qty_pesan` int(11) NULL DEFAULT NULL,
  `qty_terima` int(11) NULL DEFAULT NULL,
  `satuan_beli_id` int(11) NULL DEFAULT NULL,
  `harga_satuan` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_penerimaan_barang
-- ----------------------------
INSERT INTO `detail_penerimaan_barang` VALUES (5, 3, 58, 1, 1, 1, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (6, 3, 59, 1, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (7, 4, 62, 5, 5, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (8, 4, 66, 1, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (9, 5, 62, 5, 5, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (10, 5, 66, 1, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (11, 5, 62, 5, 5, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (12, 5, 66, 1, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (22, 10, 66, 10, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (23, 10, 65, 5, 2, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (24, 10, 64, 50, 3, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (25, 11, 66, 10, 2, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (26, 11, 65, 5, 2, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (27, 11, 64, 50, 2, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (28, 12, 66, 3, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (29, 12, 65, 2, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (30, 12, 63, 3, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (31, 12, 62, 50, 1, 3, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (32, 13, 66, 2, 1, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (33, 13, 65, 5, 1, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (34, 13, 66, 2, 1, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (35, 14, 66, 10, 2, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (36, 14, 65, 10, 3, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (37, 15, 66, 10, 8, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (38, 15, 65, 10, 7, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (39, 16, 66, 50, 30, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (40, 17, 66, 50, 20, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (41, 18, 65, 5, 3, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (42, 19, 65, 5, 2, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (43, 20, 66, 1, 1, 4, NULL, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (47, 22, 66, 5, 1, 4, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (48, 22, 64, 10, 1, 4, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (49, 22, 63, 5, 1, 5, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (50, 23, 66, 5, 2, 4, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (51, 23, 64, 10, 2, 4, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (52, 23, 63, 5, 2, 5, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (53, 24, 66, 10, 10, 4, 10000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (54, 24, 65, 5, 5, 4, 12500.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (55, 25, 66, 5, 3, 4, 50000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (56, 25, 65, 10, 3, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (57, 26, 67, 2, 2, 3, 300000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (58, 27, 68, 1, 1, 4, 100.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (62, 28, 68, 100, 100, 4, 100.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (63, 28, 67, 5, 5, 3, 52000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (64, 28, 65, 500, 500, 4, 20000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (65, 32, 68, 100, 100, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (66, 32, 67, 4, 4, 4, 250000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (67, 33, 67, 1, 1, 4, 500000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (68, 33, 68, 2, 2, 4, 250000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (69, 34, 68, 3, 3, 4, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (70, 34, 67, 2, 2, 4, 250000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (71, 35, 68, 4, 3, 4, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (72, 36, 68, 1, 1, 4, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (73, 36, 67, 5, 5, 4, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (74, 37, 72, 4, 4, 1, 50000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (75, 37, 71, 2, 2, 3, 200000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (76, 38, 72, 2, 1, 1, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (77, 38, 71, 3, 1, 3, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (78, 39, 72, 2, 1, 1, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (79, 39, 71, 3, 2, 3, 100000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (80, 40, 127, 100, 100, 4, 150000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (81, 41, 145, 50, 50, 6, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (82, 42, 145, 10, 10, 6, 10000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (83, 42, 80, 4, 4, 4, 20000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (84, 42, 128, 5, 5, 3, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (85, 42, 127, 100, 100, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (86, 42, 125, 10, 10, 4, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (87, 42, 122, 25, 25, 4, 50000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (88, 42, 120, 10, 10, 4, 20000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (89, 42, 144, 1, 1, 1, 20000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (90, 42, 143, 1, 1, 3, 10000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (91, 42, 65, 4, 4, 4, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (92, 42, 94, 1, 1, 4, 21000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (93, 42, 93, 2, 2, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (94, 42, 92, 1, 1, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (95, 42, 92, 1, 1, 4, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (96, 42, 91, 1, 1, 4, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (97, 42, 90, 1, 1, 4, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (98, 42, 68, 1, 1, 4, 15000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (99, 42, 63, 1, 1, 5, 25000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (100, 42, 58, 1, 1, 1, 36000.00, NULL);
INSERT INTO `detail_penerimaan_barang` VALUES (101, 43, 146, 100, 100, 3, 20000.00, NULL);

-- ----------------------------
-- Table structure for detail_penyesuaian_stok
-- ----------------------------
DROP TABLE IF EXISTS `detail_penyesuaian_stok`;
CREATE TABLE `detail_penyesuaian_stok`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `stok_awal` int(11) NULL DEFAULT NULL,
  `stok_akhir` int(11) NULL DEFAULT NULL,
  `penyesuaian_stok_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_penyesuaian_stok
-- ----------------------------
INSERT INTO `detail_penyesuaian_stok` VALUES (2, 67, 19, 20, 2);
INSERT INTO `detail_penyesuaian_stok` VALUES (3, 68, 314, 300, 2);
INSERT INTO `detail_penyesuaian_stok` VALUES (4, 71, 0, 10, 3);
INSERT INTO `detail_penyesuaian_stok` VALUES (5, 69, 0, 20, 3);
INSERT INTO `detail_penyesuaian_stok` VALUES (6, 68, 314, 320, 3);
INSERT INTO `detail_penyesuaian_stok` VALUES (7, 67, 19, 20, 3);
INSERT INTO `detail_penyesuaian_stok` VALUES (8, 70, 0, 4, 3);
INSERT INTO `detail_penyesuaian_stok` VALUES (9, 128, 10, 10, 4);

-- ----------------------------
-- Table structure for detail_produksi_produk
-- ----------------------------
DROP TABLE IF EXISTS `detail_produksi_produk`;
CREATE TABLE `detail_produksi_produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NULL DEFAULT NULL,
  `produksi_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produksi_id`(`produksi_id`) USING BTREE,
  CONSTRAINT `detail_produksi_produk_ibfk_1` FOREIGN KEY (`produksi_id`) REFERENCES `produksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_produksi_produk
-- ----------------------------
INSERT INTO `detail_produksi_produk` VALUES (1, 1, 1, 1);
INSERT INTO `detail_produksi_produk` VALUES (2, 3, 1, 2);
INSERT INTO `detail_produksi_produk` VALUES (3, 10, 2, 1);
INSERT INTO `detail_produksi_produk` VALUES (4, 11, 2, 2);
INSERT INTO `detail_produksi_produk` VALUES (5, 1, 3, 1);
INSERT INTO `detail_produksi_produk` VALUES (6, 2, 3, 2);
INSERT INTO `detail_produksi_produk` VALUES (7, 12, 4, 2);
INSERT INTO `detail_produksi_produk` VALUES (8, 13, 5, 1);
INSERT INTO `detail_produksi_produk` VALUES (9, 14, 5, 1);
INSERT INTO `detail_produksi_produk` VALUES (10, 15, 6, 1);
INSERT INTO `detail_produksi_produk` VALUES (11, 16, 7, 1);
INSERT INTO `detail_produksi_produk` VALUES (12, 1, 8, 1);
INSERT INTO `detail_produksi_produk` VALUES (13, 3, 8, 2);
INSERT INTO `detail_produksi_produk` VALUES (14, 5, 9, 2);
INSERT INTO `detail_produksi_produk` VALUES (15, 17, 10, 1);
INSERT INTO `detail_produksi_produk` VALUES (16, 4, 11, 4);
INSERT INTO `detail_produksi_produk` VALUES (17, 1, 12, 1);
INSERT INTO `detail_produksi_produk` VALUES (18, 2, 13, 1);
INSERT INTO `detail_produksi_produk` VALUES (19, 2, 14, 3);
INSERT INTO `detail_produksi_produk` VALUES (20, 3, 14, 3);
INSERT INTO `detail_produksi_produk` VALUES (22, 2, 15, 2);
INSERT INTO `detail_produksi_produk` VALUES (23, 5, 15, 1);
INSERT INTO `detail_produksi_produk` VALUES (24, 1, 16, 1);
INSERT INTO `detail_produksi_produk` VALUES (25, 1, 17, 4);
INSERT INTO `detail_produksi_produk` VALUES (26, 1, 17, 4);
INSERT INTO `detail_produksi_produk` VALUES (27, 1, 17, 4);
INSERT INTO `detail_produksi_produk` VALUES (28, 18, 20, 3);
INSERT INTO `detail_produksi_produk` VALUES (29, 19, 21, 3);
INSERT INTO `detail_produksi_produk` VALUES (30, 20, 22, 5);
INSERT INTO `detail_produksi_produk` VALUES (31, 22, 23, 5);
INSERT INTO `detail_produksi_produk` VALUES (32, 1, 24, 1);
INSERT INTO `detail_produksi_produk` VALUES (33, 22, 25, 5);
INSERT INTO `detail_produksi_produk` VALUES (34, 22, 26, 5);
INSERT INTO `detail_produksi_produk` VALUES (35, 22, 27, 1);
INSERT INTO `detail_produksi_produk` VALUES (36, 22, 28, 1);
INSERT INTO `detail_produksi_produk` VALUES (37, 22, 29, 5);
INSERT INTO `detail_produksi_produk` VALUES (38, 22, 30, 10);
INSERT INTO `detail_produksi_produk` VALUES (39, 23, 31, 2);
INSERT INTO `detail_produksi_produk` VALUES (40, 1, 32, 100);
INSERT INTO `detail_produksi_produk` VALUES (41, 2, 33, 100);
INSERT INTO `detail_produksi_produk` VALUES (42, 2, 33, 100);
INSERT INTO `detail_produksi_produk` VALUES (43, 1, 33, 100);
INSERT INTO `detail_produksi_produk` VALUES (44, 1, 34, 1);
INSERT INTO `detail_produksi_produk` VALUES (45, 1, 35, 1);
INSERT INTO `detail_produksi_produk` VALUES (46, 3, 35, 2);
INSERT INTO `detail_produksi_produk` VALUES (47, 4, 35, 3);
INSERT INTO `detail_produksi_produk` VALUES (48, 5, 35, 1);
INSERT INTO `detail_produksi_produk` VALUES (49, 1, 36, 5);
INSERT INTO `detail_produksi_produk` VALUES (50, 1, 37, 1);
INSERT INTO `detail_produksi_produk` VALUES (51, 2, 37, 1);
INSERT INTO `detail_produksi_produk` VALUES (52, 41, 38, 5);
INSERT INTO `detail_produksi_produk` VALUES (53, 42, 38, 2);

-- ----------------------------
-- Table structure for detail_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `detail_purchase_order`;
CREATE TABLE `detail_purchase_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `satuan_beli_id` int(11) NULL DEFAULT NULL,
  `harga` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_purchase_order
-- ----------------------------
INSERT INTO `detail_purchase_order` VALUES (1, 4, 59, 1, 3, 1.00, 1, 990000.00);
INSERT INTO `detail_purchase_order` VALUES (2, 5, 59, 1, 3, 1.00, 1, 990000.00);
INSERT INTO `detail_purchase_order` VALUES (3, 5, 58, 1, 1, 2.00, 2, 1960000.00);
INSERT INTO `detail_purchase_order` VALUES (4, 6, 58, 1, 1, 1.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (5, 6, 59, 1, 4, 50.00, 0, 50000.00);
INSERT INTO `detail_purchase_order` VALUES (6, 7, 58, 1, 1, 1.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (7, 7, 59, 1, 3, 500.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (8, 8, 58, 1, 1, 1000000.00, 1, 990000.00);
INSERT INTO `detail_purchase_order` VALUES (9, 8, 59, 1, 3, 2000000.00, 1, 1980000.00);
INSERT INTO `detail_purchase_order` VALUES (10, 9, 63, 1, 3, 250000.00, 0, 250000.00);
INSERT INTO `detail_purchase_order` VALUES (11, 9, 64, 1, 3, 500000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (12, 9, 65, 1, 3, 500000.00, 1, 495000.00);
INSERT INTO `detail_purchase_order` VALUES (13, 9, 58, 1, 1, 2000000.00, 0, 2000000.00);
INSERT INTO `detail_purchase_order` VALUES (14, 9, 59, 1, 3, 200000.00, 0, 200000.00);
INSERT INTO `detail_purchase_order` VALUES (15, 10, 58, 5, 1, 1000000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (16, 10, 63, 4, 3, 1000000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (17, 10, 59, 5, 3, 2000000.00, 0, 2000000.00);
INSERT INTO `detail_purchase_order` VALUES (18, 10, 64, 3, 3, 2000000.00, 0, 2000000.00);
INSERT INTO `detail_purchase_order` VALUES (19, 11, 62, 5, 3, 100000.00, 0, 100000.00);
INSERT INTO `detail_purchase_order` VALUES (20, 11, 66, 1, 3, 500000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (21, 12, 63, 5, 3, 1000000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (22, 12, 59, 5, 3, 2000000.00, 2, 1960000.00);
INSERT INTO `detail_purchase_order` VALUES (23, 13, 66, 10, 3, 150000.00, 0, 1500000.00);
INSERT INTO `detail_purchase_order` VALUES (24, 13, 65, 5, 3, 100000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (25, 13, 64, 50, 3, 50000.00, 0, 2500000.00);
INSERT INTO `detail_purchase_order` VALUES (26, 14, 66, 3, 3, 1000000.00, 0, 3000000.00);
INSERT INTO `detail_purchase_order` VALUES (27, 14, 65, 2, 3, 100000.00, 0, 200000.00);
INSERT INTO `detail_purchase_order` VALUES (28, 14, 63, 3, 3, 100000.00, 0, 300000.00);
INSERT INTO `detail_purchase_order` VALUES (29, 14, 62, 50, 3, 200000.00, 0, 10000000.00);
INSERT INTO `detail_purchase_order` VALUES (33, 16, 66, 10, 4, 0.00, 0, 0.00);
INSERT INTO `detail_purchase_order` VALUES (34, 16, 65, 10, 4, 200000.00, 0, 2000000.00);
INSERT INTO `detail_purchase_order` VALUES (35, 17, 66, 1, 4, 12000.00, 0, 12000.00);
INSERT INTO `detail_purchase_order` VALUES (36, 18, 66, 50, 4, 1000.00, 0, 50000.00);
INSERT INTO `detail_purchase_order` VALUES (47, 19, 65, 5, 4, 100000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (48, 20, 66, 1, 4, 10000.00, 0, 10000.00);
INSERT INTO `detail_purchase_order` VALUES (49, 21, 63, 4, 5, 200000.00, 0, 800000.00);
INSERT INTO `detail_purchase_order` VALUES (50, 22, 66, 5, 4, 200000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (51, 22, 64, 10, 4, 100000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (52, 22, 63, 5, 5, 200000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (53, 23, 66, 10, 4, 10000.00, 0, 100000.00);
INSERT INTO `detail_purchase_order` VALUES (54, 23, 65, 5, 4, 12500.00, 0, 62500.00);
INSERT INTO `detail_purchase_order` VALUES (55, 24, 66, 5, 4, 50000.00, 0, 250000.00);
INSERT INTO `detail_purchase_order` VALUES (56, 24, 65, 10, 4, 25000.00, 0, 250000.00);
INSERT INTO `detail_purchase_order` VALUES (57, 25, 67, 2, 3, 300000.00, 5, 570000.00);
INSERT INTO `detail_purchase_order` VALUES (58, 26, 68, 1, 4, 100.00, 0, 100.00);
INSERT INTO `detail_purchase_order` VALUES (59, 27, 68, 100, 4, 100.00, 0, 10000.00);
INSERT INTO `detail_purchase_order` VALUES (60, 27, 67, 5, 3, 52000.00, 0, 260000.00);
INSERT INTO `detail_purchase_order` VALUES (61, 27, 65, 500, 4, 20000.00, 0, 10000000.00);
INSERT INTO `detail_purchase_order` VALUES (62, 28, 68, 100, 4, 25000.00, 0, 2500000.00);
INSERT INTO `detail_purchase_order` VALUES (63, 28, 67, 4, 4, 250000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (64, 29, 67, 1, 4, 500000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (68, 31, 67, 2, 4, 250000.00, 0, 500000.00);
INSERT INTO `detail_purchase_order` VALUES (69, 32, 68, 4, 4, 200000.00, 0, 800000.00);
INSERT INTO `detail_purchase_order` VALUES (70, 33, 68, 1, 4, 100000.00, 0, 100000.00);
INSERT INTO `detail_purchase_order` VALUES (71, 33, 67, 5, 4, 200000.00, 0, 1000000.00);
INSERT INTO `detail_purchase_order` VALUES (72, 34, 72, 4, 1, 50000.00, 0, 200000.00);
INSERT INTO `detail_purchase_order` VALUES (73, 34, 71, 2, 3, 200000.00, 2, 392000.00);
INSERT INTO `detail_purchase_order` VALUES (74, 35, 72, 1, 1, 100000.00, 20, 80000.00);
INSERT INTO `detail_purchase_order` VALUES (75, 35, 70, 1, 5, 100000.00, 0, 100000.00);
INSERT INTO `detail_purchase_order` VALUES (76, 36, 72, 2, 1, 100000.00, 0, 200000.00);
INSERT INTO `detail_purchase_order` VALUES (77, 36, 71, 3, 3, 100000.00, 0, 300000.00);
INSERT INTO `detail_purchase_order` VALUES (78, 37, 127, 100, 4, 150000.00, 0, 15000000.00);
INSERT INTO `detail_purchase_order` VALUES (79, 38, 127, 100, 4, 150000.00, 0, 15000000.00);
INSERT INTO `detail_purchase_order` VALUES (80, 39, 61, 2, 4, 700000.00, 0, 1400000.00);
INSERT INTO `detail_purchase_order` VALUES (81, 40, 145, 50, 6, 15000.00, 0, 750000.00);
INSERT INTO `detail_purchase_order` VALUES (82, 41, 145, 10, 6, 10000.00, 0, 100000.00);
INSERT INTO `detail_purchase_order` VALUES (83, 41, 80, 4, 4, 20000.00, 0, 80000.00);
INSERT INTO `detail_purchase_order` VALUES (84, 41, 128, 5, 3, 15000.00, 0, 75000.00);
INSERT INTO `detail_purchase_order` VALUES (85, 41, 127, 100, 4, 25000.00, 0, 2500000.00);
INSERT INTO `detail_purchase_order` VALUES (86, 41, 125, 10, 4, 15000.00, 0, 150000.00);
INSERT INTO `detail_purchase_order` VALUES (87, 41, 122, 25, 4, 50000.00, 0, 1250000.00);
INSERT INTO `detail_purchase_order` VALUES (88, 41, 120, 10, 4, 20000.00, 0, 200000.00);
INSERT INTO `detail_purchase_order` VALUES (89, 41, 144, 1, 1, 20000.00, 0, 20000.00);
INSERT INTO `detail_purchase_order` VALUES (90, 41, 143, 1, 3, 10000.00, 0, 10000.00);
INSERT INTO `detail_purchase_order` VALUES (91, 41, 65, 4, 4, 15000.00, 0, 60000.00);
INSERT INTO `detail_purchase_order` VALUES (92, 41, 94, 1, 4, 21000.00, 0, 21000.00);
INSERT INTO `detail_purchase_order` VALUES (93, 41, 93, 2, 4, 25000.00, 0, 50000.00);
INSERT INTO `detail_purchase_order` VALUES (94, 41, 92, 1, 4, 25000.00, 0, 25000.00);
INSERT INTO `detail_purchase_order` VALUES (95, 41, 92, 1, 4, 25000.00, 0, 25000.00);
INSERT INTO `detail_purchase_order` VALUES (96, 41, 91, 1, 4, 15000.00, 0, 15000.00);
INSERT INTO `detail_purchase_order` VALUES (97, 41, 90, 1, 4, 15000.00, 0, 15000.00);
INSERT INTO `detail_purchase_order` VALUES (98, 41, 68, 1, 4, 15000.00, 0, 15000.00);
INSERT INTO `detail_purchase_order` VALUES (99, 41, 63, 1, 5, 25000.00, 0, 25000.00);
INSERT INTO `detail_purchase_order` VALUES (100, 41, 58, 1, 1, 36000.00, 0, 36000.00);
INSERT INTO `detail_purchase_order` VALUES (101, 42, 146, 100, 3, 20000.00, 0, 2000000.00);

-- ----------------------------
-- Table structure for detail_sales_order
-- ----------------------------
DROP TABLE IF EXISTS `detail_sales_order`;
CREATE TABLE `detail_sales_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sales_order_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `produk_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `harga` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(20, 2) NULL DEFAULT NULL,
  `status_produksi` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_sales_order
-- ----------------------------
INSERT INTO `detail_sales_order` VALUES (1, 2, 3, 1, 200000.00, 1, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (2, 2, 2, 1, 100000.00, 1, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (3, 3, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (4, 3, 5, 4, 400000.00, 1, 1596000.00, 0);
INSERT INTO `detail_sales_order` VALUES (5, 4, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (6, 4, 3, 3, 200000.00, 0, 600000.00, 0);
INSERT INTO `detail_sales_order` VALUES (7, 4, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (8, 4, 3, 3, 200000.00, 0, 600000.00, 0);
INSERT INTO `detail_sales_order` VALUES (9, 4, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (10, 4, 3, 3, 200000.00, 0, 600000.00, 0);
INSERT INTO `detail_sales_order` VALUES (11, 7, 4, 3, 300000.00, 1, 897000.00, 0);
INSERT INTO `detail_sales_order` VALUES (12, 8, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (13, 8, 4, 3, 300000.00, 0, 900000.00, 0);
INSERT INTO `detail_sales_order` VALUES (14, 9, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (15, 10, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (16, 10, 10, 1, 200000.00, 0, 200000.00, 1);
INSERT INTO `detail_sales_order` VALUES (17, 10, 11, 2, 100000.00, 0, 200000.00, 1);
INSERT INTO `detail_sales_order` VALUES (18, 11, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (19, 11, 12, 2, 200000.00, 0, 400000.00, 1);
INSERT INTO `detail_sales_order` VALUES (20, 12, 13, 1, 1200000.00, 0, 1200000.00, 1);
INSERT INTO `detail_sales_order` VALUES (21, 12, 14, 1, 1500000.00, 0, 1500000.00, 1);
INSERT INTO `detail_sales_order` VALUES (22, 13, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (23, 14, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (24, 14, 15, 1, 800000.00, 0, 800000.00, 1);
INSERT INTO `detail_sales_order` VALUES (25, 15, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (26, 16, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (27, 16, 16, 1, 1000000.00, 0, 1000000.00, 1);
INSERT INTO `detail_sales_order` VALUES (28, 17, 1, 2, 200000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (29, 17, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (30, 18, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (31, 19, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (32, 20, 1, 4, 200000.00, 0, 800000.00, 0);
INSERT INTO `detail_sales_order` VALUES (33, 20, 2, 7, 100000.00, 0, 700000.00, 0);
INSERT INTO `detail_sales_order` VALUES (34, 21, 1, 3, 200000.00, 0, 600000.00, 0);
INSERT INTO `detail_sales_order` VALUES (35, 21, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (36, 22, 17, 1, 800000.00, 0, 800000.00, 1);
INSERT INTO `detail_sales_order` VALUES (37, 23, 1, 21, 200000.00, 5, 4190000.00, 0);
INSERT INTO `detail_sales_order` VALUES (38, 23, 4, 5, 300000.00, 10, 1470000.00, 0);
INSERT INTO `detail_sales_order` VALUES (39, 24, 9, 1, 150000.00, 0, 150000.00, 0);
INSERT INTO `detail_sales_order` VALUES (40, 25, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (41, 25, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (42, 25, 3, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (43, 25, 4, 1, 300000.00, 0, 300000.00, 0);
INSERT INTO `detail_sales_order` VALUES (44, 25, 5, 1, 400000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (45, 26, 5, 1, 400000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (46, 27, 5, 3, 400000.00, 0, 1200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (47, 28, 5, 1, 400000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (48, 29, 2, 3, 100000.00, 0, 300000.00, 0);
INSERT INTO `detail_sales_order` VALUES (49, 29, 3, 2, 200000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (50, 29, 4, 3, 300000.00, 0, 900000.00, 0);
INSERT INTO `detail_sales_order` VALUES (51, 30, 1, 2, 200000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (52, 30, 2, 3, 100000.00, 0, 300000.00, 0);
INSERT INTO `detail_sales_order` VALUES (53, 31, 1, NULL, 0.00, NULL, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (54, 32, 2, 5, 150000.00, 1, 748500.00, 0);
INSERT INTO `detail_sales_order` VALUES (56, 32, 4, 3, 300000.00, 10, 870000.00, 0);
INSERT INTO `detail_sales_order` VALUES (57, 33, 18, 3, 500000.00, 0, 1500000.00, 1);
INSERT INTO `detail_sales_order` VALUES (58, 32, 19, 3, 120000.00, 0, 360000.00, 1);
INSERT INTO `detail_sales_order` VALUES (59, 34, 20, 5, 250000.00, 0, 1250000.00, 1);
INSERT INTO `detail_sales_order` VALUES (60, 35, 2, 2, 100000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (61, 36, 22, 2, 1250000.00, 0, 2500000.00, 0);
INSERT INTO `detail_sales_order` VALUES (62, 37, 22, 5, 1250000.00, 0, 6250000.00, 0);
INSERT INTO `detail_sales_order` VALUES (63, 37, 23, 2, 1000000.00, 0, 2000000.00, 1);
INSERT INTO `detail_sales_order` VALUES (64, 38, 22, 1, 1250000.00, 0, 1250000.00, 0);
INSERT INTO `detail_sales_order` VALUES (65, 38, 2, 1, 100000.00, 0, 100000.00, 0);
INSERT INTO `detail_sales_order` VALUES (66, 39, 2, 4, 100000.00, 0, 400000.00, 0);
INSERT INTO `detail_sales_order` VALUES (67, 40, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (68, 41, 1, 5, 200000.00, 0, 1000000.00, 0);
INSERT INTO `detail_sales_order` VALUES (69, 42, 41, 5, 500000.00, 0, 2500000.00, 1);
INSERT INTO `detail_sales_order` VALUES (70, 42, 42, 2, 800000.00, 0, 1600000.00, 1);
INSERT INTO `detail_sales_order` VALUES (71, 43, 1, 1, 200000.00, 0, 200000.00, 0);
INSERT INTO `detail_sales_order` VALUES (72, 43, 2, 1, 100000.00, 10, 90000.00, 0);
INSERT INTO `detail_sales_order` VALUES (73, 44, 1, 5, 200000.00, 0, 1000000.00, 0);
INSERT INTO `detail_sales_order` VALUES (74, 44, 2, 5, 100000.00, 0, 500000.00, 0);

-- ----------------------------
-- Table structure for detail_surat_jalan
-- ----------------------------
DROP TABLE IF EXISTS `detail_surat_jalan`;
CREATE TABLE `detail_surat_jalan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `surat_jalan_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `produk_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `qty_kirim` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `surat_jalan_id`(`surat_jalan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_surat_jalan
-- ----------------------------
INSERT INTO `detail_surat_jalan` VALUES (1, 1, 3, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (2, 1, 2, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (3, 2, 2, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (4, 2, 5, 4, 2);
INSERT INTO `detail_surat_jalan` VALUES (5, 3, 1, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (6, 3, 4, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (7, 4, 1, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (8, 4, 16, 1, 0);
INSERT INTO `detail_surat_jalan` VALUES (9, 5, 1, 21, 21);
INSERT INTO `detail_surat_jalan` VALUES (10, 5, 4, 5, 5);
INSERT INTO `detail_surat_jalan` VALUES (11, 6, 1, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (12, 6, 2, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (13, 6, 3, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (14, 6, 4, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (15, 6, 5, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (16, 7, 3, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (49, 22, 1, 2, 1);
INSERT INTO `detail_surat_jalan` VALUES (50, 22, 2, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (51, 23, 20, 5, 3);
INSERT INTO `detail_surat_jalan` VALUES (53, 25, 20, 5, 2);
INSERT INTO `detail_surat_jalan` VALUES (54, 23, 22, 5, 5);
INSERT INTO `detail_surat_jalan` VALUES (55, 23, 23, 2, 2);
INSERT INTO `detail_surat_jalan` VALUES (56, 24, 22, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (57, 24, 2, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (58, 25, 2, 4, 4);
INSERT INTO `detail_surat_jalan` VALUES (59, 25, 2, 4, 4);
INSERT INTO `detail_surat_jalan` VALUES (60, 26, 22, 2, 2);
INSERT INTO `detail_surat_jalan` VALUES (61, 27, 41, 5, 2);
INSERT INTO `detail_surat_jalan` VALUES (62, 27, 42, 2, 1);
INSERT INTO `detail_surat_jalan` VALUES (65, 29, 1, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (66, 29, 2, 1, 1);
INSERT INTO `detail_surat_jalan` VALUES (67, 30, 1, 5, 1);
INSERT INTO `detail_surat_jalan` VALUES (68, 30, 2, 5, 2);
INSERT INTO `detail_surat_jalan` VALUES (71, 32, 1, 5, 4);
INSERT INTO `detail_surat_jalan` VALUES (72, 32, 2, 5, 3);
INSERT INTO `detail_surat_jalan` VALUES (73, 33, 1, 2, 1);
INSERT INTO `detail_surat_jalan` VALUES (74, 33, 2, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (75, 34, 1, 2, 0);
INSERT INTO `detail_surat_jalan` VALUES (76, 34, 2, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (77, 35, 1, 1, 0);
INSERT INTO `detail_surat_jalan` VALUES (78, 35, 4, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (79, 36, 1, 1, 0);
INSERT INTO `detail_surat_jalan` VALUES (80, 36, 4, 3, 1);
INSERT INTO `detail_surat_jalan` VALUES (81, 37, 1, 1, 1);

-- ----------------------------
-- Table structure for detail_template_produk
-- ----------------------------
DROP TABLE IF EXISTS `detail_template_produk`;
CREATE TABLE `detail_template_produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NULL DEFAULT NULL,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `satuan_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `template_produk_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `template_produk_id`(`template_produk_id`) USING BTREE,
  CONSTRAINT `detail_template_produk_ibfk_1` FOREIGN KEY (`template_produk_id`) REFERENCES `template_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_template_produk
-- ----------------------------
INSERT INTO `detail_template_produk` VALUES (3, 1, 66, 4, 5, 1);
INSERT INTO `detail_template_produk` VALUES (8, 1, 65, 4, 3, 1);
INSERT INTO `detail_template_produk` VALUES (9, 1, 66, 4, 5, 2);
INSERT INTO `detail_template_produk` VALUES (10, 1, 65, 4, 4, 2);
INSERT INTO `detail_template_produk` VALUES (11, 1, 66, 4, 3, 3);
INSERT INTO `detail_template_produk` VALUES (12, 5, 66, 4, 2, 4);
INSERT INTO `detail_template_produk` VALUES (13, 5, 65, 4, 3, 4);
INSERT INTO `detail_template_produk` VALUES (14, 4, 67, 4, 4, 5);
INSERT INTO `detail_template_produk` VALUES (15, 4, 64, 4, 2, 5);
INSERT INTO `detail_template_produk` VALUES (17, 4, 63, 5, 1, 5);
INSERT INTO `detail_template_produk` VALUES (18, 3, 67, 4, 1, 6);
INSERT INTO `detail_template_produk` VALUES (19, 3, 66, 4, 1, 6);
INSERT INTO `detail_template_produk` VALUES (20, 3, 65, 4, 3, 6);
INSERT INTO `detail_template_produk` VALUES (21, 22, 73, 4, 5, 7);
INSERT INTO `detail_template_produk` VALUES (22, 22, 71, 5, 5, 7);
INSERT INTO `detail_template_produk` VALUES (23, 2, 128, 3, 1, 8);
INSERT INTO `detail_template_produk` VALUES (24, 2, 127, 4, 1, 8);
INSERT INTO `detail_template_produk` VALUES (25, 1, 128, 3, 1, 9);
INSERT INTO `detail_template_produk` VALUES (26, 1, 94, 4, 4, 9);
INSERT INTO `detail_template_produk` VALUES (27, 1, 146, 4, 4, 10);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `groups_detail` VALUES (220, 4, 1, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (221, 4, 2, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (222, 4, 3, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (223, 4, 4, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (224, 4, 5, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (225, 4, 6, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (226, 4, 29, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (227, 4, 30, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (228, 4, 31, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (229, 4, 34, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (230, 4, 7, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (231, 4, 8, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (232, 4, 9, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (233, 4, 10, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (234, 4, 11, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (235, 4, 12, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (236, 4, 13, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (237, 4, 14, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (238, 4, 15, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (239, 4, 16, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (240, 4, 17, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (241, 4, 18, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (242, 4, 19, 1, 1, 1, 1);
INSERT INTO `groups_detail` VALUES (243, 4, 20, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (244, 4, 21, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (245, 4, 22, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (246, 4, 23, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (247, 4, 24, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (248, 4, 25, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (249, 4, 26, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (250, 4, 27, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (251, 4, 32, 0, 0, 0, 0);
INSERT INTO `groups_detail` VALUES (252, 4, 33, 0, 0, 0, 0);
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

-- ----------------------------
-- Table structure for gudang
-- ----------------------------
DROP TABLE IF EXISTS `gudang`;
CREATE TABLE `gudang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gudang
-- ----------------------------
INSERT INTO `gudang` VALUES (1000, 'Gudang Utama', 'GD-7745', 1, '#000000', 'Pogot', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (1001, 'Gudang Bambe', 'GD-7755', 1, '#000000', 'Bambe', '0000-00-00 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for histori_stok_bahan
-- ----------------------------
DROP TABLE IF EXISTS `histori_stok_bahan`;
CREATE TABLE `histori_stok_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bahan_id` int(11) NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `kode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `masuk` int(11) NULL DEFAULT NULL,
  `keluar` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of histori_stok_bahan
-- ----------------------------
INSERT INTO `histori_stok_bahan` VALUES (1, 68, 'Tambah data bahan Cat Besi', '2023-06-06', '2023-06-06 19:55:35', 1, NULL, NULL, 'B06-4675', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (2, 69, 'Tambah data bahan Lem Kayu', '2023-06-06', '2023-06-06 19:57:41', 1, NULL, NULL, 'B06-4631', 50, 0);
INSERT INTO `histori_stok_bahan` VALUES (3, 69, 'Hapus data bahan Lem Kayu', '2023-06-06', '2023-06-06 19:58:25', 1, NULL, NULL, 'B06-4631', 0, 50);
INSERT INTO `histori_stok_bahan` VALUES (4, 58, 'Tambah data bahan PB-2306-2093', '2023-06-06', '2023-06-06 20:24:35', 1, '2023-06-06 20:24:58', NULL, 'PB-2306-2093', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (5, 62, 'Tambah data bahan PB-2306-5827', '2023-06-06', '2023-06-06 20:27:54', 1, NULL, NULL, 'PB-2306-5827', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (6, 63, 'Tambah data bahan PB-2306-5827', '2023-06-06', '2023-06-06 20:27:54', 1, NULL, NULL, 'PB-2306-5827', 5, 0);
INSERT INTO `histori_stok_bahan` VALUES (7, 64, 'Tambah data bahan PB-2306-5827', '2023-06-06', '2023-06-06 20:27:54', 1, NULL, NULL, 'PB-2306-5827', 500, 0);
INSERT INTO `histori_stok_bahan` VALUES (8, 59, 'Produksi dengan kode PD-2306-3667', '2023-06-06', '2023-06-06 20:32:57', 1, '2023-06-06 21:14:49', NULL, 'PD-2306-3667', 0, 50);
INSERT INTO `histori_stok_bahan` VALUES (9, 64, 'Produksi dengan kode PD-2306-3667', '2023-06-06', '2023-06-06 20:32:57', 1, '2023-06-06 21:14:51', NULL, 'PD-2306-3667', 0, 3);
INSERT INTO `histori_stok_bahan` VALUES (10, 59, 'Produksi dengan kode Prod-SO-2306-97089618', '2023-06-08', '2023-06-08 14:39:39', 1, NULL, NULL, 'Prod-SO-2306-97089618', 0, 10);
INSERT INTO `histori_stok_bahan` VALUES (11, 65, 'Tambah data bahan PB-2306-581', '2023-06-10', '2023-06-10 08:46:13', 1, NULL, NULL, 'PB-2306-581', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (12, 66, 'Tambah data bahan PB-2306-581', '2023-06-10', '2023-06-10 08:46:13', 1, NULL, NULL, 'PB-2306-581', 4, 0);
INSERT INTO `histori_stok_bahan` VALUES (13, 67, 'Tambah data bahan PB-2306-5313', '2023-06-10', '2023-06-10 09:36:24', 1, NULL, NULL, 'PB-2306-5313', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (14, 68, 'Tambah data bahan PB-2306-5313', '2023-06-10', '2023-06-10 09:36:24', 1, NULL, NULL, 'PB-2306-5313', 2, 0);
INSERT INTO `histori_stok_bahan` VALUES (15, 69, 'Tambah data bahan PB-2306-381', '2023-06-10', '2023-06-10 12:03:10', 1, NULL, NULL, 'PB-2306-381', 3, 0);
INSERT INTO `histori_stok_bahan` VALUES (16, 70, 'Tambah data bahan PB-2306-381', '2023-06-10', '2023-06-10 12:03:10', 1, NULL, NULL, 'PB-2306-381', 2, 0);
INSERT INTO `histori_stok_bahan` VALUES (17, 68, 'Tambah data bahan PB-2306-1281', '2023-06-03', '2023-06-10 12:10:22', 1, '2023-06-10 15:28:00', NULL, 'PB-2306-1281', 4, 0);
INSERT INTO `histori_stok_bahan` VALUES (18, 68, 'Edit data bahan PB-2306-1281', '2023-06-03', '2023-06-10 15:24:12', 1, '2023-06-10 15:28:00', NULL, 'PB-2306-1281', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (19, 68, 'Edit data bahan PB-2306-1281', '2023-06-03', '2023-06-10 15:25:04', 1, '2023-06-10 15:28:00', NULL, 'PB-2306-1281', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (20, 68, 'Edit data bahan PB-2306-1281', '2023-06-03', '2023-06-10 15:27:42', 1, NULL, NULL, 'PB-2306-1281', 0, -1);
INSERT INTO `histori_stok_bahan` VALUES (21, 68, 'Tambah data bahan PB-2306-9466', '2023-06-10', '2023-06-10 16:42:27', 1, NULL, NULL, 'PB-2306-9466', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (22, 67, 'Tambah data bahan PB-2306-9466', '2023-06-10', '2023-06-10 16:42:27', 1, NULL, NULL, 'PB-2306-9466', 5, 0);
INSERT INTO `histori_stok_bahan` VALUES (23, 69, 'Tambah data bahan Metal Coating - Hitam', '2023-06-10', '2023-06-10 17:15:57', 1, NULL, NULL, 'B/2306-9863', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (24, 70, 'Tambah data bahan METAL COATING - Hijau', '2023-06-10', '2023-06-10 17:16:44', 1, NULL, NULL, 'B/2306-2590', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (25, 71, 'Tambah data bahan METAL COATING - Putih', '2023-06-10', '2023-06-10 17:17:07', 1, NULL, NULL, 'B/2306-5490', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (26, 72, 'Tambah data bahan Kusen', '2023-08-23', '2023-08-23 18:01:04', 1, NULL, NULL, 'B/2308-8915', 10, 0);
INSERT INTO `histori_stok_bahan` VALUES (27, 72, 'Tambah data bahan PB/2308-8424', '2023-08-23', '2023-08-23 18:31:46', 1, NULL, NULL, 'PB/2308-8424', 4, 0);
INSERT INTO `histori_stok_bahan` VALUES (28, 71, 'Tambah data bahan PB/2308-8424', '2023-08-23', '2023-08-23 18:31:46', 1, NULL, NULL, 'PB/2308-8424', 2, 0);
INSERT INTO `histori_stok_bahan` VALUES (29, 72, 'Tambah data bahan PB/2308-1649', '2023-08-23', '2023-08-24 18:46:23', 1, NULL, NULL, 'PB/2308-1649', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (30, 71, 'Tambah data bahan PB/2308-1649', '2023-08-23', '2023-08-24 18:46:23', 1, NULL, NULL, 'PB/2308-1649', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (31, 72, 'Tambah data bahan PB/2308-4991', '2023-08-24', '2023-08-24 19:33:24', 1, NULL, NULL, 'PB/2308-4991', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (32, 71, 'Tambah data bahan PB/2308-4991', '2023-08-24', '2023-08-24 19:33:24', 1, NULL, NULL, 'PB/2308-4991', 2, 0);
INSERT INTO `histori_stok_bahan` VALUES (33, 73, 'Tambah data bahan Brentwood (Kain Hikaron)', '2023-08-25', '2023-08-25 18:12:44', 1, NULL, NULL, 'B/2308-9946', 50, 0);
INSERT INTO `histori_stok_bahan` VALUES (34, 64, 'Produksi dengan kode PD/2308-8287', '2023-08-25', '2023-08-25 18:21:59', 1, NULL, NULL, 'PD/2308-8287', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (35, 63, 'Produksi dengan kode PD/2308-1798', '2023-08-25', '2023-08-25 19:00:26', 1, NULL, NULL, 'PD/2308-1798', 0, 4);
INSERT INTO `histori_stok_bahan` VALUES (36, 63, 'Produksi dengan kode PD/2308-6131', '2023-08-25', '2023-08-25 19:02:18', 1, NULL, NULL, 'PD/2308-6131', 0, 5);
INSERT INTO `histori_stok_bahan` VALUES (37, 73, 'Produksi dengan kode PD/2308-6062', '2023-08-25', '2023-08-25 19:04:58', 1, NULL, NULL, 'PD/2308-6062', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (38, 73, 'Produksi dengan kode PD/2308-8980', '2023-08-25', '2023-08-25 19:11:03', 1, NULL, NULL, 'PD/2308-8980', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (39, 73, 'Produksi dengan kode PD/2308-3846', '2023-08-25', '2023-08-25 19:18:30', 1, NULL, NULL, 'PD/2308-3846', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (40, 73, 'Produksi dengan kode PD/2308-1518', '2023-08-25', '2023-08-25 19:47:05', 1, NULL, NULL, 'PD/2308-1518', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (41, 73, 'Produksi dengan kode PD/2308-580', '2023-08-25', '2023-08-25 19:49:44', 1, NULL, NULL, 'PD/2308-580', 0, 5);
INSERT INTO `histori_stok_bahan` VALUES (42, 73, 'Produksi dengan kode Prod-SO-2308-15746024', '2023-08-25', '2023-08-25 19:59:24', 1, NULL, NULL, 'Prod-SO-2308-15746024', 0, 5);
INSERT INTO `histori_stok_bahan` VALUES (43, 71, 'Produksi dengan kode Prod-SO-2308-15746024', '2023-08-25', '2023-08-25 19:59:24', 1, NULL, NULL, 'Prod-SO-2308-15746024', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (44, 74, 'Tambah data bahan Hidrolis 60 Hitam', '2023-08-27', '2023-08-27 06:06:09', 1, NULL, NULL, 'B/2308-6254', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (45, 75, 'Tambah data bahan Hidrolis 60 Crom', '2023-08-27', '2023-08-27 22:27:32', 1, NULL, NULL, 'B/2308-816', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (46, 76, 'Tambah data bahan Hidrolis 100 Hitam', '2023-08-27', '2023-08-27 22:28:05', 1, NULL, NULL, 'B/2308-3080', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (47, 77, 'Tambah data bahan Hidrolis 100 Crom', '2023-08-27', '2023-08-27 22:28:37', 1, NULL, NULL, 'B/2308-5536', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (48, 78, 'Tambah data bahan Hidrolis 200 Crom', '2023-08-27', '2023-08-27 22:29:36', 1, NULL, NULL, 'B/2308-4133', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (49, 79, 'Tambah data bahan Telescop', '2023-08-27', '2023-08-27 22:30:28', 1, NULL, NULL, 'B/2308-2083', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (50, 80, 'Tambah data bahan SC-74 (MEKANIS BUTTERFLY) ADA PUTARAN', '2023-08-27', '2023-08-27 22:31:03', 1, NULL, NULL, 'B/2308-9959', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (51, 81, 'Tambah data bahan SC-75', '2023-08-27', '2023-08-27 22:31:35', 1, NULL, NULL, 'B/2308-2207', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (52, 82, 'Tambah data bahan SF-MG-013', '2023-08-27', '2023-08-27 22:32:05', 1, NULL, NULL, 'B/2308-1701', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (53, 83, 'Tambah data bahan DP-20 MECHANIS', '2023-08-27', '2023-08-27 22:32:35', 1, NULL, NULL, 'B/2308-2621', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (54, 84, 'Tambah data bahan DP-20 LEHER', '2023-08-27', '2023-08-27 22:33:06', 1, NULL, NULL, 'B/2308-3319', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (55, 85, 'Tambah data bahan PLAT L-BESAR', '2023-08-27', '2023-08-27 22:33:32', 1, NULL, NULL, 'B/2308-803', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (56, 86, 'Tambah data bahan IS-76 B', '2023-08-27', '2023-08-27 22:33:59', 1, NULL, NULL, 'B/2308-548', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (57, 87, 'Tambah data bahan M-BAR', '2023-08-27', '2023-08-27 22:34:19', 1, NULL, NULL, 'B/2308-4450', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (58, 88, 'Tambah data bahan Cakar 260 PP', '2023-08-30', '2023-08-30 05:32:44', 1, NULL, NULL, 'B/2308-7', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (59, 89, 'Tambah data bahan Cakar 280 PP', '2023-08-30', '2023-08-30 05:33:08', 1, NULL, NULL, 'B/2308-5965', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (60, 90, 'Tambah data bahan Cakar 320 PP', '2023-08-30', '2023-08-30 05:33:36', 1, NULL, NULL, 'B/2308-9824', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (61, 91, 'Tambah data bahan Cakar 350 PP', '2023-08-30', '2023-08-30 05:33:59', 1, NULL, NULL, 'B/2308-843', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (62, 92, 'Tambah data bahan Cakar 280 Crom', '2023-08-30', '2023-08-30 05:34:50', 1, NULL, NULL, 'B/2308-7158', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (63, 93, 'Tambah data bahan Cakar 320 Crom', '2023-08-30', '2023-08-30 05:35:16', 1, NULL, NULL, 'B/2308-5184', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (64, 94, 'Tambah data bahan Cakar 350 Crom', '2023-08-30', '2023-08-30 05:35:42', 1, NULL, NULL, 'B/2308-1555', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (65, 95, 'Tambah data bahan ALVT-HM-02/Black (KAKI U) HITAM', '2023-08-30', '2023-08-30 05:36:40', 1, NULL, NULL, 'B/2308-19', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (66, 96, 'Tambah data bahan ALVT (KAKI U) CROM', '2023-08-30', '2023-08-30 05:37:11', 1, NULL, NULL, 'B/2308-4262', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (67, 97, 'Tambah data bahan GLIDER TN-11\" (RODA STABIL)', '2023-08-30', '2023-08-30 05:37:43', 1, NULL, NULL, 'B/2308-7150', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (68, 98, 'Tambah data bahan Roda (CW.SF)', '2023-08-30', '2023-08-30 05:38:11', 1, NULL, NULL, 'B/2308-4802', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (69, 99, 'Tambah data bahan Roda Drat', '2023-08-30', '2023-08-30 05:38:34', 1, NULL, NULL, 'B/2308-4328', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (70, 100, 'Tambah data bahan Tangan SF - 011 PP', '2023-08-30', '2023-08-30 05:39:03', 1, NULL, NULL, 'B/2308-1398', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (71, 101, 'Tambah data bahan Tangan SF - 03 PP', '2023-08-30', '2023-08-30 05:39:33', 1, NULL, NULL, 'B/2308-1869', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (72, 102, 'Tambah data bahan Tangan SF - 057 PP', '2023-08-30', '2023-08-30 05:40:55', 1, NULL, NULL, 'B/2308-4641', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (73, 103, 'Tambah data bahan Tangan SF - 06 PP', '2023-08-30', '2023-08-30 05:41:17', 1, NULL, NULL, 'B/2308-224', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (74, 104, 'Tambah data bahan Tangan SF - 064 PP', '2023-08-30', '2023-08-30 05:41:44', 1, NULL, NULL, 'B/2308-4514', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (75, 105, 'Tambah data bahan Tangan SF - 002 PP', '2023-08-30', '2023-08-30 05:42:10', 1, NULL, NULL, 'B/2308-5683', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (76, 106, 'Tambah data bahan Tangan SF - 067 / SF PP 618 PP', '2023-08-30', '2023-08-30 05:42:50', 1, NULL, NULL, 'B/2308-3592', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (77, 107, 'Tambah data bahan Tangan SF - 090 PP', '2023-08-30', '2023-08-30 05:43:18', 1, NULL, NULL, 'B/2308-7403', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (78, 108, 'Tambah data bahan Tangan SF - 196', '2023-08-30', '2023-08-30 06:58:31', 1, NULL, NULL, 'B/2308-4371', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (79, 109, 'Tambah data bahan Tangan SF - 198', '2023-08-30', '2023-08-30 06:59:17', 1, NULL, NULL, 'B/2308-4402', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (80, 110, 'Tambah data bahan Tangan SF 7S - 03', '2023-08-30', '2023-08-30 06:59:44', 1, NULL, NULL, 'B/2308-8105', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (81, 111, 'Tambah data bahan Tangan SF 7S - 07', '2023-08-30', '2023-08-30 07:00:23', 1, NULL, NULL, 'B/2308-7343', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (82, 112, 'Tambah data bahan Tangan SF 7S - 21 - 3', '2023-08-30', '2023-08-30 07:00:45', 1, NULL, NULL, 'B/2308-9799', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (83, 113, 'Tambah data bahan Tangan SF 7S - 26 - 1', '2023-08-30', '2023-08-30 07:01:10', 1, NULL, NULL, 'B/2308-2297', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (84, 114, 'Tambah data bahan TANGAN SF - 024 - 2', '2023-08-30', '2023-08-30 07:01:54', 1, NULL, NULL, 'B/2308-2924', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (85, 115, 'Tambah data bahan TANGAN SF - 024 - 1', '2023-08-30', '2023-08-30 07:02:18', 1, NULL, NULL, 'B/2308-1344', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (86, 116, 'Tambah data bahan TANGAN SF - 006 PP', '2023-08-30', '2023-08-30 07:02:43', 1, NULL, NULL, 'B/2308-6945', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (87, 117, 'Tambah data bahan TANGAN SF - 071 PP', '2023-08-30', '2023-08-30 07:03:05', 1, NULL, NULL, 'B/2308-8686', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (88, 118, 'Tambah data bahan STB - 04 (Tangan L)', '2023-08-30', '2023-08-30 07:03:34', 1, NULL, NULL, 'B/2308-6801', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (89, 119, 'Tambah data bahan Papan dudukan 100 directure (53 x 53) oval', '2023-08-30', '2023-08-30 07:04:13', 1, NULL, NULL, 'B/2308-2988', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (90, 120, 'Tambah data bahan Papan dudukan 100 directure (53 x 76) oval', '2023-08-30', '2023-08-30 07:05:31', 1, NULL, NULL, 'B/2308-8098', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (91, 121, 'Tambah data bahan Papan dudukan 200 directure (52 x 52) oval', '2023-09-02', '2023-09-02 06:11:53', 1, NULL, NULL, 'B/2309-4652', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (92, 122, 'Tambah data bahan Papan dudukan 200 directure (58 x 52) oval', '2023-09-02', '2023-09-02 06:12:36', 1, NULL, NULL, 'B/2309-2951', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (93, 123, 'Tambah data bahan Papan dudukan 100 directure (53 x 53) kotak', '2023-09-02', '2023-09-02 06:13:56', 1, NULL, NULL, 'B/2309-3699', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (94, 123, 'Hapus data bahan Papan dudukan 100 directure (53 x 53) kotak', '2023-09-02', '2023-09-02 06:14:51', 1, NULL, NULL, 'B/2309-3699', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (95, 124, 'Tambah data bahan Papan dudukan 100 directure (53 x 53) kotak', '2023-09-02', '2023-09-02 06:15:26', 1, NULL, NULL, 'B/2309-1859', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (96, 125, 'Tambah data bahan Papan sandaran 100 directure (53 x 76) kotak', '2023-09-02', '2023-09-02 06:15:56', 1, NULL, NULL, 'B/2309-6404', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (97, 126, 'Tambah data bahan Papan sandaran 100 directure (53 x 76) kotak', '2023-09-02', '2023-09-02 06:16:28', 1, NULL, NULL, 'B/2309-1225', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (98, 127, 'Tambah data bahan Papan sandaran 200 manager (58 x 52) kotak', '2023-09-02', '2023-09-02 06:18:47', 1, NULL, NULL, 'B/2309-1713', 0, 0);
INSERT INTO `histori_stok_bahan` VALUES (99, 127, 'Tambah data bahan PB/2310-125', '2023-10-22', '2023-10-21 23:37:09', 1, NULL, NULL, 'PB/2310-125', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (100, 128, 'Tambah data bahan Paku stainless 0,2', '2023-10-22', '2023-10-22 05:50:09', 1, NULL, NULL, 'B/2310-5919', 10, 0);
INSERT INTO `histori_stok_bahan` VALUES (101, 66, 'Produksi dengan kode PD/2310-3554', '2023-10-22', '2023-10-22 10:05:43', 1, NULL, NULL, 'PD/2310-3554', 0, 500);
INSERT INTO `histori_stok_bahan` VALUES (102, 65, 'Produksi dengan kode PD/2310-3554', '2023-10-22', '2023-10-22 10:05:43', 1, NULL, NULL, 'PD/2310-3554', 0, 300);
INSERT INTO `histori_stok_bahan` VALUES (103, 129, 'Tambah data bahan BAHAN 1', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN1', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (104, 130, 'Tambah data bahan BAHAN 2', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN2', 200, 0);
INSERT INTO `histori_stok_bahan` VALUES (105, 131, 'Tambah data bahan BAHAN 3', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN3', 300, 0);
INSERT INTO `histori_stok_bahan` VALUES (106, 132, 'Tambah data bahan BAHAN 4', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN4', 400, 0);
INSERT INTO `histori_stok_bahan` VALUES (107, 133, 'Tambah data bahan BAHAN 5', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN5', 500, 0);
INSERT INTO `histori_stok_bahan` VALUES (108, 134, 'Tambah data bahan BAHAN 6', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN6', 600, 0);
INSERT INTO `histori_stok_bahan` VALUES (109, 135, 'Tambah data bahan BAHAN 7', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN7', 700, 0);
INSERT INTO `histori_stok_bahan` VALUES (110, 136, 'Tambah data bahan BAHAN 8', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN8', 800, 0);
INSERT INTO `histori_stok_bahan` VALUES (111, 137, 'Tambah data bahan BAHAN 9', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN9', 900, 0);
INSERT INTO `histori_stok_bahan` VALUES (112, 138, 'Tambah data bahan BAHAN 10', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN10', 1000, 0);
INSERT INTO `histori_stok_bahan` VALUES (113, 139, 'Tambah data bahan BAHAN 11', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN11', 1100, 0);
INSERT INTO `histori_stok_bahan` VALUES (114, 140, 'Tambah data bahan BAHAN 12', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN12', 1200, 0);
INSERT INTO `histori_stok_bahan` VALUES (115, 141, 'Tambah data bahan BAHAN 13', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN13', 1300, 0);
INSERT INTO `histori_stok_bahan` VALUES (116, 142, 'Tambah data bahan BAHAN 14', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN14', 1400, 0);
INSERT INTO `histori_stok_bahan` VALUES (117, 143, 'Tambah data bahan BAHAN 15', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN15', 1500, 0);
INSERT INTO `histori_stok_bahan` VALUES (118, 144, 'Tambah data bahan BAHAN 16', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN16', 1600, 0);
INSERT INTO `histori_stok_bahan` VALUES (119, 145, 'Tambah data bahan BAHAN 17', '2023-12-24', '2023-12-24 18:43:03', NULL, NULL, NULL, 'BHN17', 1700, 0);
INSERT INTO `histori_stok_bahan` VALUES (120, 145, 'Produksi dengan kode PD/2312-1595', '2023-12-26', '2023-12-26 20:13:33', 1, NULL, NULL, 'PD/2312-1595', 0, 100);
INSERT INTO `histori_stok_bahan` VALUES (121, 145, 'Tambah data bahan PB/2312-3729', '2023-12-26', '2023-12-26 20:15:59', 1, NULL, NULL, 'PB/2312-3729', 50, 0);
INSERT INTO `histori_stok_bahan` VALUES (122, 145, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 10, 0);
INSERT INTO `histori_stok_bahan` VALUES (123, 80, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 4, 0);
INSERT INTO `histori_stok_bahan` VALUES (124, 128, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 5, 0);
INSERT INTO `histori_stok_bahan` VALUES (125, 127, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (126, 125, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 10, 0);
INSERT INTO `histori_stok_bahan` VALUES (127, 122, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 25, 0);
INSERT INTO `histori_stok_bahan` VALUES (128, 120, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 10, 0);
INSERT INTO `histori_stok_bahan` VALUES (129, 144, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (130, 143, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (131, 65, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 4, 0);
INSERT INTO `histori_stok_bahan` VALUES (132, 94, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (133, 93, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 2, 0);
INSERT INTO `histori_stok_bahan` VALUES (134, 92, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (135, 92, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (136, 91, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (137, 90, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (138, 68, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (139, 63, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (140, 58, 'Tambah data bahan PB/2401-5159', '2024-01-18', '2024-01-18 10:51:33', 1, NULL, NULL, 'PB/2401-5159', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (141, 66, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 5);
INSERT INTO `histori_stok_bahan` VALUES (142, 65, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 3);
INSERT INTO `histori_stok_bahan` VALUES (143, 67, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (144, 66, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (145, 65, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 6);
INSERT INTO `histori_stok_bahan` VALUES (146, 67, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 12);
INSERT INTO `histori_stok_bahan` VALUES (147, 64, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 6);
INSERT INTO `histori_stok_bahan` VALUES (148, 63, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 3);
INSERT INTO `histori_stok_bahan` VALUES (149, 66, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (150, 65, 'Produksi dengan kode PD/2401-5472', '2024-01-21', '2024-01-21 13:45:48', 1, NULL, NULL, 'PD/2401-5472', 0, 3);
INSERT INTO `histori_stok_bahan` VALUES (151, 146, 'Tambah data bahan bahan 1', '2024-01-27', '2024-01-27 13:26:36', 1, NULL, NULL, 'Bahan/2401-3816', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (152, 147, 'Tambah data bahan BAHAN 1', '2024-01-27', '2024-01-27 13:28:05', NULL, NULL, NULL, 'BHN100', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (153, 148, 'Tambah data bahan BAHAN 2', '2024-01-27', '2024-01-27 13:28:05', NULL, NULL, NULL, 'BHN200', 200, 0);
INSERT INTO `histori_stok_bahan` VALUES (154, 149, 'Tambah data bahan BAHAN 3', '2024-01-27', '2024-01-27 13:28:05', NULL, NULL, NULL, 'BHN300', 300, 0);
INSERT INTO `histori_stok_bahan` VALUES (155, 146, 'Tambah data bahan PB/2401-8747', '2024-01-27', '2024-01-27 13:35:36', 1, NULL, NULL, 'PB/2401-8747', 100, 0);
INSERT INTO `histori_stok_bahan` VALUES (156, 58, 'Produksi dengan kode PD/2401-7947', '2024-01-27', '2024-01-27 13:56:36', 1, NULL, NULL, 'PD/2401-7947', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (157, 128, 'Produksi dengan kode PD/2401-409', '2024-01-27', '2024-01-27 14:02:17', 1, NULL, NULL, 'PD/2401-409', 0, 2);
INSERT INTO `histori_stok_bahan` VALUES (158, 94, 'Produksi dengan kode PD/2401-409', '2024-01-27', '2024-01-27 14:02:17', 1, NULL, NULL, 'PD/2401-409', 0, 4);
INSERT INTO `histori_stok_bahan` VALUES (159, 58, 'Produksi dengan kode PD/2401-409', '2024-01-27', '2024-01-27 14:02:17', 1, NULL, NULL, 'PD/2401-409', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (160, 128, 'Produksi dengan kode PD/2401-409', '2024-01-27', '2024-01-27 14:02:17', 1, NULL, NULL, 'PD/2401-409', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (161, 127, 'Produksi dengan kode PD/2401-409', '2024-01-27', '2024-01-27 14:02:17', 1, NULL, NULL, 'PD/2401-409', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (162, 63, 'Produksi dengan kode Prod-SO-2401-21062011', '2024-01-27', '2024-01-27 14:10:32', 1, NULL, NULL, 'Prod-SO-2401-21062011', 0, 3);
INSERT INTO `histori_stok_bahan` VALUES (163, 90, 'Produksi dengan kode Prod-SO-2401-21062011', '2024-01-27', '2024-01-27 14:10:32', 1, NULL, NULL, 'Prod-SO-2401-21062011', 0, 1);
INSERT INTO `histori_stok_bahan` VALUES (164, 150, 'Tambah data bahan BUSA 46 X 19 X 1 CM MERAH ( S LIPAT )', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-001', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (165, 151, 'Tambah data bahan BUSA 41 X 39 X 1,5 CM ORANGE ( D LIPAT )', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-002', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (166, 152, 'Tambah data bahan BUSA 41 X 39 X 1,5 CM PUTIH WF.H 25 (D LIPAT )', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-003', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (167, 153, 'Tambah data bahan BUSA 42 X 36 X 2 CM ( S SUSUN )', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-004', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (168, 154, 'Tambah data bahan BUSA 46 X 36 X 3CM MERAH ( S SEKRETARIS) F3 MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-005', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (169, 155, 'Tambah data bahan BUSA 52 X 46 X 3 - 5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-006', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (170, 156, 'Tambah data bahan BUSA 54 X 54 X 4,5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-007', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (171, 157, 'Tambah data bahan BUSA 57 X 57 X 4 - 5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-008', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (172, 158, 'Tambah data bahan BUSA 58 X 54 X 4 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-009', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (173, 159, 'Tambah data bahan BUSA 60 X 58 X 4 - 5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-010', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (174, 160, 'Tambah data bahan BUSA 64 X 58 X 4- 5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-011', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (175, 161, 'Tambah data bahan BUSA 80 X 60 X 4 - 5 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-012', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (176, 162, 'Tambah data bahan BUSA 200 X 10 X 2 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-013', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (177, 163, 'Tambah data bahan BUSA 200 X 120 X 1 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-014', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (178, 164, 'Tambah data bahan BUSA 200 X 120 X 2 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-015', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (179, 165, 'Tambah data bahan BUSA 200 X 120 X 3 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-016', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (180, 166, 'Tambah data bahan BUSA 200 X 120 X 4 CM MERAH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-017', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (181, 167, 'Tambah data bahan BUSA 200 X 120 X 4 CM PUTIH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-018', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (182, 168, 'Tambah data bahan BUSA 200 X 120 X 5 CM PUTIH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-019', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (183, 169, 'Tambah data bahan BUSA 200 X 120 X 6 CM PUTIH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-020', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (184, 170, 'Tambah data bahan BUSA 200 X 120 X 4 CM PUTIH', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSA-021', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (185, 171, 'Tambah data bahan R 60 30 X 30 X 4', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSR-001', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (186, 172, 'Tambah data bahan R 60 38,5 X 38,5 X 4,5', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSR-002', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (187, 173, 'Tambah data bahan R 60 44 X 42 X 4.5', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSR-003', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (188, 174, 'Tambah data bahan R 60 50 X 43 X 2', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSR-004', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (189, 175, 'Tambah data bahan R 60 52 X 54 X 4', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSR-005', 1, 0);
INSERT INTO `histori_stok_bahan` VALUES (190, 176, 'Tambah data bahan BUSA CETAK | INJECT FOAM ( KURSI SUSUN )', '2024-01-29', '2024-01-29 09:43:32', NULL, NULL, NULL, 'BSC-001', 1, 0);

-- ----------------------------
-- Table structure for induk_akun
-- ----------------------------
DROP TABLE IF EXISTS `induk_akun`;
CREATE TABLE `induk_akun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_akun` int(11) NULL DEFAULT NULL,
  `nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `coa_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of induk_akun
-- ----------------------------
INSERT INTO `induk_akun` VALUES (1, 11, 'Aktiva Lancar', 1);
INSERT INTO `induk_akun` VALUES (2, 12, 'Aktiva Tidak lancar', 1);
INSERT INTO `induk_akun` VALUES (3, 21, 'Kewajiban Lancar', 2);
INSERT INTO `induk_akun` VALUES (4, 22, 'Kewajiban Jangka Panjang', 2);
INSERT INTO `induk_akun` VALUES (5, 31, 'Modal Usaha', 3);
INSERT INTO `induk_akun` VALUES (6, 41, 'Perolehan', 4);
INSERT INTO `induk_akun` VALUES (7, 42, 'Pendapatan', 4);
INSERT INTO `induk_akun` VALUES (8, 43, 'Pendapatan Lain', 4);
INSERT INTO `induk_akun` VALUES (9, 51, 'Biaya Administrasi', 5);
INSERT INTO `induk_akun` VALUES (10, 52, 'Biaya Lain', 5);

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'JB-2305-8837', 'Direktur', 1, '2023-02-06 20:31:10', 1, '2023-12-23 20:30:45', 1, '#000000', 1);
INSERT INTO `jabatan` VALUES (2, 'JB-2305-4740', 'Warehouse', 1, '2023-05-21 08:27:43', 1, '2023-12-23 20:30:46', NULL, '#000000', 1);
INSERT INTO `jabatan` VALUES (999, 'JB-2305-4740', 'Driver', 1, '2023-12-23 20:28:05', 1, '2023-12-23 20:30:47', NULL, '#000000', 0);

-- ----------------------------
-- Table structure for jurnal_umum
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_umum`;
CREATE TABLE `jurnal_umum`  (
  `id_jurnal_umum` int(11) NOT NULL AUTO_INCREMENT,
  `ref` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `akun_id` int(11) NULL DEFAULT NULL,
  `debit` double NULL DEFAULT NULL,
  `kredit` double NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `table` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `table_id` int(11) NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id_jurnal_umum`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 691 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_umum
-- ----------------------------
INSERT INTO `jurnal_umum` VALUES (459, 'PML/7589', 1, 550000, 0, 'Jual TV Bekas', 'pemasukan_lain', 2, '2023-04-28 10:29:00', 1);
INSERT INTO `jurnal_umum` VALUES (460, 'PML/7589', 19, 0, 550000, 'Jual TV Bekas', 'pemasukan_lain', 2, '2023-04-28 10:29:00', 1);
INSERT INTO `jurnal_umum` VALUES (461, 'PML/1534', 1, 750000, 0, 'Jual Barang Bekas', 'pemasukan_lain', 3, '2023-04-28 10:38:47', 1);
INSERT INTO `jurnal_umum` VALUES (462, 'PML/1534', 21, 0, 750000, 'Jual Barang Bekas', 'pemasukan_lain', 3, '2023-04-28 10:38:47', 1);
INSERT INTO `jurnal_umum` VALUES (463, 'PB-580', 5, 500000, 0, 'Penerimaan Barang pada tanggal 2023-05-05 dengan Kode PB-540, No Surat Jalan 44441 dan Pengirim Rendy', 'penerimaan_barang', 22, '2023-05-05 19:41:45', 1);
INSERT INTO `jurnal_umum` VALUES (464, 'PB-580', 9, 0, 500000, 'Penerimaan Barang pada tanggal 2023-05-05 dengan Kode PB-540, No Surat Jalan 44441 dan Pengirim Rendy', 'penerimaan_barang', 22, '2023-05-05 19:41:45', 1);
INSERT INTO `jurnal_umum` VALUES (465, 'PB-540', 5, 1000000, 0, 'Penerimaan Barang pada tanggal 2023-05-05 dengan Kode PB-540, No Surat Jalan 44441 dan Pengirim Rendy', 'penerimaan_barang', 23, '2023-05-05 19:58:58', 1);
INSERT INTO `jurnal_umum` VALUES (466, 'PB-540', 9, 0, 1000000, 'Penerimaan Barang pada tanggal 2023-05-05 dengan Kode PB-540, No Surat Jalan 44441 dan Pengirim Rendy', 'penerimaan_barang', 23, '2023-05-05 19:58:58', 1);
INSERT INTO `jurnal_umum` VALUES (467, 'Nota/PT/7703', 9, 1000000, 0, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/7703, No Tagihan 123 dan Penagih Rendy', 'pembayaran_tagihan', 6, '2023-05-05 21:16:58', 1);
INSERT INTO `jurnal_umum` VALUES (468, 'Nota/PT/7703', 1, 0, 1000000, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/7703, No Tagihan 123 dan Penagih Rendy', 'pembayaran_tagihan', 6, '2023-05-05 21:16:58', 1);
INSERT INTO `jurnal_umum` VALUES (469, 'Nota/PT/1878', 9, NULL, 0, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/1878, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 7, '2023-05-05 21:23:12', 1);
INSERT INTO `jurnal_umum` VALUES (470, 'Nota/PT/1878', 1, 0, NULL, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/1878, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 7, '2023-05-05 21:23:12', 1);
INSERT INTO `jurnal_umum` VALUES (471, 'Nota/PT/2232', 9, 100000, 0, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/2232, No Tagihan EST/2023/01/11223 dan Penagih Rendy', 'pembayaran_tagihan', 8, '2023-05-05 21:24:27', 1);
INSERT INTO `jurnal_umum` VALUES (472, 'Nota/PT/2232', 1, 0, 100000, 'Pembayaran Tagihan pada tanggal 2023-05-05 dengan Kode Nota/PT/2232, No Tagihan EST/2023/01/11223 dan Penagih Rendy', 'pembayaran_tagihan', 8, '2023-05-05 21:24:27', 1);
INSERT INTO `jurnal_umum` VALUES (473, 'INV/SO/6014', 4, 500000, 0, 'Penjualan pada tanggal 2023-05-06 dengan Kode INV/SO/6014', 'sales_order', 17, '2023-05-06 20:08:29', 1);
INSERT INTO `jurnal_umum` VALUES (474, 'INV/SO/6014', 20, 0, 500000, 'Penjualan pada tanggal 2023-05-06 dengan Kode INV/SO/6014', 'sales_order', 17, '2023-05-06 20:08:29', 1);
INSERT INTO `jurnal_umum` VALUES (475, 'INV/SO/6999', 4, 200000, 0, 'Penjualan pada tanggal 2023-05-06 dengan Kode INV/SO/6999', 'sales_order', 18, '2023-05-06 20:10:15', 1);
INSERT INTO `jurnal_umum` VALUES (476, 'INV/SO/6999', 20, 0, 200000, 'Penjualan pada tanggal 2023-05-06 dengan Kode INV/SO/6999', 'sales_order', 18, '2023-05-06 20:10:15', 1);
INSERT INTO `jurnal_umum` VALUES (477, 'INV/SO/5514', 4, 200000, 0, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/5514', 'sales_order', 19, '2023-05-07 07:59:54', 1);
INSERT INTO `jurnal_umum` VALUES (478, 'INV/SO/5514', 20, 0, 200000, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/5514', 'sales_order', 19, '2023-05-07 07:59:54', 1);
INSERT INTO `jurnal_umum` VALUES (479, '94500', 1, 100000, 0, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 94500', 'pembayaran_sales_order', 12, '2023-05-07 07:59:54', 1);
INSERT INTO `jurnal_umum` VALUES (480, '94500', 4, 0, 100000, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 94500', 'pembayaran_sales_order', 12, '2023-05-07 07:59:54', 1);
INSERT INTO `jurnal_umum` VALUES (485, 'P222012', 1, 75000, 0, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode P222012', 'pembayaran_sales_order', 15, '2023-05-07 09:52:29', 1);
INSERT INTO `jurnal_umum` VALUES (486, 'P222012', 4, 0, 75000, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode P222012', 'pembayaran_sales_order', 15, '2023-05-07 09:52:29', 1);
INSERT INTO `jurnal_umum` VALUES (487, 'INV/SO/6965', 4, 1500000, 0, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/6965', 'sales_order', 20, '2023-05-07 12:46:08', 1);
INSERT INTO `jurnal_umum` VALUES (488, 'INV/SO/6965', 20, 0, 1500000, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/6965', 'sales_order', 20, '2023-05-07 12:46:08', 1);
INSERT INTO `jurnal_umum` VALUES (489, '3687', 1, 500000, 0, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 3687', 'pembayaran_sales_order', 16, '2023-05-07 12:46:08', 1);
INSERT INTO `jurnal_umum` VALUES (490, '3687', 4, 0, 500000, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 3687', 'pembayaran_sales_order', 16, '2023-05-07 12:46:08', 1);
INSERT INTO `jurnal_umum` VALUES (491, 'PB-7098', 5, 162500, 0, 'Penerimaan Barang pada tanggal 2023-05-07 dengan Kode PB-7098, No Surat Jalan 7398127 dan Pengirim Rendy', 'penerimaan_barang', 24, '2023-05-07 14:47:33', 1);
INSERT INTO `jurnal_umum` VALUES (492, 'PB-7098', 9, 0, 162500, 'Penerimaan Barang pada tanggal 2023-05-07 dengan Kode PB-7098, No Surat Jalan 7398127 dan Pengirim Rendy', 'penerimaan_barang', 24, '2023-05-07 14:47:33', 1);
INSERT INTO `jurnal_umum` VALUES (493, 'Nota/PT/1641', 9, 162500, 0, 'Pembayaran Tagihan pada tanggal 2023-05-07 dengan Kode Nota/PT/1641, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 9, '2023-05-07 14:48:50', 1);
INSERT INTO `jurnal_umum` VALUES (494, 'Nota/PT/1641', 1, 0, 162500, 'Pembayaran Tagihan pada tanggal 2023-05-07 dengan Kode Nota/PT/1641, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 9, '2023-05-07 14:48:50', 1);
INSERT INTO `jurnal_umum` VALUES (495, 'PB-7781', 5, 225000, 0, 'Penerimaan Barang pada tanggal 2023-05-07 dengan Kode PB-7781, No Surat Jalan 1 dan Pengirim Rendy', 'penerimaan_barang', 25, '2023-05-07 15:20:27', 1);
INSERT INTO `jurnal_umum` VALUES (496, 'PB-7781', 9, 0, 225000, 'Penerimaan Barang pada tanggal 2023-05-07 dengan Kode PB-7781, No Surat Jalan 1 dan Pengirim Rendy', 'penerimaan_barang', 25, '2023-05-07 15:20:27', 1);
INSERT INTO `jurnal_umum` VALUES (497, 'Nota/PT/6993', 9, 225000, 0, 'Pembayaran Tagihan pada tanggal 2023-05-07 dengan Kode Nota/PT/6993, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 10, '2023-05-07 15:21:32', 1);
INSERT INTO `jurnal_umum` VALUES (498, 'Nota/PT/6993', 1, 0, 225000, 'Pembayaran Tagihan pada tanggal 2023-05-07 dengan Kode Nota/PT/6993, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 10, '2023-05-07 15:21:32', 1);
INSERT INTO `jurnal_umum` VALUES (499, 'INV/SO/7220', 4, 700000, 0, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/7220', 'sales_order', 21, '2023-05-07 15:23:15', 1);
INSERT INTO `jurnal_umum` VALUES (500, 'INV/SO/7220', 20, 0, 700000, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/7220', 'sales_order', 21, '2023-05-07 15:23:15', 1);
INSERT INTO `jurnal_umum` VALUES (501, '15337', 1, 100000, 0, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 15337', 'pembayaran_sales_order', 17, '2023-05-07 15:23:15', 1);
INSERT INTO `jurnal_umum` VALUES (502, '15337', 4, 0, 100000, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode 15337', 'pembayaran_sales_order', 17, '2023-05-07 15:23:15', 1);
INSERT INTO `jurnal_umum` VALUES (503, 'P988968', 1, 200000, 0, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode P988968', 'pembayaran_sales_order', 18, '2023-05-07 15:24:03', 1);
INSERT INTO `jurnal_umum` VALUES (504, 'P988968', 4, 0, 200000, 'Pembayaran SO pada tanggal 2023-05-07 dengan Kode P988968', 'pembayaran_sales_order', 18, '2023-05-07 15:24:03', 1);
INSERT INTO `jurnal_umum` VALUES (505, 'INV/SO/5452', 4, 800000, 0, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/5452', 'sales_order', 22, '2023-05-07 15:29:12', 1);
INSERT INTO `jurnal_umum` VALUES (506, 'INV/SO/5452', 20, 0, 800000, 'Penjualan pada tanggal 2023-05-07 dengan Kode INV/SO/5452', 'sales_order', 22, '2023-05-07 15:29:12', 1);
INSERT INTO `jurnal_umum` VALUES (507, 'PB-202305-3296', 5, 600000, 0, 'Penerimaan Barang pada tanggal 2023-05-20 dengan Kode PB-202305-3296, No Surat Jalan SJ/2305-0101 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 26, '2023-05-20 21:15:33', 1);
INSERT INTO `jurnal_umum` VALUES (508, 'PB-202305-3296', 9, 0, 600000, 'Penerimaan Barang pada tanggal 2023-05-20 dengan Kode PB-202305-3296, No Surat Jalan SJ/2305-0101 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 26, '2023-05-20 21:15:33', 1);
INSERT INTO `jurnal_umum` VALUES (509, 'SO-202305-5369', 4, 6282600, 0, 'Penjualan pada tanggal 2023-05-20 dengan Kode SO-202305-5369', 'sales_order', 23, '2023-05-20 22:07:36', 1);
INSERT INTO `jurnal_umum` VALUES (510, 'SO-202305-5369', 20, 0, 5660000, 'Penjualan pada tanggal 2023-05-20 dengan Kode SO-202305-5369', 'sales_order', 23, '2023-05-20 22:07:36', 1);
INSERT INTO `jurnal_umum` VALUES (511, 'SO-202305-5369', 39, 0, 622600, 'Penjualan pada tanggal 2023-05-20 dengan Kode SO-202305-5369', 'sales_order', 23, '2023-05-20 22:07:36', 1);
INSERT INTO `jurnal_umum` VALUES (512, 'P954262', 1, 6500000, 0, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P954262', 'pembayaran_sales_order', 19, '2023-05-20 22:15:45', 1);
INSERT INTO `jurnal_umum` VALUES (513, 'P954262', 4, 0, 6500000, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P954262', 'pembayaran_sales_order', 19, '2023-05-20 22:15:45', 1);
INSERT INTO `jurnal_umum` VALUES (514, 'P834605', 1, 100000, 0, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P834605', 'pembayaran_sales_order', 20, '2023-05-20 22:35:56', 1);
INSERT INTO `jurnal_umum` VALUES (515, 'P834605', 4, 0, 100000, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P834605', 'pembayaran_sales_order', 20, '2023-05-20 22:35:56', 1);
INSERT INTO `jurnal_umum` VALUES (516, 'P338719', 1, 400000, 0, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P338719', 'pembayaran_sales_order', 21, '2023-05-20 22:37:33', 1);
INSERT INTO `jurnal_umum` VALUES (517, 'P338719', 4, 0, 400000, 'Pembayaran SO pada tanggal 2023-05-20 dengan Kode P338719', 'pembayaran_sales_order', 21, '2023-05-20 22:37:33', 1);
INSERT INTO `jurnal_umum` VALUES (518, 'SO-2305-1401', 4, 150000, 0, 'Penjualan pada tanggal 2023-05-20 dengan Kode SO-2305-1401', 'sales_order', 24, '2023-05-20 23:39:15', 1);
INSERT INTO `jurnal_umum` VALUES (519, 'SO-2305-1401', 20, 0, 150000, 'Penjualan pada tanggal 2023-05-20 dengan Kode SO-2305-1401', 'sales_order', 24, '2023-05-20 23:39:15', 1);
INSERT INTO `jurnal_umum` VALUES (520, 'INV-2305-8818', 1, 10000, 0, 'Pembayaran SO pada tanggal 2023-05-21 dengan Kode INV-2305-8818', 'pembayaran_sales_order', 22, '2023-05-21 00:11:06', 1);
INSERT INTO `jurnal_umum` VALUES (521, 'INV-2305-8818', 4, 0, 10000, 'Pembayaran SO pada tanggal 2023-05-21 dengan Kode INV-2305-8818', 'pembayaran_sales_order', 22, '2023-05-21 00:11:06', 1);
INSERT INTO `jurnal_umum` VALUES (522, 'INV-2305-566', 1, 10000, 0, 'Pembayaran SO pada tanggal 21-05-2023 dengan Kode INV-2305-566', 'pembayaran_sales_order', 23, '2023-05-21 07:02:29', 1);
INSERT INTO `jurnal_umum` VALUES (523, 'INV-2305-566', 4, 0, 10000, 'Pembayaran SO pada tanggal 21-05-2023 dengan Kode INV-2305-566', 'pembayaran_sales_order', 23, '2023-05-21 07:02:29', 1);
INSERT INTO `jurnal_umum` VALUES (524, 'PD-2305-2227', 40, 60000, 0, 'Produksi dengan kode PD-2305-2227, Tanggal ', 'produksi', 13, '2023-05-21 07:41:44', 1);
INSERT INTO `jurnal_umum` VALUES (525, 'PD-2305-2227', 5, 0, 60000, 'Produksi dengan kode PD-2305-2227, Tanggal ', 'produksi', 13, '2023-05-21 07:41:44', 1);
INSERT INTO `jurnal_umum` VALUES (526, 'SO-2305-6393', 4, 1200000, 0, 'Penjualan pada tanggal 2023-05-21 dengan Kode SO-2305-6393', 'sales_order', 25, '2023-05-21 07:53:20', 1);
INSERT INTO `jurnal_umum` VALUES (527, 'SO-2305-6393', 20, 0, 1200000, 'Penjualan pada tanggal 2023-05-21 dengan Kode SO-2305-6393', 'sales_order', 25, '2023-05-21 07:53:20', 1);
INSERT INTO `jurnal_umum` VALUES (528, '83806', 1, 10000, 0, 'Pembayaran SO pada tanggal 21-05-2023 dengan Kode 83806', 'pembayaran_sales_order', 24, '2023-05-21 07:53:20', 1);
INSERT INTO `jurnal_umum` VALUES (529, '83806', 4, 0, 10000, 'Pembayaran SO pada tanggal 21-05-2023 dengan Kode 83806', 'pembayaran_sales_order', 24, '2023-05-21 07:53:20', 1);
INSERT INTO `jurnal_umum` VALUES (530, 'SO-2306-5524', 4, 400000, 0, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-5524', 'sales_order', 26, '2023-06-05 16:46:43', 1);
INSERT INTO `jurnal_umum` VALUES (531, 'SO-2306-5524', 20, 0, 400000, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-5524', 'sales_order', 26, '2023-06-05 16:46:43', 1);
INSERT INTO `jurnal_umum` VALUES (532, '23104', 1, 300000, 0, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode 23104', 'pembayaran_sales_order', 25, '2023-06-05 16:46:43', 1);
INSERT INTO `jurnal_umum` VALUES (533, '23104', 4, 0, 300000, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode 23104', 'pembayaran_sales_order', 25, '2023-06-05 16:46:43', 1);
INSERT INTO `jurnal_umum` VALUES (534, 'SO-2306-5978', 4, 1200000, 0, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-5978', 'sales_order', 27, '2023-06-05 17:49:04', 1);
INSERT INTO `jurnal_umum` VALUES (535, 'SO-2306-5978', 20, 0, 1200000, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-5978', 'sales_order', 27, '2023-06-05 17:49:04', 1);
INSERT INTO `jurnal_umum` VALUES (536, '83627', 1, 1000000, 0, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode 83627', 'pembayaran_sales_order', 26, '2023-06-05 17:49:04', 1);
INSERT INTO `jurnal_umum` VALUES (537, '83627', 4, 0, 1000000, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode 83627', 'pembayaran_sales_order', 26, '2023-06-05 17:49:04', 1);
INSERT INTO `jurnal_umum` VALUES (538, 'SO-2306-1007', 4, 400000, 0, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-1007', 'sales_order', 28, '2023-06-05 18:58:51', 1);
INSERT INTO `jurnal_umum` VALUES (539, 'SO-2306-1007', 20, 0, 400000, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-1007', 'sales_order', 28, '2023-06-05 18:58:51', 1);
INSERT INTO `jurnal_umum` VALUES (540, 'INV-2306-6789', 1, 120000, 0, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode INV-2306-6789', 'pembayaran_sales_order', 27, '2023-06-05 18:58:51', 1);
INSERT INTO `jurnal_umum` VALUES (541, 'INV-2306-6789', 4, 0, 120000, 'Pembayaran SO pada tanggal 05-06-2023 dengan Kode INV-2306-6789', 'pembayaran_sales_order', 27, '2023-06-05 18:58:51', 1);
INSERT INTO `jurnal_umum` VALUES (542, 'SO-2306-2567', 4, 1600000, 0, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-2567', 'sales_order', 29, '2023-06-05 19:25:48', 1);
INSERT INTO `jurnal_umum` VALUES (543, 'SO-2306-2567', 20, 0, 1600000, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-2567', 'sales_order', 29, '2023-06-05 19:25:48', 1);
INSERT INTO `jurnal_umum` VALUES (544, 'SO-2306-2828', 4, 700000, 0, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-2828', 'sales_order', 30, '2023-06-05 20:44:11', 1);
INSERT INTO `jurnal_umum` VALUES (545, 'SO-2306-2828', 20, 0, 700000, 'Penjualan pada tanggal 2023-06-05 dengan Kode SO-2306-2828', 'sales_order', 30, '2023-06-05 20:44:11', 1);
INSERT INTO `jurnal_umum` VALUES (548, 'PD-2306-29012', 40, 320000, 0, 'Produksi dengan kode PD-2306-29012, Tanggal ', 'produksi', 15, '2023-06-06 18:03:31', 0);
INSERT INTO `jurnal_umum` VALUES (549, 'PD-2306-29012', 5, 0, 320000, 'Produksi dengan kode PD-2306-29012, Tanggal ', 'produksi', 15, '2023-06-06 18:03:31', 0);
INSERT INTO `jurnal_umum` VALUES (550, 'PB-2306-2093', 5, 100, 0, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-2093, No Surat Jalan 123 dan Pengirim Rendy', 'penerimaan_barang', 27, '2023-06-06 20:24:35', 1);
INSERT INTO `jurnal_umum` VALUES (551, 'PB-2306-2093', 9, 0, 100, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-2093, No Surat Jalan 123 dan Pengirim Rendy', 'penerimaan_barang', 27, '2023-06-06 20:24:35', 1);
INSERT INTO `jurnal_umum` VALUES (552, 'PB-2306-5827', 5, 10270000, 0, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 28, '2023-06-06 20:27:24', 1);
INSERT INTO `jurnal_umum` VALUES (553, 'PB-2306-5827', 9, 0, 10270000, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 28, '2023-06-06 20:27:24', 1);
INSERT INTO `jurnal_umum` VALUES (554, 'PB-2306-5827', 5, 10270000, 0, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 29, '2023-06-06 20:27:26', 1);
INSERT INTO `jurnal_umum` VALUES (555, 'PB-2306-5827', 9, 0, 10270000, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 29, '2023-06-06 20:27:26', 1);
INSERT INTO `jurnal_umum` VALUES (556, 'PB-2306-5827', 5, 10270000, 0, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 30, '2023-06-06 20:27:31', 1);
INSERT INTO `jurnal_umum` VALUES (557, 'PB-2306-5827', 9, 0, 10270000, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 30, '2023-06-06 20:27:31', 1);
INSERT INTO `jurnal_umum` VALUES (558, 'PB-2306-5827', 5, 10270000, 0, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 31, '2023-06-06 20:27:54', 1);
INSERT INTO `jurnal_umum` VALUES (559, 'PB-2306-5827', 9, 0, 10270000, 'Penerimaan Barang pada tanggal 2023-06-06 dengan Kode PB-2306-5827, No Surat Jalan 123313 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 31, '2023-06-06 20:27:54', 1);
INSERT INTO `jurnal_umum` VALUES (560, 'SO-2306-3923', 4, 400000, 0, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3923', 'sales_order', 31, '2023-06-07 14:47:01', 1);
INSERT INTO `jurnal_umum` VALUES (561, 'SO-2306-3923', 20, 0, 400000, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3923', 'sales_order', 31, '2023-06-07 14:47:01', 1);
INSERT INTO `jurnal_umum` VALUES (562, 'SO-2306-3006', 4, 400000, 0, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3006', 'sales_order', 32, '2023-06-07 14:58:19', 1);
INSERT INTO `jurnal_umum` VALUES (563, 'SO-2306-3006', 20, 0, 400000, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3006', 'sales_order', 32, '2023-06-07 14:58:19', 1);
INSERT INTO `jurnal_umum` VALUES (564, 'SO-2306-3330', 4, 1500000, 0, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3330', 'sales_order', 33, '2023-06-07 18:50:14', 1);
INSERT INTO `jurnal_umum` VALUES (565, 'SO-2306-3330', 20, 0, 1500000, 'Penjualan pada tanggal 2023-06-07 dengan Kode SO-2306-3330', 'sales_order', 33, '2023-06-07 18:50:14', 1);
INSERT INTO `jurnal_umum` VALUES (566, 'SO-2306-9708', 4, 1250000, 0, 'Penjualan pada tanggal 2023-06-08 dengan Kode SO-2306-9708', 'sales_order', 34, '2023-06-08 14:11:18', 1);
INSERT INTO `jurnal_umum` VALUES (567, 'SO-2306-9708', 20, 0, 1250000, 'Penjualan pada tanggal 2023-06-08 dengan Kode SO-2306-9708', 'sales_order', 34, '2023-06-08 14:11:18', 1);
INSERT INTO `jurnal_umum` VALUES (568, 'Prod-SO-2306-97089618', 40, 200000, 0, 'Produksi dengan kode Prod-SO-2306-97089618, Tanggal ', 'produksi', 22, '2023-06-08 14:39:39', 1);
INSERT INTO `jurnal_umum` VALUES (569, 'Prod-SO-2306-97089618', 5, 0, 200000, 'Produksi dengan kode Prod-SO-2306-97089618, Tanggal ', 'produksi', 22, '2023-06-08 14:39:39', 1);
INSERT INTO `jurnal_umum` VALUES (570, 'INV-2306-1459', 1, 500000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-1459', 'pembayaran_sales_order', 28, '2023-06-09 08:19:47', 1);
INSERT INTO `jurnal_umum` VALUES (571, 'INV-2306-1459', 4, 0, 500000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-1459', 'pembayaran_sales_order', 28, '2023-06-09 08:19:47', 1);
INSERT INTO `jurnal_umum` VALUES (572, 'INV-2306-7568', 1, 400000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-7568', 'pembayaran_sales_order', 29, '2023-06-09 08:20:18', 1);
INSERT INTO `jurnal_umum` VALUES (573, 'INV-2306-7568', 4, 0, 400000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-7568', 'pembayaran_sales_order', 29, '2023-06-09 08:20:18', 1);
INSERT INTO `jurnal_umum` VALUES (574, 'SO-2306-6335', 4, 200000, 0, 'Penjualan pada tanggal 2023-06-09 dengan Kode SO-2306-6335', 'sales_order', 35, '2023-06-09 10:28:11', 1);
INSERT INTO `jurnal_umum` VALUES (575, 'SO-2306-6335', 20, 0, 200000, 'Penjualan pada tanggal 2023-06-09 dengan Kode SO-2306-6335', 'sales_order', 35, '2023-06-09 10:28:11', 1);
INSERT INTO `jurnal_umum` VALUES (576, 'INV-2306-3877', 1, 100000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-3877', 'pembayaran_sales_order', 30, '2023-06-09 10:28:49', 1);
INSERT INTO `jurnal_umum` VALUES (577, 'INV-2306-3877', 4, 0, 100000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-3877', 'pembayaran_sales_order', 30, '2023-06-09 10:28:49', 1);
INSERT INTO `jurnal_umum` VALUES (578, 'INV-2306-192', 1, 50000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-192', 'pembayaran_sales_order', 31, '2023-06-09 10:30:38', 0);
INSERT INTO `jurnal_umum` VALUES (579, 'INV-2306-192', 4, 0, 50000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-192', 'pembayaran_sales_order', 31, '2023-06-09 10:30:38', 0);
INSERT INTO `jurnal_umum` VALUES (580, 'INV-2306-654', 1, 25000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-654', 'pembayaran_sales_order', 32, '2023-06-09 11:27:16', 1);
INSERT INTO `jurnal_umum` VALUES (581, 'INV-2306-654', 4, 0, 25000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-654', 'pembayaran_sales_order', 32, '2023-06-09 11:27:16', 1);
INSERT INTO `jurnal_umum` VALUES (582, 'INV-2306-8762', 1, 75000, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-8762', 'pembayaran_sales_order', 33, '2023-06-09 11:30:30', 1);
INSERT INTO `jurnal_umum` VALUES (583, 'INV-2306-8762', 4, 0, 75000, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-8762', 'pembayaran_sales_order', 33, '2023-06-09 11:30:30', 1);
INSERT INTO `jurnal_umum` VALUES (584, 'INV-2306-2922', 1, 1074500, 0, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-2922', 'pembayaran_sales_order', 34, '2023-06-09 15:20:04', 0);
INSERT INTO `jurnal_umum` VALUES (585, 'INV-2306-2922', 4, 0, 1074500, 'Pembayaran SO pada tanggal 09-06-2023 dengan Kode INV-2306-2922', 'pembayaran_sales_order', 34, '2023-06-09 15:20:04', 0);
INSERT INTO `jurnal_umum` VALUES (586, 'PB-2306-581', 5, 3500000, 0, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-581, No Surat Jalan 44544 dan Pengirim Radiq Ken', 'penerimaan_barang', 32, '2023-06-10 08:46:13', 1);
INSERT INTO `jurnal_umum` VALUES (587, 'PB-2306-581', 9, 0, 3500000, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-581, No Surat Jalan 44544 dan Pengirim Radiq Ken', 'penerimaan_barang', 32, '2023-06-10 08:46:13', 1);
INSERT INTO `jurnal_umum` VALUES (588, 'PT-2306-216', 9, 3500000, 0, 'Pembayaran Tagihan pada tanggal 2023-06-10 dengan Kode PT-2306-216, No Tagihan PT1234 dan Penagih Rendy', 'pembayaran_tagihan', 11, '2023-06-10 08:47:53', 1);
INSERT INTO `jurnal_umum` VALUES (589, 'PT-2306-216', 1, 0, 3500000, 'Pembayaran Tagihan pada tanggal 2023-06-10 dengan Kode PT-2306-216, No Tagihan PT1234 dan Penagih Rendy', 'pembayaran_tagihan', 11, '2023-06-10 08:47:53', 1);
INSERT INTO `jurnal_umum` VALUES (590, 'PB-2306-5313', 5, 1000000, 0, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-5313, No Surat Jalan 21321 dan Pengirim Rendy', 'penerimaan_barang', 33, '2023-06-10 09:36:24', 1);
INSERT INTO `jurnal_umum` VALUES (591, 'PB-2306-5313', 9, 0, 1000000, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-5313, No Surat Jalan 21321 dan Pengirim Rendy', 'penerimaan_barang', 33, '2023-06-10 09:36:24', 1);
INSERT INTO `jurnal_umum` VALUES (592, 'PB-2306-381', 5, 799200, 0, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-381, No Surat Jalan 21321 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 34, '2023-06-10 12:03:10', 1);
INSERT INTO `jurnal_umum` VALUES (593, 'PB-2306-381', 9, 0, 799200, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-381, No Surat Jalan 21321 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 34, '2023-06-10 12:03:10', 1);
INSERT INTO `jurnal_umum` VALUES (594, 'PB-2306-1281', 5, 710400, 0, 'Penerimaan Barang pada tanggal 2023-06-03 dengan Kode PB-2306-1281, No Surat Jalan 21321 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 35, '2023-06-10 12:10:22', 0);
INSERT INTO `jurnal_umum` VALUES (595, 'PB-2306-1281', 9, 0, 710400, 'Penerimaan Barang pada tanggal 2023-06-03 dengan Kode PB-2306-1281, No Surat Jalan 21321 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 35, '2023-06-10 12:10:22', 0);
INSERT INTO `jurnal_umum` VALUES (596, 'PB-2306-9466', 5, 1098900, 0, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-9466, No Surat Jalan 21321 dan Pengirim Rendy', 'penerimaan_barang', 36, '2023-06-10 16:42:27', 1);
INSERT INTO `jurnal_umum` VALUES (597, 'PB-2306-9466', 9, 0, 1098900, 'Penerimaan Barang pada tanggal 2023-06-10 dengan Kode PB-2306-9466, No Surat Jalan 21321 dan Pengirim Rendy', 'penerimaan_barang', 36, '2023-06-10 16:42:27', 1);
INSERT INTO `jurnal_umum` VALUES (598, 'PB/2308-8424', 5, 666000, 0, 'Penerimaan Barang pada tanggal 2023-08-23 dengan Kode PB/2308-8424, No Surat Jalan 21321 dan Pengirim Radiq Ken', 'penerimaan_barang', 37, '2023-08-23 18:31:46', 1);
INSERT INTO `jurnal_umum` VALUES (599, 'PB/2308-8424', 9, 0, 666000, 'Penerimaan Barang pada tanggal 2023-08-23 dengan Kode PB/2308-8424, No Surat Jalan 21321 dan Pengirim Radiq Ken', 'penerimaan_barang', 37, '2023-08-23 18:31:46', 1);
INSERT INTO `jurnal_umum` VALUES (600, 'PB/2308-1649', 5, 555000, 0, 'Penerimaan Barang pada tanggal 2023-08-23 dengan Kode PB/2308-1649, No Surat Jalan 123 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 38, '2023-08-24 18:46:23', 1);
INSERT INTO `jurnal_umum` VALUES (601, 'PB/2308-1649', 9, 0, 555000, 'Penerimaan Barang pada tanggal 2023-08-23 dengan Kode PB/2308-1649, No Surat Jalan 123 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 38, '2023-08-24 18:46:23', 1);
INSERT INTO `jurnal_umum` VALUES (602, 'PT/2308-7144', 9, 220000, 0, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-7144, No Tagihan PT1234 dan Penagih Rendy', 'pembayaran_tagihan', 12, '2023-08-24 19:20:19', 1);
INSERT INTO `jurnal_umum` VALUES (603, 'PT/2308-7144', 38, 22000, 0, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-7144, No Tagihan PT1234 dan Penagih Rendy', 'pembayaran_tagihan', 12, '2023-08-24 19:20:19', 1);
INSERT INTO `jurnal_umum` VALUES (604, 'PT/2308-7144', 1, 0, 242000, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-7144, No Tagihan PT1234 dan Penagih Rendy', 'pembayaran_tagihan', 12, '2023-08-24 19:20:19', 1);
INSERT INTO `jurnal_umum` VALUES (605, 'PB/2308-4991', 5, 333000, 0, 'Penerimaan Barang pada tanggal 2023-08-24 dengan Kode PB/2308-4991, No Surat Jalan 21321 dan Pengirim Radiq Ken', 'penerimaan_barang', 39, '2023-08-24 19:33:24', 1);
INSERT INTO `jurnal_umum` VALUES (606, 'PB/2308-4991', 9, 0, 333000, 'Penerimaan Barang pada tanggal 2023-08-24 dengan Kode PB/2308-4991, No Surat Jalan 21321 dan Pengirim Radiq Ken', 'penerimaan_barang', 39, '2023-08-24 19:33:24', 1);
INSERT INTO `jurnal_umum` VALUES (607, 'PT/2308-9518', 9, 300000, 0, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-9518, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 13, '2023-08-24 19:33:56', 1);
INSERT INTO `jurnal_umum` VALUES (608, 'PT/2308-9518', 38, 33000, 0, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-9518, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 13, '2023-08-24 19:33:56', 1);
INSERT INTO `jurnal_umum` VALUES (609, 'PT/2308-9518', 1, 0, 333000, 'Pembayaran Tagihan pada tanggal 2023-08-24 dengan Kode PT/2308-9518, No Tagihan EST/2023/01/112 dan Penagih Rendy', 'pembayaran_tagihan', 13, '2023-08-24 19:33:56', 1);
INSERT INTO `jurnal_umum` VALUES (610, 'PD/2308-8287', 40, 40000, 0, 'Produksi dengan kode PD/2308-8287, Tanggal ', 'produksi', 23, '2023-08-25 18:21:59', 1);
INSERT INTO `jurnal_umum` VALUES (611, 'PD/2308-8287', 5, 0, 40000, 'Produksi dengan kode PD/2308-8287, Tanggal ', 'produksi', 23, '2023-08-25 18:21:59', 1);
INSERT INTO `jurnal_umum` VALUES (612, 'PD/2308-1798', 40, 80000, 0, 'Produksi dengan kode PD/2308-1798, Tanggal ', 'produksi', 24, '2023-08-25 19:01:03', 1);
INSERT INTO `jurnal_umum` VALUES (613, 'PD/2308-1798', 5, 0, 80000, 'Produksi dengan kode PD/2308-1798, Tanggal ', 'produksi', 24, '2023-08-25 19:01:03', 1);
INSERT INTO `jurnal_umum` VALUES (614, 'PD/2308-6131', 40, 100000, 0, 'Produksi dengan kode PD/2308-6131, Tanggal ', 'produksi', 25, '2023-08-25 19:02:28', 1);
INSERT INTO `jurnal_umum` VALUES (615, 'PD/2308-6131', 5, 0, 100000, 'Produksi dengan kode PD/2308-6131, Tanggal ', 'produksi', 25, '2023-08-25 19:02:28', 1);
INSERT INTO `jurnal_umum` VALUES (616, 'PD/2308-6062', 40, 40000, 0, 'Produksi dengan kode PD/2308-6062, Tanggal ', 'produksi', 26, '2023-08-25 19:05:08', 1);
INSERT INTO `jurnal_umum` VALUES (617, 'PD/2308-6062', 5, 0, 40000, 'Produksi dengan kode PD/2308-6062, Tanggal ', 'produksi', 26, '2023-08-25 19:05:08', 1);
INSERT INTO `jurnal_umum` VALUES (618, 'PD/2308-8980', 40, 20000, 0, 'Produksi dengan kode PD/2308-8980, Tanggal ', 'produksi', 27, '2023-08-25 19:11:12', 1);
INSERT INTO `jurnal_umum` VALUES (619, 'PD/2308-8980', 5, 0, 20000, 'Produksi dengan kode PD/2308-8980, Tanggal ', 'produksi', 27, '2023-08-25 19:11:12', 1);
INSERT INTO `jurnal_umum` VALUES (620, 'PD/2308-3846', 40, 20000, 0, 'Produksi dengan kode PD/2308-3846, Tanggal ', 'produksi', 28, '2023-08-25 19:30:14', 1);
INSERT INTO `jurnal_umum` VALUES (621, 'PD/2308-3846', 5, 0, 20000, 'Produksi dengan kode PD/2308-3846, Tanggal ', 'produksi', 28, '2023-08-25 19:30:14', 1);
INSERT INTO `jurnal_umum` VALUES (622, 'PD/2308-1518', 40, 20000, 0, 'Produksi dengan kode PD/2308-1518, Tanggal ', 'produksi', 29, '2023-08-25 19:47:13', 1);
INSERT INTO `jurnal_umum` VALUES (623, 'PD/2308-1518', 5, 0, 20000, 'Produksi dengan kode PD/2308-1518, Tanggal ', 'produksi', 29, '2023-08-25 19:47:13', 1);
INSERT INTO `jurnal_umum` VALUES (624, 'PD/2308-580', 40, 100000, 0, 'Produksi dengan kode PD/2308-580, Tanggal ', 'produksi', 30, '2023-08-25 19:49:53', 1);
INSERT INTO `jurnal_umum` VALUES (625, 'PD/2308-580', 5, 0, 100000, 'Produksi dengan kode PD/2308-580, Tanggal ', 'produksi', 30, '2023-08-25 19:49:53', 1);
INSERT INTO `jurnal_umum` VALUES (626, 'SO-2308-8562', 4, 2775000, 0, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-8562', 'sales_order', 36, '2023-08-25 19:53:44', 1);
INSERT INTO `jurnal_umum` VALUES (627, 'SO-2308-8562', 20, 0, 2500000, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-8562', 'sales_order', 36, '2023-08-25 19:53:44', 1);
INSERT INTO `jurnal_umum` VALUES (628, 'SO-2308-8562', 39, 0, 275000, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-8562', 'sales_order', 36, '2023-08-25 19:53:44', 1);
INSERT INTO `jurnal_umum` VALUES (629, 'SO-2308-1574', 4, 9157500, 0, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-1574', 'sales_order', 37, '2023-08-25 19:58:14', 1);
INSERT INTO `jurnal_umum` VALUES (630, 'SO-2308-1574', 20, 0, 8250000, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-1574', 'sales_order', 37, '2023-08-25 19:58:14', 1);
INSERT INTO `jurnal_umum` VALUES (631, 'SO-2308-1574', 39, 0, 907500, 'Penjualan pada tanggal 2023-08-25 dengan Kode SO-2308-1574', 'sales_order', 37, '2023-08-25 19:58:14', 1);
INSERT INTO `jurnal_umum` VALUES (632, 'Prod-SO-2308-15746024', 40, 20000, 0, 'Produksi dengan kode Prod-SO-2308-15746024, Tanggal ', 'produksi', 31, '2023-08-25 19:59:24', 1);
INSERT INTO `jurnal_umum` VALUES (633, 'Prod-SO-2308-15746024', 5, 0, 20000, 'Produksi dengan kode Prod-SO-2308-15746024, Tanggal ', 'produksi', 31, '2023-08-25 19:59:24', 1);
INSERT INTO `jurnal_umum` VALUES (634, 'INV-2308-9862', 1, 9157500, 0, 'Pembayaran SO pada tanggal 25-08-2023 dengan Kode INV-2308-9862', 'pembayaran_sales_order', 35, '2023-08-25 20:00:38', 1);
INSERT INTO `jurnal_umum` VALUES (635, 'INV-2308-9862', 4, 0, 9157500, 'Pembayaran SO pada tanggal 25-08-2023 dengan Kode INV-2308-9862', 'pembayaran_sales_order', 35, '2023-08-25 20:00:38', 1);
INSERT INTO `jurnal_umum` VALUES (636, 'SO-2308-7044', 4, 1498500, 0, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-7044', 'sales_order', 38, '2023-08-26 14:03:32', 1);
INSERT INTO `jurnal_umum` VALUES (637, 'SO-2308-7044', 20, 0, 1350000, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-7044', 'sales_order', 38, '2023-08-26 14:03:32', 1);
INSERT INTO `jurnal_umum` VALUES (638, 'SO-2308-7044', 39, 0, 148500, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-7044', 'sales_order', 38, '2023-08-26 14:03:32', 1);
INSERT INTO `jurnal_umum` VALUES (639, 'INV-2308-2188', 1, 1498500, 0, 'Pembayaran SO pada tanggal 26-08-2023 dengan Kode INV-2308-2188', 'pembayaran_sales_order', 36, '2023-08-26 14:07:39', 1);
INSERT INTO `jurnal_umum` VALUES (640, 'INV-2308-2188', 4, 0, 1498500, 'Pembayaran SO pada tanggal 26-08-2023 dengan Kode INV-2308-2188', 'pembayaran_sales_order', 36, '2023-08-26 14:07:39', 1);
INSERT INTO `jurnal_umum` VALUES (641, 'SO-2308-9077', 4, 444000, 0, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-9077', 'sales_order', 39, '2023-08-26 15:20:37', 1);
INSERT INTO `jurnal_umum` VALUES (642, 'SO-2308-9077', 20, 0, 400000, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-9077', 'sales_order', 39, '2023-08-26 15:20:37', 1);
INSERT INTO `jurnal_umum` VALUES (643, 'SO-2308-9077', 39, 0, 44000, 'Penjualan pada tanggal 2023-08-26 dengan Kode SO-2308-9077', 'sales_order', 39, '2023-08-26 15:20:37', 1);
INSERT INTO `jurnal_umum` VALUES (644, 'PB/2310-125', 5, 16650000, 0, 'Penerimaan Barang pada tanggal 2023-10-22 dengan Kode PB/2310-125, No Surat Jalan AF/001/V/2023 dan Pengirim Pak Suadi', 'penerimaan_barang', 40, '2023-10-21 23:37:09', 1);
INSERT INTO `jurnal_umum` VALUES (645, 'PB/2310-125', 9, 0, 16650000, 'Penerimaan Barang pada tanggal 2023-10-22 dengan Kode PB/2310-125, No Surat Jalan AF/001/V/2023 dan Pengirim Pak Suadi', 'penerimaan_barang', 40, '2023-10-21 23:37:09', 1);
INSERT INTO `jurnal_umum` VALUES (646, 'PT/2310-1703', 9, 15000000, 0, 'Pembayaran Tagihan pada tanggal 2023-10-23 dengan Kode PT/2310-1703, No Tagihan 995 dan Penagih Endah', 'pembayaran_tagihan', 14, '2023-10-22 05:14:49', 1);
INSERT INTO `jurnal_umum` VALUES (647, 'PT/2310-1703', 1, 0, 15000000, 'Pembayaran Tagihan pada tanggal 2023-10-23 dengan Kode PT/2310-1703, No Tagihan 995 dan Penagih Endah', 'pembayaran_tagihan', 14, '2023-10-22 05:14:49', 1);
INSERT INTO `jurnal_umum` VALUES (648, 'PD/2310-1823', 40, 0, 0, 'Produksi dengan kode PD/2310-1823, Tanggal ', 'produksi', 33, '2023-10-22 10:34:29', 1);
INSERT INTO `jurnal_umum` VALUES (649, 'PD/2310-1823', 5, 0, 0, 'Produksi dengan kode PD/2310-1823, Tanggal ', 'produksi', 33, '2023-10-22 10:34:29', 1);
INSERT INTO `jurnal_umum` VALUES (650, 'INV-2310-6747', 1, 444000, 0, 'Pembayaran SO pada tanggal 22-10-2023 dengan Kode INV-2310-6747', 'pembayaran_sales_order', 37, '2023-10-22 11:18:35', 1);
INSERT INTO `jurnal_umum` VALUES (651, 'INV-2310-6747', 4, 0, 444000, 'Pembayaran SO pada tanggal 22-10-2023 dengan Kode INV-2310-6747', 'pembayaran_sales_order', 37, '2023-10-22 11:18:35', 1);
INSERT INTO `jurnal_umum` VALUES (652, 'PML/1484', 1, 500000, 0, 'Penjualan barang bekas', 'pemasukan_lain', 4, '2023-10-22 15:37:07', 1);
INSERT INTO `jurnal_umum` VALUES (653, 'PML/1484', 19, 0, 500000, 'Penjualan barang bekas', 'pemasukan_lain', 4, '2023-10-22 15:37:07', 1);
INSERT INTO `jurnal_umum` VALUES (654, 'PB/2312-3729', 5, 832500, 0, 'Penerimaan Barang pada tanggal 2023-12-26 dengan Kode PB/2312-3729, No Surat Jalan 31231 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 41, '2023-12-26 20:15:59', 1);
INSERT INTO `jurnal_umum` VALUES (655, 'PB/2312-3729', 9, 0, 832500, 'Penerimaan Barang pada tanggal 2023-12-26 dengan Kode PB/2312-3729, No Surat Jalan 31231 dan Pengirim CV. ANDIKA JAYA', 'penerimaan_barang', 41, '2023-12-26 20:15:59', 1);
INSERT INTO `jurnal_umum` VALUES (656, 'PB/2401-5159', 5, 4672000, 0, 'Penerimaan Barang pada tanggal 2024-01-18 dengan Kode PB/2401-5159, No Surat Jalan SJ/2305-0101 dan Pengirim CV. ANDIKA JAYA 1', 'penerimaan_barang', 42, '2024-01-18 10:51:33', 1);
INSERT INTO `jurnal_umum` VALUES (657, 'PB/2401-5159', 9, 0, 4672000, 'Penerimaan Barang pada tanggal 2024-01-18 dengan Kode PB/2401-5159, No Surat Jalan SJ/2305-0101 dan Pengirim CV. ANDIKA JAYA 1', 'penerimaan_barang', 42, '2024-01-18 10:51:33', 1);
INSERT INTO `jurnal_umum` VALUES (658, 'INV-2401-4741', 1, 2775000, 0, 'Pembayaran SO pada tanggal 21-01-2024 dengan Kode INV-2401-4741', 'pembayaran_sales_order', 38, '2024-01-21 15:40:01', 1);
INSERT INTO `jurnal_umum` VALUES (659, 'INV-2401-4741', 4, 0, 2775000, 'Pembayaran SO pada tanggal 21-01-2024 dengan Kode INV-2401-4741', 'pembayaran_sales_order', 38, '2024-01-21 15:40:01', 1);
INSERT INTO `jurnal_umum` VALUES (660, 'PB/2401-8747', 5, 2000000, 0, 'Penerimaan Barang pada tanggal 2024-01-27 dengan Kode PB/2401-8747, No Surat Jalan 123128 dan Pengirim rendy', 'penerimaan_barang', 43, '2024-01-27 13:35:36', 1);
INSERT INTO `jurnal_umum` VALUES (661, 'PB/2401-8747', 9, 0, 2000000, 'Penerimaan Barang pada tanggal 2024-01-27 dengan Kode PB/2401-8747, No Surat Jalan 123128 dan Pengirim rendy', 'penerimaan_barang', 43, '2024-01-27 13:35:36', 1);
INSERT INTO `jurnal_umum` VALUES (662, 'PT/2401-4789', 9, 2000000, 0, 'Pembayaran Tagihan pada tanggal 2024-01-27 dengan Kode PT/2401-4789, No Tagihan 219329 dan Penagih rendy', 'pembayaran_tagihan', 15, '2024-01-27 13:38:04', 1);
INSERT INTO `jurnal_umum` VALUES (663, 'PT/2401-4789', 38, 220000, 0, 'Pembayaran Tagihan pada tanggal 2024-01-27 dengan Kode PT/2401-4789, No Tagihan 219329 dan Penagih rendy', 'pembayaran_tagihan', 15, '2024-01-27 13:38:04', 1);
INSERT INTO `jurnal_umum` VALUES (664, 'PT/2401-4789', 1, 0, 2220000, 'Pembayaran Tagihan pada tanggal 2024-01-27 dengan Kode PT/2401-4789, No Tagihan 219329 dan Penagih rendy', 'pembayaran_tagihan', 15, '2024-01-27 13:38:04', 1);
INSERT INTO `jurnal_umum` VALUES (665, 'PD/2401-7947', 40, 20000, 0, 'Produksi dengan kode PD/2401-7947, Tanggal ', 'produksi', 36, '2024-01-27 13:57:18', 1);
INSERT INTO `jurnal_umum` VALUES (666, 'PD/2401-7947', 5, 0, 20000, 'Produksi dengan kode PD/2401-7947, Tanggal ', 'produksi', 36, '2024-01-27 13:57:18', 1);
INSERT INTO `jurnal_umum` VALUES (667, 'SO-2401-3266', 4, 219790, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-3266', 'sales_order', 40, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (668, 'SO-2401-3266', 36, 10, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-3266', 'sales_order', 40, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (669, 'SO-2401-3266', 20, 0, 200000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-3266', 'sales_order', 40, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (670, 'SO-2401-3266', 39, 0, 19800, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-3266', 'sales_order', 40, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (671, '8654', 1, 50000, 0, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode 8654', 'pembayaran_sales_order', 39, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (672, '8654', 4, 0, 50000, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode 8654', 'pembayaran_sales_order', 39, '2024-01-27 14:04:40', 1);
INSERT INTO `jurnal_umum` VALUES (673, 'Produksi/9557', 4, 1110000, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode Produksi/9557', 'sales_order', 41, '2024-01-27 14:04:42', 1);
INSERT INTO `jurnal_umum` VALUES (674, 'Produksi/9557', 20, 0, 1000000, 'Penjualan pada tanggal 2024-01-27 dengan Kode Produksi/9557', 'sales_order', 41, '2024-01-27 14:04:42', 1);
INSERT INTO `jurnal_umum` VALUES (675, 'Produksi/9557', 39, 0, 110000, 'Penjualan pada tanggal 2024-01-27 dengan Kode Produksi/9557', 'sales_order', 41, '2024-01-27 14:04:42', 1);
INSERT INTO `jurnal_umum` VALUES (676, '46618', 1, 500000, 0, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode 46618', 'pembayaran_sales_order', 40, '2024-01-27 14:04:42', 1);
INSERT INTO `jurnal_umum` VALUES (677, '46618', 4, 0, 500000, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode 46618', 'pembayaran_sales_order', 40, '2024-01-27 14:04:42', 1);
INSERT INTO `jurnal_umum` VALUES (678, 'SO-2401-2106', 4, 4551000, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-2106', 'sales_order', 42, '2024-01-27 14:08:16', 1);
INSERT INTO `jurnal_umum` VALUES (679, 'SO-2401-2106', 20, 0, 4100000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-2106', 'sales_order', 42, '2024-01-27 14:08:16', 1);
INSERT INTO `jurnal_umum` VALUES (680, 'SO-2401-2106', 39, 0, 451000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-2106', 'sales_order', 42, '2024-01-27 14:08:16', 1);
INSERT INTO `jurnal_umum` VALUES (681, 'Prod-SO-2401-21062011', 40, 20000, 0, 'Produksi dengan kode Prod-SO-2401-21062011, Tanggal ', 'produksi', 38, '2024-01-27 14:11:56', 1);
INSERT INTO `jurnal_umum` VALUES (682, 'Prod-SO-2401-21062011', 5, 0, 20000, 'Produksi dengan kode Prod-SO-2401-21062011, Tanggal ', 'produksi', 38, '2024-01-27 14:11:56', 1);
INSERT INTO `jurnal_umum` VALUES (683, 'INV-2401-7219', 1, 2000000, 0, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode INV-2401-7219', 'pembayaran_sales_order', 41, '2024-01-27 14:13:04', 1);
INSERT INTO `jurnal_umum` VALUES (684, 'INV-2401-7219', 4, 0, 2000000, 'Pembayaran SO pada tanggal 27-01-2024 dengan Kode INV-2401-7219', 'pembayaran_sales_order', 41, '2024-01-27 14:13:04', 1);
INSERT INTO `jurnal_umum` VALUES (685, 'SO-2401-4861', 4, 321900, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-4861', 'sales_order', 43, '2024-01-27 20:09:47', 1);
INSERT INTO `jurnal_umum` VALUES (686, 'SO-2401-4861', 20, 0, 290000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-4861', 'sales_order', 43, '2024-01-27 20:09:47', 1);
INSERT INTO `jurnal_umum` VALUES (687, 'SO-2401-4861', 39, 0, 31900, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-4861', 'sales_order', 43, '2024-01-27 20:09:47', 1);
INSERT INTO `jurnal_umum` VALUES (688, 'SO-2401-1846', 4, 1665000, 0, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-1846', 'sales_order', 44, '2024-01-27 20:40:33', 1);
INSERT INTO `jurnal_umum` VALUES (689, 'SO-2401-1846', 20, 0, 1500000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-1846', 'sales_order', 44, '2024-01-27 20:40:33', 1);
INSERT INTO `jurnal_umum` VALUES (690, 'SO-2401-1846', 39, 0, 165000, 'Penjualan pada tanggal 2024-01-27 dengan Kode SO-2401-1846', 'sales_order', 44, '2024-01-27 20:40:33', 1);

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `province_id` int(11) NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `status_karyawan_id` int(11) NULL DEFAULT NULL,
  `uid_fingerprint` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES (1, 'IF-2305-6534', '350741115505', 'Rendy Yani Susanto', 'Laki-Laki', '+6285894632505', 'Malang', 15, 232, 'rendyyanisusanto@gmail.com', 999, '2023-02-08', 1, '2023-02-08 19:07:22', 1, '2023-12-24 10:04:30', NULL, 2, 111);
INSERT INTO `karyawan` VALUES (2, 'IF-2305-8172', '350741115505', 'Achmad Syaifullah', 'Laki-Laki', '+6281933046907', 'Malang', 15, 232, 'A@gmail.com', 999, '2023-05-17', 1, '2023-05-17 17:55:03', 1, '2024-01-25 10:55:24', NULL, 1, 212);
INSERT INTO `karyawan` VALUES (3, 'IF-2305-2279', '751031', 'Avi Hendratmoko', 'Laki-Laki', '087654321', 'Gg. Masjid Singosari', 15, 232, 'avi@impact.com', 999, '2023-05-01', 1, '2023-05-21 08:41:20', 1, '2023-12-24 10:04:30', NULL, 2, 333);
INSERT INTO `karyawan` VALUES (4, 'IF-2308-253', '350741115505', 'Cicik Winarsih', 'Laki-Laki', '0858946350051', 'Malang', 15, 232, 'cicik1@gmail.com', 999, '2023-08-25', 1, '2023-08-25 20:04:14', 1, '2023-12-24 10:04:30', NULL, 1, 4);
INSERT INTO `karyawan` VALUES (5, 'PGW5996712', 'PGW5996712', 'Abdur Rochim, M.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 999, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 5);
INSERT INTO `karyawan` VALUES (6, 'PGW8192257', 'PGW8192257', 'Pohet Bintoto, S.Pd., M.Si', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 999, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 6);
INSERT INTO `karyawan` VALUES (7, 'PGW894712', 'PGW894712', 'Zein Iqbal Zarkasi, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 7);
INSERT INTO `karyawan` VALUES (8, 'PGW9354518', 'PGW9354518', 'Avi Hendratmoko, S.Kom', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 8);
INSERT INTO `karyawan` VALUES (9, 'PGW3016541', 'PGW3016541', 'M. Maimun Muzakka, S.Kom', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 9);
INSERT INTO `karyawan` VALUES (10, 'PGW6882702', 'PGW6882702', 'Fatat Alvin D. N. S', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 10);
INSERT INTO `karyawan` VALUES (11, 'PGW5401085', 'PGW5401085', 'Revita Fardiani', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 11);
INSERT INTO `karyawan` VALUES (12, 'PGW8689864', 'PGW8689864', 'Ulfatul Rosyidah Al Fikriyah, S.P', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 12);
INSERT INTO `karyawan` VALUES (13, 'PGW5280470', 'PGW5280470', 'Nur Azizah', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 13);
INSERT INTO `karyawan` VALUES (14, 'PGW5429429', 'PGW5429429', 'A. Faldiansyah Havis', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 14);
INSERT INTO `karyawan` VALUES (15, 'PGW2366776', 'PGW2366776', 'Ega Kurniawan', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 15);
INSERT INTO `karyawan` VALUES (16, 'PGW5442651', 'PGW5442651', 'Nadya Anastasya Paramita, S.Or', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 16);
INSERT INTO `karyawan` VALUES (17, 'PGW9708256', 'PGW9708256', 'Rendy Yani Susanto, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 17);
INSERT INTO `karyawan` VALUES (18, 'PGW5697', 'PGW5697', 'Nailatur Risqiyah, S.P', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 18);
INSERT INTO `karyawan` VALUES (19, 'PGW8497439', 'PGW8497439', 'Sutan Taufiq, S.Hum', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 19);
INSERT INTO `karyawan` VALUES (20, 'PGW1478040', 'PGW1478040', 'Roikhatul Uzza, S.Psi', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:15', NULL, NULL, 20);
INSERT INTO `karyawan` VALUES (21, 'PGW1692037', 'PGW1692037', 'Andiani Kristanti, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 21);
INSERT INTO `karyawan` VALUES (22, 'PGW9317115', 'PGW9317115', 'Mohammad Nazibullah, M.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 22);
INSERT INTO `karyawan` VALUES (23, 'PGW3566202', 'PGW3566202', 'Cindy Permata Putri, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 23);
INSERT INTO `karyawan` VALUES (24, 'PGW1367305', 'PGW1367305', 'Syamsul Arifin, S. Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 24);
INSERT INTO `karyawan` VALUES (25, 'PGW6187354', 'PGW6187354', 'Saifudin Mansur, S.TP', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 25);
INSERT INTO `karyawan` VALUES (26, 'PGW996246', 'PGW996246', 'Faridatuz Zakiyah, S.TP', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 26);
INSERT INTO `karyawan` VALUES (27, 'PGW4860105', 'PGW4860105', 'Na\'ilah Fauziyah, S.Pd.,M.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 27);
INSERT INTO `karyawan` VALUES (28, 'PGW9258587', 'PGW9258587', 'Ika Uswatun Hasanah, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 28);
INSERT INTO `karyawan` VALUES (29, 'PGW771656', 'PGW771656', 'Ramadhani Samboga, S.Pd', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 29);
INSERT INTO `karyawan` VALUES (30, 'PGW3399508', 'PGW3399508', 'Farah Rosyidah Diana, S.T', 'Laki-Laki', '0858946350051', 'malang', 15, 232, NULL, 2, '2023-08-25', 1, '2023-08-26 13:38:02', NULL, '2024-01-24 19:11:16', NULL, NULL, 30);
INSERT INTO `karyawan` VALUES (31, 'KR0001', '110111', 'KARYAWAN 1', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2023-12-24', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (32, 'KR0002', '110112', 'KARYAWAN 2', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2023-12-25', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (33, 'KR0003', '110113', 'KARYAWAN 3', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2023-12-26', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (34, 'KR0004', '110114', 'KARYAWAN 4', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2023-12-27', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (35, 'KR0005', '110115', 'KARYAWAN 5', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2023-12-28', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (36, 'KR0006', '110116', 'KARYAWAN 6', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 2, '2023-12-29', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (37, 'KR0007', '110117', 'KARYAWAN 7', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 2, '2023-12-30', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (38, 'KR0008', '110118', 'KARYAWAN 8', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 2, '2023-12-31', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (39, 'KR0009', '110119', 'KARYAWAN 9', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-01', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (40, 'KR0010', '110120', 'KARYAWAN 10', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-02', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (41, 'KR0011', '110121', 'KARYAWAN 11', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-03', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (42, 'KR0012', '110122', 'KARYAWAN 12', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 1, '2024-01-04', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (43, 'KR0013', '110123', 'KARYAWAN 13', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 1, '2024-01-05', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (44, 'KR0014', '110124', 'KARYAWAN 14', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 1, '2024-01-06', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (45, 'KR0015', '110125', 'KARYAWAN 15', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-07', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (46, 'KR0016', '110126', 'KARYAWAN 16', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-08', 1, '2023-12-24 19:57:24', NULL, '2024-01-24 19:11:16', NULL, 1, NULL);
INSERT INTO `karyawan` VALUES (47, 'KR0017', '110127', 'KARYAWAN 17', 'Laki-Laki', '85888585', 'Malang', 15, 232, 'a@gmail.com', 999, '2024-01-09', 1, '2023-12-24 19:57:24', 1, '2024-01-24 19:11:28', NULL, 1, 10111);
INSERT INTO `karyawan` VALUES (48, 'IF-2401-123', '350741115505', 'Agung Hariadi', 'Laki-Laki', '0858946350051', 'Surabaya', 15, 262, 'asdasd@gmail.com', 999, '2024-02-02', 1, '2024-01-26 21:54:01', 1, NULL, NULL, 1, 155);
INSERT INTO `karyawan` VALUES (49, 'IF-2401-2074', '192391293', 'Hariyono', 'Laki-Laki', '08929831231', 'Surabaya', 15, 262, 'danielsitapak@gmail.com', 2, '2024-01-27', 1, '2024-01-27 21:00:22', 1, NULL, NULL, 1, 1966);
INSERT INTO `karyawan` VALUES (50, 'IF-2401-9601', '123', 'Sujai', 'Laki-Laki', '08170542974', 'Benowo', 15, 262, 'sujai@gmail', 999, '2024-01-28', 1, '2024-01-28 10:24:31', 1, NULL, NULL, 1, 1412);
INSERT INTO `karyawan` VALUES (51, 'IF-2401-5991', '123', 'Totok', 'Laki-Laki', '081330250566', 'Kali Lombaru', 15, 262, '', 999, '2024-01-28', 1, '2024-01-28 10:33:24', 1, NULL, NULL, 1, 9999);

-- ----------------------------
-- Table structure for kategori_bahan
-- ----------------------------
DROP TABLE IF EXISTS `kategori_bahan`;
CREATE TABLE `kategori_bahan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_bahan
-- ----------------------------
INSERT INTO `kategori_bahan` VALUES (1, 'B1', 'Bahan Utama', '#2980b9', 1, '2023-02-06 20:01:15', NULL, NULL, NULL);
INSERT INTO `kategori_bahan` VALUES (2, 'B2', 'Bahan Pendukung', '#c0392b', 1, '2023-02-06 20:01:15', NULL, NULL, NULL);
INSERT INTO `kategori_bahan` VALUES (3, 'Bahan8232236', 'Bahan Cadangan', '#000000', 1, '2023-02-06 20:06:37', 1, '2023-02-06 20:07:36', 1);

-- ----------------------------
-- Table structure for kategori_barang
-- ----------------------------
DROP TABLE IF EXISTS `kategori_barang`;
CREATE TABLE `kategori_barang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_barang
-- ----------------------------
INSERT INTO `kategori_barang` VALUES (1, 'K1', 'Kursi', '#8e44ad', 1, '2023-02-06 19:49:29', NULL, NULL, NULL);
INSERT INTO `kategori_barang` VALUES (2, 'K2', 'Meja', '#c0392b', 1, '2023-02-06 19:49:29', NULL, NULL, NULL);
INSERT INTO `kategori_barang` VALUES (3, 'GD/256589', 'Kursi Susun', '#811818', 1, '0000-00-00 00:00:00', NULL, '2023-02-06 19:58:16', 1);
INSERT INTO `kategori_barang` VALUES (4, 'GD/7263129', 'Kursi Coba', '#d31212', 1, '2023-02-06 19:58:29', 1, NULL, NULL);

-- ----------------------------
-- Table structure for konversi_satuan_bahan
-- ----------------------------
DROP TABLE IF EXISTS `konversi_satuan_bahan`;
CREATE TABLE `konversi_satuan_bahan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bahan_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `satuan_id` int(11) NULL DEFAULT NULL,
  `nilai` int(11) NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of konversi_satuan_bahan
-- ----------------------------
INSERT INTO `konversi_satuan_bahan` VALUES (1, 58, 1, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (2, 58, 3, 10, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (3, 58, 4, 100, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (4, 59, 3, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (5, 59, 4, 100, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (6, 60, 1, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (7, 60, 4, 120, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (8, 61, 3, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (9, 61, 4, 500, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (10, 62, 3, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (11, 62, 4, 50, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (12, 63, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (13, 63, 5, 5, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (14, 64, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (15, 64, 4, 1000, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (16, 65, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (17, 65, 4, 50, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (18, 66, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (19, 66, 4, 10, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (20, 67, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (21, 67, 4, 120, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (22, 68, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (23, 68, 4, 100, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (24, 69, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (25, 69, 4, 10, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (26, 69, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (27, 69, 5, 12, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (28, 70, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (29, 70, 5, 12, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (30, 71, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (31, 71, 5, 12, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (32, 72, 2, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (33, 72, 1, 100, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (34, 73, 6, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (35, 73, 4, 10, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (36, 74, 7, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (37, 75, 7, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (38, 76, 7, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (40, 77, 7, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (41, 78, 7, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (42, 79, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (43, 80, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (44, 81, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (45, 82, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (46, 83, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (47, 84, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (48, 85, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (49, 86, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (50, 87, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (51, 88, 8, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (52, 89, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (53, 90, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (54, 91, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (55, 92, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (56, 93, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (57, 94, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (58, 95, 4, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (59, 96, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (60, 97, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (61, 98, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (62, 99, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (63, 100, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (64, 101, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (65, 102, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (66, 103, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (67, 104, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (68, 105, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (69, 106, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (70, 107, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (71, 108, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (72, 109, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (73, 110, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (74, 111, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (75, 112, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (76, 113, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (77, 114, 4, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (78, 115, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (79, 116, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (80, 117, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (81, 118, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (82, 119, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (83, 120, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (84, 121, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (85, 122, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (86, 123, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (87, 124, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (88, 125, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (89, 126, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (90, 127, 4, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (91, 128, 3, 1000, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (92, 145, 1, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (93, 145, 6, 100, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (94, 144, 1, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (95, 143, 3, 1, 1);
INSERT INTO `konversi_satuan_bahan` VALUES (96, 146, 3, 1, 0);
INSERT INTO `konversi_satuan_bahan` VALUES (97, 146, 4, 100, 1);

-- ----------------------------
-- Table structure for log_api
-- ----------------------------
DROP TABLE IF EXISTS `log_api`;
CREATE TABLE `log_api`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `request` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_api
-- ----------------------------
INSERT INTO `log_api` VALUES (1, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"Avi\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAABQAAD\\/4QMtaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\', '');
INSERT INTO `log_api` VALUES (2, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"Avi\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAABQAAD\\/4QMtaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\', '');
INSERT INTO `log_api` VALUES (3, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"tes\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (4, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"trs\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (5, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"rendy\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (6, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"ahmad\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (7, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"Rendy\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (8, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"rendy\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (9, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"avi\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (10, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"acss\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (11, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"achmad\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (12, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"achamad\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (13, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"jai\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (14, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"yayan\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (15, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"pak yayan\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAA', '');
INSERT INTO `log_api` VALUES (16, '', 'data:image/jpeg', '{\"status_kirim\":\"1\",\"penerima\":\"tes\",\"foto_bukti\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH\\/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB', '');

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------
INSERT INTO `login_attempts` VALUES (12, '125.164.2.226', 'agus', 1706412023);

-- ----------------------------
-- Table structure for master_barang_jadi
-- ----------------------------
DROP TABLE IF EXISTS `master_barang_jadi`;
CREATE TABLE `master_barang_jadi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `min_qty` int(11) NULL DEFAULT NULL,
  `satuan_barang_id` int(11) NULL DEFAULT NULL,
  `harga_beli` int(11) NULL DEFAULT NULL,
  `kategori_barang_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `gudang_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_barang_jadi
-- ----------------------------
INSERT INTO `master_barang_jadi` VALUES (1, 'MSBJ/5341588/02/01022023', 'Kursi Kantor', NULL, 11, 2, 200000, 2, '2023-02-01 20:58:29', 1, '2023-06-07 14:47:01', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (2, 'MSBJ/2784949/02/02022023', 'MEJA1', 89, 1, 2, 100000, 2, '2023-02-01 21:15:19', 1, '2023-06-09 10:28:11', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (3, 'MSBJ/8214492/02/02022023', 'MEJA 2', 98, 2, 2, 200000, 1, '2023-02-01 21:15:19', 1, '2023-06-05 19:25:48', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (4, 'MSBJ/8567314/02/02022023', 'MEJA3', 95, 3, 1, 300000, 2, '2023-02-01 21:15:19', 1, '2023-06-07 18:09:09', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (5, 'MSBJ/3334951/02/02022023', 'MEJA4', 97, 4, 1, 400000, 1, '2023-02-01 21:15:19', 1, '2023-06-05 18:58:51', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (6, 'MSBJ/4342382/02/02022023', 'MEJA5', 104, 5, 2, 500000, 2, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:19', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (7, 'MSBJ/63151/02/02022023', 'MEJA6', 105, 6, 2, 600000, 1, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:13', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (8, 'MSBJ/3492136/02/02022023', 'Kursi Gaming', 20, 1, 1, 780000, 1, '2023-02-02 10:45:33', 1, '2023-02-02 11:01:46', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (9, 'MSBJ/3613968/02/04022023', 'Kursi Minimalis 1', 149, 100, 2, 150000, 1, '2023-02-04 13:01:35', 1, '2023-05-20 23:39:15', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (10, 'BRJ1', 'BARANG 1', 10, 1, 1, 1000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (11, 'BRJ2', 'BARANG 2', 20, 2, 1, 2000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (12, 'BRJ3', 'BARANG 3', 30, 3, 1, 3000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (13, 'BRJ4', 'BARANG 4', 40, 4, 1, 4000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (14, 'BRJ5', 'BARANG 5', 50, 5, 1, 5000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (15, 'BRJ6', 'BARANG 6', 60, 6, 1, 6000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (16, 'BRJ7', 'BARANG 7', 70, 7, 1, 7000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (17, 'BRJ8', 'BARANG 8', 80, 8, 1, 8000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (18, 'BRJ9', 'BARANG 9', 90, 9, 1, 9000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (19, 'BRJ10', 'BARANG 10', 100, 10, 1, 10000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (20, 'BRJ11', 'BARANG 11', 110, 11, 1, 11000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (21, 'BRJ12', 'BARANG 12', 120, 12, 1, 12000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (22, 'BRJ13', 'BARANG 13', 130, 13, 1, 13000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (23, 'BRJ14', 'BARANG 14', 140, 14, 1, 14000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (24, 'BRJ15', 'BARANG 15', 150, 15, 1, 15000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (25, 'BRJ16', 'BARANG 16', 160, 16, 1, 16000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_barang_jadi` VALUES (26, 'BRJ17', 'BARANG 17', 170, 17, 1, 17000000, 2, '2023-12-24 19:07:47', NULL, NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for master_data_bahan
-- ----------------------------
DROP TABLE IF EXISTS `master_data_bahan`;
CREATE TABLE `master_data_bahan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `min_qty` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `satuan_pakai_id` int(11) NULL DEFAULT NULL,
  `satuan_beli_id` int(11) NULL DEFAULT NULL,
  `gudang_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `harga_satuan` decimal(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_bahan
-- ----------------------------
INSERT INTO `master_data_bahan` VALUES (2, 'B1470449', 'Paku', 1, 100, NULL, NULL, 1, '2023-02-01 19:17:31', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (3, 'B9689422', 'Kayu', 1, 200, NULL, NULL, 2, '2023-02-01 19:17:59', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (4, 'B6005720', 'Spon', 6, 50, NULL, NULL, 1, '2023-02-01 19:18:39', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (6, 'B2762474', 'PAKU 2', 2, 101, NULL, NULL, 1, '2023-02-01 20:08:49', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (38, 'B3152482', 'PAKU 17', 17, 116, NULL, NULL, 1, '2023-02-01 20:10:31', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (39, 'B7219454', 'PAKU 1', 1, 100, NULL, NULL, 1, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (40, 'B5563214', 'PAKU 2', 2, 101, NULL, NULL, 2, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (42, 'B1657335', 'PAKU 4', 4, 103, NULL, NULL, 2, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (43, 'B2334561', 'PAKU 5', 5, 104, NULL, NULL, 1, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (44, 'B9875118', 'PAKU 6', 6, 105, NULL, NULL, 2, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (45, 'B2964561', 'PAKU 7', 7, 106, NULL, NULL, 1, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (55, 'B6865052', 'PAKU 17', 17, 116, NULL, NULL, 1, '2023-02-01 20:11:44', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (56, 'B484263', 'Paku Payung', 1, 100, NULL, NULL, 5, '2023-02-02 11:09:09', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (57, 'B2077666', 'Besi Plong', 10, 1000, NULL, NULL, 5, '2023-02-04 12:55:51', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (58, 'B5484497', 'Cat Kayu', 1, 0, NULL, NULL, 1, '2023-02-18 10:14:11', 1, '2024-01-27 14:02:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (59, 'B3363445', 'Sekrup', 100, 51, NULL, NULL, 1, '2023-02-18 10:15:30', 1, '2023-06-08 14:39:39', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (60, 'B1536779', 'Baut', 100, 100, NULL, NULL, 1, '2023-02-18 10:16:35', 1, '2023-05-21 07:26:17', 1, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (61, 'B5233007', 'Paku Payung', 1, 1, NULL, NULL, 1, '2023-02-21 11:02:53', 1, '2023-05-21 07:26:17', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (62, 'B2967365', 'Baut 5 mm', 10, 100, NULL, NULL, 1, '2023-02-21 11:04:48', 1, '2023-05-21 07:26:17', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (63, 'B2508009', 'Cat Top X', 10, 90, NULL, NULL, 1, '2023-02-28 19:13:45', 1, '2024-01-27 14:10:32', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (64, 'B7535202', 'Karet Kursi', 100, -2, NULL, NULL, 1, '2023-02-28 19:16:29', 1, '2024-01-21 13:45:48', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (65, 'B4720576', 'Kuas', 1, 213, NULL, NULL, 1, '2023-02-28 19:17:26', 1, '2024-01-21 13:45:48', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (66, 'B4134813', 'Besi A', 0, 484, NULL, NULL, 1, '2023-03-12 19:13:57', 1, '2024-01-27 19:59:50', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (67, 'B05-2680', 'Pipa Plong 60cm', 20, 5, NULL, NULL, 43, '2023-05-20 20:51:28', 1, '2024-01-21 13:45:48', NULL, 1, 20000.00);
INSERT INTO `master_data_bahan` VALUES (68, 'B06-4675', 'Cat Besi', 10, 315, NULL, NULL, 1, '2023-06-06 19:55:35', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (69, 'B/2306-9863', 'Metal Coating - Hitam', 10, 0, NULL, NULL, 999, '2023-06-10 17:15:57', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (70, 'B/2306-2590', 'METAL COATING - Hijau', 10, 0, NULL, NULL, 999, '2023-06-10 17:16:44', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (71, 'B/2306-5490', 'METAL COATING - Putih', 10, 4, NULL, NULL, 999, '2023-06-10 17:17:07', 1, '2023-08-25 19:59:24', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (72, 'B/2308-8915', 'Kusen', 5, 16, NULL, NULL, 1, '2023-08-23 18:01:04', 1, '2023-08-25 22:17:34', NULL, 0, NULL);
INSERT INTO `master_data_bahan` VALUES (73, 'B/2308-9946', 'Brentwood (Kain Hikaron)', 10, 35, NULL, NULL, 1, '2023-08-25 18:12:44', 1, '2023-08-25 19:59:24', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (74, 'B/2308-6254', 'Hidrolis 60 Hitam', 10, 0, NULL, NULL, 1, '2023-08-27 06:06:09', 1, '2023-08-27 22:20:59', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (75, 'B/2308-816', 'Hidrolis 60 Crom', 10, 0, NULL, NULL, 1, '2023-08-27 22:27:32', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (76, 'B/2308-3080', 'Hidrolis 100 Hitam', 10, 0, NULL, NULL, 1, '2023-08-27 22:28:05', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (77, 'B/2308-5536', 'Hidrolis 100 Crom', 10, 0, NULL, NULL, 1, '2023-08-27 22:28:37', 1, '2023-08-27 22:28:51', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (78, 'B/2308-4133', 'Hidrolis 200 Crom', 10, 0, NULL, NULL, 1, '2023-08-27 22:29:36', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (79, 'B/2308-2083', 'Telescop', 10, 0, NULL, NULL, 1, '2023-08-27 22:30:28', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (80, 'B/2308-9959', 'SC-74 (MEKANIS BUTTERFLY) ADA PUTARAN', 10, 4, NULL, NULL, 1, '2023-08-27 22:31:03', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (81, 'B/2308-2207', 'SC-75', 10, 0, NULL, NULL, 1, '2023-08-27 22:31:35', 1, '2023-08-27 22:35:06', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (82, 'B/2308-1701', 'SF-MG-013', 10, 0, NULL, NULL, 1, '2023-08-27 22:32:05', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (83, 'B/2308-2621', 'DP-20 MECHANIS', 10, 0, NULL, NULL, 1, '2023-08-27 22:32:35', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (84, 'B/2308-3319', 'DP-20 LEHER', 10, 0, NULL, NULL, 1, '2023-08-27 22:33:06', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (85, 'B/2308-803', 'PLAT L-BESAR', 10, 0, NULL, NULL, 1, '2023-08-27 22:33:32', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (86, 'B/2308-548', 'IS-76 B', 10, 0, NULL, NULL, 1, '2023-08-27 22:33:59', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (87, 'B/2308-4450', 'M-BAR', 10, 0, NULL, NULL, 1, '2023-08-27 22:34:19', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (88, 'B/2308-7', 'Cakar 260 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:32:44', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (89, 'B/2308-5965', 'Cakar 280 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:33:08', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (90, 'B/2308-9824', 'Cakar 320 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:33:36', 1, '2024-01-27 14:10:32', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (91, 'B/2308-843', 'Cakar 350 PP', 10, 1, NULL, NULL, 1, '2023-08-30 05:33:59', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (92, 'B/2308-7158', 'Cakar 280 Crom', 10, 2, NULL, NULL, 1, '2023-08-30 05:34:50', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (93, 'B/2308-5184', 'Cakar 320 Crom', 10, 2, NULL, NULL, 1, '2023-08-30 05:35:16', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (94, 'B/2308-1555', 'Cakar 350 Crom', 10, 8, NULL, NULL, 1, '2023-08-30 05:35:42', 1, '2024-01-27 19:59:51', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (95, 'B/2308-19', 'ALVT-HM-02/Black (KAKI U) HITAM', 10, 0, NULL, NULL, 1, '2023-08-30 05:36:40', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (96, 'B/2308-4262', 'ALVT (KAKI U) CROM', 10, 0, NULL, NULL, 1, '2023-08-30 05:37:11', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (97, 'B/2308-7150', 'GLIDER TN-11\" (RODA STABIL)', 10, 0, NULL, NULL, 1, '2023-08-30 05:37:43', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (98, 'B/2308-4802', 'Roda (CW.SF)', 10, 0, NULL, NULL, 1, '2023-08-30 05:38:11', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (99, 'B/2308-4328', 'Roda Drat', 10, 0, NULL, NULL, 1, '2023-08-30 05:38:34', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (100, 'B/2308-1398', 'Tangan SF - 011 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:39:03', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (101, 'B/2308-1869', 'Tangan SF - 03 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:39:33', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (102, 'B/2308-4641', 'Tangan SF - 057 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:40:55', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (103, 'B/2308-224', 'Tangan SF - 06 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:41:17', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (104, 'B/2308-4514', 'Tangan SF - 064 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:41:44', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (105, 'B/2308-5683', 'Tangan SF - 002 PP', 10, 0, NULL, NULL, 1, '2023-08-30 05:42:10', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (106, 'B/2308-3592', 'Tangan SF - 067 / SF PP 618', 10, 0, NULL, NULL, 1, '2023-08-30 05:42:50', 1, '2023-08-30 06:58:47', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (107, 'B/2308-7403', 'Tangan SF - 090', 10, 0, NULL, NULL, 1, '2023-08-30 05:43:18', 1, '2023-08-30 06:58:39', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (108, 'B/2308-4371', 'Tangan SF - 196', 10, 0, NULL, NULL, 1, '2023-08-30 06:58:31', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (109, 'B/2308-4402', 'Tangan SF - 198', 10, 0, NULL, NULL, 1, '2023-08-30 06:59:17', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (110, 'B/2308-8105', 'Tangan SF 7S - 03', 10, 0, NULL, NULL, 1, '2023-08-30 06:59:44', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (111, 'B/2308-7343', 'Tangan SF 7S - 07', 10, 0, NULL, NULL, 1, '2023-08-30 07:00:23', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (112, 'B/2308-9799', 'Tangan SF 7S - 21 - 3', 10, 0, NULL, NULL, 1, '2023-08-30 07:00:45', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (113, 'B/2308-2297', 'Tangan SF 7S - 26 - 1', 10, 0, NULL, NULL, 1, '2023-08-30 07:01:10', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (114, 'B/2308-2924', 'TANGAN SF - 024 - 2', 10, 0, NULL, NULL, 1, '2023-08-30 07:01:54', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (115, 'B/2308-1344', 'TANGAN SF - 024 - 1', 10, 0, NULL, NULL, 1, '2023-08-30 07:02:18', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (116, 'B/2308-6945', 'TANGAN SF - 006 PP', 10, 0, NULL, NULL, 1, '2023-08-30 07:02:43', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (117, 'B/2308-8686', 'TANGAN SF - 071 PP', 10, 0, NULL, NULL, 1, '2023-08-30 07:03:05', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (118, 'B/2308-6801', 'STB - 04 (Tangan L)', 10, 0, NULL, NULL, 1, '2023-08-30 07:03:34', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (119, 'B/2308-2988', 'Papan dudukan 100 directure (53 x 53) oval', 10, 0, NULL, NULL, 1, '2023-08-30 07:04:13', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (120, 'B/2308-8098', 'Papan sandaran 100 directure (53 x 76) oval', 10, 10, NULL, NULL, 1, '2023-08-30 07:05:31', 1, '2024-01-18 10:51:33', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (121, 'B/2309-4652', 'Papan dudukan 200 manager (52 x 52) oval', 10, 0, NULL, NULL, 1, '2023-09-02 06:11:53', 1, '2023-09-02 06:17:08', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (122, 'B/2309-2951', 'Papan sandaran 200 manager (58 x 52) oval', 10, 25, NULL, NULL, 1, '2023-09-02 06:12:36', 1, '2024-01-18 10:51:33', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (124, 'B/2309-1859', 'Papan dudukan 100 directure (53 x 53) kotak', 10, 0, NULL, NULL, 1, '2023-09-02 06:15:26', 1, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (125, 'B/2309-6404', 'Papan sandaran 100 directure (53 x 76) kotak', 10, 10, NULL, NULL, 1, '2023-09-02 06:15:56', 1, '2024-01-18 10:51:33', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (126, 'B/2309-1225', 'Papan dudukan 200 manager (52 x 52) kotak', 10, 0, NULL, NULL, 1, '2023-09-02 06:16:28', 1, '2023-09-02 06:18:13', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (127, 'B/2309-1713', 'Papan sandaran 200 manager (58 x 52) kotak', 10, 199, NULL, NULL, 1, '2023-09-02 06:18:47', 1, '2024-01-27 14:02:17', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (128, 'B/2310-5919', 'Paku stainless 0,2', 1, 12, NULL, NULL, 1, '2023-10-22 05:50:09', 1, '2024-01-27 14:02:17', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (129, 'BHN1', 'BAHAN 1', 1, 100, NULL, NULL, 1, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (130, 'BHN2', 'BAHAN 2', 2, 200, NULL, NULL, 2, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (131, 'BHN3', 'BAHAN 3', 3, 300, NULL, NULL, 3, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (132, 'BHN4', 'BAHAN 4', 4, 400, NULL, NULL, 4, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (133, 'BHN5', 'BAHAN 5', 5, 500, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (134, 'BHN6', 'BAHAN 6', 6, 600, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (135, 'BHN7', 'BAHAN 7', 7, 700, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (136, 'BHN8', 'BAHAN 8', 8, 800, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (137, 'BHN9', 'BAHAN 9', 9, 900, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (138, 'BHN10', 'BAHAN 10', 10, 1000, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (139, 'BHN11', 'BAHAN 11', 11, 1100, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (140, 'BHN12', 'BAHAN 12', 12, 1200, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (141, 'BHN13', 'BAHAN 13', 13, 1300, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (142, 'BHN14', 'BAHAN 14', 14, 1400, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_data_bahan` VALUES (143, 'BHN15', 'BAHAN 15', 15, 1501, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, '2024-01-18 10:51:33', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (144, 'BHN16', 'BAHAN 16', 16, 1601, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, '2024-01-18 10:51:33', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (145, 'BHN17', 'BAHAN 17', 17, 1660, NULL, NULL, 35, '2023-12-24 18:43:03', NULL, '2024-01-18 10:51:33', 1, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (146, 'Bahan/2401-3816', 'bahan 1', 80, 200, NULL, NULL, 1, '2024-01-27 13:26:36', 1, '2024-01-27 13:35:36', NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (147, 'BHN100', 'BAHAN 1', 1, 100, NULL, NULL, 1, '2024-01-27 13:28:05', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (148, 'BHN200', 'BAHAN 2', 2, 200, NULL, NULL, 2, '2024-01-27 13:28:05', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (149, 'BHN300', 'BAHAN 3', 3, 300, NULL, NULL, 3, '2024-01-27 13:28:05', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (150, 'BSA-001', 'BUSA 46 X 19 X 1 CM MERAH ( S LIPAT )', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (151, 'BSA-002', 'BUSA 41 X 39 X 1,5 CM ORANGE ( D LIPAT )', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (152, 'BSA-003', 'BUSA 41 X 39 X 1,5 CM PUTIH WF.H 25 (D LIPAT )', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (153, 'BSA-004', 'BUSA 42 X 36 X 2 CM ( S SUSUN )', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (154, 'BSA-005', 'BUSA 46 X 36 X 3CM MERAH ( S SEKRETARIS) F3 MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (155, 'BSA-006', 'BUSA 52 X 46 X 3 - 5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (156, 'BSA-007', 'BUSA 54 X 54 X 4,5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (157, 'BSA-008', 'BUSA 57 X 57 X 4 - 5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (158, 'BSA-009', 'BUSA 58 X 54 X 4 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (159, 'BSA-010', 'BUSA 60 X 58 X 4 - 5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (160, 'BSA-011', 'BUSA 64 X 58 X 4- 5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (161, 'BSA-012', 'BUSA 80 X 60 X 4 - 5 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (162, 'BSA-013', 'BUSA 200 X 10 X 2 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (163, 'BSA-014', 'BUSA 200 X 120 X 1 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (164, 'BSA-015', 'BUSA 200 X 120 X 2 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (165, 'BSA-016', 'BUSA 200 X 120 X 3 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (166, 'BSA-017', 'BUSA 200 X 120 X 4 CM MERAH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (167, 'BSA-018', 'BUSA 200 X 120 X 4 CM PUTIH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (168, 'BSA-019', 'BUSA 200 X 120 X 5 CM PUTIH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (169, 'BSA-020', 'BUSA 200 X 120 X 6 CM PUTIH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (170, 'BSA-021', 'BUSA 200 X 120 X 4 CM PUTIH', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (171, 'BSR-001', 'R 60 30 X 30 X 4', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (172, 'BSR-002', 'R 60 38,5 X 38,5 X 4,5', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (173, 'BSR-003', 'R 60 44 X 42 X 4.5', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (174, 'BSR-004', 'R 60 50 X 43 X 2', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (175, 'BSR-005', 'R 60 52 X 54 X 4', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);
INSERT INTO `master_data_bahan` VALUES (176, 'BSC-001', 'BUSA CETAK | INJECT FOAM ( KURSI SUSUN )', 50, 1, NULL, NULL, 1000, '2024-01-29 09:43:32', NULL, NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for master_data_customer
-- ----------------------------
DROP TABLE IF EXISTS `master_data_customer`;
CREATE TABLE `master_data_customer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `city_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1025 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_customer
-- ----------------------------
INSERT INTO `master_data_customer` VALUES (1, 'CUST/02022023/1136419/20231', 'Rega', '3211', 'begawan pandan sari lor jabung1', 15, 232, 'ahmadmusthofa@gmail.com1', 'CUST/02022023/1136419/20231', 1, '2023-02-02 13:51:00', 1, '2023-06-07 14:56:03', 1);
INSERT INTO `master_data_customer` VALUES (2, 'CUST/11032023/843538/2023', 'Yayan', '1', 'malang', 1, 1, '1@gmail.com', '', 1, '2023-03-11 20:04:38', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (998, 'C998', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-07 12:43:24', NULL, '2023-04-07 12:43:28', NULL);
INSERT INTO `master_data_customer` VALUES (999, 'C999', 'Impact', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-07 12:43:15', NULL, '2023-04-07 12:43:29', NULL);
INSERT INTO `master_data_customer` VALUES (1000, 'CUST/08042023/589/2023', 'Achmad Syaifullah', '085894635005', 'malang', 15, 232, '', '', 1, '2023-04-08 13:26:33', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1001, 'CUST/08042023/9925/2023', 'M. Ashab Firdaus', '0858946350051', 'Jombang', 15, 242, '', '', 1, '2023-04-08 13:26:59', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1002, 'CUST/06052023/3972/2023', 'Rendy Yani Susanto', '0894665523', 'malang', 15, 232, '', '', 1, '2023-05-06 20:07:34', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1003, 'CUST/06052023/2162/2023', 'Ezhar', '081933046907', 'malang', 15, 232, '', '', 1, '2023-05-06 20:09:36', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1004, 'CUST/07052023/7960/2023', 'Cicik', '081933046907', 'malang', 15, 257, '', '', 1, '2023-05-07 07:59:13', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1005, 'CUST-202305-5526', 'Prodesign', '085755469995', 'Jimbaran Bali', 17, 273, 'masze@prodesign.com', '', 1, '2023-05-20 21:54:05', 1, '2023-05-20 21:54:17', NULL);
INSERT INTO `master_data_customer` VALUES (1006, 'CUST-2308-3586', 'Nelson Tenbak', '08547855200', 'Papua', 34, 471, 'nelson@gmail.com', '', 1, '2023-08-25 19:52:35', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1007, 'CUST-2310-1308', 'CV Empat sekawan', '0880192839012', 'Jl. Suprapto', 15, 257, '4sekawan@gmail.com', '-', 1, '2023-10-22 10:46:07', 1, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1008, 'CS1', 'Customer 1', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', 'ini deskripsi', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1009, 'CS2', 'Customer 2', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1010, 'CS3', 'Customer 3', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1011, 'CS4', 'Customer 4', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1012, 'CS5', 'Customer 5', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1013, 'CS6', 'Customer 6', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1014, 'CS7', 'Customer 7', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1015, 'CS8', 'Customer 8', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1016, 'CS9', 'Customer 9', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1017, 'CS10', 'Customer 10', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1018, 'CS11', 'Customer 11', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1019, 'CS12', 'Customer 12', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1020, 'CS13', 'Customer 13', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', NULL, '2023-12-24 18:53:15', NULL, NULL, NULL);
INSERT INTO `master_data_customer` VALUES (1021, 'CS14', 'Customer 14', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', 1, '2023-12-24 18:53:15', NULL, '2024-01-25 18:24:08', NULL);
INSERT INTO `master_data_customer` VALUES (1022, 'CS15', 'Customer 15', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', 1, '2023-12-24 18:53:15', NULL, '2024-01-25 18:24:06', NULL);
INSERT INTO `master_data_customer` VALUES (1023, 'CS16', 'Customer 16', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', 1, '2023-12-24 18:53:15', NULL, '2023-12-24 18:53:30', NULL);
INSERT INTO `master_data_customer` VALUES (1024, 'CS17', 'Customer 17', '8589462335', 'Malang', NULL, NULL, 'cs1@gmail.com', '', 1, '2023-12-24 18:53:15', NULL, '2023-12-24 18:53:28', NULL);

-- ----------------------------
-- Table structure for master_data_suplier
-- ----------------------------
DROP TABLE IF EXISTS `master_data_suplier`;
CREATE TABLE `master_data_suplier`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `alamat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_suplier
-- ----------------------------
INSERT INTO `master_data_suplier` VALUES (12, 'MST/5662615/2023', 'FM BAEL - 123', '55645555s', 257, 'Malang', 'by998@digipen.edus', 'MST/5662615/2023', 1, '2023-01-25 19:20:55', 1, '2023-01-25 19:33:35', 0, 15);
INSERT INTO `master_data_suplier` VALUES (13, 'MST/6038917/2023', 'PT. Integritas Papua Mandiri', '085894635005', 471, 'Papua', 'A@gmail.com', '', 1, '2023-01-31 09:01:19', 1, '2023-01-31 09:01:19', 0, 34);
INSERT INTO `master_data_suplier` VALUES (15, 'MST/2995593/2023', 'Bagyo Adi', '087621643713', 262, 'Jl. Pacarkeling Surabaya', 'bagyoadi@gmail.com', '-', 1, '2023-02-04 12:33:18', 1, '2023-02-04 12:33:40', 1, 15);
INSERT INTO `master_data_suplier` VALUES (16, 'MST/5408874/2023', 'PT Tjiwi', '085894635005', 262, 'Surabaya', 'A@gmail.com', 'Suplier Kertas', 1, '2023-03-12 19:05:45', 1, '2023-03-12 19:05:45', 0, 15);
INSERT INTO `master_data_suplier` VALUES (17, 'MST/9879370/2023', 'Sinar Jaya', '+6285894632505', 262, 'Surabaya', '', 'Suplier Besi', 1, '2023-03-12 19:09:51', 1, '2023-03-12 19:09:51', 0, 15);
INSERT INTO `master_data_suplier` VALUES (18, 'MST/5774/2023', 'Tokorejo', '085894635005', 262, 'Surabaya', 'tokorejo.center@gmail.com', '', 1, '2023-03-31 18:13:59', 1, '2023-03-31 18:13:59', 0, 15);
INSERT INTO `master_data_suplier` VALUES (19, '', 'UMUM', '', 0, NULL, '', '', 1, '2023-04-08 14:32:57', 0, '2023-04-08 14:33:20', 0, NULL);
INSERT INTO `master_data_suplier` VALUES (20, 'SUPP/7833/2023', 'CV. ANDIKA JAYA', '081234567890', 228, 'Trenggalek', 'andikajaya@gmail.com', '', 1, '2023-05-20 20:40:43', 1, '2023-05-20 20:41:01', 1, 15);
INSERT INTO `master_data_suplier` VALUES (21, 'SUP/9665/23/9665', 'Cicik Winarsih', '+6285894632505', 232, 'Malang', 'cicik1@gmail.com', '', 1, '2023-06-04 20:34:59', 1, '2023-06-04 20:36:26', 1, 15);
INSERT INTO `master_data_suplier` VALUES (22, 'SUP/5783/23/5783', 'PT. Tembaga', '+6285894632505', 262, 'Surabaya', 'A@gmail.com', 'asd', 0, '2023-06-10 09:34:43', 1, '2023-08-25 21:49:29', 0, 15);
INSERT INTO `master_data_suplier` VALUES (23, 'SUP/2306-1963', 'PT TATA WARNA', '0812345654321', 232, 'Jalan Letnan Adi Sucipto No 101 ', 'sales@tatawarna.co.id', '', 1, '2023-06-10 17:20:57', 1, '2023-10-21 20:36:07', 0, 15);

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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2);

-- ----------------------------
-- Table structure for mutasi_bahan
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_bahan`;
CREATE TABLE `mutasi_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mutasi_bahan
-- ----------------------------
INSERT INTO `mutasi_bahan` VALUES (2, 'MB/2401-8201/1', '2024-01-26', 'Keperluan tambahan', 1, '2024-01-26 21:03:52', 1);
INSERT INTO `mutasi_bahan` VALUES (3, 'MB/2401-3099/1', '2024-01-27', '', 1, '2024-01-27 13:52:16', 1);
INSERT INTO `mutasi_bahan` VALUES (4, 'MB/2401-9987/1', '2024-01-27', 'Coba', 1, '2024-01-27 13:53:08', 1);

-- ----------------------------
-- Table structure for pemasukan_lain
-- ----------------------------
DROP TABLE IF EXISTS `pemasukan_lain`;
CREATE TABLE `pemasukan_lain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `total` double(20, 2) NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `akun_beban` int(11) NULL DEFAULT NULL,
  `akun_kas` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pemasukan_lain
-- ----------------------------
INSERT INTO `pemasukan_lain` VALUES (2, 'PML/7589', 'Jual TV Bekas', '2023-04-28', 550000.00, '2023-04-28 10:29:00', 19, 1);
INSERT INTO `pemasukan_lain` VALUES (3, 'PML/1534', 'Jual Barang Bekas', '2023-04-28', 750000.00, '2023-04-28 10:38:47', 21, 1);
INSERT INTO `pemasukan_lain` VALUES (4, 'PML/1484', 'Penjualan barang bekas', '2023-10-22', 500000.00, '2023-10-22 15:37:07', 19, 1);

-- ----------------------------
-- Table structure for pembayaran_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran_purchase_order`;
CREATE TABLE `pembayaran_purchase_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cara_bayar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `po_id` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pembayaran_sales_order
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran_sales_order`;
CREATE TABLE `pembayaran_sales_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `so_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` decimal(20, 0) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembayaran_sales_order
-- ----------------------------
INSERT INTO `pembayaran_sales_order` VALUES (1, 4, 'PBSO4312720', 600000, '2023-03-11', '2023-03-11 20:02:04', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (2, 4, 'PBSO4312720', 600000, '2023-03-11', '2023-03-11 20:02:51', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (3, 4, 'PBSO4312720', 600000, '2023-03-11', '2023-03-11 20:03:16', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (4, 7, '20275', 300000, '2023-03-11', '2023-03-11 20:05:35', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (5, 8, 'PBSO7717387', 600000, '2023-03-11', '2023-03-11 20:07:53', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (6, 9, '4838', 50000, '2023-03-12', '2023-03-12 19:20:03', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (7, 10, '22818', 500000, '2023-04-07', '2023-04-07 11:11:00', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (8, 11, '7423', 220000, '2023-04-07', '2023-04-07 19:16:37', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (9, 13, '52405', 200000, '2023-04-08', '2023-04-08 14:40:55', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (10, 16, '99275', 500000, '2023-04-08', '2023-04-08 15:17:13', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (11, 18, '48621', 100000, '2023-05-06', '2023-05-06 20:10:15', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (12, 19, '94500', 100000, '2023-05-07', '2023-05-07 07:59:54', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (15, 19, 'P222012', 75000, '2023-05-07', '2023-05-07 09:52:29', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (16, 20, '3687', 500000, '2023-05-07', '2023-05-07 12:46:08', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (17, 21, '15337', 100000, '2023-05-07', '2023-05-07 15:23:15', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (18, 21, 'P988968', 200000, '2023-05-07', '2023-05-07 15:24:03', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (19, 23, 'P954262', 6500000, '2023-05-20', '2023-05-20 22:15:45', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (20, 23, 'P834605', 100000, '2023-05-20', '2023-05-20 22:35:56', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (21, 21, 'P338719', 400000, '2023-05-20', '2023-05-20 22:37:33', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (22, 24, 'INV-2305-8818', 10000, '2023-05-21', '2023-05-21 00:11:06', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (23, 24, 'INV-2305-566', 10000, '2023-05-21', '2023-05-21 07:02:29', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (24, 25, '83806', 10000, '2023-05-21', '2023-05-21 07:53:20', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (25, 26, '23104', 300000, '2023-06-05', '2023-06-05 16:46:43', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (26, 27, '83627', 1000000, '2023-06-05', '2023-06-05 17:49:04', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (27, 28, 'INV-2306-6789', 120000, '2023-06-05', '2023-06-05 18:58:51', 1, '2023-06-09 08:12:27', NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (28, 34, 'INV-2306-1459', 500000, '2023-06-09', '2023-06-09 08:19:47', 1, '2023-06-09 08:33:06', NULL, 0, 0);
INSERT INTO `pembayaran_sales_order` VALUES (29, 34, 'INV-2306-7568', 400000, '2023-06-09', '2023-06-09 08:20:18', 1, '2023-06-09 08:33:05', NULL, 0, 0);
INSERT INTO `pembayaran_sales_order` VALUES (30, 35, 'INV-2306-3877', 100000, '2023-06-09', '2023-06-09 10:28:49', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (31, 35, 'INV-2306-192', 50000, '2023-06-09', '2023-06-09 10:30:38', 1, '2023-06-09 11:04:45', NULL, 0, 0);
INSERT INTO `pembayaran_sales_order` VALUES (32, 35, 'INV-2306-654', 25000, '2023-06-09', '2023-06-09 11:27:16', 1, NULL, NULL, 1, 1);
INSERT INTO `pembayaran_sales_order` VALUES (33, 35, 'INV-2306-8762', 75000, '2023-06-09', '2023-06-09 11:30:30', 1, NULL, NULL, 1, 1);
INSERT INTO `pembayaran_sales_order` VALUES (34, 33, 'INV-2306-2922', 1074500, '2023-06-09', '2023-06-09 15:20:04', 1, '2023-06-16 18:08:01', 1, 1, 0);
INSERT INTO `pembayaran_sales_order` VALUES (35, 37, 'INV-2308-9862', 9157500, '2023-08-25', '2023-08-25 20:00:38', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (36, 38, 'INV-2308-2188', 1498500, '2023-08-26', '2023-08-26 14:07:39', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (37, 39, 'INV-2310-6747', 444000, '2023-10-22', '2023-10-22 11:18:35', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (38, 36, 'INV-2401-4741', 2775000, '2024-01-21', '2024-01-21 15:40:01', 1, '2024-01-21 15:40:12', 1, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (39, 40, '8654', 50000, '2024-01-27', '2024-01-27 14:04:40', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (40, 41, '46618', 500000, '2024-01-27', '2024-01-27 14:04:42', 1, NULL, NULL, 0, 1);
INSERT INTO `pembayaran_sales_order` VALUES (41, 42, 'INV-2401-7219', 2000000, '2024-01-27', '2024-01-27 14:13:04', 1, NULL, NULL, 1, 1);

-- ----------------------------
-- Table structure for pembayaran_tagihan
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran_tagihan`;
CREATE TABLE `pembayaran_tagihan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` decimal(20, 0) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  `no_tagihan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penagih` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jatuh_tempo` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `diskon` decimal(10, 2) NULL DEFAULT NULL,
  `is_ppn` tinyint(1) NULL DEFAULT NULL,
  `ppn_id` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT NULL,
  `total_ppn` decimal(10, 2) NULL DEFAULT NULL,
  `suplier_id` int(11) NULL DEFAULT NULL,
  `total_bayar` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembayaran_tagihan
-- ----------------------------
INSERT INTO `pembayaran_tagihan` VALUES (1, 'Nota/PT/1334', 1111000, '2023-04-04', '2023-04-04 19:40:07', 1, '2023-04-08 14:10:56', NULL, 0, 1, 'PT123', 'Rendy', '2023-04-13', '-', 110000.00, 1, 1, 1100000.00, 121000.00, 17, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (2, 'Nota/PT/4723', 1526000, '2023-04-04', '2023-04-04 20:07:12', 1, '2023-04-04 20:07:49', NULL, 0, 1, 'EST/2023/01/112', 'Yohan', '2023-04-05', '-', 28000.00, 1, 1, 1400000.00, 154000.00, 18, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (3, 'Nota/PT/3620', 2220000, '2023-04-07', '2023-04-07 18:57:33', 1, '2023-04-08 14:52:11', NULL, 0, 1, 'PT123', 'Rendy', '2023-04-07', '', 0.00, 1, 1, 2000000.00, 220000.00, 17, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (4, 'Nota/PT/6520', 55500, '2023-04-08', '2023-04-08 15:11:05', 1, '2023-04-08 15:12:51', NULL, 0, 0, 'EST/2023/01/112', 'Rendy', '2023-04-08', '', 0.00, 1, 1, 50000.00, 5500.00, 13, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (5, 'Nota/PT/5926', 500000, '2023-04-21', '2023-04-21 14:35:12', 1, '2023-04-21 16:38:48', 1, 1, 1, 'PT1234', 'Rendy1', '2023-04-29', 'asd1', 0.00, 0, 0, 500000.00, 0.00, 19, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (6, 'Nota/PT/7703', 1000000, '2023-05-05', '2023-05-05 21:16:58', 1, NULL, NULL, 0, 1, '123', 'Rendy', '2023-05-05', '', 0.00, 0, 0, 1000000.00, 0.00, 18, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (7, 'Nota/PT/1878', 500000, '2023-05-05', '2023-05-05 21:23:12', 1, NULL, NULL, 0, 1, 'EST/2023/01/112', 'Rendy', '2023-05-05', '', 0.00, 0, 0, 500000.00, 0.00, 18, NULL);
INSERT INTO `pembayaran_tagihan` VALUES (8, 'Nota/PT/2232', 1000000, '2023-05-05', '2023-05-05 21:24:27', 1, NULL, NULL, 0, 1, 'EST/2023/01/11223', 'Rendy', '2023-05-05', '', 0.00, 0, 0, 1000000.00, 0.00, 18, 100000.00);
INSERT INTO `pembayaran_tagihan` VALUES (9, 'Nota/PT/1641', 162500, '2023-05-07', '2023-05-07 14:48:50', 1, NULL, NULL, 0, 1, 'EST/2023/01/112', 'Rendy', '2023-05-07', '', 0.00, 0, 0, 162500.00, 0.00, 18, 162500.00);
INSERT INTO `pembayaran_tagihan` VALUES (10, 'Nota/PT/6993', 225000, '2023-05-07', '2023-05-07 15:21:32', 1, NULL, NULL, 0, 1, 'EST/2023/01/112', 'Rendy', '2023-05-07', '', 0.00, 0, 0, 225000.00, 0.00, 18, 225000.00);
INSERT INTO `pembayaran_tagihan` VALUES (11, 'PT-2306-216', 3500000, '2023-06-10', '2023-06-10 08:47:53', 1, NULL, NULL, 0, 1, 'PT1234', 'Rendy', '2023-06-10', 'asd', 0.00, 0, 0, 3500000.00, 0.00, 17, 3500000.00);
INSERT INTO `pembayaran_tagihan` VALUES (12, 'PT/2308-7144', 222000, '2023-08-24', '2023-08-24 19:20:19', 1, NULL, NULL, 0, 1, 'PT1234', 'Rendy', '2023-08-25', '312', 0.00, 1, 1, 200000.00, 22000.00, 20, 220000.00);
INSERT INTO `pembayaran_tagihan` VALUES (13, 'PT/2308-9518', 333000, '2023-08-24', '2023-08-24 19:33:56', 1, NULL, NULL, 0, 1, 'EST/2023/01/112', 'Rendy', '2023-08-24', 'aasd', 0.00, 1, 1, 300000.00, 33000.00, 20, 0.00);
INSERT INTO `pembayaran_tagihan` VALUES (14, 'PT/2310-1703', 15000000, '2023-10-23', '2023-10-22 05:14:49', 1, '2023-10-22 05:16:02', 1, 1, 1, '995', 'Endah', '2023-10-23', 'Lunas', 0.00, 0, 0, 15000000.00, 0.00, 17, 0.00);
INSERT INTO `pembayaran_tagihan` VALUES (15, 'PT/2401-4789', 2220000, '2024-01-27', '2024-01-27 13:38:04', 1, NULL, NULL, 0, 1, '219329', 'rendy', '2024-01-27', '', 0.00, 1, 1, 2000000.00, 220000.00, 13, 2000000.00);

-- ----------------------------
-- Table structure for penerimaan_barang
-- ----------------------------
DROP TABLE IF EXISTS `penerimaan_barang`;
CREATE TABLE `penerimaan_barang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `purchase_order_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `no_surat_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gudang_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `nama_pengirim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  `total_pembayaran` decimal(20, 2) NULL DEFAULT NULL,
  `nilai_pb` decimal(20, 2) NULL DEFAULT NULL,
  `is_ppn` tinyint(1) NULL DEFAULT 0,
  `ppn_id` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` decimal(20, 2) NULL DEFAULT NULL,
  `total` decimal(20, 2) NULL DEFAULT NULL,
  `total_ppn` decimal(20, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penerimaan_barang
-- ----------------------------
INSERT INTO `penerimaan_barang` VALUES (3, 'PB-6753369', 8, '123', 1, '2023-03-02', 'Rendy', '', 1, '2023-03-02 11:40:22', 1, '2023-03-29 18:53:00', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (4, 'PB-8187181', 11, '123', 1, '2023-03-12', 'Rendy', 'asd', 0, '2023-03-12 19:16:29', 1, '2023-03-28 19:55:12', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (5, 'PB-3614', 11, '1', 1, '2023-03-28', 'Rendy', 'asd', 1, '2023-03-28 11:02:55', 1, '2023-03-28 19:55:11', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (6, 'PB-3614', 11, '1', 1, '2023-03-28', 'Rendy', 'asd', 1, '2023-03-28 11:03:06', 1, '2023-03-28 19:55:11', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (10, 'PB-9521', 13, '123', 1, '2023-03-30', 'Rendy', '', 0, '2023-03-30 10:03:20', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (11, 'PB-6380', 13, '123', 1, '2023-03-30', 'Rendy', '123', 0, '2023-03-30 10:15:49', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (12, 'PB-3093', 14, '123', 1, '2023-03-31', 'Rendy', '', 0, '2023-03-31 18:16:40', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (13, 'PB-7041', 15, '123', 1, '2023-04-07', 'Rendy', '', 0, '2023-04-07 18:41:14', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (14, 'PB-2655', 16, '123', 1, '2023-04-07', '-', '', 0, '2023-04-07 18:49:54', 1, '2023-04-08 14:51:58', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (15, 'PB-9434', 16, '21321', 1, '2023-04-07', 'Rendy', '1', 0, '2023-04-07 18:50:45', 1, '2023-04-08 14:51:58', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (16, 'PB-802', 18, '123', 1, '2023-04-08', 'Rendy', '', 0, '2023-04-08 15:07:35', 1, '2023-04-08 15:12:57', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (17, 'PB-9187', 18, '21321', 1, '2023-04-08', 'Rendy', '1', 0, '2023-04-08 15:08:31', 1, '2023-04-08 15:12:57', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (18, 'PB-7566', 19, '21321', 1, '2023-04-20', 'Rendy', 'tes', 0, '2023-04-20 09:27:06', 1, '2023-04-21 14:33:34', 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (19, 'PB-8922', 19, '123', 1, '2023-04-21', 'Rendy', '-', 0, '2023-04-21 16:27:29', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (20, 'PB-5037', 20, '21321', 1, '2023-04-27', 'Rendy', '-', 0, '2023-04-27 15:15:10', 1, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (22, 'PB-580', 22, '123', 1, '2023-05-05', 'Rendy', '-', 1, '2023-05-05 19:41:45', 1, NULL, NULL, 1, NULL, 500000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (23, 'PB-540', 22, '44441', 1, '2023-05-05', 'Rendy', '-', 0, '2023-05-05 19:58:58', 1, NULL, NULL, 1, NULL, 1000000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (24, 'PB-7098', 23, '7398127', 1, '2023-05-07', 'Rendy', '', 0, '2023-05-07 14:47:33', 1, NULL, NULL, 1, NULL, 162500.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (25, 'PB-7781', 24, '1', 1, '2023-05-07', 'Rendy', '', 0, '2023-05-07 15:20:27', 1, NULL, NULL, 1, NULL, 225000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (26, 'PB-202305-3296', 25, 'SJ/2305-0101', 43, '2023-05-20', 'CV. ANDIKA JAYA', '', 0, '2023-05-20 21:15:33', 1, '2023-05-20 21:20:09', 1, 1, NULL, 600000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (27, 'PB-2306-2093', 26, '123', 1, '2023-06-06', 'Rendy', '', 0, '2023-06-06 20:24:35', 1, NULL, NULL, 1, NULL, 100.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (28, 'PB-2306-5827', 27, '123313', 1, '2023-06-06', 'CV. ANDIKA JAYA', '', 0, '2023-06-06 20:27:24', 1, NULL, NULL, 1, NULL, 10270000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (29, 'PB-2306-5827', 27, '123313', 1, '2023-06-06', 'CV. ANDIKA JAYA', '', 0, '2023-06-06 20:27:26', 1, NULL, NULL, 1, NULL, 10270000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (30, 'PB-2306-5827', 27, '123313', 1, '2023-06-06', 'CV. ANDIKA JAYA', '', 0, '2023-06-06 20:27:31', 1, NULL, NULL, 1, NULL, 10270000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (31, 'PB-2306-5827', 27, '123313', 1, '2023-06-06', 'CV. ANDIKA JAYA', '', 0, '2023-06-06 20:27:54', 1, NULL, NULL, 1, NULL, 10270000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (32, 'PB-2306-581', 28, '44544', 1, '2023-06-10', 'Radiq Ken', 'tes', 0, '2023-06-10 08:46:13', 1, NULL, NULL, 1, NULL, 3500000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (33, 'PB-2306-5313', 29, '21321', 1, '2023-06-10', 'Rendy', '', 0, '2023-06-10 09:36:24', 1, NULL, NULL, 1, NULL, 1000000.00, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `penerimaan_barang` VALUES (34, 'PB-2306-381', 31, '21321', 1, '2023-06-10', 'CV. ANDIKA JAYA', 'kl', 0, '2023-06-10 12:03:10', 1, NULL, NULL, 1, NULL, 800000.00, 1, 1, 800000.00, 10.00, 799200.00, 79200.00);
INSERT INTO `penerimaan_barang` VALUES (35, 'PB-2306-1281', 32, '21321', 1, '2023-06-03', 'CV. ANDIKA JAYA', '123', 1, '2023-06-10 12:10:22', 1, '2023-06-10 15:06:05', 1, 0, NULL, 800000.00, 1, 1, 800000.00, 20.00, 710400.00, 70400.00);
INSERT INTO `penerimaan_barang` VALUES (36, 'PB-2306-9466', 33, '21321', 1, '2023-06-10', 'Rendy', '12', 0, '2023-06-10 16:42:27', 1, NULL, NULL, 1, NULL, 1100000.00, 1, 1, 1100000.00, 10.00, 1098900.00, 108900.00);
INSERT INTO `penerimaan_barang` VALUES (37, 'PB/2308-8424', 34, '21321', 1, '2023-08-23', 'Radiq Ken', 'lengkap', 0, '2023-08-23 18:31:46', 1, '2023-08-23 18:32:24', 1, 1, NULL, 600000.00, 1, 1, 600000.00, 0.00, 666000.00, 66000.00);
INSERT INTO `penerimaan_barang` VALUES (38, 'PB/2308-1649', 36, '123', 1, '2023-08-23', 'CV. ANDIKA JAYA', 'af', 0, '2023-08-24 18:46:23', 1, NULL, NULL, 1, NULL, 200000.00, 1, 1, 500000.00, 0.00, 555000.00, 55000.00);
INSERT INTO `penerimaan_barang` VALUES (39, 'PB/2308-4991', 36, '21321', 1, '2023-08-24', 'Radiq Ken', 'er', 0, '2023-08-24 19:33:24', 1, NULL, NULL, 1, NULL, 300000.00, 1, 1, 300000.00, 0.00, 333000.00, 33000.00);
INSERT INTO `penerimaan_barang` VALUES (40, 'PB/2310-125', 38, 'AF/001/V/2023', 1, '2023-10-22', 'Pak Suadi', 'Lengkap', 1, '2023-10-21 23:37:09', 1, NULL, NULL, 1, NULL, 15000000.00, 1, 1, 15000000.00, 0.00, 16650000.00, 1650000.00);
INSERT INTO `penerimaan_barang` VALUES (41, 'PB/2312-3729', 40, '31231', 4, '2023-12-26', 'CV. ANDIKA JAYA', 'eqw', 0, '2023-12-26 20:15:59', 1, NULL, NULL, 1, NULL, 750000.00, 1, 1, 750000.00, 0.00, 832500.00, 82500.00);
INSERT INTO `penerimaan_barang` VALUES (42, 'PB/2401-5159', 41, 'SJ/2305-0101', 1, '2024-01-18', 'CV. ANDIKA JAYA 1', '', 0, '2024-01-18 10:51:33', 1, NULL, NULL, 1, NULL, 4672000.00, 0, 0, 4672000.00, 0.00, 4672000.00, 0.00);
INSERT INTO `penerimaan_barang` VALUES (43, 'PB/2401-8747', 42, '123128', 1, '2024-01-27', 'rendy', '', 0, '2024-01-27 13:35:36', 1, NULL, NULL, 1, NULL, 2000000.00, 0, 0, 2000000.00, 0.00, 2000000.00, 0.00);

-- ----------------------------
-- Table structure for penyesuaian_stok
-- ----------------------------
DROP TABLE IF EXISTS `penyesuaian_stok`;
CREATE TABLE `penyesuaian_stok`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penyesuaian_stok
-- ----------------------------
INSERT INTO `penyesuaian_stok` VALUES (2, 'PS/200', '2023-07-04', '13aqw', '2023-07-04 19:33:01', 1, NULL, NULL, 1);
INSERT INTO `penyesuaian_stok` VALUES (3, 'PS/2564', '2023-07-04', 'Penyesuaian stok akhir bulan', '2023-07-04 19:46:33', 1, NULL, NULL, 0);
INSERT INTO `penyesuaian_stok` VALUES (4, 'PS/7226', '2023-10-22', 'Paku', '2023-10-22 09:45:51', 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for ppn
-- ----------------------------
DROP TABLE IF EXISTS `ppn`;
CREATE TABLE `ppn`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppn
-- ----------------------------
INSERT INTO `ppn` VALUES (1, 'PPN-6277925', 11, 1, '2023-02-07 08:00:49', 1, '2023-02-15 11:03:35', 1, 1);
INSERT INTO `ppn` VALUES (2, 'PPN-8646330', 10, 1, '2023-02-15 11:03:25', 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for presensi
-- ----------------------------
DROP TABLE IF EXISTS `presensi`;
CREATE TABLE `presensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_shift_id` int(11) NULL DEFAULT NULL,
  `karyawan_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `gudang_id` int(11) NULL DEFAULT NULL,
  `shift_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shift_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actual_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actual_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of presensi
-- ----------------------------
INSERT INTO `presensi` VALUES (2, 1, 1, '2023-05-18', 1, '18:25', '22:25', '', '');
INSERT INTO `presensi` VALUES (3, 5, 2, '2023-05-03', 1, '18:57', '18:58', '', '');
INSERT INTO `presensi` VALUES (4, 2, 1, '2023-05-04', 1, '08:58', '18:58', '', '');
INSERT INTO `presensi` VALUES (5, 3, 1, '2023-05-01', 1, '20:13', '05:14', '', '');
INSERT INTO `presensi` VALUES (6, 4, 1, '2023-05-14', 1, '19:14', '19:14', '', '');
INSERT INTO `presensi` VALUES (7, 4, 2, '2023-05-09', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (8, 4, 1, '2023-05-02', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (9, 1, 2, '2023-05-01', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (10, 1, 2, '2023-05-02', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (11, 1, 1, '2023-05-03', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (12, 3, 2, '2023-05-04', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (13, 2, 1, '2023-05-05', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (14, 2, 2, '2023-05-05', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (15, 5, 1, '2023-05-07', 1, '19:15', '19:15', '', '');
INSERT INTO `presensi` VALUES (16, 3, 3, '2023-05-21', 43, '08:00', '16:00', '', '');
INSERT INTO `presensi` VALUES (17, 3, 1, '2023-06-04', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (18, 1, 1, '2023-06-16', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (19, 2, 2, '2023-06-16', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (20, 6, 3, '2023-06-16', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (21, 1, 4, '2023-08-25', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (22, 2, 3, '2023-08-25', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (23, 1, 1, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (24, 2, 2, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (25, 6, 3, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (26, 3, 4, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (27, 6, 5, '2023-08-26', 2, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (28, 2, 6, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (29, 2, 7, '2023-08-26', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (30, 1, 1, '2023-10-21', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (31, 1, 2, '2023-10-21', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (32, 1, 3, '2023-10-21', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (33, 2, 1, '2023-10-22', 2, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (34, 2, 2, '2023-10-22', 2, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (35, 2, 3, '2023-10-22', 2, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (36, 1, 1, '2023-10-23', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (37, 2, 2, '2023-10-23', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (38, 3, 3, '2023-10-23', 3, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (39, 1, 1, '2024-01-25', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (40, 1, 2, '2024-01-25', 2, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (41, 1, 48, '2024-01-28', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (42, 3, 49, '2024-01-28', 1, NULL, NULL, '', '');
INSERT INTO `presensi` VALUES (43, 1, 50, '2024-01-28', 1, NULL, NULL, '', '');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `min_qty` int(11) NULL DEFAULT 0,
  `satuan_barang_id` int(11) NULL DEFAULT NULL,
  `harga` int(11) NULL DEFAULT NULL,
  `kategori_barang_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `gudang_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 'MSBJ/5341588/02/01022023', 'Kursi Kantor', 104, 11, 2, 200000, 2, '2023-02-01 20:58:29', 1, '2024-01-28 23:39:36', 1, 2, 1);
INSERT INTO `produk` VALUES (2, 'MSBJ/2784949/02/02022023', 'MEJA1', 271, 1, 2, 100000, 2, '2023-02-01 21:15:19', 1, '2024-01-28 10:40:48', 1, 1, 1);
INSERT INTO `produk` VALUES (3, 'MSBJ/8214492/02/02022023', 'MEJA 2', 101, 2, 2, 200000, 1, '2023-02-01 21:15:19', 1, '2023-06-05 19:28:09', 1, 2, 1);
INSERT INTO `produk` VALUES (4, 'MSBJ/8567314/02/02022023', 'MEJA3', 100, 3, 1, 300000, 2, '2023-02-01 21:15:19', 1, '2024-01-28 10:44:41', 1, 1, 1);
INSERT INTO `produk` VALUES (5, 'MSBJ/3334951/02/02022023', 'MEJA4', 87, 4, 1, 400000, 1, '2023-02-01 21:15:19', 1, '2023-06-05 19:24:58', 1, 2, 1);
INSERT INTO `produk` VALUES (6, 'MSBJ/4342382/02/02022023', 'MEJA5', 104, 5, 2, 500000, 2, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:19', 1, 1, 1);
INSERT INTO `produk` VALUES (7, 'MSBJ/63151/02/02022023', 'MEJA6', 105, 6, 2, 600000, 1, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:13', 1, 2, 1);
INSERT INTO `produk` VALUES (8, 'MSBJ/3492136/02/02022023', 'Kursi Gaming', 20, 1, 1, 780000, 1, '2023-02-02 10:45:33', 1, '2023-02-02 11:01:46', 1, 2, 1);
INSERT INTO `produk` VALUES (9, 'MSBJ/3613968/02/04022023', 'Kursi Minimalis 1', 150, 100, 2, 150000, 1, '2023-02-04 13:01:35', 1, '2023-02-04 13:02:02', 1, 1, 1);
INSERT INTO `produk` VALUES (10, '192312', 'Kursi P1', 1, 2, 1, 200000, 1, '2023-04-07 11:11:00', NULL, '2023-06-29 08:26:57', NULL, 1, 1);
INSERT INTO `produk` VALUES (11, 'Produk/7352', 'Kursi P2', 2, 2, 1, 100000, 1, '2023-04-07 11:11:00', NULL, '2023-06-29 10:18:52', 1, 1, 1);
INSERT INTO `produk` VALUES (12, 'Produk/7609', 'Kursi Coba', 2, 2, 1, 200000, 1, '2023-04-07 19:16:37', NULL, '2023-06-29 10:18:42', 1, 1, 1);
INSERT INTO `produk` VALUES (13, 'Produk/8076', 'Kursi Kantor Tipe 1', 1, 2, 1, 1200000, 1, '2023-04-08 13:28:50', NULL, '2023-06-29 10:18:39', 1, 1, 1);
INSERT INTO `produk` VALUES (14, 'Produk/8366', '1 Set Meja Makan Tipe 1', 1, 2, 1, 1500000, 2, '2023-04-08 13:28:50', NULL, '2023-06-29 10:18:35', 1, 1, 1);
INSERT INTO `produk` VALUES (15, 'Produk/2802', 'Kursi Meeting tipe A', 1, 2, 1, 800000, 1, '2023-04-08 14:42:54', NULL, '2023-06-29 10:18:31', 1, 1, 1);
INSERT INTO `produk` VALUES (16, 'Produk/3435', 'Kursi Direktur', 1, 2, 1, 1000000, 1, '2023-04-08 15:17:13', NULL, '2023-06-29 10:18:27', 1, 1, 1);
INSERT INTO `produk` VALUES (17, 'Produk/9310', 'Kursi Kantor Custom', 1, 2, 1, 800000, 1, '2023-05-07 15:29:12', NULL, '2023-06-29 10:18:23', 1, 1, 1);
INSERT INTO `produk` VALUES (18, 'Produk/5469', 'Kursi Custom 3', 3, 2, 2, 500000, 3, '2023-06-07 18:50:14', NULL, '2023-06-29 10:18:18', 1, 1, 1);
INSERT INTO `produk` VALUES (19, 'Produk/9967', 'Kursi Kantor Tipe 8', 3, 2, 1, 120000, 1, '2023-06-07 18:53:43', NULL, '2023-06-29 10:18:14', 1, 1, 1);
INSERT INTO `produk` VALUES (20, 'Produk/2387', 'Kursi Tipe 80', 2, 2, 1, 250000, 1, '2023-06-08 14:11:18', NULL, '2023-06-29 10:18:10', 1, 1, 1);
INSERT INTO `produk` VALUES (21, 'Produk/4843', 'Lemari Kantor 1', 11, 6, 1, 510000, 3, '2023-06-29 10:13:01', 1, '2023-06-29 10:27:28', 1, 1, 1);
INSERT INTO `produk` VALUES (22, 'Produk/5880', 'Kursi Makan Tinggi Putih', 1, 1, 1, 1250000, 1, '2023-08-25 18:19:16', 1, '2024-01-26 21:55:37', 1, 1, 1);
INSERT INTO `produk` VALUES (23, 'MSB/2004/08/25082023', 'Kursi Makan Hitam', 100, 10, 1, 1000000, 1, '2023-08-25 19:58:14', NULL, '2023-08-26 14:02:31', 1, 1, 0);
INSERT INTO `produk` VALUES (24, 'BRJ1', 'BARANG 1', 10, 1, 1, 1000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (25, 'BRJ2', 'BARANG 2', 20, 2, 1, 2000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (26, 'BRJ3', 'BARANG 3', 30, 3, 1, 3000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (27, 'BRJ4', 'BARANG 4', 40, 4, 1, 4000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (28, 'BRJ5', 'BARANG 5', 50, 5, 1, 5000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (29, 'BRJ6', 'BARANG 6', 60, 6, 1, 6000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (30, 'BRJ7', 'BARANG 7', 70, 7, 1, 7000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (31, 'BRJ8', 'BARANG 8', 80, 8, 1, 8000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (32, 'BRJ9', 'BARANG 9', 90, 9, 1, 9000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (33, 'BRJ10', 'BARANG 10', 100, 10, 1, 10000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (34, 'BRJ11', 'BARANG 11', 110, 11, 1, 11000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (35, 'BRJ12', 'BARANG 12', 120, 12, 1, 12000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (36, 'BRJ13', 'BARANG 13', 130, 13, 1, 13000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (37, 'BRJ14', 'BARANG 14', 140, 14, 1, 14000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (38, 'BRJ15', 'BARANG 15', 150, 15, 1, 15000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (39, 'BRJ16', 'BARANG 16', 160, 16, 1, 16000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (40, 'BRJ17', 'BARANG 17', 170, 17, 1, 17000000, 2, '2023-12-24 19:12:59', NULL, NULL, NULL, 1, NULL);
INSERT INTO `produk` VALUES (41, 'MSB/9749/01/27012024', 'Kursi Tipe 6', -2, 0, 1, 500000, 1, '2024-01-27 14:08:16', NULL, '2024-01-27 20:28:17', NULL, NULL, 1);
INSERT INTO `produk` VALUES (42, 'MSB/4250/01/27012024', 'Meja 6', -1, 0, 2, 800000, 2, '2024-01-27 14:08:16', NULL, '2024-01-27 20:28:17', NULL, NULL, 1);

-- ----------------------------
-- Table structure for produk_suplier
-- ----------------------------
DROP TABLE IF EXISTS `produk_suplier`;
CREATE TABLE `produk_suplier`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `suplier_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk_suplier
-- ----------------------------
INSERT INTO `produk_suplier` VALUES (1, 'Mur', '100', NULL, '2023-02-24 10:25:40', NULL, NULL, 17);
INSERT INTO `produk_suplier` VALUES (2, 'Baut', '200', NULL, '2023-02-24 10:25:40', NULL, NULL, 17);
INSERT INTO `produk_suplier` VALUES (3, 'Sekrup', '300', NULL, '2023-02-24 10:25:40', NULL, NULL, 17);
INSERT INTO `produk_suplier` VALUES (4, 'Lem', '4000', '2023-02-24 10:19:13', '2023-02-24 10:25:45', 1, NULL, 18);
INSERT INTO `produk_suplier` VALUES (5, 'Besi', '5000', '2023-02-24 10:19:13', '2023-02-24 10:25:45', 1, NULL, 18);
INSERT INTO `produk_suplier` VALUES (6, 'Kertas', '100', '2023-03-12 19:05:45', NULL, 1, NULL, 16);
INSERT INTO `produk_suplier` VALUES (7, 'Kertas Buram', '90', '2023-03-12 19:05:45', NULL, 1, NULL, 16);
INSERT INTO `produk_suplier` VALUES (8, 'Baut', '500', '2023-03-12 19:09:51', NULL, 1, NULL, 17);
INSERT INTO `produk_suplier` VALUES (9, 'Lem', '2000', '2023-03-12 19:09:51', NULL, 1, NULL, 17);
INSERT INTO `produk_suplier` VALUES (10, 'Besi', '50000', '2023-03-12 19:09:51', NULL, 1, NULL, 17);
INSERT INTO `produk_suplier` VALUES (11, 'Obeng', '250000', '2023-06-04 20:34:59', '2023-06-04 20:35:41', 1, 1, 21);
INSERT INTO `produk_suplier` VALUES (12, 'Baut 5mm', '500', '2023-06-04 20:35:41', NULL, 1, NULL, 21);
INSERT INTO `produk_suplier` VALUES (13, 'Besi', '500000', '2023-06-10 09:34:43', NULL, 1, NULL, 22);
INSERT INTO `produk_suplier` VALUES (14, 'METAL COATING - HITAM', '0', '2023-06-10 17:20:57', NULL, 1, NULL, 23);
INSERT INTO `produk_suplier` VALUES (15, 'METAL COATING - HIJAU', '0', '2023-06-10 17:20:57', NULL, 1, NULL, 23);
INSERT INTO `produk_suplier` VALUES (16, 'METAL COATING - PUTIH', '0', '2023-06-10 17:20:57', NULL, 1, NULL, 23);

-- ----------------------------
-- Table structure for produksi
-- ----------------------------
DROP TABLE IF EXISTS `produksi`;
CREATE TABLE `produksi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `status_produksi` tinyint(1) NULL DEFAULT NULL,
  `so_id` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produksi
-- ----------------------------
INSERT INTO `produksi` VALUES (1, 'Produksi/5514', '2023-04-07', '1', '2023-04-07 08:28:25', 1, '2023-06-06 18:46:37', NULL, 0, 1, NULL, NULL, 1);
INSERT INTO `produksi` VALUES (2, 'Prod-INV/SO/1282212', '2023-04-07', 'Produksi dari SO : INV/SO/128', '2023-04-07 11:11:00', 1, '2023-06-06 18:46:37', NULL, 1, 2, 10, NULL, 1);
INSERT INTO `produksi` VALUES (3, 'Produksi/7596', '2023-04-08', '', '2023-04-07 19:06:35', 1, '2023-06-06 18:46:37', NULL, 0, 3, NULL, 999, 1);
INSERT INTO `produksi` VALUES (4, 'Prod-INV/SO/9928701', '2023-04-07', 'Produksi dari SO : INV/SO/992', '2023-04-07 19:16:37', 1, '2023-06-06 18:46:37', NULL, 1, 0, NULL, NULL, 1);
INSERT INTO `produksi` VALUES (5, 'Prod-INV/SO/999671', '2023-04-08', 'Produksi dari SO : INV/SO/999', '2023-04-08 13:28:50', 1, '2023-06-06 18:46:37', NULL, 1, 2, 12, NULL, 1);
INSERT INTO `produksi` VALUES (6, 'Prod-INV/SO/81989699', '2023-04-08', 'Produksi dari SO : INV/SO/8198', '2023-04-08 14:42:54', 1, '2023-06-06 18:46:37', NULL, 1, 2, 14, NULL, 1);
INSERT INTO `produksi` VALUES (7, 'Prod-INV/SO/63908291', '2023-04-08', 'Produksi dari SO : INV/SO/6390', '2023-04-08 15:17:13', 1, '2023-06-06 18:46:37', NULL, 1, 2, 16, NULL, 1);
INSERT INTO `produksi` VALUES (8, 'Produksi/8929', '2023-04-08', '', '2023-04-08 15:25:06', 1, '2023-06-06 18:46:37', NULL, 1, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (9, 'Produksi/1972', '2023-05-07', '', '2023-05-07 15:27:58', 1, '2023-06-06 18:46:37', NULL, 1, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (10, 'Prod-INV/SO/54525973', '2023-05-07', 'Produksi dari SO : INV/SO/5452', '2023-05-07 15:29:12', 1, '2023-06-06 18:46:37', NULL, 1, 2, 22, NULL, 1);
INSERT INTO `produksi` VALUES (11, 'PD-202305-7406', '2023-05-20', 'untuk stok', '2023-05-20 21:41:50', 1, '2023-06-06 18:46:37', NULL, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (12, 'PD-2305-2119', '2023-05-20', '1', '2023-05-20 23:27:22', 1, '2023-06-06 18:46:37', NULL, 1, 0, NULL, 999, 1);
INSERT INTO `produksi` VALUES (13, 'PD-2305-2227', '2023-05-21', 'tes', '2023-05-21 07:40:41', 1, '2023-06-06 18:46:37', NULL, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (14, 'PD-2306-3523', '2023-06-06', '1', '2023-06-06 14:29:26', 1, '2023-06-06 18:46:37', NULL, 1, 0, NULL, 999, 1);
INSERT INTO `produksi` VALUES (15, 'PD-2306-29012', '2023-06-06', 'tes123 hilang', '2023-06-06 14:57:10', 1, '2023-06-06 19:00:19', 1, 0, 1, NULL, 999, 0);
INSERT INTO `produksi` VALUES (16, 'PD-2306-2812', '2023-06-06', 'ini hilang', '2023-06-06 18:09:58', 1, '2023-06-06 19:00:16', 1, 1, 0, NULL, 998, 0);
INSERT INTO `produksi` VALUES (17, 'PD-2306-3667', '2023-06-06', '1', '2023-06-06 20:32:22', 1, NULL, NULL, 1, 0, NULL, 998, 1);
INSERT INTO `produksi` VALUES (18, 'PD-2306-3667', '2023-06-06', '1', '2023-06-06 20:32:31', 1, NULL, NULL, 1, 0, NULL, 998, 1);
INSERT INTO `produksi` VALUES (19, 'PD-2306-3667', '2023-06-06', '1', '2023-06-06 20:32:57', 1, NULL, NULL, 1, 0, NULL, 998, 1);
INSERT INTO `produksi` VALUES (20, 'Prod-SO-2306-33309377', '2023-06-07', 'Produksi dari SO : SO-2306-3330', '2023-06-07 18:50:14', 1, NULL, NULL, 1, 0, 33, NULL, 1);
INSERT INTO `produksi` VALUES (21, 'Prod-SO-2306-30062584', '2023-06-07', 'Produksi dari SO : SO-2306-3006', '2023-06-07 18:53:43', 1, NULL, NULL, 1, 0, 32, NULL, 1);
INSERT INTO `produksi` VALUES (22, 'Prod-SO-2306-97089618', '2023-06-08', 'Produksi dari SO : SO-2306-9708', '2023-06-08 14:11:18', 1, '2023-06-09 08:32:42', NULL, 0, 1, 34, NULL, 0);
INSERT INTO `produksi` VALUES (23, 'PD/2308-8287', '2023-08-25', 'Produksi kursi makan', '2023-08-25 18:20:54', 1, '2023-08-25 18:21:59', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (24, 'PD/2308-1798', '2023-08-25', 'Produksi mandiri kursi', '2023-08-25 19:00:26', 1, '2023-08-25 19:01:03', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (25, 'PD/2308-6131', '2023-08-25', 'Produksi mandiri', '2023-08-25 19:02:18', 1, '2023-08-25 19:02:28', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (26, 'PD/2308-6062', '2023-08-25', 'tes', '2023-08-25 19:04:58', 1, '2023-08-25 19:05:08', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (27, 'PD/2308-8980', '2023-08-25', 'tes', '2023-08-25 19:11:03', 1, '2023-08-25 19:11:12', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (28, 'PD/2308-3846', '2023-08-25', 'tes123', '2023-08-25 19:18:30', 1, '2023-08-25 19:30:14', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (29, 'PD/2308-1518', '2023-08-25', 't', '2023-08-25 19:47:05', 1, '2023-08-25 19:47:13', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (30, 'PD/2308-580', '2023-08-25', 'tambahan produksi', '2023-08-25 19:49:44', 1, '2023-08-25 19:49:53', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (31, 'Prod-SO-2308-15746024', '2023-08-25', 'Produksi dari SO : SO-2308-1574', '2023-08-25 19:58:14', 1, '2023-08-25 19:59:24', NULL, 0, 1, 37, NULL, 1);
INSERT INTO `produksi` VALUES (32, 'PD/2310-3554', '2023-10-22', '100 Kursi Type A', '2023-10-22 10:05:43', 1, '2023-10-22 10:06:22', 1, 0, 0, NULL, 2, 1);
INSERT INTO `produksi` VALUES (33, 'PD/2310-1823', '2023-10-22', 'Selesai awal november 2023', '2023-10-22 10:32:53', 1, '2023-10-22 10:34:29', 1, 0, 1, NULL, 1, 1);
INSERT INTO `produksi` VALUES (34, 'PD/2312-1595', '2023-12-26', '', '2023-12-26 20:13:33', 1, '2023-12-26 20:13:44', 1, 0, 0, NULL, 998, 1);
INSERT INTO `produksi` VALUES (35, 'PD/2401-5472', '2024-01-21', '', '2024-01-21 13:45:48', 1, NULL, NULL, 1, 0, NULL, 998, 1);
INSERT INTO `produksi` VALUES (36, 'PD/2401-7947', '2024-01-27', 'Produksi mandiri', '2024-01-27 13:56:36', 1, '2024-01-27 13:57:18', 1, 0, 1, NULL, 999, 1);
INSERT INTO `produksi` VALUES (37, 'PD/2401-409', '2024-01-27', '', '2024-01-27 14:02:17', 1, NULL, NULL, 1, 0, NULL, 999, 1);
INSERT INTO `produksi` VALUES (38, 'Prod-SO-2401-21062011', '2024-01-27', 'Produksi dari SO : SO-2401-2106', '2024-01-27 14:08:16', 1, '2024-01-27 14:11:56', NULL, 0, 1, 42, NULL, 1);

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
INSERT INTO `profil_website` VALUES ('SMM IMPACT', 'Pogot', '085894632505', 'fav.png', 'fav.png', 'SIM POLARIS', '-', '<p>The Balance Small Business makes launching and managing your own business easy. It is home to experts who provide clear, practical advice on entrepreneurship and management. Whether you&rsquo;re just starting up or you want to take your company to the next level, our 20-year-strong library of more than 7,000 pieces of content will answer your questions and turn your business dreams into reality.</p>\n\n<p><a href=\"https://www.thebalancesmb.com/\">The Balance</a>&nbsp;is part of The Balance family of sites, including&nbsp;<a href=\"https://www.thebalance.com/\" rel=\"noopener\" target=\"_blank\">The Balance</a>&nbsp;and&nbsp;<a href=\"https://www.thebalancecareers.com/\" rel=\"noopener\" target=\"_blank\">The Balance Careers</a>, covering personal finance, career, and small business topics. With more than 24 million monthly visitors, The Balance is among the top-10 largest finance properties as measured by comScore, a leading Internet measurement company. Our more than 50 expert writers have extensive qualifications and expertise in their topics, including MBAs, PhDs, CFPs, other advanced degrees and professional certifications.</p>\n\n<p>The Balance family of sites have been honored by multiple awards in the last year, including&nbsp;<a href=\"https://www.tellyawards.com/winners/2017/short-form-social/general-education-discovery\" rel=\"noopener nofollow\" target=\"_blank\">The Telly Awards</a>,&nbsp;<a href=\"https://www.communicatorawards.com/\" rel=\"noopener nofollow\" target=\"_blank\">The Communicator Awards</a>, and&nbsp;<a href=\"https://www.editorandpublisher.com/news/editor-publisher-announces-the-2017-eppy-award-finalists/\" rel=\"noopener nofollow\" target=\"_blank\">Eppy Awards</a>.</p>\n', 'hallo@impactfurniture.id', 'Andreas Hartanto', 'undefined', 'undefined', 'undefined', 'undefined', 'ea4d58dd1254aff316312b7ecbb5c410.jpg', 'Halo Admin, Saya ingin bertanya/membeli/.....', 'd797c14a0070235734508b7d9f409395.jpg', '&copy; 2019. <a href=\"#\">Core Master</a> by<a href=\"https://myber.co.id\" target=\"_blank\">Myber</a>', 'Core Master', 'IMPACT FURNITURE', 'Surabaya', 'Indonesia', '112.66307147573268', '-7.840640250568774', NULL);

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES (1, 'Aceh', '2019-10-22 07:49:46', '2019-10-25 21:02:52');
INSERT INTO `provinces` VALUES (2, 'Sumatera Utara', '2019-10-22 07:49:46', '2019-10-22 07:49:46');
INSERT INTO `provinces` VALUES (3, 'Sumatera Barat', '2019-10-22 07:49:47', '2019-10-22 07:49:47');
INSERT INTO `provinces` VALUES (4, 'Riau', '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `provinces` VALUES (5, 'Jambi', '2019-10-22 07:49:48', '2019-10-22 07:49:48');
INSERT INTO `provinces` VALUES (6, 'Sumatera Selatan', '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `provinces` VALUES (7, 'Bengkulu', '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `provinces` VALUES (8, 'Lampung', '2019-10-22 07:49:49', '2019-10-22 07:49:49');
INSERT INTO `provinces` VALUES (9, 'Kepulauan Bangka Belitung', '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `provinces` VALUES (10, 'Kepulauan Riau', '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `provinces` VALUES (11, 'Dki Jakarta', '2019-10-22 07:49:50', '2019-10-22 07:49:50');
INSERT INTO `provinces` VALUES (12, 'Jawa Barat', '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `provinces` VALUES (13, 'Jawa Tengah', '2019-10-22 07:49:51', '2019-10-22 07:49:51');
INSERT INTO `provinces` VALUES (14, 'Di Yogyakarta', '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `provinces` VALUES (15, 'Jawa Timur', '2019-10-22 07:49:52', '2019-10-22 07:49:52');
INSERT INTO `provinces` VALUES (16, 'Banten', '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `provinces` VALUES (17, 'Bali', '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `provinces` VALUES (18, 'Nusa Tenggara Barat', '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `provinces` VALUES (19, 'Nusa Tenggara Timur', '2019-10-22 07:49:54', '2019-10-22 07:49:54');
INSERT INTO `provinces` VALUES (20, 'Kalimantan Barat', '2019-10-22 07:49:55', '2019-10-22 07:49:55');
INSERT INTO `provinces` VALUES (21, 'Kalimantan Tengah', '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `provinces` VALUES (22, 'Kalimantan Selatan', '2019-10-22 07:49:56', '2019-10-22 07:49:56');
INSERT INTO `provinces` VALUES (23, 'Kalimantan Timur', '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `provinces` VALUES (24, 'Kalimantan Utara', '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `provinces` VALUES (25, 'Sulawesi Utara', '2019-10-22 07:49:57', '2019-10-22 07:49:57');
INSERT INTO `provinces` VALUES (26, 'Sulawesi Tengah', '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `provinces` VALUES (27, 'Sulawesi Selatan', '2019-10-22 07:49:58', '2019-10-22 07:49:58');
INSERT INTO `provinces` VALUES (28, 'Sulawesi Tenggara', '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `provinces` VALUES (29, 'Gorontalo', '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `provinces` VALUES (30, 'Sulawesi Barat', '2019-10-22 07:49:59', '2019-10-22 07:49:59');
INSERT INTO `provinces` VALUES (31, 'Maluku', '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `provinces` VALUES (32, 'Maluku Utara', '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `provinces` VALUES (33, 'Papua Barat', '2019-10-22 07:50:00', '2019-10-22 07:50:00');
INSERT INTO `provinces` VALUES (34, 'Papua', '2019-10-22 07:50:01', '2019-10-22 07:50:01');

-- ----------------------------
-- Table structure for purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `suplier_id` int(11) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_ppn` tinyint(1) NULL DEFAULT 0,
  `ppn_id` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` decimal(20, 2) NULL DEFAULT NULL,
  `total` decimal(20, 2) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `total_ppn` decimal(20, 2) NULL DEFAULT NULL,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------
INSERT INTO `purchase_order` VALUES (4, 'PO-6321875', 12, '2023-02-26', '', 0, 0, 915000.00, 2.00, 840000.00, 0, '2023-02-26 09:49:51', 1, '2023-04-18 20:00:13', NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (5, 'PO-3502130', 13, '2023-02-26', '', 1, 11, 2875000.00, 1.00, 3108000.00, 0, '2023-02-26 09:50:44', 1, '2023-04-18 20:00:13', NULL, 30800000.00, 1);
INSERT INTO `purchase_order` VALUES (6, 'PO-9542057', 12, '2023-02-26', '-', 1, 11, 975000.00, 0.00, 999000.00, 0, '2023-02-26 19:41:06', 1, '2023-04-18 20:00:13', NULL, 9900000.00, 1);
INSERT INTO `purchase_order` VALUES (7, 'PO-211449', 12, '2023-02-27', '', 1, 11, 1425000.00, 0.00, 1498500.00, 0, '2023-02-27 14:31:19', 1, '2023-04-18 20:00:13', NULL, 14850000.00, 1);
INSERT INTO `purchase_order` VALUES (8, 'PO-3785850', 15, '2023-02-28', '', 1, 11, 2895000.00, 0.00, 3130200.00, 0, '2023-02-28 18:57:38', 1, '2023-04-18 20:00:13', NULL, 31020000.00, 1);
INSERT INTO `purchase_order` VALUES (9, 'PO-5894763', 13, '2023-02-28', '', 0, 0, 3370000.00, 0.00, 3295000.00, 0, '2023-02-28 19:18:15', 1, '2023-04-18 20:00:13', NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (10, 'PO-4318686', 13, '2023-02-28', '', 1, 11, 5925000.00, 0.00, 6493500.00, 0, '2023-02-28 19:20:14', 1, '2023-04-18 20:00:13', NULL, 64350000.00, 1);
INSERT INTO `purchase_order` VALUES (11, 'PO-6694136', 17, '2023-03-12', '', 1, 11, 525000.00, 0.00, 499500.00, 0, '2023-03-12 19:14:26', 1, '2023-04-18 20:00:13', NULL, 4950000.00, 0);
INSERT INTO `purchase_order` VALUES (12, 'PO-8957202', 16, '2023-03-16', '', 1, 1, 2885000.00, 0.00, 2838100.00, 0, '2023-03-16 19:27:40', 1, '2023-04-18 20:00:13', NULL, 2810000.00, 1);
INSERT INTO `purchase_order` VALUES (13, 'PO-2123', 12, '2023-03-30', '', 0, 0, 4425000.00, 0.00, 4350000.00, 0, '2023-03-30 09:57:37', 1, '2023-04-18 20:00:13', NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (14, 'PO-6215', 18, '2023-03-31', '', 0, 0, 13425000.00, 0.00, 13350000.00, 0, '2023-03-31 18:15:20', 1, '2023-04-18 20:00:13', NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (15, 'PO-6548', 16, '2023-04-07', '', 1, 1, -75000.00, 0.00, -142500.00, 0, '2023-04-07 18:40:09', 1, '2023-08-24 19:02:47', NULL, 750000.00, 1);
INSERT INTO `purchase_order` VALUES (16, 'PO-7888', 17, '2023-04-07', '', 1, 1, 1925000.00, 0.00, 1868500.00, 0, '2023-04-07 18:49:12', 1, '2023-04-18 20:00:13', NULL, 1850000.00, 1);
INSERT INTO `purchase_order` VALUES (17, 'PO-9814', 19, '2023-04-08', '', 1, 11, 12000.00, 0.00, 13320.00, 1, '2023-04-08 14:34:17', 1, '2023-04-18 20:18:30', 1, 1320.00, 1);
INSERT INTO `purchase_order` VALUES (18, 'PO-6579', 13, '2023-04-08', '', 1, 11, -25000.00, 0.00, -111000.00, 0, '2023-04-08 15:06:22', 1, '2023-04-18 20:00:13', NULL, -1100000.00, 0);
INSERT INTO `purchase_order` VALUES (19, 'PO-49333', 19, '2023-04-18', 'tes12345', 0, 0, 500000.00, 0.00, 500000.00, 0, '2023-04-18 18:49:42', 1, '2023-04-20 09:10:14', 1, 0.00, 1);
INSERT INTO `purchase_order` VALUES (20, 'PO-6932', 12, '2023-04-27', '', 0, 0, 10000.00, 0.00, 10000.00, 0, '2023-04-27 15:14:17', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (21, 'PO-2978', 12, '2023-05-05', '', 0, 0, 800000.00, 0.00, 800000.00, 0, '2023-05-05 18:27:58', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (22, 'PO-4497', 18, '2023-05-05', '', 0, 0, 3000000.00, 0.00, 3000000.00, 0, '2023-05-05 18:46:36', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (23, 'PO-3806', 18, '2023-05-07', '', 0, 0, 162500.00, 0.00, 162500.00, 0, '2023-05-07 14:46:08', 1, '2023-05-07 14:47:01', 1, 0.00, 1);
INSERT INTO `purchase_order` VALUES (24, 'PO-2994', 18, '2023-05-07', '', 0, 0, 500000.00, 0.00, 500000.00, 0, '2023-05-07 15:17:21', 1, '2023-05-07 15:19:36', 1, 0.00, 1);
INSERT INTO `purchase_order` VALUES (25, 'PO-202305-719', 20, '2023-05-20', '', 1, 11, 570000.00, 0.00, 632700.00, 0, '2023-05-20 21:08:12', 1, NULL, NULL, 62700.00, 1);
INSERT INTO `purchase_order` VALUES (26, 'PO-2306-7498', 21, '2023-06-06', '', 0, 0, 100.00, 0.00, 100.00, 0, '2023-06-06 20:24:04', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (27, 'PO-2306-2978', 17, '2023-06-06', '', 0, 0, 10270000.00, 0.00, 10270000.00, 0, '2023-06-06 20:27:02', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (28, 'PO-2306-1106', 17, '2023-06-10', 'asd', 0, 0, 3500000.00, 0.00, 3500000.00, 0, '2023-06-10 08:33:59', 1, '2023-06-10 08:43:39', 1, 0.00, 1);
INSERT INTO `purchase_order` VALUES (29, 'PO-2306-4540', 22, '2023-06-10', '', 1, 11, 500000.00, 0.00, 610000.00, 0, '2023-06-10 09:35:35', 1, '2023-08-24 19:02:03', 1, 110000.00, 1);
INSERT INTO `purchase_order` VALUES (30, 'PO-2306-8624', 22, '2023-06-10', '', 0, 0, 0.00, 20.00, -200000.00, 0, '2023-06-10 09:49:41', 1, '2023-08-24 19:02:03', NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (31, 'PO-2306-3655', 22, '2023-06-10', '', 1, 11, 500000.00, 10.00, 499200.00, 0, '2023-06-10 11:57:25', 1, '2023-08-24 19:02:03', NULL, 79200.00, 1);
INSERT INTO `purchase_order` VALUES (32, 'PO-2306-6592', 12, '2023-06-10', '', 0, 0, 800000.00, 0.00, 800000.00, 0, '2023-06-10 12:10:01', 1, NULL, NULL, 0.00, 1);
INSERT INTO `purchase_order` VALUES (33, 'PO-2306-7414', 20, '2023-06-10', '', 1, 11, 1100000.00, 10.00, 1098900.00, 0, '2023-06-10 16:40:56', 1, NULL, NULL, 108900.00, 1);
INSERT INTO `purchase_order` VALUES (34, 'PO/2308-1897', 23, '2023-08-23', 'Pembelian Bahan Baku', 1, 11, 592000.00, 0.00, 657120.00, 0, '2023-08-23 18:02:50', 1, '2023-08-23 18:03:29', 1, 65120.00, 1);
INSERT INTO `purchase_order` VALUES (35, 'PO/2308-3075', 22, '2023-08-23', 'Uji Coba', 1, 11, 180000.00, 0.00, 199800.00, 0, '2023-08-23 18:37:15', 1, NULL, NULL, 19800.00, 1);
INSERT INTO `purchase_order` VALUES (36, 'PO/2308-6128', 20, '2023-08-24', '', 1, 11, 500000.00, 0.00, 555000.00, 0, '2023-08-24 18:38:16', 1, NULL, NULL, 55000.00, 1);
INSERT INTO `purchase_order` VALUES (37, 'PO/2310-5029', 17, '2023-10-21', 'Papan Sandaran', 1, 11, 15000000.00, 0.00, 16650000.00, 0, '2023-10-21 21:16:16', 1, '2023-10-21 21:16:28', 1, 1650000.00, 1);
INSERT INTO `purchase_order` VALUES (38, 'PO/2310-7377', 17, '2023-10-21', 'Papan Sandaran', 1, 11, 15000000.00, 0.00, 16650000.00, 0, '2023-10-21 21:27:23', 1, NULL, NULL, 1650000.00, 1);
INSERT INTO `purchase_order` VALUES (39, 'PO/2310-4415', 13, '2023-10-21', '-', 1, 11, 1400000.00, 0.00, 1554000.00, 1, '2023-10-21 21:39:27', 1, NULL, NULL, 154000.00, 1);
INSERT INTO `purchase_order` VALUES (40, 'PO/2312-7114', 12, '2023-12-26', '', 1, 11, 750000.00, 0.00, 832500.00, 0, '2023-12-26 20:15:11', 1, NULL, NULL, 82500.00, 1);
INSERT INTO `purchase_order` VALUES (41, 'PO/2401-3684', 13, '2024-01-17', '', 0, 0, 4672000.00, 0.00, 4672000.00, 0, '2024-01-17 18:52:12', 1, '2024-01-18 10:50:54', 1, 0.00, 1);
INSERT INTO `purchase_order` VALUES (42, 'PO/2401-8426', 13, '2024-01-27', '', 0, 0, 2000000.00, 0.00, 2000000.00, 0, '2024-01-27 13:30:20', 1, '2024-01-27 13:31:16', 1, 0.00, 1);

-- ----------------------------
-- Table structure for sales_order
-- ----------------------------
DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_ppn` tinyint(1) NULL DEFAULT NULL,
  `ppn_id` int(11) NULL DEFAULT NULL,
  `subtotal` decimal(20, 2) NULL DEFAULT NULL,
  `diskon` decimal(20, 2) NULL DEFAULT NULL,
  `total_ppn` decimal(20, 2) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `total` decimal(20, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `status_produksi` tinyint(4) NULL DEFAULT 0,
  `status_aktif` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_order
-- ----------------------------
INSERT INTO `sales_order` VALUES (1, 2, 'INV/SO/3291483', '2023-03-11', '1', 1, 11, 500000.00, 0.00, 55000.00, 0, 1100000.00, '2023-03-11 19:24:35', 1, '2023-03-22 10:42:46', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (2, 1, 'INV/SO/3292711', '2023-03-11', 'ew', 1, 11, 300000.00, 1.00, 32670.00, 0, 1100000.00, '2023-03-11 19:25:33', 1, '2023-03-22 10:37:19', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (3, 1, 'INV/SO/9815617', '2023-03-11', 'ew', 1, 11, 1696000.00, 1.00, 184694.40, 0, 1100000.00, '2023-03-11 19:59:54', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (7, 2, 'INV/SO/113393', '2023-03-11', 'asd', 1, 11, 897000.00, 0.00, 98670.00, 0, 300000.00, '2023-03-11 20:05:35', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (8, 2, 'INV/SO/174716', '2023-03-11', '123', 1, 11, 1100000.00, 0.00, 121000.00, 0, 1221000.00, '2023-03-11 20:07:53', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (9, 2, 'INV/SO/3339440', '2023-03-12', '', 1, 11, 100000.00, 0.00, 11000.00, 0, 111000.00, '2023-03-12 19:20:03', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (10, 2, 'INV/SO/128', '2023-04-07', 'tes', 0, 0, 600000.00, 0.00, 0.00, 0, 600000.00, '2023-04-07 11:11:00', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (11, 2, 'INV/SO/992', '2023-04-07', '', 1, 11, 600000.00, 0.00, 66000.00, 0, 666000.00, '2023-04-07 19:16:37', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (12, 1000, 'INV/SO/999', '2023-04-08', '-', 1, 11, 2700000.00, 0.00, 297000.00, 1, 2997000.00, '2023-04-08 13:28:50', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (13, 1000, 'INV/SO/50', '2023-04-08', '', 0, 0, 200000.00, 0.00, 0.00, 1, 200000.00, '2023-04-08 14:40:55', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (14, 1001, 'INV/SO/8198', '2023-04-08', '', 1, 11, 900000.00, 0.00, 99000.00, 0, 999000.00, '2023-04-08 14:42:54', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (15, 1000, 'INV/SO/8308', '2023-04-08', '', 1, 11, 200000.00, 0.00, 22000.00, 0, 222000.00, '2023-04-08 15:15:28', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (16, 1001, 'INV/SO/6390', '2023-04-08', '', 1, 11, 1200000.00, 0.00, 132000.00, 0, 1332000.00, '2023-04-08 15:17:13', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (17, 1002, 'INV/SO/6014', '2023-05-06', '', 0, 0, 500000.00, 0.00, 0.00, 0, 500000.00, '2023-05-06 20:08:29', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (18, 1003, 'INV/SO/6999', '2023-05-06', '', 0, 0, 200000.00, 0.00, 0.00, 0, 200000.00, '2023-05-06 20:10:15', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (19, 1004, 'INV/SO/5514', '2023-05-07', '', 0, 0, 200000.00, 0.00, 0.00, 0, 200000.00, '2023-05-07 07:59:54', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (20, 1003, 'INV/SO/6965', '2023-05-07', '', 0, 0, 1500000.00, 0.00, 0.00, 0, 1500000.00, '2023-05-07 12:46:08', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (21, 1003, 'INV/SO/7220', '2023-05-07', '', 0, 0, 700000.00, 0.00, 0.00, 0, 700000.00, '2023-05-07 15:23:15', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (22, 1003, 'INV/SO/5452', '2023-05-07', '', 0, 0, 800000.00, 0.00, 0.00, 0, 800000.00, '2023-05-07 15:29:12', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (23, 1005, 'SO-202305-5369', '2023-05-20', '', 1, 11, 5660000.00, 0.00, 622600.00, 0, 6282600.00, '2023-05-20 22:07:36', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (24, 1001, 'SO-2305-1401', '2023-08-02', '', 0, 0, 150000.00, 0.00, 0.00, 1, 150000.00, '2023-05-20 23:39:15', 1, '2023-08-10 15:27:45', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (25, 2, 'SO-2305-6393', '2023-08-03', '', 0, 0, 1200000.00, 0.00, 0.00, 1, 1200000.00, '2023-05-21 07:53:20', 1, '2023-08-10 15:27:45', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (26, 1003, 'SO-2306-5524', '2023-08-04', '', 0, 0, 400000.00, 0.00, 0.00, 0, 400000.00, '2023-06-05 16:46:43', 1, '2023-08-10 15:27:45', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (27, 1002, 'SO-2306-5978', '2023-08-02', '', 0, 0, 1200000.00, 0.00, 0.00, 0, 1200000.00, '2023-06-05 17:49:04', 1, '2023-08-10 15:27:45', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (28, 1004, 'SO-2306-1007', '2023-08-02', '', 0, 0, 400000.00, 0.00, 0.00, 0, 400000.00, '2023-06-05 18:58:51', 1, '2023-08-10 15:27:34', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (29, 1003, 'SO-2306-2567', '2023-08-02', '', 0, 0, 1600000.00, 0.00, 0.00, 0, 1600000.00, '2023-06-05 19:25:48', 1, '2023-08-10 15:27:34', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (30, 1003, 'SO-2306-2828', '2023-08-02', '', 0, 0, 700000.00, 0.00, 0.00, 0, 700000.00, '2023-06-05 20:44:11', 1, '2023-08-10 15:27:32', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (31, 1, 'SO-2306-3923', '2023-08-09', '123', 0, 0, 400000.00, 0.00, 0.00, 1, 400000.00, '2023-06-07 14:47:01', 1, '2023-08-10 15:27:22', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (32, 1005, 'SO-2306-3006', '2023-08-09', 'tesete123', 1, 11, 2127250.00, 5.00, 222297.63, 1, 2243185.13, '2023-06-07 14:58:19', 1, '2023-08-10 15:27:22', 1, 1, 1);
INSERT INTO `sales_order` VALUES (33, 1, 'SO-2306-3330', '2023-08-09', '', 0, 0, 1500000.00, 0.00, 0.00, 1, 1500000.00, '2023-06-07 18:50:14', 1, '2023-08-10 15:27:22', NULL, 1, 1);
INSERT INTO `sales_order` VALUES (34, 1003, 'SO-2306-9708', '2023-08-09', '', 0, 0, 1250000.00, 0.00, 0.00, 0, 1250000.00, '2023-06-08 14:11:18', 1, '2023-08-10 15:27:19', 1, 0, 0);
INSERT INTO `sales_order` VALUES (35, 1, 'SO-2306-6335', '2023-08-09', '', 0, 0, 200000.00, 0.00, 0.00, 0, 200000.00, '2023-06-09 10:28:11', 1, '2023-08-10 11:36:49', NULL, 0, 1);
INSERT INTO `sales_order` VALUES (36, 1006, 'SO-2308-8562', '2023-08-25', '', 1, 11, 2500000.00, 0.00, 275000.00, 0, 2775000.00, '2023-08-25 19:53:44', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (37, 1004, 'SO-2308-1574', '2023-08-25', '', 1, 11, 8250000.00, 0.00, 907500.00, 0, 9157500.00, '2023-08-25 19:58:14', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (38, 1000, 'SO-2308-7044', '2023-08-26', '-', 1, 11, 1350000.00, 0.00, 148500.00, 0, 1498500.00, '2023-08-26 14:03:32', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (39, 1002, 'SO-2308-9077', '2023-08-26', '', 1, 11, 400000.00, 0.00, 44000.00, 0, 444000.00, '2023-08-26 15:20:37', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (40, 1, 'SO-2401-3266', '2024-01-27', '-', 1, 11, 200000.00, 10.00, 19800.00, 0, 199800.00, '2024-01-27 14:04:40', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (41, 2, 'Produksi/9557', '2024-01-27', '', 1, 11, 1000000.00, 0.00, 110000.00, 1, 1110000.00, '2024-01-27 14:04:42', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (42, 2, 'SO-2401-2106', '2024-01-27', '', 1, 11, 4100000.00, 0.00, 451000.00, 0, 4551000.00, '2024-01-27 14:08:16', 1, NULL, NULL, 1, 1);
INSERT INTO `sales_order` VALUES (43, 1000, 'SO-2401-4861', '2024-01-27', '', 1, 11, 290000.00, 0.00, 31900.00, 0, 321900.00, '2024-01-27 20:09:47', 1, NULL, NULL, 0, 1);
INSERT INTO `sales_order` VALUES (44, 1000, 'SO-2401-1846', '2024-01-27', '', 1, 11, 1500000.00, 0.00, 165000.00, 0, 1665000.00, '2024-01-27 20:40:33', 1, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for satuan_barang
-- ----------------------------
DROP TABLE IF EXISTS `satuan_barang`;
CREATE TABLE `satuan_barang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of satuan_barang
-- ----------------------------
INSERT INTO `satuan_barang` VALUES (1, 'SS1', 'PCS', 1);
INSERT INTO `satuan_barang` VALUES (2, 'SS2', 'BJ', 1);
INSERT INTO `satuan_barang` VALUES (3, 'SBAR-4268265', 'PST', 1);

-- ----------------------------
-- Table structure for satuan_beli
-- ----------------------------
DROP TABLE IF EXISTS `satuan_beli`;
CREATE TABLE `satuan_beli`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of satuan_beli
-- ----------------------------
INSERT INTO `satuan_beli` VALUES (1, 'SB-7445934', 'KG', 1);
INSERT INTO `satuan_beli` VALUES (2, 'SB-3519503', 'TON', 1);
INSERT INTO `satuan_beli` VALUES (3, 'SB-22599601', 'BOX', 1);
INSERT INTO `satuan_beli` VALUES (4, 'SBAR-5682384', 'PCS', 1);
INSERT INTO `satuan_beli` VALUES (5, 'SBAR-8956158', 'KALENG', 1);
INSERT INTO `satuan_beli` VALUES (6, 'SBAR-8168', 'UNIT', 1);
INSERT INTO `satuan_beli` VALUES (7, 'SBAR-9776', 'CM', 1);
INSERT INTO `satuan_beli` VALUES (8, 'SBAR-8887', 'PCS', 1);
INSERT INTO `satuan_beli` VALUES (9, 'SBAR-9458', 'HM', 1);

-- ----------------------------
-- Table structure for satuan_pakai
-- ----------------------------
DROP TABLE IF EXISTS `satuan_pakai`;
CREATE TABLE `satuan_pakai`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan_beli_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `pembagi` decimal(20, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `satuan_beli_id`(`satuan_beli_id`) USING BTREE,
  CONSTRAINT `satuan_pakai_ibfk_1` FOREIGN KEY (`satuan_beli_id`) REFERENCES `satuan_beli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of satuan_pakai
-- ----------------------------
INSERT INTO `satuan_pakai` VALUES (1, 'SP1', 'Gram', 1, 0.001000);
INSERT INTO `satuan_pakai` VALUES (2, 'SP2', 'MG', 1, 0.000001);
INSERT INTO `satuan_pakai` VALUES (3, 'STB6620825', 'Pack', 3, 11.000000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_table
-- ----------------------------
INSERT INTO `setting_table` VALUES (1, 'buku_tamu', 'template_excel', 'include/template/excel/format_cetak_buku_tamu', 'Template Buku Tamu');
INSERT INTO `setting_table` VALUES (2, 'prestasi_siswa', 'template_excel', 'include/template/excel/format_cetak_prestasi_siswa', 'Template Prestasi Siswa');
INSERT INTO `setting_table` VALUES (3, 'master_data_suplier', 'kode', 'SUP/{year}{month}-{rand}/1', NULL);
INSERT INTO `setting_table` VALUES (4, 'master_data_suplier', 'template_excel', 'master_data_suplier.xlsx', NULL);
INSERT INTO `setting_table` VALUES (5, 'master_data_suplier', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (6, 'master_data_bahan', 'kode', 'Bahan/{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (7, 'master_data_bahan', 'template_excel', 'master_data_bahan.xlsx', NULL);
INSERT INTO `setting_table` VALUES (8, 'master_data_bahan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (9, 'master_barang_jadi', 'kode', 'MSB/{rand}/{month}/{date}', NULL);
INSERT INTO `setting_table` VALUES (10, 'master_barang_jadi', 'template_excel', 'master_barang_jadi.xlsx', NULL);
INSERT INTO `setting_table` VALUES (11, 'master_barang_jadi', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (12, 'master_data_customer', 'kode', 'CUST-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (13, 'master_data_customer', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (14, 'master_data_customer', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (15, 'gudang', 'kode', 'GD-{rand}', NULL);
INSERT INTO `setting_table` VALUES (16, 'gudang', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (17, 'gudang', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (18, 'satuan_beli', 'kode', 'SBAR-{rand}', NULL);
INSERT INTO `setting_table` VALUES (19, 'satuan_beli', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (20, 'satuan_beli', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (21, 'satuan_barang', 'kode', 'SB-{rand}', NULL);
INSERT INTO `setting_table` VALUES (22, 'satuan_barang', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (23, 'satuan_barang', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (24, 'kategori_barang', 'kode', 'SB-{rand}', NULL);
INSERT INTO `setting_table` VALUES (25, 'kategori_barang', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (26, 'kategori_barang', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (27, 'jabatan', 'kode', 'JB-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (28, 'jabatan', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (29, 'jabatan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (30, 'ppn', 'kode', 'PPN-{rand}', NULL);
INSERT INTO `setting_table` VALUES (31, 'satuan_pakai', 'kode', 'STB{rand}aa', NULL);
INSERT INTO `setting_table` VALUES (32, 'karyawan', 'kode', 'IF-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (33, 'purchase_order', 'kode', 'PO/{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (34, 'penerimaan_barang', 'kode', 'PB/{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (35, 'pembayaran_tagihan', 'kode', 'PT/{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (36, 'sales_order', 'kode', 'SO-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (37, 'pembayaran_sales_order', 'kode', 'INV-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (38, 'surat_jalan', 'kode', 'SJ-{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (39, 'produksi', 'kode', 'PD/{year}{month}-{rand}', NULL);
INSERT INTO `setting_table` VALUES (40, 'template_produk', 'kode', 'Template-{rand}', NULL);
INSERT INTO `setting_table` VALUES (41, 'pemasukan_lain', 'trans_code', 'PML/{rand}', NULL);
INSERT INTO `setting_table` VALUES (42, 'status_karyawan', 'kode', 'SK{rand}', NULL);
INSERT INTO `setting_table` VALUES (43, 'jadwal', 'template_excel', 'laporan_jadwal.xlsx', NULL);
INSERT INTO `setting_table` VALUES (44, 'jadwal', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (45, 'laporan_penjualan', 'template_excel', 'laporan_penjualan.xlsx', NULL);
INSERT INTO `setting_table` VALUES (46, 'laporan_penjualan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (47, 'laporan_pembelian', 'template_excel', 'laporan_pembelian.xlsx', NULL);
INSERT INTO `setting_table` VALUES (48, 'laporan_pembelian', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (49, 'surat_jalan', 'template_excel', 'surat_jalan.xlsx', NULL);
INSERT INTO `setting_table` VALUES (50, 'surat_jalan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (51, 'produksi', 'template_excel', 'produksi.xlsx', NULL);
INSERT INTO `setting_table` VALUES (52, 'produksi', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (53, 'kartu_stok', 'template_excel', 'kartu_stok.xlsx', NULL);
INSERT INTO `setting_table` VALUES (54, 'kartu_stok', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (55, 'mutasi_stok', 'template_excel', 'mutasi_stok.xlsx', NULL);
INSERT INTO `setting_table` VALUES (56, 'mutasi_stok', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (57, 'pembayaran_sales_order', 'template_excel', 'pembayaran_sales_order.xlsx', NULL);
INSERT INTO `setting_table` VALUES (58, 'pembayaran_sales_order', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (59, 'purchase_order', 'template_excel', 'purchase_order.xlsx', NULL);
INSERT INTO `setting_table` VALUES (60, 'purchase_order', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (61, 'penerimaan_barang', 'template_excel', 'penerimaan_barang.xlsx', NULL);
INSERT INTO `setting_table` VALUES (62, 'penerimaan_barang', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (63, 'pembayaran_tagihan', 'template_excel', 'pembayaran_tagihan.xlsx', NULL);
INSERT INTO `setting_table` VALUES (64, 'pembayaran_tagihan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (65, 'produk', 'kode', 'Produk/{rand}', NULL);
INSERT INTO `setting_table` VALUES (66, 'penyesuaian_stok', 'kode', 'PS/{rand}/asd', NULL);
INSERT INTO `setting_table` VALUES (67, 'sales_order', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Pembelian</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (68, 'sales_order', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (69, 'purchase_order', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk PO</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (70, 'purchase_order', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <i>TELAH DIVERIFIKASI ADMIN</i>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (71, 'penerimaan_barang', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (72, 'penerimaan_barang', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (73, 'purchase_order', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (74, 'purchase_order', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (75, 'penerimaan_barang', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Penerimaan Barang</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (76, 'penerimaan_barang', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (77, 'pembayaran_tagihan', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (78, 'pembayaran_tagihan', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (79, 'pembayaran_tagihan', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Pembayaran Tagihan</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (80, 'pembayaran_tagihan', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><em><b>** TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA**</b></em></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (81, 'sales_order', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT</strong></h3>\r\n\r\n<pre style=\"margin: 0px; font-size: 12px;\">\r\nJl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129\r\n\r\nNo. Telp/HP : 081334791464</pre>\r\n', NULL);
INSERT INTO `setting_table` VALUES (82, 'sales_order', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (83, 'produksi', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (84, 'produksi', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (85, 'produksi', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Produksi</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (86, 'produksi', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (87, 'pembayaran_sales_order', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (88, 'pembayaran_sales_order', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (89, 'pembayaran_sales_order', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Pembayaran</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (90, 'pembayaran_sales_order', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (91, 'surat_jalan', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (92, 'surat_jalan', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (93, 'surat_jalan', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Pembelian</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (94, 'surat_jalan', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (95, 'other', 'api_fingerprint', 'https://smkal-faqih.sch.id/sim_finger/Api/', 'Api untuk fingerprint');
INSERT INTO `setting_table` VALUES (96, 'mutasi_bahan', 'kode', 'MB/{year}{month}-{rand}/1', NULL);
INSERT INTO `setting_table` VALUES (97, 'mutasi_bahan', 'template_nota_header', '<h3 style=\"margin: 0;\"><strong>IMPACT FURNITURE</strong></h3>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">Jl. Pogot No.72, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129</p>\r\n\r\n<p style=\"margin: 0;font-size: 12px;\">No. Telp/HP : 081334791464</p>\r\n', NULL);
INSERT INTO `setting_table` VALUES (98, 'mutasi_bahan', 'template_nota_footer', '<center style=\"margin-top: 10%;\"><b>** <em>TERIMAKASIH ATAS KUNJUNGAN DAN&nbsp;PEMBELIANNYA</em>**</b></center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (99, 'mutasi_bahan', 'template_struk_header', '<center>\r\n<h4 style=\"margin-bottom: 0;\"><b>Struk Mutasi</b></h4>\r\n<b style=\"margin-top: 0;\">POLARIS FURNITURE</b>\r\n\r\n<p style=\"margin-top: 0;\">Jalan Pogot no. 72, Surabaya - 60129</p>\r\n</center>\r\n', NULL);
INSERT INTO `setting_table` VALUES (100, 'mutasi_bahan', 'template_struk_footer', '<center style=\"margin-top: 10%;\"><b>** <em>Telah diverifikasi admin&nbsp;</em>**</b></center>\r\n', NULL);

-- ----------------------------
-- Table structure for status_absen
-- ----------------------------
DROP TABLE IF EXISTS `status_absen`;
CREATE TABLE `status_absen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_absen
-- ----------------------------
INSERT INTO `status_absen` VALUES (1, 'Pulang', 1);
INSERT INTO `status_absen` VALUES (3, 'Masuk', 0);
INSERT INTO `status_absen` VALUES (6, 'Lembur Masuk', 4);
INSERT INTO `status_absen` VALUES (7, 'Lembur Pulang', 5);

-- ----------------------------
-- Table structure for status_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `status_karyawan`;
CREATE TABLE `status_karyawan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_karyawan
-- ----------------------------
INSERT INTO `status_karyawan` VALUES (1, 'Harian', '#000000', 1, '2023-05-17 17:49:17', 1, NULL, NULL, 'SK2974');
INSERT INTO `status_karyawan` VALUES (2, 'Borongan', '#03b300', 1, '2023-05-17 17:49:33', 1, '2023-05-17 17:49:52', 1, 'SK690');

-- ----------------------------
-- Table structure for status_shift
-- ----------------------------
DROP TABLE IF EXISTS `status_shift`;
CREATE TABLE `status_shift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` timestamp(0) NULL DEFAULT current_timestamp(),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` tinyint(1) NULL DEFAULT NULL,
  `check_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_shift
-- ----------------------------
INSERT INTO `status_shift` VALUES (1, 'Full', 'Full Time', '#00a336', '2023-05-19 08:11:32', '0000-00-00 00:00:00', '2023-06-16 19:00:49', '0000-00-00 00:00:00', 1, '07:00', '17:00');
INSERT INTO `status_shift` VALUES (2, 'P', 'Pagi', '#002aa8', '2023-05-19 08:12:37', '0000-00-00 00:00:00', '2023-06-16 19:00:33', '0000-00-00 00:00:00', 1, '07:00', '12:00');
INSERT INTO `status_shift` VALUES (3, 'M', 'Malam', '#002aa8', '2023-05-19 08:13:48', '0000-00-00 00:00:00', '2023-06-16 19:00:16', '0000-00-00 00:00:00', 1, '19:00', '00:00');
INSERT INTO `status_shift` VALUES (4, 'CT', 'Cuti', '#c2bb00', '2023-05-19 08:14:17', '0000-00-00 00:00:00', NULL, NULL, 1, NULL, NULL);
INSERT INTO `status_shift` VALUES (5, 'OFF', 'Libur', '#800000', '2023-05-19 08:14:36', '0000-00-00 00:00:00', '2023-05-19 08:16:48', '0000-00-00 00:00:00', 1, NULL, NULL);
INSERT INTO `status_shift` VALUES (6, 'S', 'Siang', '#002aa8', '2023-05-21 08:44:13', '0000-00-00 00:00:00', '2023-06-16 18:59:56', '0000-00-00 00:00:00', 1, '12:00', '18:59');

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
-- Table structure for surat_jalan
-- ----------------------------
DROP TABLE IF EXISTS `surat_jalan`;
CREATE TABLE `surat_jalan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `so_id` int(11) NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `status_kirim` tinyint(4) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `nama_pengirim` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `penerima` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_bukti` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `karyawan_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat_jalan
-- ----------------------------
INSERT INTO `surat_jalan` VALUES (1, 2, 'SJ/8512882', '2023-03-22', 'qa', 0, 0, '2023-03-22 12:22:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (2, 3, 'SJ/7743481', '2023-03-22', 'ds', 0, 0, '2023-03-22 15:29:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (3, 8, 'SJ/4140129', '2023-03-02', '', 0, 0, '2023-03-22 18:05:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (4, 16, 'SJ/212', '2023-04-08', '', 0, 0, '2023-04-08 15:22:09', NULL, NULL, NULL, 'Rendy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (5, 23, 'SJ-202305-3617', '2023-05-20', '', 0, 0, '2023-05-20 22:39:16', NULL, NULL, NULL, 'Radiq Ken', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (6, 25, 'SJ-2305-3258', '2023-05-21', '', 0, 0, '2023-05-21 07:54:38', NULL, NULL, NULL, 'Rendy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (7, 26, 'SJ-2306-6449', '2023-06-05', '', 1, 0, '2023-06-05 16:54:26', NULL, NULL, NULL, 'Rendy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (22, 30, 'SJ-2306-9990', '2023-06-05', '1', 0, 0, '2023-06-05 20:45:05', NULL, NULL, NULL, 'CV. ANDIKA JAYA', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (23, 37, 'SJ-2308-7031', '2023-08-25', '1', 0, 0, '2023-08-25 20:02:18', NULL, NULL, NULL, 'Rendy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `surat_jalan` VALUES (24, 38, 'SJ-2312-8886', '2023-12-23', 'tes123', 0, 0, '2023-12-23 20:48:38', NULL, '2023-12-23 21:02:11', NULL, '-', NULL, NULL, NULL, NULL, 6);
INSERT INTO `surat_jalan` VALUES (25, 39, 'SJ-2401-1977', '2024-01-27', '', 0, 1, '2024-01-26 21:52:11', NULL, '2024-01-26 21:58:21', NULL, '-', 'Rendy', 'https://api.impactfurniture.id//media/2c786e55f85c54767e54b960cce11b44.jpeg', NULL, NULL, 47);
INSERT INTO `surat_jalan` VALUES (26, 36, '123', '2024-01-26', 'asd', 0, 0, '2024-01-26 21:55:37', NULL, NULL, NULL, '-', NULL, NULL, NULL, NULL, 48);
INSERT INTO `surat_jalan` VALUES (27, 42, 'SJ-2401-4619', '2024-01-27', '-', 0, 1, '2024-01-27 14:19:46', NULL, '2024-01-27 16:01:37', NULL, '-', 'rendy', 'https://api.impactfurniture.id//media/358318349e1ff8c9a174bb8aa1bba479.jpeg', NULL, NULL, 48);
INSERT INTO `surat_jalan` VALUES (29, 43, 'SJ-2401-967', '2024-01-27', '', 0, 1, '2024-01-27 20:11:57', NULL, '2024-01-27 20:35:59', NULL, '-', 'avi', 'https://api.impactfurniture.id//media/0971d0fe1d39eddae49cedef9a76a7b8.jpeg', NULL, NULL, 48);
INSERT INTO `surat_jalan` VALUES (30, 44, 'SJ-2401-3790', '2024-01-27', '', 0, 1, '2024-01-27 20:41:55', NULL, '2024-01-27 20:50:49', NULL, '-', 'acss', 'https://api.impactfurniture.id//media/9e03517ffb3c04613f4a314e6175bfd9.jpeg', NULL, NULL, 48);
INSERT INTO `surat_jalan` VALUES (32, 44, 'SJ-2401-670', '2024-01-27', '', 0, 1, '2024-01-27 20:53:21', NULL, '2024-01-28 10:30:27', NULL, '-', 'achmad', 'https://api.impactfurniture.id//media/9df83df38a1548198ca4288e22d44cfc.jpeg', NULL, NULL, 48);
INSERT INTO `surat_jalan` VALUES (33, 30, 'SJ-2401-4486', '2024-01-28', '', 0, 1, '2024-01-28 10:35:52', NULL, '2024-01-28 10:38:28', NULL, '-', 'achamad', 'https://api.impactfurniture.id//media/70199dfe66274917d8b7fe11ffcdfe88.jpeg', NULL, NULL, 51);
INSERT INTO `surat_jalan` VALUES (34, 30, 'SJ-2401-8053', '2024-01-28', '', 0, 1, '2024-01-28 10:40:48', NULL, '2024-01-28 10:42:26', NULL, '-', 'jai', 'https://api.impactfurniture.id//media/2fd3a28ae3ebb558b2f22d860e1c20d1.jpeg', NULL, NULL, 51);
INSERT INTO `surat_jalan` VALUES (35, 8, 'SJ-2401-9589', '2024-01-28', '', 0, 1, '2024-01-28 10:43:01', NULL, '2024-01-28 10:43:48', NULL, '-', 'yayan', 'https://api.impactfurniture.id//media/5d6b298aa3f345af436a0a222122e197.jpeg', NULL, NULL, 47);
INSERT INTO `surat_jalan` VALUES (36, 8, 'SJ-2401-7801', '2024-01-28', '', 0, 1, '2024-01-28 10:44:41', NULL, '2024-01-28 10:47:56', NULL, '-', 'pak yayan', 'https://api.impactfurniture.id//media/29be1504ea2c20183b283134c4cccdf9.jpeg', NULL, NULL, 47);
INSERT INTO `surat_jalan` VALUES (37, 40, 'SJ-2401-6032', '2024-01-28', 'tes', 0, 1, '2024-01-28 23:39:36', NULL, '2024-01-28 23:41:38', NULL, '-', 'tes', 'https://api.impactfurniture.id//media/ad4e8b82fe439d3a648d0897b2874e6a.jpeg', NULL, NULL, 47);

-- ----------------------------
-- Table structure for template_produk
-- ----------------------------
DROP TABLE IF EXISTS `template_produk`;
CREATE TABLE `template_produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `produk_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template_produk
-- ----------------------------
INSERT INTO `template_produk` VALUES (1, 'T1', 'Template 1', 1);
INSERT INTO `template_produk` VALUES (2, 'T2', 'Template 2 - Warna Hitam', 1);
INSERT INTO `template_produk` VALUES (3, 'T3', 'Template 3', 1);
INSERT INTO `template_produk` VALUES (4, 'M1', 'Template Meja 4 - 1', 5);
INSERT INTO `template_produk` VALUES (5, 'T1', 'MEJA 3 - 1', 4);
INSERT INTO `template_produk` VALUES (6, 'M1', 'Template Meja 2-1', 3);
INSERT INTO `template_produk` VALUES (7, 'Template-9394', 'T1', 22);
INSERT INTO `template_produk` VALUES (8, 'Template-7325', 'Meja Makan', 2);
INSERT INTO `template_produk` VALUES (9, 'T4', 'Tipe 4', 1);
INSERT INTO `template_produk` VALUES (10, 'Template-9524', 't4', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED NULL DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `anggota_id` int(11) NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `activation_selector`(`activation_selector`) USING BTREE,
  UNIQUE INDEX `forgotten_password_selector`(`forgotten_password_selector`) USING BTREE,
  UNIQUE INDEX `remember_selector`(`remember_selector`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1706495204, 1, 'Admin', 'istrator', 'ADMIN', '0', '101711', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, '::1', 'ahm', '$2y$10$Hojls1F0e38bTgB9Gyn8Cer.L.3Ak0T3rx5MyDvE3teoxXmawwGFG', 'ahmad@impact.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1692973423, 1693033911, 1, 'AHM', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, '112.215.237.81', 'rendy', '$2y$10$Zexem4W9luDl6kK6lUJfTet.gqskrcQqkFbK9osLRfEVYgp3wRJuq', 'rendy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1697964271, 1697964280, 1, 'rendy', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (10, '180.248.26.63', 'ahmet', '$2y$10$ISDX16pxB0WIsoBR0J.Rzen3jglMRES0cNNav7iIYI3SuP84C6o/C', 'ahmad123@impact.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1699756408, 1706412035, 1, 'ahmad driver', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (11, '::1', 'sambo', '$2y$10$lKVNmY09DlwxyINsmHuZNu9aYTLoCYO51AOMDpSdTfXp/E/Ht08hq', 'sambo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1703388839, 1706280748, 1, 'Ramadhani Samboga, S.Pd', NULL, NULL, NULL, NULL, NULL, 29, 'karyawan');
INSERT INTO `users` VALUES (12, '::1', 'rys', '$2y$10$K5ENW0NTKXMQMh.IpDWv4u1jw6CCdo/KCLu8CxSbJltq4JD0lOUwe', 'rendyyanisusanto@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706180466, 1706327023, 1, 'Rendy Yani Susanto', NULL, NULL, NULL, NULL, NULL, 1, 'karyawan');
INSERT INTO `users` VALUES (15, '::1', 'gdg', '$2y$10$7m0yvzrYcnATmRkQYOO1l.UOI7pnUPaTScLT7T5.mVQnymA7pInLW', 'rendyyanisusant111o@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706280210, 1706280220, 1, 'Rendy Yani Susanto', NULL, NULL, NULL, NULL, NULL, 1, 'karyawan');
INSERT INTO `users` VALUES (16, '112.215.173.87', 'agung', '$2y$10$qbRErvmr4RF5trUMty4Pq.9E8PCSMFvIvMmrtNAiPqpnuRMdtkgrq', 'asdasd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706280870, 1706437024, 1, 'Agung Hariadi', NULL, NULL, NULL, NULL, NULL, 48, 'karyawan');
INSERT INTO `users` VALUES (17, '103.177.20.147', 'karyawan17', '$2y$10$THnp/p.OV05npdhLzGhvxunsdKX2ZFg3LD/2j91k0.s9OLjh6KUki', 'karyawan17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706281027, 1706459813, 1, 'KARYAWAN17', NULL, NULL, NULL, '12345', NULL, 47, 'karyawan');
INSERT INTO `users` VALUES (18, '180.251.87.103', 'hariyono', '$2y$10$upgFFQ1FMGyEoK4GyAAO/O/sm34KGv9jgKfb.AcWgFGph8Z/TuWdK', 'danielsitapak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706364238, 1706365133, 1, 'Hariyono', NULL, NULL, NULL, NULL, NULL, 49, 'karyawan');
INSERT INTO `users` VALUES (19, '112.215.243.155', 'totok', '$2y$10$oDWWOTQIFORd65/Rils0BuibQBe.A8DdgYNCpb4fJ5W1DRFConuYK', 'totok@gmail,.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706412857, 1706413489, 1, 'Totok', NULL, NULL, NULL, NULL, NULL, 51, 'karyawan');
INSERT INTO `users` VALUES (20, '104.28.247.129', 'Produksi', '$2y$10$bqG/btbCIoI5MT.E0pb98OHPhF5mvDWxRzL2qYPbJx.jPVP9K.yxu', 'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1706494014, NULL, 1, 'Ningsih', NULL, NULL, NULL, NULL, NULL, 31, 'karyawan');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- View structure for vdetailpb
-- ----------------------------
DROP VIEW IF EXISTS `vdetailpb`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `vdetailpb` AS select `detail_penerimaan_barang`.`id` AS `id`,`detail_penerimaan_barang`.`penerimaan_barang_id` AS `penerimaan_barang_id`,`detail_penerimaan_barang`.`bahan_id` AS `bahan_id`,`detail_penerimaan_barang`.`qty_pesan` AS `qty_pesan`,`detail_penerimaan_barang`.`qty_terima` AS `qty_terima`,`detail_penerimaan_barang`.`satuan_beli_id` AS `satuan_beli_id`,`penerimaan_barang`.`kode` AS `kode`,`penerimaan_barang`.`purchase_order_id` AS `purchase_order_id`,`penerimaan_barang`.`no_surat_jalan` AS `no_surat_jalan`,`penerimaan_barang`.`gudang_id` AS `gudang_id`,`penerimaan_barang`.`tanggal` AS `tanggal`,`penerimaan_barang`.`nama_pengirim` AS `nama_pengirim`,`penerimaan_barang`.`keterangan` AS `keterangan`,`penerimaan_barang`.`status` AS `status`,`penerimaan_barang`.`created_at` AS `created_at`,`penerimaan_barang`.`created_by` AS `created_by`,`penerimaan_barang`.`updated_at` AS `updated_at`,`penerimaan_barang`.`updated_by` AS `updated_by`,`penerimaan_barang`.`status_aktif` AS `status_aktif`,`penerimaan_barang`.`id` AS `pb_id` from (`detail_penerimaan_barang` join `penerimaan_barang` on(`detail_penerimaan_barang`.`penerimaan_barang_id` = `penerimaan_barang`.`id`));

-- ----------------------------
-- View structure for v_detail_mutasi_bahan
-- ----------------------------
DROP VIEW IF EXISTS `v_detail_mutasi_bahan`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_detail_mutasi_bahan` AS select `mutasi_bahan`.`kode` AS `kode`,`mutasi_bahan`.`tanggal` AS `tanggal`,`mutasi_bahan`.`keterangan` AS `keterangan`,`mutasi_bahan`.`status` AS `status`,`mutasi_bahan`.`created_at` AS `created_at`,`mutasi_bahan`.`created_by` AS `created_by`,(select `satuan_beli`.`id` from `satuan_beli` where `detail_mutasi_bahan`.`satuan_beli_id` = `satuan_beli`.`id`) AS `id_satuan`,(select `satuan_beli`.`nama` from `satuan_beli` where `detail_mutasi_bahan`.`satuan_beli_id` = `satuan_beli`.`id`) AS `nama_satuan`,`detail_mutasi_bahan`.`mutasi_bahan_id` AS `mutasi_bahan_id`,`detail_mutasi_bahan`.`bahan_id` AS `bahan_id`,`detail_mutasi_bahan`.`qty` AS `qty`,`detail_mutasi_bahan`.`satuan_beli_id` AS `satuan_beli_id`,`master_data_bahan`.`nama` AS `nama`,`master_data_bahan`.`kode` AS `kode_bahan`,`master_data_bahan`.`gudang_id` AS `gudang_id`,`master_data_bahan`.`harga_satuan` AS `harga_satuan`,`detail_mutasi_bahan`.`id` AS `id` from ((`mutasi_bahan` join `detail_mutasi_bahan` on(`mutasi_bahan`.`id` = `detail_mutasi_bahan`.`mutasi_bahan_id`)) join `master_data_bahan` on(`detail_mutasi_bahan`.`bahan_id` = `master_data_bahan`.`id`));

-- ----------------------------
-- View structure for v_detail_pb_pt
-- ----------------------------
DROP VIEW IF EXISTS `v_detail_pb_pt`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_detail_pb_pt` AS select `detail_pb_pt`.`id` AS `id`,`detail_pb_pt`.`pb_id` AS `pb_id`,`detail_pb_pt`.`pt_id` AS `pt_id`,`penerimaan_barang`.`purchase_order_id` AS `purchase_order_id`,`pembayaran_tagihan`.`status_aktif` AS `status_aktif`,`pembayaran_tagihan`.`kode` AS `kode`,`pembayaran_tagihan`.`tanggal` AS `tanggal` from ((`detail_pb_pt` join `penerimaan_barang` on(`detail_pb_pt`.`pb_id` = `penerimaan_barang`.`id`)) join `pembayaran_tagihan` on(`detail_pb_pt`.`pt_id` = `pembayaran_tagihan`.`id`));

-- ----------------------------
-- View structure for v_detail_po_bahan
-- ----------------------------
DROP VIEW IF EXISTS `v_detail_po_bahan`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_detail_po_bahan` AS select `detail_purchase_order`.`id` AS `id`,`detail_purchase_order`.`purchase_order_id` AS `purchase_order_id`,`detail_purchase_order`.`bahan_id` AS `bahan_id`,`detail_purchase_order`.`qty` AS `qty`,`detail_purchase_order`.`satuan_beli_id` AS `satuan_beli_id`,`detail_purchase_order`.`harga` AS `harga`,`detail_purchase_order`.`diskon` AS `diskon`,`detail_purchase_order`.`subtotal` AS `subtotal`,`master_data_bahan`.`kode` AS `kode`,`master_data_bahan`.`nama` AS `nama`,`master_data_bahan`.`min_qty` AS `min_qty`,`master_data_bahan`.`qty` AS `qtystok`,`master_data_bahan`.`gudang_id` AS `gudang_id`,`master_data_bahan`.`status` AS `status`,(select `satuan_beli`.`id` from `satuan_beli` where `detail_purchase_order`.`satuan_beli_id` = `satuan_beli`.`id`) AS `id_satuan`,(select `satuan_beli`.`nama` from `satuan_beli` where `detail_purchase_order`.`satuan_beli_id` = `satuan_beli`.`id`) AS `nama_satuan` from (`detail_purchase_order` join `master_data_bahan` on(`detail_purchase_order`.`bahan_id` = `master_data_bahan`.`id`));

-- ----------------------------
-- View structure for v_dpb_pb_dpo
-- ----------------------------
DROP VIEW IF EXISTS `v_dpb_pb_dpo`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_dpb_pb_dpo` AS select `detail_penerimaan_barang`.`id` AS `id`,`detail_penerimaan_barang`.`penerimaan_barang_id` AS `penerimaan_barang_id`,`detail_penerimaan_barang`.`bahan_id` AS `bahan_id`,`detail_penerimaan_barang`.`qty_pesan` AS `qty_pesan`,`detail_penerimaan_barang`.`qty_terima` AS `qty_terima`,`detail_penerimaan_barang`.`diskon` AS `diskon`,`detail_penerimaan_barang`.`satuan_beli_id` AS `satuan_beli_id`,(select `master_data_bahan`.`nama` from `master_data_bahan` where `master_data_bahan`.`id` = `detail_penerimaan_barang`.`bahan_id`) AS `nama_bahan`,(select `satuan_beli`.`nama` from `satuan_beli` where `satuan_beli`.`id` = `detail_penerimaan_barang`.`satuan_beli_id`) AS `nama_satuan`,`penerimaan_barang`.`purchase_order_id` AS `purchase_order_id`,`penerimaan_barang`.`kode` AS `kode`,`penerimaan_barang`.`no_surat_jalan` AS `no_surat_jalan`,`penerimaan_barang`.`tanggal` AS `tanggal`,`penerimaan_barang`.`gudang_id` AS `gudang_id`,`penerimaan_barang`.`nama_pengirim` AS `nama_pengirim`,`penerimaan_barang`.`keterangan` AS `keterangan`,`penerimaan_barang`.`status` AS `status`,(select `detail_purchase_order`.`harga` from `detail_purchase_order` where `detail_purchase_order`.`purchase_order_id` = `penerimaan_barang`.`purchase_order_id` and `detail_purchase_order`.`bahan_id` = `detail_penerimaan_barang`.`bahan_id` and `detail_purchase_order`.`qty` = `detail_penerimaan_barang`.`qty_pesan`) AS `harga_satuan` from (`detail_penerimaan_barang` join `penerimaan_barang` on(`detail_penerimaan_barang`.`penerimaan_barang_id` = `penerimaan_barang`.`id`));

-- ----------------------------
-- View structure for v_dtso_so_produk
-- ----------------------------
DROP VIEW IF EXISTS `v_dtso_so_produk`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_dtso_so_produk` AS select `detail_sales_order`.`id` AS `id`,`detail_sales_order`.`sales_order_id` AS `sales_order_id`,`detail_sales_order`.`produk_id` AS `produk_id`,`detail_sales_order`.`qty` AS `qty`,`detail_sales_order`.`harga` AS `harga`,`detail_sales_order`.`diskon` AS `diskon`,`detail_sales_order`.`subtotal` AS `subtotal`,`detail_sales_order`.`status_produksi` AS `status_produksi`,`sales_order`.`kode` AS `kode_so`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`total_ppn` AS `total_ppn`,`sales_order`.`total` AS `total`,`sales_order`.`status` AS `status`,`produk`.`kode` AS `kode_produk`,`produk`.`nama` AS `nama`,`sales_order`.`tanggal` AS `tanggal` from ((`detail_sales_order` join `sales_order` on(`detail_sales_order`.`sales_order_id` = `sales_order`.`id`)) join `produk` on(`detail_sales_order`.`produk_id` = `produk`.`id`));

-- ----------------------------
-- View structure for v_groups_detail_submenu
-- ----------------------------
DROP VIEW IF EXISTS `v_groups_detail_submenu`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_groups_detail_submenu` AS select `groups_detail`.`id` AS `id`,`groups_detail`.`groups_id` AS `groups_id`,`groups_detail`.`submenu_id` AS `submenu_id`,`groups_detail`.`c` AS `c`,`groups_detail`.`r` AS `r`,`groups_detail`.`u` AS `u`,`groups_detail`.`d` AS `d`,`submenu`.`menu_id` AS `menu_id`,`submenu`.`submenu` AS `submenu`,`submenu`.`link` AS `link` from (`groups_detail` join `submenu` on(`groups_detail`.`submenu_id` = `submenu`.`id`));

-- ----------------------------
-- View structure for v_histori_stok_bahan
-- ----------------------------
DROP VIEW IF EXISTS `v_histori_stok_bahan`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_histori_stok_bahan` AS select `histori_stok_bahan`.`id` AS `id`,`histori_stok_bahan`.`bahan_id` AS `bahan_id`,`histori_stok_bahan`.`keterangan` AS `keterangan`,`histori_stok_bahan`.`tanggal` AS `tanggal`,`histori_stok_bahan`.`created_at` AS `created_at`,`histori_stok_bahan`.`created_by` AS `created_by`,`histori_stok_bahan`.`updated_at` AS `updated_at`,`histori_stok_bahan`.`updated_by` AS `updated_by`,`histori_stok_bahan`.`kode` AS `kode`,`histori_stok_bahan`.`masuk` AS `masuk`,`histori_stok_bahan`.`keluar` AS `keluar`,`master_data_bahan`.`kode` AS `kode_bahan`,`master_data_bahan`.`nama` AS `nama`,`master_data_bahan`.`min_qty` AS `min_qty`,`master_data_bahan`.`qty` AS `qty` from (`histori_stok_bahan` join `master_data_bahan` on(`histori_stok_bahan`.`bahan_id` = `master_data_bahan`.`id`));

-- ----------------------------
-- View structure for v_karyawan
-- ----------------------------
DROP VIEW IF EXISTS `v_karyawan`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`125.166.2.225` SQL SECURITY DEFINER VIEW `v_karyawan` AS select `karyawan`.`id` AS `id`,`karyawan`.`kode` AS `kode`,`karyawan`.`nik` AS `nik`,`karyawan`.`nama` AS `nama`,`karyawan`.`jk` AS `jk`,`karyawan`.`no_hp` AS `no_hp`,`karyawan`.`alamat` AS `alamat`,`karyawan`.`province_id` AS `province_id`,`karyawan`.`city_id` AS `city_id`,`karyawan`.`email` AS `email`,`karyawan`.`jabatan_id` AS `jabatan_id`,`karyawan`.`tanggal_masuk` AS `tanggal_masuk`,`karyawan`.`status` AS `status`,`karyawan`.`created_at` AS `created_at`,`karyawan`.`created_by` AS `created_by`,`karyawan`.`updated_at` AS `updated_at`,`karyawan`.`updated_by` AS `updated_by`,`karyawan`.`status_karyawan_id` AS `status_karyawan_id`,`karyawan`.`uid_fingerprint` AS `uid_fingerprint`,(select `jabatan`.`nama` from `jabatan` where `jabatan`.`id` = `karyawan`.`jabatan_id`) AS `jabatan` from `karyawan`;

-- ----------------------------
-- View structure for v_lap_po
-- ----------------------------
DROP VIEW IF EXISTS `v_lap_po`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_lap_po` AS select `purchase_order`.`id` AS `id`,`purchase_order`.`kode` AS `kode`,`purchase_order`.`suplier_id` AS `suplier_id`,`purchase_order`.`tanggal` AS `tanggal`,`purchase_order`.`keterangan` AS `keterangan`,`purchase_order`.`is_ppn` AS `is_ppn`,`purchase_order`.`ppn_id` AS `ppn_id`,`purchase_order`.`subtotal` AS `subtotal`,`purchase_order`.`diskon` AS `diskon`,`purchase_order`.`total` AS `total`,`purchase_order`.`status` AS `status`,`purchase_order`.`created_at` AS `created_at`,`purchase_order`.`created_by` AS `created_by`,`purchase_order`.`updated_at` AS `updated_at`,`purchase_order`.`updated_by` AS `updated_by`,`purchase_order`.`total_ppn` AS `total_ppn`,`purchase_order`.`status_aktif` AS `status_aktif`,(select `master_data_suplier`.`nama` from `master_data_suplier` where `master_data_suplier`.`id` = `purchase_order`.`suplier_id`) AS `nama_suplier` from `purchase_order`;

-- ----------------------------
-- View structure for v_lap_so
-- ----------------------------
DROP VIEW IF EXISTS `v_lap_so`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_lap_so` AS select `sales_order`.`id` AS `id`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`kode` AS `kode`,`sales_order`.`tanggal` AS `tanggal`,`sales_order`.`keterangan` AS `keterangan`,`sales_order`.`is_ppn` AS `is_ppn`,`sales_order`.`ppn_id` AS `ppn_id`,`sales_order`.`subtotal` AS `subtotal`,`sales_order`.`diskon` AS `diskon`,`sales_order`.`total_ppn` AS `total_ppn`,`sales_order`.`status` AS `status`,`sales_order`.`total` AS `total`,`sales_order`.`created_at` AS `created_at`,`sales_order`.`created_by` AS `created_by`,`sales_order`.`updated_at` AS `updated_at`,`sales_order`.`updated_by` AS `updated_by`,`sales_order`.`status_produksi` AS `status_produksi`,(select `master_data_customer`.`nama` from `master_data_customer` where `sales_order`.`customer_id` = `master_data_customer`.`id`) AS `nama_customer`,(select sum(`pembayaran_sales_order`.`total`) from `pembayaran_sales_order` where `sales_order`.`id` = `pembayaran_sales_order`.`so_id` and `pembayaran_sales_order`.`status_aktif` = 1) AS `terbayar`,(select `master_data_customer`.`kode` from `master_data_customer` where `sales_order`.`customer_id` = `master_data_customer`.`id`) AS `kode_customer` from `sales_order`;

-- ----------------------------
-- View structure for v_pb_po
-- ----------------------------
DROP VIEW IF EXISTS `v_pb_po`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_pb_po` AS select `penerimaan_barang`.`id` AS `id`,`penerimaan_barang`.`kode` AS `kode`,`penerimaan_barang`.`purchase_order_id` AS `purchase_order_id`,`penerimaan_barang`.`no_surat_jalan` AS `no_surat_jalan`,`penerimaan_barang`.`gudang_id` AS `gudang_id`,`penerimaan_barang`.`tanggal` AS `tanggal`,`penerimaan_barang`.`nama_pengirim` AS `nama_pengirim`,`penerimaan_barang`.`keterangan` AS `keterangan`,`penerimaan_barang`.`status` AS `status`,`penerimaan_barang`.`status_aktif` AS `status_aktif`,`penerimaan_barang`.`total_pembayaran` AS `total_pembayaran`,`purchase_order`.`kode` AS `kode_po`,`purchase_order`.`suplier_id` AS `suplier_id`,`purchase_order`.`total` AS `total` from (`penerimaan_barang` join `purchase_order` on(`penerimaan_barang`.`purchase_order_id` = `purchase_order`.`id`));

-- ----------------------------
-- View structure for v_presensi
-- ----------------------------
DROP VIEW IF EXISTS `v_presensi`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_presensi` AS select `presensi`.`id` AS `id`,`presensi`.`status_shift_id` AS `status_shift_id`,`presensi`.`karyawan_id` AS `karyawan_id`,`presensi`.`tanggal` AS `tanggal`,`presensi`.`gudang_id` AS `gudang_id`,`presensi`.`shift_in` AS `shift_in`,`presensi`.`shift_out` AS `shift_out`,`presensi`.`actual_in` AS `actual_in`,`presensi`.`actual_out` AS `actual_out`,`karyawan`.`kode` AS `kode_karyawan`,`karyawan`.`nama` AS `nama_karyawan`,`status_shift`.`kode` AS `kode_shift`,`status_shift`.`color` AS `color_shift`,`status_shift`.`nama` AS `nama_shift`,`gudang`.`nama` AS `nama_gudang`,`gudang`.`kode` AS `kode_gudang`,`gudang`.`color` AS `color_gudang` from (((`karyawan` join `presensi` on(`karyawan`.`id` = `presensi`.`karyawan_id`)) join `status_shift` on(`presensi`.`status_shift_id` = `status_shift`.`id`)) join `gudang` on(`presensi`.`gudang_id` = `gudang`.`id`));

-- ----------------------------
-- View structure for v_produk_satuan_barang
-- ----------------------------
DROP VIEW IF EXISTS `v_produk_satuan_barang`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_produk_satuan_barang` AS select `produk`.`id` AS `id`,`produk`.`kode` AS `kode`,`produk`.`nama` AS `nama`,`produk`.`qty` AS `qty`,`produk`.`min_qty` AS `min_qty`,`produk`.`satuan_barang_id` AS `satuan_barang_id`,`produk`.`harga` AS `harga`,`produk`.`kategori_barang_id` AS `kategori_barang_id`,`produk`.`created_at` AS `created_at`,`produk`.`created_by` AS `created_by`,`produk`.`updated_at` AS `updated_at`,`produk`.`updated_by` AS `updated_by`,`produk`.`gudang_id` AS `gudang_id`,`produk`.`status` AS `status`,`satuan_barang`.`kode` AS `kode_satuan`,`satuan_barang`.`nama` AS `nama_satuan` from (`produk` join `satuan_barang` on(`produk`.`satuan_barang_id` = `satuan_barang`.`id`));

-- ----------------------------
-- View structure for v_pso_so
-- ----------------------------
DROP VIEW IF EXISTS `v_pso_so`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_pso_so` AS select `pembayaran_sales_order`.`id` AS `id`,`pembayaran_sales_order`.`so_id` AS `so_id`,`pembayaran_sales_order`.`kode` AS `kode`,`pembayaran_sales_order`.`total` AS `total`,`pembayaran_sales_order`.`tanggal` AS `tanggal`,`pembayaran_sales_order`.`created_at` AS `created_at`,`pembayaran_sales_order`.`created_by` AS `created_by`,`pembayaran_sales_order`.`updated_at` AS `updated_at`,`pembayaran_sales_order`.`updated_by` AS `updated_by`,`pembayaran_sales_order`.`status` AS `status`,`pembayaran_sales_order`.`status_aktif` AS `status_aktif`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`kode` AS `kode_so`,`sales_order`.`tanggal` AS `tanggal_so`,`sales_order`.`total` AS `total_so`,`sales_order`.`subtotal` AS `subtotal`,`sales_order`.`diskon` AS `diskon`,`sales_order`.`total_ppn` AS `total_ppn` from (`pembayaran_sales_order` join `sales_order` on(`pembayaran_sales_order`.`so_id` = `sales_order`.`id`));

-- ----------------------------
-- View structure for v_sj_dtsj
-- ----------------------------
DROP VIEW IF EXISTS `v_sj_dtsj`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_sj_dtsj` AS select `detail_surat_jalan`.`id` AS `id`,`detail_surat_jalan`.`surat_jalan_id` AS `surat_jalan_id`,`detail_surat_jalan`.`produk_id` AS `produk_id`,`detail_surat_jalan`.`qty` AS `qty`,`detail_surat_jalan`.`qty_kirim` AS `qty_kirim`,`surat_jalan`.`so_id` AS `so_id`,`surat_jalan`.`kode` AS `kode`,`surat_jalan`.`tanggal` AS `tanggal`,`surat_jalan`.`keterangan` AS `keterangan`,`surat_jalan`.`status` AS `status`,`surat_jalan`.`status_kirim` AS `status_kirim`,`surat_jalan`.`created_at` AS `created_at`,`surat_jalan`.`created_by` AS `created_by`,`surat_jalan`.`updated_at` AS `updated_at`,`surat_jalan`.`updated_by` AS `updated_by`,`surat_jalan`.`nama_pengirim` AS `nama_pengirim`,`surat_jalan`.`penerima` AS `penerima`,`surat_jalan`.`foto_bukti` AS `foto_bukti`,`surat_jalan`.`alamat` AS `alamat`,`surat_jalan`.`no_hp` AS `no_hp` from (`detail_surat_jalan` join `surat_jalan` on(`surat_jalan`.`id` = `detail_surat_jalan`.`surat_jalan_id`));

-- ----------------------------
-- View structure for v_sj_so
-- ----------------------------
DROP VIEW IF EXISTS `v_sj_so`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_sj_so` AS select `surat_jalan`.`id` AS `id`,`surat_jalan`.`so_id` AS `so_id`,`surat_jalan`.`kode` AS `kode`,`surat_jalan`.`tanggal` AS `tanggal`,`surat_jalan`.`keterangan` AS `keterangan`,`surat_jalan`.`status` AS `status`,`surat_jalan`.`status_kirim` AS `status_kirim`,`surat_jalan`.`updated_at` AS `updated_at`,`surat_jalan`.`updated_by` AS `updated_by`,`surat_jalan`.`nama_pengirim` AS `nama_pengirim`,`surat_jalan`.`penerima` AS `penerima`,`surat_jalan`.`foto_bukti` AS `foto_bukti`,`surat_jalan`.`alamat` AS `alamat`,`surat_jalan`.`no_hp` AS `no_hp`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`kode` AS `kode_so`,`sales_order`.`tanggal` AS `tanggal_so`,`sales_order`.`is_ppn` AS `is_ppn`,`sales_order`.`ppn_id` AS `ppn_id`,`sales_order`.`subtotal` AS `subtotal`,`sales_order`.`diskon` AS `diskon`,`sales_order`.`total_ppn` AS `total_ppn`,`sales_order`.`total` AS `total`,`sales_order`.`status_produksi` AS `status_produksi`,`surat_jalan`.`created_at` AS `created_at`,`surat_jalan`.`created_by` AS `created_by` from (`surat_jalan` join `sales_order` on(`sales_order`.`id` = `surat_jalan`.`so_id`));

-- ----------------------------
-- View structure for v_sj_so_cs
-- ----------------------------
DROP VIEW IF EXISTS `v_sj_so_cs`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`180.248.29.250` SQL SECURITY DEFINER VIEW `v_sj_so_cs` AS select `surat_jalan`.`id` AS `id`,`surat_jalan`.`so_id` AS `so_id`,`surat_jalan`.`kode` AS `kode`,`surat_jalan`.`tanggal` AS `tanggal`,`surat_jalan`.`keterangan` AS `keterangan`,`surat_jalan`.`status` AS `status`,`surat_jalan`.`status_kirim` AS `status_kirim`,`surat_jalan`.`updated_at` AS `updated_at`,`surat_jalan`.`updated_by` AS `updated_by`,`surat_jalan`.`nama_pengirim` AS `nama_pengirim`,`surat_jalan`.`penerima` AS `penerima`,`surat_jalan`.`foto_bukti` AS `foto_bukti`,`surat_jalan`.`alamat` AS `alamat`,`surat_jalan`.`no_hp` AS `no_hp`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`kode` AS `kode_so`,`sales_order`.`tanggal` AS `tanggal_so`,`sales_order`.`is_ppn` AS `is_ppn`,`sales_order`.`ppn_id` AS `ppn_id`,`sales_order`.`subtotal` AS `subtotal`,`sales_order`.`diskon` AS `diskon`,`sales_order`.`total_ppn` AS `total_ppn`,`sales_order`.`total` AS `total`,`sales_order`.`status_produksi` AS `status_produksi`,`surat_jalan`.`created_at` AS `created_at`,`surat_jalan`.`created_by` AS `created_by`,(select `master_data_customer`.`nama` from `master_data_customer` where `master_data_customer`.`id` = `sales_order`.`customer_id`) AS `nama_customer` from (`surat_jalan` join `sales_order` on(`sales_order`.`id` = `surat_jalan`.`so_id`));

-- ----------------------------
-- View structure for v_so_dtso
-- ----------------------------
DROP VIEW IF EXISTS `v_so_dtso`;
CREATE ALGORITHM = UNDEFINED DEFINER = `u1573701_smm`@`%` SQL SECURITY DEFINER VIEW `v_so_dtso` AS select `sales_order`.`id` AS `id`,`sales_order`.`customer_id` AS `customer_id`,`sales_order`.`kode` AS `kode`,`sales_order`.`tanggal` AS `tanggal`,`sales_order`.`keterangan` AS `keterangan`,`sales_order`.`is_ppn` AS `is_ppn`,`sales_order`.`ppn_id` AS `ppn_id`,`sales_order`.`subtotal` AS `subtotal`,`sales_order`.`diskon` AS `diskon`,`sales_order`.`total_ppn` AS `total_ppn`,`sales_order`.`status` AS `status`,`sales_order`.`total` AS `total`,`sales_order`.`created_at` AS `created_at`,`sales_order`.`created_by` AS `created_by`,`sales_order`.`updated_at` AS `updated_at`,`sales_order`.`updated_by` AS `updated_by`,`sales_order`.`status_produksi` AS `status_produksi`,`detail_sales_order`.`produk_id` AS `produk_id`,`detail_sales_order`.`qty` AS `qty`,`detail_sales_order`.`harga` AS `harga` from (`sales_order` join `detail_sales_order` on(`sales_order`.`id` = `detail_sales_order`.`sales_order_id`));

-- ----------------------------
-- Triggers structure for table detail_bahan_produksi
-- ----------------------------
DROP TRIGGER IF EXISTS `stok_produksi`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `stok_produksi` AFTER INSERT ON `detail_bahan_produksi` FOR EACH ROW BEGIN
	Update master_data_bahan set qty = qty-new.qty where master_data_bahan.id = new.bahan_id;
	
	select kode INTO @produksi from produksi where produksi.id=new.produksi_id;
	select tanggal INTO @produksi_tanggal from produksi where produksi.id=new.produksi_id;
	select created_by INTO @produksi_created_by from produksi where produksi.id=new.produksi_id;
	INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by , kode, masuk, keluar) VALUES (new.bahan_id, CONCAT("Produksi dengan kode ",@produksi), @produksi_tanggal, @produksi_created_by ,@produksi, 0, new.qty);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_bahan_produksi
-- ----------------------------
DROP TRIGGER IF EXISTS `update_stok_produksi`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `update_stok_produksi` AFTER UPDATE ON `detail_bahan_produksi` FOR EACH ROW BEGIN
	IF(OLD.qty > NEW.qty) THEN
		Update master_data_bahan set master_data_bahan.qty = master_data_bahan.qty+(OLD.qty - NEW.qty) where master_data_bahan.id = new.bahan_id;
	ELSEIF(OLD.qty < NEW.qty) THEN
		Update master_data_bahan set master_data_bahan.qty = master_data_bahan.qty-(OLD.qty - NEW.qty) where master_data_bahan.id = new.bahan_id;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penerimaan_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `add_stock`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `add_stock` AFTER INSERT ON `detail_penerimaan_barang` FOR EACH ROW BEGIN
	Update master_data_bahan set qty = qty+NEW.qty_terima where master_data_bahan.id = new.bahan_id;
	
	select kode INTO @pb from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
	select tanggal INTO @pb_tanggal from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
	select created_by INTO @pb_created_by from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
	INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by , kode, masuk, keluar) VALUES (new.bahan_id, CONCAT("Tambah data bahan ",@pb), @pb_tanggal, @pb_created_by ,@pb, new.qty_terima, 0);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penerimaan_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `update_stok`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `update_stok` AFTER UPDATE ON `detail_penerimaan_barang` FOR EACH ROW BEGIN
	IF(OLD.qty_terima > NEW.qty_terima) THEN
		Update master_data_bahan set master_data_bahan.qty = master_data_bahan.qty+(OLD.qty_terima - NEW.qty_terima) where master_data_bahan.id = new.bahan_id;
		
		select kode INTO @pb from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		select tanggal INTO @pb_tanggal from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		select created_by INTO @pb_created_by from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by , kode, masuk, keluar) VALUES (new.bahan_id, CONCAT("Edit data bahan ",@pb), @pb_tanggal, @pb_created_by ,@pb, (OLD.qty_terima - NEW.qty_terima), 0);
	ELSEIF(OLD.qty_terima < NEW.qty_terima) THEN
		Update master_data_bahan set master_data_bahan.qty = master_data_bahan.qty-(OLD.qty_terima - NEW.qty_terima) where master_data_bahan.id = new.bahan_id;
		
		select kode INTO @pb from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		select tanggal INTO @pb_tanggal from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		select created_by INTO @pb_created_by from penerimaan_barang where penerimaan_barang.id=new.penerimaan_barang_id;
		INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by , kode, masuk, keluar) VALUES (new.bahan_id, CONCAT("Edit data bahan ",@pb), @pb_tanggal, @pb_created_by ,@pb, 0, (OLD.qty_terima - NEW.qty_terima));
	END IF;
	
	
	

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_purchase_order
-- ----------------------------
DROP TRIGGER IF EXISTS `upd_total`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `upd_total` AFTER DELETE ON `detail_purchase_order` FOR EACH ROW BEGIN
update purchase_order SET subtotal = subtotal-(OLD.harga*OLD.qty), total=total-(OLD.harga*OLD.qty)  where purchase_order.id = old.purchase_order_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_sales_order
-- ----------------------------
DROP TRIGGER IF EXISTS `rem_stok`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `rem_stok` AFTER INSERT ON `detail_sales_order` FOR EACH ROW BEGIN
	Update produk set produk.qty = produk.qty-NEW.qty where produk.id = new.produk_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_surat_jalan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk_stok`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `produk_stok` AFTER INSERT ON `detail_surat_jalan` FOR EACH ROW BEGIN
	Update produk set qty = qty-new.qty_kirim where produk.id = new.produk_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_surat_jalan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk_stok_update`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `produk_stok_update` AFTER UPDATE ON `detail_surat_jalan` FOR EACH ROW BEGIN
	IF(OLD.qty_kirim > NEW.qty_kirim) THEN
		Update produk set qty = qty+(OLD.qty_kirim - NEW.qty_kirim) where produk.id = new.produk_id;
	ELSEIF(OLD.qty_kirim < NEW.qty_kirim) THEN
		Update produk set qty = qty-(NEW.qty_kirim-OLD.qty_kirim) where produk.id = new.produk_id;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_surat_jalan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk_stok_del`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `produk_stok_del` AFTER DELETE ON `detail_surat_jalan` FOR EACH ROW BEGIN
	Update produk set produk.qty = produk.qty + OLD.qty_kirim where produk.id = OLD.produk_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table master_data_bahan
-- ----------------------------
DROP TRIGGER IF EXISTS `histori_stok`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `histori_stok` AFTER INSERT ON `master_data_bahan` FOR EACH ROW BEGIN
	INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by, kode, masuk, keluar) VALUES (new.id, CONCAT("Tambah data bahan ",new.nama), DATE(new.created_at), new.created_by, new.kode, new.qty, 0);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table master_data_bahan
-- ----------------------------
DROP TRIGGER IF EXISTS `histori_stok_hapus`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `histori_stok_hapus` AFTER DELETE ON `master_data_bahan` FOR EACH ROW BEGIN
	INSERT into histori_stok_bahan (bahan_id, keterangan, tanggal, created_by, kode, masuk, keluar) VALUES (old.id, CONCAT("Hapus data bahan ",old.nama), DATE(old.created_at), old.created_by, old.kode, 0, old.qty);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pemasukan_lain
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_pemasukan`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_pemasukan` AFTER INSERT ON `pemasukan_lain` FOR EACH ROW BEGIN
-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.trans_code, new.akun_kas, new.total, 0, new.keterangan, "pemasukan_lain", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.trans_code, new.akun_beban, 0, new.total, new.keterangan, "pemasukan_lain", new.id);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembayaran_sales_order
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_pso`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_pso` AFTER INSERT ON `pembayaran_sales_order` FOR EACH ROW BEGIN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 1, new.total, 0, CONCAT("Pembayaran SO pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode), "pembayaran_sales_order", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 4, 0, new.total, CONCAT("Pembayaran SO pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode), "pembayaran_sales_order", new.id);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembayaran_sales_order
-- ----------------------------
DROP TRIGGER IF EXISTS `edit_pso`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `edit_pso` AFTER UPDATE ON `pembayaran_sales_order` FOR EACH ROW BEGIN
	-- 	Debit

	update jurnal_umum set debit=new.total, ref=new.kode, keterangan = CONCAT("Pembayaran SO pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode) where jurnal_umum.table="pembayaran_sales_order" and table_id=new.id and kredit=0;
-- 	Kredit
	update jurnal_umum set kredit=new.total, ref=new.kode, keterangan = CONCAT("Pembayaran SO pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode) where jurnal_umum.table="pembayaran_sales_order" and table_id=new.id and debit=0;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembayaran_tagihan
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_pt`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_pt` AFTER INSERT ON `pembayaran_tagihan` FOR EACH ROW BEGIN

IF(new.total_ppn > 0 AND new.diskon > 0) THEN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 9, new.subtotal, 0, CONCAT("Pembayaran Tagihan pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 38, new.total_ppn, 0, CONCAT("Pembayaran Tagihan pada tanggal ",DATE_FORMAT(new.tanggal, "%d-%m-%Y")," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 1, 0, ((new.subtotal + new.total_ppn) - new.diskon), CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 37, 0, new.diskon, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);

ELSEIF(new.total_ppn > 0 AND new.diskon < 1) THEN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 9, new.subtotal, 0, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 38, new.total_ppn, 0, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 1, 0, ((new.subtotal + new.total_ppn)), CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
	
ELSEIF(new.total_ppn < 1 AND new.diskon>0) THEN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 9, new.subtotal, 0, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 1, 0, (new.subtotal - new.diskon), CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 37, 0, new.diskon, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);

ELSE
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 9, new.subtotal, 0, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 1, 0, new.subtotal, CONCAT("Pembayaran Tagihan pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Tagihan ", new.no_tagihan," dan Penagih ", new.penagih), "pembayaran_tagihan", new.id);
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penerimaan_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_pb`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_pb` AFTER INSERT ON `penerimaan_barang` FOR EACH ROW BEGIN
-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 5, new.total, 0, CONCAT("Penerimaan Barang pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Surat Jalan ", new.no_surat_jalan," dan Pengirim ", new.nama_pengirim), "penerimaan_barang", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 9, 0, new.total, CONCAT("Penerimaan Barang pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Surat Jalan ", new.no_surat_jalan," dan Pengirim ", new.nama_pengirim), "penerimaan_barang", new.id);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penerimaan_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_pb_update`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_pb_update` AFTER UPDATE ON `penerimaan_barang` FOR EACH ROW BEGIN
	-- 	Debit

	update jurnal_umum set debit=new.total, ref=new.kode, keterangan = CONCAT("Penerimaan Barang pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Surat Jalan ", new.no_surat_jalan," dan Pengirim ", new.nama_pengirim) where jurnal_umum.table="penerimaan_barang" and table_id=new.id and kredit=0;
-- 	Kredit
	update jurnal_umum set kredit=new.total, ref=new.kode, keterangan = CONCAT("Penerimaan Barang pada tanggal ",new.tanggal," dengan Kode ",new.kode , ", No Surat Jalan ", new.no_surat_jalan," dan Pengirim ", new.nama_pengirim) where jurnal_umum.table="penerimaan_barang" and table_id=new.id and debit=0;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sales_order
-- ----------------------------
DROP TRIGGER IF EXISTS `jurnal_so`;
delimiter ;;
CREATE DEFINER = `u1573701_smm`@`%` TRIGGER `jurnal_so` AFTER INSERT ON `sales_order` FOR EACH ROW BEGIN

IF(new.total_ppn > 0 AND new.diskon > 0) THEN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 4, (new.subtotal + new.total_ppn - new.diskon), 0, CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 36, new.diskon, 0,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 20, 0, new.subtotal,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 39, 0, new.total_ppn,   CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);

ELSEIF(new.total_ppn > 0 AND new.diskon < 1) THEN
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 4, (new.subtotal + new.total_ppn), 0, CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 20, 0, new.subtotal,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 39, 0, new.total_ppn,   CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	
ELSEIF(new.total_ppn < 1 AND new.diskon>0) THEN
-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 4, (new.subtotal - new.diskon), 0, CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 36, new.diskon, 0,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 20, 0, new.subtotal,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);

ELSE
	-- 	Debit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 4, (new.subtotal), 0, CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
	-- 	Kredit
	INSERT into jurnal_umum(ref, akun_id, debit, kredit, keterangan, jurnal_umum.table, table_id) VALUES (new.kode, 20, 0, new.subtotal,  CONCAT("Penjualan pada tanggal ",new.tanggal," dengan Kode ",new.kode ), "sales_order", new.id);
END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
