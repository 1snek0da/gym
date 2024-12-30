/*
 Navicat Premium Data Transfer

 Source Server         : Guass-192.168.172.171
 Source Server Type    : PostgreSQL
 Source Server Version : 90204
 Source Host           : 192.168.172.171:5432
 Source Catalog        : postgres
 Source Schema         : traffic_data

 Target Server Type    : PostgreSQL
 Target Server Version : 90204
 File Encoding         : 65001

 Date: 29/11/2023 19:18:08
*/


-- ----------------------------
-- Sequence structure for class_order_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "traffic_data"."class_order_id";
CREATE SEQUENCE "traffic_data"."class_order_id"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for equiment_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "traffic_data"."equiment_id";
CREATE SEQUENCE "traffic_data"."equiment_id"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."admin";
CREATE TABLE "traffic_data"."admin" (
  "admin_account" int4,
  "admin_password" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."admin"."admin_account" IS '管理员账号';
COMMENT ON COLUMN "traffic_data"."admin"."admin_password" IS '管理员密码';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO "traffic_data"."admin" VALUES (1001, '123456');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."class_order";
CREATE TABLE "traffic_data"."class_order" (
  "class_order_id" int4 NOT NULL DEFAULT nextval('equiment_id'::regclass),
  "class_id" int4,
  "class_name" varchar COLLATE "pg_catalog"."default",
  "coach" varchar(255) COLLATE "pg_catalog"."default",
  "member_name" varchar(255) COLLATE "pg_catalog"."default",
  "member_account" int4,
  "class_begin" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."class_order"."class_order_id" IS '报名表id';
COMMENT ON COLUMN "traffic_data"."class_order"."class_id" IS '课程id';
COMMENT ON COLUMN "traffic_data"."class_order"."class_name" IS '课程名称';
COMMENT ON COLUMN "traffic_data"."class_order"."coach" IS '教练';
COMMENT ON COLUMN "traffic_data"."class_order"."member_name" IS '会员姓名';
COMMENT ON COLUMN "traffic_data"."class_order"."member_account" IS '会员账号';
COMMENT ON COLUMN "traffic_data"."class_order"."class_begin" IS '开课时间';

-- ----------------------------
-- Records of class_order
-- ----------------------------
INSERT INTO "traffic_data"."class_order" VALUES (7366, 1, '瑜伽', '徐教练', 'test', 1001, '2023年11月26日 22:00');

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."class_table";
CREATE TABLE "traffic_data"."class_table" (
  "class_id" int4 NOT NULL DEFAULT 0,
  "class_name" varchar(255) COLLATE "pg_catalog"."default",
  "class_begin" varchar(255) COLLATE "pg_catalog"."default",
  "class_time" varchar(255) COLLATE "pg_catalog"."default",
  "coach" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."class_table"."class_id" IS '课程id';
COMMENT ON COLUMN "traffic_data"."class_table"."class_name" IS '课程名称';
COMMENT ON COLUMN "traffic_data"."class_table"."class_begin" IS '开课时间';
COMMENT ON COLUMN "traffic_data"."class_table"."class_time" IS '课程时间';
COMMENT ON COLUMN "traffic_data"."class_table"."coach" IS '教练';

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO "traffic_data"."class_table" VALUES (1, '瑜伽', '2023年11月26日 22:00', '300分钟', '徐教练');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."employee";
CREATE TABLE "traffic_data"."employee" (
  "employee_account" int4 NOT NULL,
  "employee_name" varchar(255) COLLATE "pg_catalog"."default",
  "employee_gender" varchar(255) COLLATE "pg_catalog"."default",
  "employee_age" int2,
  "entry_time" date,
  "staff" varchar(255) COLLATE "pg_catalog"."default",
  "employee_message" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."employee"."employee_account" IS '员工账号';
COMMENT ON COLUMN "traffic_data"."employee"."employee_name" IS '员工姓名';
COMMENT ON COLUMN "traffic_data"."employee"."employee_gender" IS '员工性别';
COMMENT ON COLUMN "traffic_data"."employee"."employee_age" IS '员工年龄';
COMMENT ON COLUMN "traffic_data"."employee"."entry_time" IS '入职时间';
COMMENT ON COLUMN "traffic_data"."employee"."staff" IS '职务';
COMMENT ON COLUMN "traffic_data"."employee"."employee_message" IS '备注信息';

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO "traffic_data"."employee" VALUES (101017974, '徐教练', '男', 30, '2023-11-27', '教练', 'xxxxxxxxx');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."equipment";
CREATE TABLE "traffic_data"."equipment" (
  "equipment_id" int4,
  "equipment_name" varchar(255) COLLATE "pg_catalog"."default",
  "equipment_location" varchar(255) COLLATE "pg_catalog"."default",
  "equipment_status" varchar(255) COLLATE "pg_catalog"."default",
  "equipment_message" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."equipment"."equipment_id" IS '器材id';
COMMENT ON COLUMN "traffic_data"."equipment"."equipment_name" IS '器材名称';
COMMENT ON COLUMN "traffic_data"."equipment"."equipment_location" IS '器材位置';
COMMENT ON COLUMN "traffic_data"."equipment"."equipment_status" IS '器材状态';
COMMENT ON COLUMN "traffic_data"."equipment"."equipment_message" IS '器材备注信息';

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO "traffic_data"."equipment" VALUES (8122, '杠铃', '101号房间', '空闲', 'xxxxxxx');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS "traffic_data"."member";
CREATE TABLE "traffic_data"."member" (
  "member_account" int4,
  "member_password" varchar(255) COLLATE "pg_catalog"."default",
  "member_name" varchar(255) COLLATE "pg_catalog"."default",
  "member_gender" varchar(255) COLLATE "pg_catalog"."default",
  "member_age" int4,
  "member_height" int4,
  "member_weight" int2,
  "member_phone" int8,
  "card_time" date,
  "card_class" int2,
  "card_next_class" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "traffic_data"."member"."member_account" IS '会员账号';
COMMENT ON COLUMN "traffic_data"."member"."member_password" IS '会员密码';
COMMENT ON COLUMN "traffic_data"."member"."member_name" IS '会员姓名';
COMMENT ON COLUMN "traffic_data"."member"."member_gender" IS '会员性别';
COMMENT ON COLUMN "traffic_data"."member"."member_age" IS '会员年龄';
COMMENT ON COLUMN "traffic_data"."member"."member_height" IS '会员身高';
COMMENT ON COLUMN "traffic_data"."member"."member_weight" IS '会员体重';
COMMENT ON COLUMN "traffic_data"."member"."member_phone" IS '会员电话';
COMMENT ON COLUMN "traffic_data"."member"."card_time" IS '办卡时间';
COMMENT ON COLUMN "traffic_data"."member"."card_class" IS '购买课时';
COMMENT ON COLUMN "traffic_data"."member"."card_next_class" IS '剩余课时';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO "traffic_data"."member" VALUES (1001, '123456', 'test', '男', 22, 170, 110, 13634567832, '2023-11-08', 10, '10');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"traffic_data"."class_order_id"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"traffic_data"."equiment_id"', 1, true);

-- ----------------------------
-- Primary Key structure for table class_order
-- ----------------------------
ALTER TABLE "traffic_data"."class_order" ADD CONSTRAINT "class_order_pk" PRIMARY KEY ("class_order_id");

-- ----------------------------
-- Primary Key structure for table class_table
-- ----------------------------
ALTER TABLE "traffic_data"."class_table" ADD CONSTRAINT "class_table_pkey" PRIMARY KEY ("class_id");
