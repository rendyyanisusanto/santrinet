/*
 Navicat Premium Data Transfer

 Source Server         : myber
 Source Server Type    : MySQL
 Source Server Version : 100613 (10.6.13-MariaDB-cll-lve)
 Source Host           : myber.web.id:3306
 Source Schema         : u7443125_smm-polaris

 Target Server Type    : MySQL
 Target Server Version : 100613 (10.6.13-MariaDB-cll-lve)
 File Encoding         : 65001

 Date: 07/06/2023 07:20:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` VALUES (2, 'members', 'General User');

-- ----------------------------
-- Table structure for gudang
-- ----------------------------
DROP TABLE IF EXISTS `gudang`;
CREATE TABLE `gudang`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gudang
-- ----------------------------
INSERT INTO `gudang` VALUES (1, 'Gudang 1', 'GD/2385097', 1, '#9b59b6', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (2, 'Gudang 2', 'GD/9770989', 1, '#f1c40f', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (3, 'Gudang 3', 'GD/4199581', 1, '#373f7b', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (4, 'Gudang 4', 'GD/4329066', 1, '#2fc1a4', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (5, 'Gudang 5', 'GD/3515021', 1, '#813232', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (31, 'GUDANG 111', '111', 1, '#000000', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (32, 'GUDANG 222', '222', 1, '#4e2c2c', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (33, 'GUDANG 333', '333', 1, '#000000', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (34, 'GUDANG 444', '444', 1, '#c572fd', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (35, 'GUDANG 555', '555', 1, '#000000', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (36, 'GUDANG 666', '666', 1, '#3f5373', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (37, 'GUDANG 777', '777', 1, '#e59999', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (38, 'GUDANG 888', '888', 1, '#77b120', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (39, 'GUDANG 999', '999', 1, '#b8b205', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (40, 'GUDANG 1110', '1110', 1, '#a02a0d', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (41, 'GUDANG 1221', '1221', 1, '#000000', NULL, '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (42, 'GUDANG 1332', 'GD/2780762', 1, '#000000', 'Malang', '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (43, 'Gudang Pogot', 'G100', 1, '#c11a1a', 'Pogot', '2023-02-06 19:13:55', NULL, NULL, NULL);
INSERT INTO `gudang` VALUES (44, 'Gudang Coba', 'G1', 1, '#7e2020', 'malang', '2023-02-06 19:16:51', 1, NULL, NULL);

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'JB-9966405', 'Direktur', 1, '2023-02-06 20:31:10', 1, '2023-02-06 20:31:52', 1, '#000000');

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `province_id` int NULL DEFAULT NULL,
  `city_id` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES (1, 'KYR-8162650', '350741115505', 'Rendy Yani Susanto, S.Pdi', 'Laki-Laki', '+6285894632505', 'Malang', 15, 232, 'rendyyanisusanto@gmail.com', 1, '2023-02-08', 1, '2023-02-08 19:07:22', 1, '2023-02-08 19:28:55', NULL);

-- ----------------------------
-- Table structure for kategori_bahan
-- ----------------------------
DROP TABLE IF EXISTS `kategori_bahan`;
CREATE TABLE `kategori_bahan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `bahan_id` int UNSIGNED NULL DEFAULT NULL,
  `satuan_id` int NULL DEFAULT NULL,
  `nilai` int NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------
INSERT INTO `login_attempts` VALUES (1, '::1', 'admin', 1676771951);

-- ----------------------------
-- Table structure for master_barang_jadi
-- ----------------------------
DROP TABLE IF EXISTS `master_barang_jadi`;
CREATE TABLE `master_barang_jadi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `min_qty` int NULL DEFAULT NULL,
  `satuan_barang_id` int NULL DEFAULT NULL,
  `harga_beli` int NULL DEFAULT NULL,
  `kategori_barang_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
  `gudang_id` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_barang_jadi
-- ----------------------------
INSERT INTO `master_barang_jadi` VALUES (1, 'MSBJ/5341588/02/01022023', 'Kursi Kantor', 20, 11, 2, 200000, 2, '2023-02-01 20:58:29', 1, '2023-02-02 11:26:11', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (2, 'MSBJ/2784949/02/02022023', 'MEJA1', 100, 1, 2, 100000, 2, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:37', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (3, 'MSBJ/8214492/02/02022023', 'MEJA 2', 101, 2, 2, 200000, 1, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:32', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (4, 'MSBJ/8567314/02/02022023', 'MEJA3', 102, 3, 1, 300000, 2, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:27', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (5, 'MSBJ/3334951/02/02022023', 'MEJA4', 103, 4, 1, 400000, 1, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:23', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (6, 'MSBJ/4342382/02/02022023', 'MEJA5', 104, 5, 2, 500000, 2, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:19', 1, 1, 1);
INSERT INTO `master_barang_jadi` VALUES (7, 'MSBJ/63151/02/02022023', 'MEJA6', 105, 6, 2, 600000, 1, '2023-02-01 21:15:19', 1, '2023-02-02 11:25:13', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (8, 'MSBJ/3492136/02/02022023', 'Kursi Gaming', 20, 1, 1, 780000, 1, '2023-02-02 10:45:33', 1, '2023-02-02 11:01:46', 1, 2, 1);
INSERT INTO `master_barang_jadi` VALUES (9, 'MSBJ/3613968/02/04022023', 'Kursi Minimalis 1', 150, 100, 2, 150000, 1, '2023-02-04 13:01:35', 1, '2023-02-04 13:02:02', 1, 1, 1);

-- ----------------------------
-- Table structure for master_data_bahan
-- ----------------------------
DROP TABLE IF EXISTS `master_data_bahan`;
CREATE TABLE `master_data_bahan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `min_qty` int NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `satuan_pakai_id` int NULL DEFAULT NULL,
  `satuan_beli_id` int NULL DEFAULT NULL,
  `gudang_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_bahan
-- ----------------------------
INSERT INTO `master_data_bahan` VALUES (2, 'MSB/505926/02/01022023', 'Paku', 1, 100, 2, 1, 1, '2023-02-01 19:17:31', 1, NULL, NULL, 1);
INSERT INTO `master_data_bahan` VALUES (3, 'MSB/2252535/02/01022023', 'Kayu', 1, 200, 2, 1, 2, '2023-02-01 19:17:59', 1, NULL, NULL, 1);
INSERT INTO `master_data_bahan` VALUES (4, 'MSB/4861987/02/01022023', 'Spon', 6, 50, 2, 1, 1, '2023-02-01 19:18:39', 1, '2023-02-01 19:22:45', 1, 1);
INSERT INTO `master_data_bahan` VALUES (6, 'MSBJ/5826299/02/02022023', 'PAKU 2', 2, 101, 2, 2, 1, '2023-02-01 20:08:49', 1, '2023-02-02 11:23:14', 1, 1);
INSERT INTO `master_data_bahan` VALUES (38, 'MSBJ/5240920/02/02022023', 'PAKU 17', 17, 116, 1, 1, 1, '2023-02-01 20:10:31', 1, '2023-02-02 11:23:08', 1, 1);
INSERT INTO `master_data_bahan` VALUES (39, 'MSBJ/7456044/02/02022023', 'PAKU 1', 1, 100, 2, 1, 1, '2023-02-01 20:11:44', 1, '2023-02-02 11:23:04', 1, 1);
INSERT INTO `master_data_bahan` VALUES (40, 'MSBJ/55499/02/02022023', 'PAKU 2', 2, 101, 1, 2, 2, '2023-02-01 20:11:44', 1, '2023-02-02 11:23:00', 1, 1);
INSERT INTO `master_data_bahan` VALUES (41, 'MSBJ/4187006/02/02022023', 'PAKU 3', 3, 102, 2, 1, 1, '2023-02-01 20:11:44', 1, '2023-02-02 11:22:56', 1, 1);
INSERT INTO `master_data_bahan` VALUES (42, 'MSBJ/9712419/02/02022023', 'PAKU 4', 4, 103, 1, 2, 2, '2023-02-01 20:11:44', 1, '2023-02-02 11:22:51', 1, 1);
INSERT INTO `master_data_bahan` VALUES (43, 'MSBJ/5618227/02/02022023', 'PAKU 5', 5, 104, 2, 1, 1, '2023-02-01 20:11:44', 1, '2023-02-02 11:22:46', 1, 1);
INSERT INTO `master_data_bahan` VALUES (44, 'MSBJ/3262379/02/02022023', 'PAKU 6', 6, 105, 1, 2, 2, '2023-02-01 20:11:44', 1, '2023-02-02 11:19:32', 1, 1);
INSERT INTO `master_data_bahan` VALUES (45, 'MSBJ/9017460/02/02022023', 'PAKU 7', 7, 106, 2, 1, 1, '2023-02-01 20:11:44', 1, '2023-02-02 11:19:21', 1, 1);
INSERT INTO `master_data_bahan` VALUES (55, 'MSBJ/1446196/02/02022023', 'PAKU 17', 17, 116, 2, 1, 1, '2023-02-01 20:11:44', 1, '2023-02-02 11:19:10', 1, 1);
INSERT INTO `master_data_bahan` VALUES (56, 'MSBJ/7905443/02/02022023', 'Paku Payung', 1, 100, 1, 1, 5, '2023-02-02 11:09:09', 1, NULL, NULL, 1);
INSERT INTO `master_data_bahan` VALUES (57, 'MSBJ/2823559/02/04022023', 'Besi Plong', 10, 1000, 1, 1, 5, '2023-02-04 12:55:51', 1, '2023-02-04 12:56:13', 1, 1);
INSERT INTO `master_data_bahan` VALUES (58, 'MSBJ/8834838/02/18022023', 'Cat Kayu', 1, 1, NULL, NULL, 1, '2023-02-18 10:14:11', 1, NULL, NULL, 1);
INSERT INTO `master_data_bahan` VALUES (59, 'MSBJ/4743624/02/18022023', 'Sekrup', 100, 100, NULL, NULL, 1, '2023-02-18 10:15:30', 1, NULL, NULL, 1);
INSERT INTO `master_data_bahan` VALUES (60, 'MSBJ/3950044/02/18022023', 'Baut', 100, 100, NULL, NULL, 1, '2023-02-18 10:16:35', 1, NULL, NULL, 1);

-- ----------------------------
-- Table structure for master_data_customer
-- ----------------------------
DROP TABLE IF EXISTS `master_data_customer`;
CREATE TABLE `master_data_customer`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province_id` int UNSIGNED NULL DEFAULT NULL,
  `city_id` int UNSIGNED NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_customer
-- ----------------------------
INSERT INTO `master_data_customer` VALUES (1, 'CUST/02022023/1136419/20231', 'Achmad Daffa Syifaun F1', '3211', 'begawan pandan sari lor jabung1', 15, 232, 'ahmadmusthofa@gmail.com1', 'CUST/02022023/1136419/20231', 1, '2023-02-02 13:51:00', 1, '2023-02-02 13:52:04', 1);

-- ----------------------------
-- Table structure for master_data_suplier
-- ----------------------------
DROP TABLE IF EXISTS `master_data_suplier`;
CREATE TABLE `master_data_suplier`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city_id` int UNSIGNED NOT NULL,
  `alamat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` int UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int UNSIGNED NOT NULL,
  `province_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_data_suplier
-- ----------------------------
INSERT INTO `master_data_suplier` VALUES (12, 'MST/5662615/2023', 'FM BAEL - 123', '55645555s', 257, 'Malang', 'by998@digipen.edus', 'MST/5662615/2023', 1, '2023-01-25 19:20:55', 1, '2023-01-25 19:33:35', 0, 15);
INSERT INTO `master_data_suplier` VALUES (13, 'MST/6038917/2023', 'PT. Integritas Papua Mandiri', '085894635005', 471, 'Papua', 'A@gmail.com', '', 1, '2023-01-31 09:01:19', 1, '2023-01-31 09:01:19', 0, 34);
INSERT INTO `master_data_suplier` VALUES (15, 'MST/2995593/2023', 'Bagyo Adi', '087621643713', 262, 'Jl. Pacarkeling Surabaya', 'bagyoadi@gmail.com', '-', 1, '2023-02-04 12:33:18', 1, '2023-02-04 12:33:40', 1, 15);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2);

-- ----------------------------
-- Table structure for ppn
-- ----------------------------
DROP TABLE IF EXISTS `ppn`;
CREATE TABLE `ppn`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppn
-- ----------------------------
INSERT INTO `ppn` VALUES (1, 'PPN-6277925', 11, 1, '2023-02-07 08:00:49', 1, '2023-02-15 11:03:35', 1, 1);
INSERT INTO `ppn` VALUES (2, 'PPN-8646330', 10, 1, '2023-02-15 11:03:25', 1, NULL, NULL, 0);

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
  `lat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profil_website
-- ----------------------------
INSERT INTO `profil_website` VALUES ('VOHISA', 'Jl. Istana Mekar Wangi Utama No 1P-Q', '085894632505', 'logo-w.png', 'bulb.png', 'undefined', 'Shop with the nature, Please shop with me', '<p>The Balance Small Business makes launching and managing your own business easy. It is home to experts who provide clear, practical advice on entrepreneurship and management. Whether you&rsquo;re just starting up or you want to take your company to the next level, our 20-year-strong library of more than 7,000 pieces of content will answer your questions and turn your business dreams into reality.</p>\n\n<p><a href=\"https://www.thebalancesmb.com/\">The Balance</a>&nbsp;is part of The Balance family of sites, including&nbsp;<a href=\"https://www.thebalance.com/\" rel=\"noopener\" target=\"_blank\">The Balance</a>&nbsp;and&nbsp;<a href=\"https://www.thebalancecareers.com/\" rel=\"noopener\" target=\"_blank\">The Balance Careers</a>, covering personal finance, career, and small business topics. With more than 24 million monthly visitors, The Balance is among the top-10 largest finance properties as measured by comScore, a leading Internet measurement company. Our more than 50 expert writers have extensive qualifications and expertise in their topics, including MBAs, PhDs, CFPs, other advanced degrees and professional certifications.</p>\n\n<p>The Balance family of sites have been honored by multiple awards in the last year, including&nbsp;<a href=\"https://www.tellyawards.com/winners/2017/short-form-social/general-education-discovery\" rel=\"noopener nofollow\" target=\"_blank\">The Telly Awards</a>,&nbsp;<a href=\"https://www.communicatorawards.com/\" rel=\"noopener nofollow\" target=\"_blank\">The Communicator Awards</a>, and&nbsp;<a href=\"https://www.editorandpublisher.com/news/editor-publisher-announces-the-2017-eppy-award-finalists/\" rel=\"noopener nofollow\" target=\"_blank\">Eppy Awards</a>.</p>\n', 'hallo@smkitasy-syadzili.sch.id', 'Abdur Rochim', 'undefined', 'undefined', 'undefined', 'undefined', 'ea4d58dd1254aff316312b7ecbb5c410.jpg', 'Halo Admin, Saya ingin bertanya/membeli/.....', 'd797c14a0070235734508b7d9f409395.jpg', '&copy; 2019. <a href=\"#\">Core Master</a> by<a href=\"https://myber.co.id\" target=\"_blank\">Myber</a>', 'Core Master', 'SMK IT Asy-Syadzili', 'Malang', 'Indonesia', '112.66307147573268', '-7.840640250568774');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `suplier_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_ppn` tinyint(1) NULL DEFAULT NULL,
  `ppn_id` int NULL DEFAULT NULL,
  `subtotal` double(20, 2) NULL DEFAULT NULL,
  `diskon` double(20, 2) NULL DEFAULT NULL,
  `total` double(20, 2) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` int UNSIGNED NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------

-- ----------------------------
-- Table structure for satuan_barang
-- ----------------------------
DROP TABLE IF EXISTS `satuan_barang`;
CREATE TABLE `satuan_barang`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of satuan_beli
-- ----------------------------
INSERT INTO `satuan_beli` VALUES (1, 'SB-7445934', 'KG', 1);
INSERT INTO `satuan_beli` VALUES (2, 'SB-3519503', 'TON', 1);
INSERT INTO `satuan_beli` VALUES (3, 'SB-22599601', 'Box', 1);
INSERT INTO `satuan_beli` VALUES (4, 'SBAR-5682384', 'PCS', 1);
INSERT INTO `satuan_beli` VALUES (5, 'SBAR-8956158', 'Kaleng', 1);

-- ----------------------------
-- Table structure for satuan_pakai
-- ----------------------------
DROP TABLE IF EXISTS `satuan_pakai`;
CREATE TABLE `satuan_pakai`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan_beli_id` int UNSIGNED NULL DEFAULT NULL,
  `pembagi` decimal(20, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `satuan_beli_id`(`satuan_beli_id` ASC) USING BTREE,
  CONSTRAINT `satuan_pakai_ibfk_1` FOREIGN KEY (`satuan_beli_id`) REFERENCES `satuan_beli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of satuan_pakai
-- ----------------------------
INSERT INTO `satuan_pakai` VALUES (1, 'SP1', 'Gram', 1, 0.001000);
INSERT INTO `satuan_pakai` VALUES (2, 'SP2', 'MG', 1, 0.000001);
INSERT INTO `satuan_pakai` VALUES (3, 'STB6620825', 'Pack', 3, 11.000000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_table
-- ----------------------------
INSERT INTO `setting_table` VALUES (1, 'buku_tamu', 'template_excel', 'include/template/excel/format_cetak_buku_tamu', 'Template Buku Tamu');
INSERT INTO `setting_table` VALUES (2, 'prestasi_siswa', 'template_excel', 'include/template/excel/format_cetak_prestasi_siswa', 'Template Prestasi Siswa');
INSERT INTO `setting_table` VALUES (3, 'master_data_suplier', 'kode', 'MST/{rand}/{year}', NULL);
INSERT INTO `setting_table` VALUES (4, 'master_data_suplier', 'template_excel', 'master_data_suplier.xlsx', NULL);
INSERT INTO `setting_table` VALUES (5, 'master_data_suplier', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (6, 'master_data_bahan', 'kode', 'MSBJ/{rand}/{month}/{date}', NULL);
INSERT INTO `setting_table` VALUES (7, 'master_data_bahan', 'template_excel', 'master_data_bahan.xlsx', NULL);
INSERT INTO `setting_table` VALUES (8, 'master_data_bahan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (9, 'master_barang_jadi', 'kode', 'MSB/{rand}/{month}/{date}', NULL);
INSERT INTO `setting_table` VALUES (10, 'master_barang_jadi', 'template_excel', 'master_barang_jadi.xlsx', NULL);
INSERT INTO `setting_table` VALUES (11, 'master_barang_jadi', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (12, 'master_data_customer', 'kode', 'CUST/{date}/{rand}/{year}', NULL);
INSERT INTO `setting_table` VALUES (13, 'master_data_customer', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (14, 'master_data_customer', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (15, 'gudang', 'kode', 'JB-{rand}', NULL);
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
INSERT INTO `setting_table` VALUES (27, 'jabatan', 'kode', 'SB-{rand}', NULL);
INSERT INTO `setting_table` VALUES (28, 'jabatan', 'template_excel', 'master_data_customer.xlsx', NULL);
INSERT INTO `setting_table` VALUES (29, 'jabatan', 'start_row_excel', '4', NULL);
INSERT INTO `setting_table` VALUES (30, 'ppn', 'kode', 'PPN-{rand}', NULL);
INSERT INTO `setting_table` VALUES (31, 'satuan_pakai', 'kode', 'STB{rand}', NULL);
INSERT INTO `setting_table` VALUES (32, 'karyawan', 'kode', 'KYR-{rand}', NULL);
INSERT INTO `setting_table` VALUES (33, 'purchase_order', 'kode', 'PO-{rand}', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int UNSIGNED NULL DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `activation_selector`(`activation_selector` ASC) USING BTREE,
  UNIQUE INDEX `forgotten_password_selector`(`forgotten_password_selector` ASC) USING BTREE,
  UNIQUE INDEX `remember_selector`(`remember_selector` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'administrator', '$2y$10$dxrlMRQtUt9vRv6IiSXLkegTZQtnpumaSX2dZRHtAkwgIBUrB1/Si', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1676789317, 1, 'Admin', 'istrator', 'ADMIN', '0', '101711');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES (1, 1, 1);
INSERT INTO `users_groups` VALUES (2, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
