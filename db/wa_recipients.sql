/*
 Navicat Premium Dump SQL

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : ppsq

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 06/09/2025 07:00:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wa_recipients
-- ----------------------------
DROP TABLE IF EXISTS `wa_recipients`;
CREATE TABLE `wa_recipients`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomor_wa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fitur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_active` tinyint(1) NULL DEFAULT 1,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wa_recipients
-- ----------------------------
INSERT INTO `wa_recipients` VALUES (3, 'Bagian Kesiswaan', '628555666777', 'pelanggaran', 1, '2025-09-05 17:00:08', '2025-09-05 17:00:08');
INSERT INTO `wa_recipients` VALUES (4, 'Wali Santri', '628444555666', 'perizinan_santri', 1, '2025-09-05 17:00:08', '2025-09-05 17:00:08');
INSERT INTO `wa_recipients` VALUES (5, 'Pengasuh - Abuya', '6285894632505', 'ijin_pengurus', 1, '2025-09-05 17:10:22', '2025-09-05 17:10:48');
INSERT INTO `wa_recipients` VALUES (6, 'Ketua Pondok - Ustadz Wafi', '6285894632501', 'ijin_pengurus', 1, '2025-09-05 17:11:10', '2025-09-05 17:11:10');

SET FOREIGN_KEY_CHECKS = 1;
