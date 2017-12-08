-- Accommodation
CREATE TABLE "Accommodation" (
	"ACMD_UID"        VARCHAR(32)   NOT NULL, -- ����UID
	"ACMD_NAME"       VARCHAR(100)  NULL,     -- ���ڸ�
	"ACMD_DESC"       VARCHAR(1000) NULL,     -- ���ڼ���
	"EMAIL"           VARCHAR(100)  NULL,     -- �̸���
	"CONTACT"         VARCHAR(20)   NULL,     -- ����ó
	"IMG_URL"         VARCHAR(255)  NULL,     -- �̹���URL
	"ACMD_ADDR"       VARCHAR(255)  NULL,     -- �����ּ�
	"ACMD_ALTD"       VARCHAR(255)  NULL,     -- ��������
	"ACMD_LGTD"       VARCHAR(255)  NULL,     -- ���ڰ浵
	"DIRECTION"       VARCHAR(1000) NULL,     -- ���±�
	"ACMD_AVG_SCORE"  VARCHAR(3)    NULL,     -- �����������
	"CITY_UID"        VARCHAR(32)   NULL,     -- ����UID
	"CRC_NATION_CD"   VARCHAR(2)    NULL,     -- ��ȭ�����ڵ�
	"CANCEL_PLCY_UID" VARCHAR(32)   NULL      -- �����åUID
);

-- Accommodation �⺻Ű
CREATE UNIQUE INDEX "PK_Accommodation"
	ON "Accommodation" ( -- Accommodation
		"ACMD_UID" ASC -- ����UID
	);

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "PK_Accommodation" -- Accommodation �⺻Ű
		PRIMARY KEY (
			"ACMD_UID" -- ����UID
		);

-- Accommodation
COMMENT ON TABLE "Accommodation" IS 'Accommodation';

-- ����UID
COMMENT ON COLUMN "Accommodation"."ACMD_UID" IS '����UID';

-- ���ڸ�
COMMENT ON COLUMN "Accommodation"."ACMD_NAME" IS '���ڸ�';

-- ���ڼ���
COMMENT ON COLUMN "Accommodation"."ACMD_DESC" IS '���ڼ���';

-- �̸���
COMMENT ON COLUMN "Accommodation"."EMAIL" IS '�̸���';

-- ����ó
COMMENT ON COLUMN "Accommodation"."CONTACT" IS '����ó';

-- �̹���URL
COMMENT ON COLUMN "Accommodation"."IMG_URL" IS '�̹���URL';

-- �����ּ�
COMMENT ON COLUMN "Accommodation"."ACMD_ADDR" IS '�����ּ�';

-- ��������
COMMENT ON COLUMN "Accommodation"."ACMD_ALTD" IS '��������';

-- ���ڰ浵
COMMENT ON COLUMN "Accommodation"."ACMD_LGTD" IS '���ڰ浵';

-- ���±�
COMMENT ON COLUMN "Accommodation"."DIRECTION" IS '���±�';

-- �����������
COMMENT ON COLUMN "Accommodation"."ACMD_AVG_SCORE" IS '�����������';

-- ����UID
COMMENT ON COLUMN "Accommodation"."CITY_UID" IS '����UID';

-- ��ȭ�����ڵ�
COMMENT ON COLUMN "Accommodation"."CRC_NATION_CD" IS '��ȭ�����ڵ�';

-- �����åUID
COMMENT ON COLUMN "Accommodation"."CANCEL_PLCY_UID" IS '�����åUID';

-- Accommodation �⺻Ű
COMMENT ON INDEX "PK_Accommodation" IS 'Accommodation �⺻Ű';

-- Accommodation �⺻Ű
COMMENT ON CONSTRAINT "Accommodation"."PK_Accommodation" IS 'Accommodation �⺻Ű';

-- Currency
CREATE TABLE "Currency" (
	"CRC_NTL_CD"      VARCHAR(2)   NOT NULL, -- ��ȭ�����ڵ�
	"CRC_NATION_NAME" VARCHAR(100) NULL,     -- ��ȭ������
	"CRC_NAME"        VARCHAR(100) NULL,     -- ��ȭ��
	"CRC_UNIT"        VARCHAR(3)   NULL      -- ��ȭ����
);

-- Currency �⺻Ű
CREATE UNIQUE INDEX "PK_Currency"
	ON "Currency" ( -- Currency
		"CRC_NTL_CD" ASC -- ��ȭ�����ڵ�
	);

-- Currency
ALTER TABLE "Currency"
	ADD
		CONSTRAINT "PK_Currency" -- Currency �⺻Ű
		PRIMARY KEY (
			"CRC_NTL_CD" -- ��ȭ�����ڵ�
		);

-- Currency
COMMENT ON TABLE "Currency" IS 'Currency';

-- ��ȭ�����ڵ�
COMMENT ON COLUMN "Currency"."CRC_NTL_CD" IS '��ȭ�����ڵ�';

-- ��ȭ������
COMMENT ON COLUMN "Currency"."CRC_NATION_NAME" IS '��ȭ������';

-- ��ȭ��
COMMENT ON COLUMN "Currency"."CRC_NAME" IS '��ȭ��';

-- ��ȭ����
COMMENT ON COLUMN "Currency"."CRC_UNIT" IS '��ȭ����';

-- Currency �⺻Ű
COMMENT ON INDEX "PK_Currency" IS 'Currency �⺻Ű';

-- Currency �⺻Ű
COMMENT ON CONSTRAINT "Currency"."PK_Currency" IS 'Currency �⺻Ű';

-- NationCity
CREATE TABLE "NationCity" (
	"CITY_UID"    VARCHAR(32)  NOT NULL, -- ����UID
	"NATION_CD"   VARCHAR(2)   NULL,     -- �����ڵ�
	"NATION_NAME" VARCHAR(100) NULL,     -- ������
	"CITY_CD"     VARCHAR(2)   NULL,     -- �����ڵ�
	"CITY_NAME"   VARCHAR(100) NULL      -- ���ø�
);

-- NationCity �⺻Ű
CREATE UNIQUE INDEX "PK_NationCity"
	ON "NationCity" ( -- NationCity
		"CITY_UID" ASC -- ����UID
	);

-- NationCity
ALTER TABLE "NationCity"
	ADD
		CONSTRAINT "PK_NationCity" -- NationCity �⺻Ű
		PRIMARY KEY (
			"CITY_UID" -- ����UID
		);

-- NationCity
COMMENT ON TABLE "NationCity" IS 'NationCity';

-- ����UID
COMMENT ON COLUMN "NationCity"."CITY_UID" IS '����UID';

-- �����ڵ�
COMMENT ON COLUMN "NationCity"."NATION_CD" IS '�����ڵ�';

-- ������
COMMENT ON COLUMN "NationCity"."NATION_NAME" IS '������';

-- �����ڵ�
COMMENT ON COLUMN "NationCity"."CITY_CD" IS '�����ڵ�';

-- ���ø�
COMMENT ON COLUMN "NationCity"."CITY_NAME" IS '���ø�';

-- NationCity �⺻Ű
COMMENT ON INDEX "PK_NationCity" IS 'NationCity �⺻Ű';

-- NationCity �⺻Ű
COMMENT ON CONSTRAINT "NationCity"."PK_NationCity" IS 'NationCity �⺻Ű';

-- Recommend Spots
CREATE TABLE "RecommendSpots" (
	"ACMD_UID"           VARCHAR(32)   NOT NULL, -- ����UID
	"RCMD_PLACE_UID"     VARCHAR(32)   NULL,     -- ��õ���UID
	"RCMD_PLACE_NAME"    VARCHAR(100)  NULL,     -- ��õ��Ҹ�
	"RCMD_PLACE_DESC"    VARCHAR(1000) NULL,     -- ��õ��Ҽ���
	"RCMD_PLACE_IMG_URL" VARCHAR(255)  NULL      -- ��õ����̹���URL
);

-- Recommend Spots �⺻Ű
CREATE UNIQUE INDEX "PK_RecommendSpots"
	ON "RecommendSpots" ( -- Recommend Spots
		"ACMD_UID" ASC -- ����UID
	);

-- Recommend Spots
ALTER TABLE "RecommendSpots"
	ADD
		CONSTRAINT "PK_RecommendSpots" -- Recommend Spots �⺻Ű
		PRIMARY KEY (
			"ACMD_UID" -- ����UID
		);

-- Recommend Spots
COMMENT ON TABLE "RecommendSpots" IS 'Recommend Spots';

-- ����UID
COMMENT ON COLUMN "RecommendSpots"."ACMD_UID" IS '����UID';

-- ��õ���UID
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_UID" IS '��õ���UID';

-- ��õ��Ҹ�
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_NAME" IS '��õ��Ҹ�';

-- ��õ��Ҽ���
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_DESC" IS '��õ��Ҽ���';

-- ��õ����̹���URL
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_IMG_URL" IS '��õ����̹���URL';

-- Recommend Spots �⺻Ű
COMMENT ON INDEX "PK_RecommendSpots" IS 'Recommend Spots �⺻Ű';

-- Recommend Spots �⺻Ű
COMMENT ON CONSTRAINT "RecommendSpots"."PK_RecommendSpots" IS 'Recommend Spots �⺻Ű';

-- Room Types
CREATE TABLE "RoomTypes" (
	"ROOM_TYPE_UID"  VARCHAR(32)        NOT NULL, -- ��Ÿ��UID
	"ROOM_TYPE_NAME" VARCHAR(100)       NULL,     -- ��Ÿ�Ը�
	"ROOM_TYPE_IMG"  <������ Ÿ�� ����> NULL      -- ��Ÿ���̹���
);

-- Room Types �⺻Ű
CREATE UNIQUE INDEX "PK_RoomTypes"
	ON "RoomTypes" ( -- Room Types
		"ROOM_TYPE_UID" ASC -- ��Ÿ��UID
	);

-- Room Types
ALTER TABLE "RoomTypes"
	ADD
		CONSTRAINT "PK_RoomTypes" -- Room Types �⺻Ű
		PRIMARY KEY (
			"ROOM_TYPE_UID" -- ��Ÿ��UID
		);

-- Room Types
COMMENT ON TABLE "RoomTypes" IS 'Room Types';

-- ��Ÿ��UID
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_UID" IS '��Ÿ��UID';

-- ��Ÿ�Ը�
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_NAME" IS '��Ÿ�Ը�';

-- ��Ÿ���̹���
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_IMG" IS '��Ÿ���̹���';

-- Room Types �⺻Ű
COMMENT ON INDEX "PK_RoomTypes" IS 'Room Types �⺻Ű';

-- Room Types �⺻Ű
COMMENT ON CONSTRAINT "RoomTypes"."PK_RoomTypes" IS 'Room Types �⺻Ű';

-- Facilities
CREATE TABLE "Facilities" (
	"FCLT_UID"  VARCHAR(32)  NOT NULL, -- ���ڽü�UID
	"FCLT_NAME" VARCHAR(100) NULL,     -- ���ڽü���
	"FCLT_IMG"  VARCHAR(255) NULL      -- ���ڽü��̹���
);

-- Facilities �⺻Ű
CREATE UNIQUE INDEX "PK_Facilities"
	ON "Facilities" ( -- Facilities
		"FCLT_UID" ASC -- ���ڽü�UID
	);

-- Facilities
ALTER TABLE "Facilities"
	ADD
		CONSTRAINT "PK_Facilities" -- Facilities �⺻Ű
		PRIMARY KEY (
			"FCLT_UID" -- ���ڽü�UID
		);

-- Facilities
COMMENT ON TABLE "Facilities" IS 'Facilities';

-- ���ڽü�UID
COMMENT ON COLUMN "Facilities"."FCLT_UID" IS '���ڽü�UID';

-- ���ڽü���
COMMENT ON COLUMN "Facilities"."FCLT_NAME" IS '���ڽü���';

-- ���ڽü��̹���
COMMENT ON COLUMN "Facilities"."FCLT_IMG" IS '���ڽü��̹���';

-- Facilities �⺻Ű
COMMENT ON INDEX "PK_Facilities" IS 'Facilities �⺻Ű';

-- Facilities �⺻Ű
COMMENT ON CONSTRAINT "Facilities"."PK_Facilities" IS 'Facilities �⺻Ű';

-- Themes
CREATE TABLE "Themes" (
	"ACMD_THEME_UID"  VARCHAR(32)  NOT NULL, -- �����׸�UID
	"ACMD_UID"        VARCHAR(32)  NOT NULL, -- ����UID
	"ACMD_THEME_NAME" VARCHAR(100) NULL,     -- �����׸���
	"ACMD_THEME_IMG"  VARCHAR(255) NULL      -- �����׸��̹���
);

-- Themes �⺻Ű
CREATE UNIQUE INDEX "PK_Themes"
	ON "Themes" ( -- Themes
		"ACMD_THEME_UID" ASC, -- �����׸�UID
		"ACMD_UID"       ASC  -- ����UID
	);

-- Themes
ALTER TABLE "Themes"
	ADD
		CONSTRAINT "PK_Themes" -- Themes �⺻Ű
		PRIMARY KEY (
			"ACMD_THEME_UID", -- �����׸�UID
			"ACMD_UID"        -- ����UID
		);

-- Themes
COMMENT ON TABLE "Themes" IS 'Themes';

-- �����׸�UID
COMMENT ON COLUMN "Themes"."ACMD_THEME_UID" IS '�����׸�UID';

-- ����UID
COMMENT ON COLUMN "Themes"."ACMD_UID" IS '����UID';

-- �����׸���
COMMENT ON COLUMN "Themes"."ACMD_THEME_NAME" IS '�����׸���';

-- �����׸��̹���
COMMENT ON COLUMN "Themes"."ACMD_THEME_IMG" IS '�����׸��̹���';

-- Themes �⺻Ű
COMMENT ON INDEX "PK_Themes" IS 'Themes �⺻Ű';

-- Themes �⺻Ű
COMMENT ON CONSTRAINT "Themes"."PK_Themes" IS 'Themes �⺻Ű';

-- Special Facilities
CREATE TABLE "SpecialFacilities" (
	"ACMD_UID"          VARCHAR(32)   NOT NULL, -- ����UID
	"SPECIAL_FCLT_NAME" VARCHAR(100)  NULL,     -- Ư�����ڽü���
	"SPECIAL_FCLT_DESC" VARCHAR(1000) NULL      -- Ư�����ڽü�����
);

-- Special Facilities �⺻Ű
CREATE UNIQUE INDEX "PK_SpecialFacilities"
	ON "SpecialFacilities" ( -- Special Facilities
		"ACMD_UID" ASC -- ����UID
	);

-- Special Facilities
ALTER TABLE "SpecialFacilities"
	ADD
		CONSTRAINT "PK_SpecialFacilities" -- Special Facilities �⺻Ű
		PRIMARY KEY (
			"ACMD_UID" -- ����UID
		);

-- Special Facilities
COMMENT ON TABLE "SpecialFacilities" IS 'Special Facilities';

-- ����UID
COMMENT ON COLUMN "SpecialFacilities"."ACMD_UID" IS '����UID';

-- Ư�����ڽü���
COMMENT ON COLUMN "SpecialFacilities"."SPECIAL_FCLT_NAME" IS 'Ư�����ڽü���';

-- Ư�����ڽü�����
COMMENT ON COLUMN "SpecialFacilities"."SPECIAL_FCLT_DESC" IS 'Ư�����ڽü�����';

-- Special Facilities �⺻Ű
COMMENT ON INDEX "PK_SpecialFacilities" IS 'Special Facilities �⺻Ű';

-- Special Facilities �⺻Ű
COMMENT ON CONSTRAINT "SpecialFacilities"."PK_SpecialFacilities" IS 'Special Facilities �⺻Ű';

-- Accommodation Images
CREATE TABLE "AccommodationImages" (
	"ACMD_UID"  VARCHAR(32)  NOT NULL, -- ����UID
	"IMG_URL"   VARCHAR(255) NULL,     -- �̹���URL
	"IMG_TITLE" VARCHAR(100) NULL,     -- �̹�������
	"IMG_NO"    INTEGER      NULL      -- �̹�����ȣ
);

-- Accommodation Images �⺻Ű
CREATE UNIQUE INDEX "PK_AccommodationImages"
	ON "AccommodationImages" ( -- Accommodation Images
		"ACMD_UID" ASC -- ����UID
	);

-- Accommodation Images
ALTER TABLE "AccommodationImages"
	ADD
		CONSTRAINT "PK_AccommodationImages" -- Accommodation Images �⺻Ű
		PRIMARY KEY (
			"ACMD_UID" -- ����UID
		);

-- Accommodation Images
COMMENT ON TABLE "AccommodationImages" IS 'Accommodation Images';

-- ����UID
COMMENT ON COLUMN "AccommodationImages"."ACMD_UID" IS '����UID';

-- �̹���URL
COMMENT ON COLUMN "AccommodationImages"."IMG_URL" IS '�̹���URL';

-- �̹�������
COMMENT ON COLUMN "AccommodationImages"."IMG_TITLE" IS '�̹�������';

-- �̹�����ȣ
COMMENT ON COLUMN "AccommodationImages"."IMG_NO" IS '�̹�����ȣ';

-- Accommodation Images �⺻Ű
COMMENT ON INDEX "PK_AccommodationImages" IS 'Accommodation Images �⺻Ű';

-- Accommodation Images �⺻Ű
COMMENT ON CONSTRAINT "AccommodationImages"."PK_AccommodationImages" IS 'Accommodation Images �⺻Ű';

-- Extra Options
CREATE TABLE "ExtraOptions" (
	"ACMD_UID"        VARCHAR(32)   NOT NULL, -- ����UID
	"EXTRA_OPT_UID"   VARCHAR(32)   NOT NULL, -- �߰��ɼ�UID
	"EXTRA_OPT_NAME"  VARCHAR(100)  NULL,     -- �߰��ɼǸ�
	"EXTRA_OPT_DESC"  VARCHAR(1000) NULL,     -- �߰��ɼǼ���
	"EXTRA_OPT_PRICE" VARCHAR(10)   NULL,     -- �߰��ɼǰ���
	"CHOICE_MAX_CNT"  VARCHAR(10)   NULL,     -- �����ִ밳��
	"VISIT_PAY_YN"    VARCHAR(1)    NULL      -- �湮��������
);

-- Extra Options �⺻Ű
CREATE UNIQUE INDEX "PK_ExtraOptions"
	ON "ExtraOptions" ( -- Extra Options
		"ACMD_UID"      ASC, -- ����UID
		"EXTRA_OPT_UID" ASC  -- �߰��ɼ�UID
	);

-- Extra Options
ALTER TABLE "ExtraOptions"
	ADD
		CONSTRAINT "PK_ExtraOptions" -- Extra Options �⺻Ű
		PRIMARY KEY (
			"ACMD_UID",      -- ����UID
			"EXTRA_OPT_UID"  -- �߰��ɼ�UID
		);

-- Extra Options
COMMENT ON TABLE "ExtraOptions" IS 'Extra Options';

-- ����UID
COMMENT ON COLUMN "ExtraOptions"."ACMD_UID" IS '����UID';

-- �߰��ɼ�UID
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_UID" IS '�߰��ɼ�UID';

-- �߰��ɼǸ�
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_NAME" IS '�߰��ɼǸ�';

-- �߰��ɼǼ���
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_DESC" IS '�߰��ɼǼ���';

-- �߰��ɼǰ���
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_PRICE" IS '�߰��ɼǰ���';

-- �����ִ밳��
COMMENT ON COLUMN "ExtraOptions"."CHOICE_MAX_CNT" IS '�����ִ밳��';

-- �湮��������
COMMENT ON COLUMN "ExtraOptions"."VISIT_PAY_YN" IS '�湮��������';

-- Extra Options �⺻Ű
COMMENT ON INDEX "PK_ExtraOptions" IS 'Extra Options �⺻Ű';

-- Extra Options �⺻Ű
COMMENT ON CONSTRAINT "ExtraOptions"."PK_ExtraOptions" IS 'Extra Options �⺻Ű';

-- Policies
CREATE TABLE "Policies" (
	"ACMD_UID"           VARCHAR(32)   NOT NULL, -- ����UID
	"CHKIN_TIME"         VARCHAR(5)    NULL,     -- üũ�νð�
	"CHKOUT_TIME"        VARCHAR(5)    NULL,     -- üũ�ƿ��ð�
	"IMMDT_CFRM_YN"      VARCHAR(1)    NULL,     -- �ＮȮ�ο���
	"CFRM_REQ_TIME"      VARCHAR(5)    NULL,     -- Ȯ���ʿ�ð�
	"CFRM_REQ_TIME_MSG"  VARCHAR(1000) NULL,     -- Ȯ���ʿ�ð��޽���
	"RSRV_ABLE_DAYS"     VARCHAR(10)   NULL,     -- ���డ���ϼ�
	"RSRV_ABLE_DAYS_MSG" VARCHAR(1000) NULL      -- ���డ���ϼ��޽���
);

-- Policies �⺻Ű
CREATE UNIQUE INDEX "PK_Policies"
	ON "Policies" ( -- Policies
		"ACMD_UID" ASC -- ����UID
	);

-- Policies
ALTER TABLE "Policies"
	ADD
		CONSTRAINT "PK_Policies" -- Policies �⺻Ű
		PRIMARY KEY (
			"ACMD_UID" -- ����UID
		);

-- Policies
COMMENT ON TABLE "Policies" IS 'Policies';

-- ����UID
COMMENT ON COLUMN "Policies"."ACMD_UID" IS '����UID';

-- üũ�νð�
COMMENT ON COLUMN "Policies"."CHKIN_TIME" IS 'üũ�νð�';

-- üũ�ƿ��ð�
COMMENT ON COLUMN "Policies"."CHKOUT_TIME" IS 'üũ�ƿ��ð�';

-- �ＮȮ�ο���
COMMENT ON COLUMN "Policies"."IMMDT_CFRM_YN" IS '�ＮȮ�ο���';

-- Ȯ���ʿ�ð�
COMMENT ON COLUMN "Policies"."CFRM_REQ_TIME" IS 'Ȯ���ʿ�ð�';

-- Ȯ���ʿ�ð��޽���
COMMENT ON COLUMN "Policies"."CFRM_REQ_TIME_MSG" IS 'Ȯ���ʿ�ð��޽���';

-- ���డ���ϼ�
COMMENT ON COLUMN "Policies"."RSRV_ABLE_DAYS" IS '���డ���ϼ�';

-- ���డ���ϼ��޽���
COMMENT ON COLUMN "Policies"."RSRV_ABLE_DAYS_MSG" IS '���డ���ϼ��޽���';

-- Policies �⺻Ű
COMMENT ON INDEX "PK_Policies" IS 'Policies �⺻Ű';

-- Policies �⺻Ű
COMMENT ON CONSTRAINT "Policies"."PK_Policies" IS 'Policies �⺻Ű';

-- Cancel Policy
CREATE TABLE "CancelPolicy" (
	"COL"              VARCHAR(32)   NOT NULL, -- �����åUID
	"CANCEL_PLCY_NAME" VARCHAR(100)  NULL,     -- �����å��
	"CANCEL_PLCY_DESC" VARCHAR(1000) NULL      -- �����å����
);

-- Cancel Policy �⺻Ű
CREATE UNIQUE INDEX "PK_CancelPolicy"
	ON "CancelPolicy" ( -- Cancel Policy
		"COL" ASC -- �����åUID
	);

-- Cancel Policy
ALTER TABLE "CancelPolicy"
	ADD
		CONSTRAINT "PK_CancelPolicy" -- Cancel Policy �⺻Ű
		PRIMARY KEY (
			"COL" -- �����åUID
		);

-- Cancel Policy
COMMENT ON TABLE "CancelPolicy" IS 'Cancel Policy';

-- �����åUID
COMMENT ON COLUMN "CancelPolicy"."COL" IS '�����åUID';

-- �����å��
COMMENT ON COLUMN "CancelPolicy"."CANCEL_PLCY_NAME" IS '�����å��';

-- �����å����
COMMENT ON COLUMN "CancelPolicy"."CANCEL_PLCY_DESC" IS '�����å����';

-- Cancel Policy �⺻Ű
COMMENT ON INDEX "PK_CancelPolicy" IS 'Cancel Policy �⺻Ű';

-- Cancel Policy �⺻Ű
COMMENT ON CONSTRAINT "CancelPolicy"."PK_CancelPolicy" IS 'Cancel Policy �⺻Ű';

-- Policy Options
CREATE TABLE "PolicyOptions" (
	"COL3"          VARCHAR(32)   NOT NULL, -- ��å�ɼ�UID
	"PLCY_OPT_NAME" VARCHAR(100)  NULL,     -- ��å�ɼǸ�
	"PLCY_OPT_DESC" VARCHAR(1000) NULL      -- ��å�ɼǼ���
);

-- Policy Options �⺻Ű
CREATE UNIQUE INDEX "PK_PolicyOptions"
	ON "PolicyOptions" ( -- Policy Options
		"COL3" ASC -- ��å�ɼ�UID
	);

-- Policy Options
ALTER TABLE "PolicyOptions"
	ADD
		CONSTRAINT "PK_PolicyOptions" -- Policy Options �⺻Ű
		PRIMARY KEY (
			"COL3" -- ��å�ɼ�UID
		);

-- Policy Options
COMMENT ON TABLE "PolicyOptions" IS 'Policy Options';

-- ��å�ɼ�UID
COMMENT ON COLUMN "PolicyOptions"."COL3" IS '��å�ɼ�UID';

-- ��å�ɼǸ�
COMMENT ON COLUMN "PolicyOptions"."PLCY_OPT_NAME" IS '��å�ɼǸ�';

-- ��å�ɼǼ���
COMMENT ON COLUMN "PolicyOptions"."PLCY_OPT_DESC" IS '��å�ɼǼ���';

-- Policy Options �⺻Ű
COMMENT ON INDEX "PK_PolicyOptions" IS 'Policy Options �⺻Ű';

-- Policy Options �⺻Ű
COMMENT ON CONSTRAINT "PolicyOptions"."PK_PolicyOptions" IS 'Policy Options �⺻Ű';

-- Reviews
CREATE TABLE "Reviews" (
	"REVIEW_UID"   VARCHAR(32)   NOT NULL, -- ����UID
	"ACMD_UID"     VARCHAR(32)   NOT NULL, -- ����UID
	"REVIEW_CTNT"  VARCHAR(1000) NULL,     -- ���䳻��
	"USER_ID"      VARCHAR(40)   NULL,     -- �����ID
	"WRITE_DTTM"   VARCHAR(20)   NULL,     -- �ۼ��Ͻ�
	"REVIEW_SCORE" VARCHAR(3)    NULL      -- ��������
);

-- Reviews �⺻Ű
CREATE UNIQUE INDEX "PK_Reviews"
	ON "Reviews" ( -- Reviews
		"REVIEW_UID" ASC, -- ����UID
		"ACMD_UID"   ASC  -- ����UID
	);

-- Reviews
ALTER TABLE "Reviews"
	ADD
		CONSTRAINT "PK_Reviews" -- Reviews �⺻Ű
		PRIMARY KEY (
			"REVIEW_UID", -- ����UID
			"ACMD_UID"    -- ����UID
		);

-- Reviews
COMMENT ON TABLE "Reviews" IS 'Reviews';

-- ����UID
COMMENT ON COLUMN "Reviews"."REVIEW_UID" IS '����UID';

-- ����UID
COMMENT ON COLUMN "Reviews"."ACMD_UID" IS '����UID';

-- ���䳻��
COMMENT ON COLUMN "Reviews"."REVIEW_CTNT" IS '���䳻��';

-- �����ID
COMMENT ON COLUMN "Reviews"."USER_ID" IS '�����ID';

-- �ۼ��Ͻ�
COMMENT ON COLUMN "Reviews"."WRITE_DTTM" IS '�ۼ��Ͻ�';

-- ��������
COMMENT ON COLUMN "Reviews"."REVIEW_SCORE" IS '��������';

-- Reviews �⺻Ű
COMMENT ON INDEX "PK_Reviews" IS 'Reviews �⺻Ű';

-- Reviews �⺻Ű
COMMENT ON CONSTRAINT "Reviews"."PK_Reviews" IS 'Reviews �⺻Ű';

-- Rooms
CREATE TABLE "Rooms" (
	"ROOM_UID"           VARCHAR(32)   NOT NULL, -- ��UID
	"ROOM_NAME"          VARCHAR(100)  NULL,     -- ���
	"ROOM_DESC"          VARCHAR(1000) NULL,     -- �漳��
	"IMG_URL"            VARCHAR(255)  NULL,     -- �̹���URL
	"SITE_TYPE_UID"      VARCHAR(32)   NULL,     -- ����ƮŸ��UID
	"ROOM_CNT"           VARCHAR(10)   NULL,     -- �氳��
	"MAX_PPL_CNT"        VARCHAR(10)   NULL,     -- �ִ��ο���
	"EXTRA_PPL_CNT"      VARCHAR(10)   NULL,     -- �߰��ο���
	"ADULT_EXTRA_PRICE"  VARCHAR(10)   NULL,     -- �����߰�����
	"CHILD_EXTRA_PRICE"  VARCHAR(10)   NULL,     -- �Ƶ��߰�����
	"INFANT_EXTRA_PRICE" VARCHAR(10)   NULL,     -- �����߰�����
	"MIN_ACMD_DAYS"      VARCHAR(10)   NULL,     -- �ּҼ����ϼ�
	"BED_CNT"            VARCHAR(10)   NULL,     -- ħ�밳��
	"ROOM_SIZE"          INTEGER       NULL,     -- �������
	"ACMD_UID"           VARCHAR(32)   NULL,     -- ����UID
	"ROOM_TYPE_UID"      VARCHAR(32)   NULL      -- ��Ÿ��UID
);

-- Rooms �⺻Ű
CREATE UNIQUE INDEX "PK_Rooms"
	ON "Rooms" ( -- Rooms
		"ROOM_UID" ASC -- ��UID
	);

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "PK_Rooms" -- Rooms �⺻Ű
		PRIMARY KEY (
			"ROOM_UID" -- ��UID
		);

-- Rooms
COMMENT ON TABLE "Rooms" IS 'Rooms';

-- ��UID
COMMENT ON COLUMN "Rooms"."ROOM_UID" IS '��UID';

-- ���
COMMENT ON COLUMN "Rooms"."ROOM_NAME" IS '���';

-- �漳��
COMMENT ON COLUMN "Rooms"."ROOM_DESC" IS '�漳��';

-- �̹���URL
COMMENT ON COLUMN "Rooms"."IMG_URL" IS '�̹���URL';

-- ����ƮŸ��UID
COMMENT ON COLUMN "Rooms"."SITE_TYPE_UID" IS '����ƮŸ��UID';

-- �氳��
COMMENT ON COLUMN "Rooms"."ROOM_CNT" IS '�氳��';

-- �ִ��ο���
COMMENT ON COLUMN "Rooms"."MAX_PPL_CNT" IS '�ִ��ο���';

-- �߰��ο���
COMMENT ON COLUMN "Rooms"."EXTRA_PPL_CNT" IS '�߰��ο���';

-- �����߰�����
COMMENT ON COLUMN "Rooms"."ADULT_EXTRA_PRICE" IS '�����߰�����';

-- �Ƶ��߰�����
COMMENT ON COLUMN "Rooms"."CHILD_EXTRA_PRICE" IS '�Ƶ��߰�����';

-- �����߰�����
COMMENT ON COLUMN "Rooms"."INFANT_EXTRA_PRICE" IS '�����߰�����';

-- �ּҼ����ϼ�
COMMENT ON COLUMN "Rooms"."MIN_ACMD_DAYS" IS '�ּҼ����ϼ�';

-- ħ�밳��
COMMENT ON COLUMN "Rooms"."BED_CNT" IS 'ħ�밳��';

-- �������
COMMENT ON COLUMN "Rooms"."ROOM_SIZE" IS 'UNIT = SQUARE METER';

-- ����UID
COMMENT ON COLUMN "Rooms"."ACMD_UID" IS '����UID';

-- ��Ÿ��UID
COMMENT ON COLUMN "Rooms"."ROOM_TYPE_UID" IS '��Ÿ��UID';

-- Rooms �⺻Ű
COMMENT ON INDEX "PK_Rooms" IS 'Rooms �⺻Ű';

-- Rooms �⺻Ű
COMMENT ON CONSTRAINT "Rooms"."PK_Rooms" IS 'Rooms �⺻Ű';

-- Room Images
CREATE TABLE "RoomImages" (
	"IMG_UID"   VARCHAR(32)  NOT NULL, -- �̹���UID
	"ROOM_UID"  VARCHAR(32)  NOT NULL, -- ��UID
	"IMG_URL"   VARCHAR(255) NULL,     -- �̹���URL
	"IMG_TITLE" VARCHAR(100) NULL      -- �̹�������
);

-- Room Images �⺻Ű
CREATE UNIQUE INDEX "PK_RoomImages"
	ON "RoomImages" ( -- Room Images
		"IMG_UID"  ASC, -- �̹���UID
		"ROOM_UID" ASC  -- ��UID
	);

-- Room Images
ALTER TABLE "RoomImages"
	ADD
		CONSTRAINT "PK_RoomImages" -- Room Images �⺻Ű
		PRIMARY KEY (
			"IMG_UID",  -- �̹���UID
			"ROOM_UID"  -- ��UID
		);

-- Room Images
COMMENT ON TABLE "RoomImages" IS 'Room Images';

-- �̹���UID
COMMENT ON COLUMN "RoomImages"."IMG_UID" IS '�̹���UID';

-- ��UID
COMMENT ON COLUMN "RoomImages"."ROOM_UID" IS '��UID';

-- �̹���URL
COMMENT ON COLUMN "RoomImages"."IMG_URL" IS '�̹���URL';

-- �̹�������
COMMENT ON COLUMN "RoomImages"."IMG_TITLE" IS '�̹�������';

-- Room Images �⺻Ű
COMMENT ON INDEX "PK_RoomImages" IS 'Room Images �⺻Ű';

-- Room Images �⺻Ű
COMMENT ON CONSTRAINT "RoomImages"."PK_RoomImages" IS 'Room Images �⺻Ű';

-- Amenities
CREATE TABLE "Amenities" (
	"AMNY_UID"  VARCHAR(32)        NOT NULL, -- ���ǽü�UID
	"AMNY_NAME" VARCHAR(100)       NOT NULL, -- ���ǽü���
	"AMNY_IMG"  <������ Ÿ�� ����> NULL      -- ���ǽü��̹���
);

-- Amenities �⺻Ű
CREATE UNIQUE INDEX "PK_Amenities"
	ON "Amenities" ( -- Amenities
		"AMNY_UID" ASC -- ���ǽü�UID
	);

-- Amenities
ALTER TABLE "Amenities"
	ADD
		CONSTRAINT "PK_Amenities" -- Amenities �⺻Ű
		PRIMARY KEY (
			"AMNY_UID" -- ���ǽü�UID
		);

-- Amenities
COMMENT ON TABLE "Amenities" IS 'Amenities';

-- ���ǽü�UID
COMMENT ON COLUMN "Amenities"."AMNY_UID" IS '���ǽü�UID';

-- ���ǽü���
COMMENT ON COLUMN "Amenities"."AMNY_NAME" IS '���ǽü���';

-- ���ǽü��̹���
COMMENT ON COLUMN "Amenities"."AMNY_IMG" IS '���ǽü��̹���';

-- Amenities �⺻Ű
COMMENT ON INDEX "PK_Amenities" IS 'Amenities �⺻Ű';

-- Amenities �⺻Ű
COMMENT ON CONSTRAINT "Amenities"."PK_Amenities" IS 'Amenities �⺻Ű';

-- Accommodation Facilities Relation
CREATE TABLE "AccommodationFacilitiesRel" (
	"ACMD_UID" VARCHAR(32) NOT NULL, -- ����UID
	"FCLT_UID" VARCHAR(32) NOT NULL  -- ���ڽü�UID
);

-- Accommodation Facilities Relation �⺻Ű
CREATE UNIQUE INDEX "PK_AccommodationFacilitiesRel"
	ON "AccommodationFacilitiesRel" ( -- Accommodation Facilities Relation
		"ACMD_UID" ASC, -- ����UID
		"FCLT_UID" ASC  -- ���ڽü�UID
	);

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "PK_AccommodationFacilitiesRel" -- Accommodation Facilities Relation �⺻Ű
		PRIMARY KEY (
			"ACMD_UID", -- ����UID
			"FCLT_UID"  -- ���ڽü�UID
		);

-- Accommodation Facilities Relation
COMMENT ON TABLE "AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation';

-- ����UID
COMMENT ON COLUMN "AccommodationFacilitiesRel"."ACMD_UID" IS '����UID';

-- ���ڽü�UID
COMMENT ON COLUMN "AccommodationFacilitiesRel"."FCLT_UID" IS '���ڽü�UID';

-- Accommodation Facilities Relation �⺻Ű
COMMENT ON INDEX "PK_AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation �⺻Ű';

-- Accommodation Facilities Relation �⺻Ű
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."PK_AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation �⺻Ű';

-- Room Amenities
CREATE TABLE "RoomAmenities" (
	"ROOM_UID" VARCHAR(32) NOT NULL, -- ��UID
	"AMNY_UID" VARCHAR(32) NOT NULL  -- ���ǽü�UID
);

-- Room Amenities �⺻Ű
CREATE UNIQUE INDEX "PK_RoomAmenities"
	ON "RoomAmenities" ( -- Room Amenities
		"ROOM_UID" ASC, -- ��UID
		"AMNY_UID" ASC  -- ���ǽü�UID
	);

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "PK_RoomAmenities" -- Room Amenities �⺻Ű
		PRIMARY KEY (
			"ROOM_UID", -- ��UID
			"AMNY_UID"  -- ���ǽü�UID
		);

-- Room Amenities
COMMENT ON TABLE "RoomAmenities" IS 'Room Amenities';

-- ��UID
COMMENT ON COLUMN "RoomAmenities"."ROOM_UID" IS '��UID';

-- ���ǽü�UID
COMMENT ON COLUMN "RoomAmenities"."AMNY_UID" IS '���ǽü�UID';

-- Room Amenities �⺻Ű
COMMENT ON INDEX "PK_RoomAmenities" IS 'Room Amenities �⺻Ű';

-- Room Amenities �⺻Ű
COMMENT ON CONSTRAINT "RoomAmenities"."PK_RoomAmenities" IS 'Room Amenities �⺻Ű';

-- Special Amenities
CREATE TABLE "SpecialAmenities" (
	"ROOM_UID"          VARCHAR(32)   NOT NULL, -- ��UID
	"SPECIAL_AMNY_NAME" VARCHAR(100)  NULL,     -- Ư�����ǽü���
	"SPECIAL_AMNY_DESC" VARCHAR(1000) NULL      -- Ư�����ǽü�����
);

-- Special Amenities �⺻Ű
CREATE UNIQUE INDEX "PK_SpecialAmenities"
	ON "SpecialAmenities" ( -- Special Amenities
		"ROOM_UID" ASC -- ��UID
	);

-- Special Amenities
ALTER TABLE "SpecialAmenities"
	ADD
		CONSTRAINT "PK_SpecialAmenities" -- Special Amenities �⺻Ű
		PRIMARY KEY (
			"ROOM_UID" -- ��UID
		);

-- Special Amenities
COMMENT ON TABLE "SpecialAmenities" IS 'Special Amenities';

-- ��UID
COMMENT ON COLUMN "SpecialAmenities"."ROOM_UID" IS '��UID';

-- Ư�����ǽü���
COMMENT ON COLUMN "SpecialAmenities"."SPECIAL_AMNY_NAME" IS 'Ư�����ǽü���';

-- Ư�����ǽü�����
COMMENT ON COLUMN "SpecialAmenities"."SPECIAL_AMNY_DESC" IS 'Ư�����ǽü�����';

-- Special Amenities �⺻Ű
COMMENT ON INDEX "PK_SpecialAmenities" IS 'Special Amenities �⺻Ű';

-- Special Amenities �⺻Ű
COMMENT ON CONSTRAINT "SpecialAmenities"."PK_SpecialAmenities" IS 'Special Amenities �⺻Ű';

-- Default Room Price
CREATE TABLE "DfltRoomPrice" (
	"ROOM_UID"      VARCHAR(32) NOT NULL, -- ��UID
	"SEASON_CAT_CD" VARCHAR(2)  NOT NULL, -- ���𱸺��ڵ�
	"SUN_PRICE"     VARCHAR(10) NULL,     -- �Ͽ��ϰ���
	"MON_PRICE"     VARCHAR(10) NULL,     -- �����ϰ���
	"TUE_PRICE"     VARCHAR(10) NULL,     -- ȭ���ϰ���
	"WED_PRICE"     VARCHAR(10) NULL,     -- �����ϰ���
	"THU_PRICE"     VARCHAR(10) NULL,     -- ����ϰ���
	"FRI_PRICE"     VARCHAR(10) NULL,     -- �ݿ��ϰ���
	"SAT_PRICE"     VARCHAR(10) NULL      -- ����ϰ���
);

-- Default Room Price �⺻Ű
CREATE UNIQUE INDEX "PK_DfltRoomPrice"
	ON "DfltRoomPrice" ( -- Default Room Price
		"ROOM_UID"      ASC, -- ��UID
		"SEASON_CAT_CD" ASC  -- ���𱸺��ڵ�
	);

-- Default Room Price
ALTER TABLE "DfltRoomPrice"
	ADD
		CONSTRAINT "PK_DfltRoomPrice" -- Default Room Price �⺻Ű
		PRIMARY KEY (
			"ROOM_UID",      -- ��UID
			"SEASON_CAT_CD"  -- ���𱸺��ڵ�
		);

-- Default Room Price
COMMENT ON TABLE "DfltRoomPrice" IS 'Default Room Price';

-- ��UID
COMMENT ON COLUMN "DfltRoomPrice"."ROOM_UID" IS '��UID';

-- ���𱸺��ڵ�
COMMENT ON COLUMN "DfltRoomPrice"."SEASON_CAT_CD" IS '���𱸺��ڵ�';

-- �Ͽ��ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."SUN_PRICE" IS '�Ͽ��ϰ���';

-- �����ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."MON_PRICE" IS '�����ϰ���';

-- ȭ���ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."TUE_PRICE" IS 'ȭ���ϰ���';

-- �����ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."WED_PRICE" IS '�����ϰ���';

-- ����ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."THU_PRICE" IS '����ϰ���';

-- �ݿ��ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."FRI_PRICE" IS '�ݿ��ϰ���';

-- ����ϰ���
COMMENT ON COLUMN "DfltRoomPrice"."SAT_PRICE" IS '����ϰ���';

-- Default Room Price �⺻Ű
COMMENT ON INDEX "PK_DfltRoomPrice" IS 'Default Room Price �⺻Ű';

-- Default Room Price �⺻Ű
COMMENT ON CONSTRAINT "DfltRoomPrice"."PK_DfltRoomPrice" IS 'Default Room Price �⺻Ű';

-- Accomodation PolicyOption Relation
CREATE TABLE "AccomodationPolicyOptionRel" (
	"ACMD_UID"     VARCHAR(32) NOT NULL, -- ����UID
	"PLCY_OPT_UID" VARCHAR(32) NOT NULL  -- ��å�ɼ�UID
);

-- Accomodation PolicyOption Relation �⺻Ű
CREATE UNIQUE INDEX "PK_AccomodationPolicyOptionRel"
	ON "AccomodationPolicyOptionRel" ( -- Accomodation PolicyOption Relation
		"ACMD_UID"     ASC, -- ����UID
		"PLCY_OPT_UID" ASC  -- ��å�ɼ�UID
	);

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "PK_AccomodationPolicyOptionRel" -- Accomodation PolicyOption Relation �⺻Ű
		PRIMARY KEY (
			"ACMD_UID",     -- ����UID
			"PLCY_OPT_UID"  -- ��å�ɼ�UID
		);

-- Accomodation PolicyOption Relation
COMMENT ON TABLE "AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation';

-- ����UID
COMMENT ON COLUMN "AccomodationPolicyOptionRel"."ACMD_UID" IS '����UID';

-- ��å�ɼ�UID
COMMENT ON COLUMN "AccomodationPolicyOptionRel"."PLCY_OPT_UID" IS '��å�ɼ�UID';

-- Accomodation PolicyOption Relation �⺻Ű
COMMENT ON INDEX "PK_AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation �⺻Ű';

-- Accomodation PolicyOption Relation �⺻Ű
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."PK_AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation �⺻Ű';

-- Site Types
CREATE TABLE "SiteTypes" (
	"SITE_TYPE_UID"  VARCHAR(32)  NOT NULL, -- ����ƮŸ��UID
	"SITE_TYPE_NAME" VARCHAR(100) NULL      -- ����ƮŸ�Ը�
);

-- Site Types �⺻Ű
CREATE UNIQUE INDEX "PK_SiteTypes"
	ON "SiteTypes" ( -- Site Types
		"SITE_TYPE_UID" ASC -- ����ƮŸ��UID
	);

-- Site Types
ALTER TABLE "SiteTypes"
	ADD
		CONSTRAINT "PK_SiteTypes" -- Site Types �⺻Ű
		PRIMARY KEY (
			"SITE_TYPE_UID" -- ����ƮŸ��UID
		);

-- Site Types
COMMENT ON TABLE "SiteTypes" IS 'Site Types';

-- ����ƮŸ��UID
COMMENT ON COLUMN "SiteTypes"."SITE_TYPE_UID" IS '����ƮŸ��UID';

-- ����ƮŸ�Ը�
COMMENT ON COLUMN "SiteTypes"."SITE_TYPE_NAME" IS '����ƮŸ�Ը�';

-- Site Types �⺻Ű
COMMENT ON INDEX "PK_SiteTypes" IS 'Site Types �⺻Ű';

-- Site Types �⺻Ű
COMMENT ON CONSTRAINT "SiteTypes"."PK_SiteTypes" IS 'Site Types �⺻Ű';

-- Discount Rates
CREATE TABLE "DiscountRates" (
	"ROOM_UID"                VARCHAR(32) NOT NULL, -- ��UID
	"DISCOUNT_TYPE_CD"        VARCHAR(2)  NOT NULL, -- ����Ÿ���ڵ�
	"DISCOUNT_RATE"           INTEGER     NULL,     -- ���η�
	"DISCOUNT_START_DATE"     VARCHAR(10) NULL,     -- ���ν�������
	"DISCOUNT_END_DATE"       VARCHAR(10) NULL,     -- ������������
	"DISCOUNT_APPLY_WEEK_DAY" VARCHAR(13) NULL      -- �����������
);

-- Discount Rates �⺻Ű
CREATE UNIQUE INDEX "PK_DiscountRates"
	ON "DiscountRates" ( -- Discount Rates
		"ROOM_UID"         ASC, -- ��UID
		"DISCOUNT_TYPE_CD" ASC  -- ����Ÿ���ڵ�
	);

-- Discount Rates
ALTER TABLE "DiscountRates"
	ADD
		CONSTRAINT "PK_DiscountRates" -- Discount Rates �⺻Ű
		PRIMARY KEY (
			"ROOM_UID",         -- ��UID
			"DISCOUNT_TYPE_CD"  -- ����Ÿ���ڵ�
		);

-- Discount Rates
COMMENT ON TABLE "DiscountRates" IS 'Discount Rates';

-- ��UID
COMMENT ON COLUMN "DiscountRates"."ROOM_UID" IS '��UID';

-- ����Ÿ���ڵ�
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_TYPE_CD" IS '����Ÿ���ڵ�';

-- ���η�
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_RATE" IS '���η�';

-- ���ν�������
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_START_DATE" IS '���ν�������';

-- ������������
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_END_DATE" IS '������������';

-- �����������
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_APPLY_WEEK_DAY" IS '�����������';

-- Discount Rates �⺻Ű
COMMENT ON INDEX "PK_DiscountRates" IS 'Discount Rates �⺻Ű';

-- Discount Rates �⺻Ű
COMMENT ON CONSTRAINT "DiscountRates"."PK_DiscountRates" IS 'Discount Rates �⺻Ű';

-- Season
CREATE TABLE "Season" (
	"ACMD_UID"          VARCHAR(32) NOT NULL, -- ����UID
	"SEASON_CD"         VARCHAR(2)  NOT NULL, -- �����ڵ�
	"SEASON_START_DATE" VARCHAR(10) NULL,     -- �����������
	"SEASON_END_DATE"   VARCHAR(10) NULL      -- ������������
);

-- Season �⺻Ű
CREATE UNIQUE INDEX "PK_Season"
	ON "Season" ( -- Season
		"ACMD_UID"  ASC, -- ����UID
		"SEASON_CD" ASC  -- �����ڵ�
	);

-- Season
ALTER TABLE "Season"
	ADD
		CONSTRAINT "PK_Season" -- Season �⺻Ű
		PRIMARY KEY (
			"ACMD_UID",  -- ����UID
			"SEASON_CD"  -- �����ڵ�
		);

-- Season
COMMENT ON TABLE "Season" IS 'Season';

-- ����UID
COMMENT ON COLUMN "Season"."ACMD_UID" IS '����UID';

-- �����ڵ�
COMMENT ON COLUMN "Season"."SEASON_CD" IS '�����ڵ�';

-- �����������
COMMENT ON COLUMN "Season"."SEASON_START_DATE" IS '�����������';

-- ������������
COMMENT ON COLUMN "Season"."SEASON_END_DATE" IS '������������';

-- Season �⺻Ű
COMMENT ON INDEX "PK_Season" IS 'Season �⺻Ű';

-- Season �⺻Ű
COMMENT ON CONSTRAINT "Season"."PK_Season" IS 'Season �⺻Ű';

-- Activity
CREATE TABLE "Activity" (
	"ACTV_UID"      VARCHAR(32)   NOT NULL, -- ��Ƽ��ƼUID
	"ACTV_NAME"     VARCHAR(100)  NULL,     -- ��Ƽ��Ƽ��
	"CITY_UID"      VARCHAR(32)   NULL,     -- ����UID
	"EMAIL"         VARCHAR(100)  NULL,     -- �̸���
	"CONTACT"       VARCHAR(30)   NULL,     -- ����ó
	"IMG_URL"       VARCHAR(255)  NULL,     -- �̹���URL
	"VIDEO_URL"     VARCHAR(255)  NULL,     -- ����URL
	"CRC_NATION_CD" VARCHAR(2)    NULL,     -- ��ȭ�����ڵ�
	"DURATION"      VARCHAR(5)    NULL,     -- �ҿ�ð�
	"ACTV_ADDR"     VARCHAR(255)  NULL,     -- ��Ƽ��Ƽ�ּ�
	"ACTV_ALTD"     VARCHAR(255)  NULL,     -- ��Ƽ��Ƽ����
	"ACTV_LGTD"     VARCHAR(255)  NULL,     -- ��Ƽ��Ƽ�浵
	"DIRECTION"     VARCHAR(1000) NULL      -- ���±�
);

-- Activity �⺻Ű
CREATE UNIQUE INDEX "PK_Activity"
	ON "Activity" ( -- Activity
		"ACTV_UID" ASC -- ��Ƽ��ƼUID
	);

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "PK_Activity" -- Activity �⺻Ű
		PRIMARY KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity
COMMENT ON TABLE "Activity" IS 'Activity';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "Activity"."ACTV_UID" IS '��Ƽ��ƼUID';

-- ��Ƽ��Ƽ��
COMMENT ON COLUMN "Activity"."ACTV_NAME" IS '��Ƽ��Ƽ��';

-- ����UID
COMMENT ON COLUMN "Activity"."CITY_UID" IS '����UID';

-- �̸���
COMMENT ON COLUMN "Activity"."EMAIL" IS '�̸���';

-- ����ó
COMMENT ON COLUMN "Activity"."CONTACT" IS '����ó';

-- �̹���URL
COMMENT ON COLUMN "Activity"."IMG_URL" IS '�̹���URL';

-- ����URL
COMMENT ON COLUMN "Activity"."VIDEO_URL" IS '����URL';

-- ��ȭ�����ڵ�
COMMENT ON COLUMN "Activity"."CRC_NATION_CD" IS '��ȭ�����ڵ�';

-- �ҿ�ð�
COMMENT ON COLUMN "Activity"."DURATION" IS '�ҿ�ð�';

-- ��Ƽ��Ƽ�ּ�
COMMENT ON COLUMN "Activity"."ACTV_ADDR" IS '��Ƽ��Ƽ�ּ�';

-- ��Ƽ��Ƽ����
COMMENT ON COLUMN "Activity"."ACTV_ALTD" IS '��Ƽ��Ƽ����';

-- ��Ƽ��Ƽ�浵
COMMENT ON COLUMN "Activity"."ACTV_LGTD" IS '��Ƽ��Ƽ�浵';

-- ���±�
COMMENT ON COLUMN "Activity"."DIRECTION" IS '���±�';

-- Activity �⺻Ű
COMMENT ON INDEX "PK_Activity" IS 'Activity �⺻Ű';

-- Activity �⺻Ű
COMMENT ON CONSTRAINT "Activity"."PK_Activity" IS 'Activity �⺻Ű';

-- Acvity Types
CREATE TABLE "ActivityTypes" (
	"ACTV_TYPE_UID"  VARCHAR(32)        NOT NULL, -- ��Ƽ��ƼŸ��UID
	"ACTV_TYPE_NAME" VARCHAR(100)       NULL,     -- ��Ƽ��ƼŸ�Ը�
	"ACTV_TYPE_IMG"  <������ Ÿ�� ����> NULL      -- ��Ƽ��ƼŸ���̹���
);

-- Acvity Types �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityTypes"
	ON "ActivityTypes" ( -- Acvity Types
		"ACTV_TYPE_UID" ASC -- ��Ƽ��ƼŸ��UID
	);

-- Acvity Types
ALTER TABLE "ActivityTypes"
	ADD
		CONSTRAINT "PK_ActivityTypes" -- Acvity Types �⺻Ű
		PRIMARY KEY (
			"ACTV_TYPE_UID" -- ��Ƽ��ƼŸ��UID
		);

-- Acvity Types
COMMENT ON TABLE "ActivityTypes" IS 'Acvity Types';

-- ��Ƽ��ƼŸ��UID
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_UID" IS '��Ƽ��ƼŸ��UID';

-- ��Ƽ��ƼŸ�Ը�
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_NAME" IS '��Ƽ��ƼŸ�Ը�';

-- ��Ƽ��ƼŸ���̹���
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_IMG" IS '��Ƽ��ƼŸ���̹���';

-- Acvity Types �⺻Ű
COMMENT ON INDEX "PK_ActivityTypes" IS 'Acvity Types �⺻Ű';

-- Acvity Types �⺻Ű
COMMENT ON CONSTRAINT "ActivityTypes"."PK_ActivityTypes" IS 'Acvity Types �⺻Ű';

-- Daily Room Price
CREATE TABLE "DailyRoomPrice" (
	"ROOM_UID"  VARCHAR(32) NOT NULL, -- ��UID
	"ACMD_DATE" VARCHAR(10) NOT NULL  -- ��������
);

-- Daily Room Price �⺻Ű
CREATE UNIQUE INDEX "PK_DailyRoomPrice"
	ON "DailyRoomPrice" ( -- Daily Room Price
		"ROOM_UID"  ASC, -- ��UID
		"ACMD_DATE" ASC  -- ��������
	);

-- Daily Room Price
ALTER TABLE "DailyRoomPrice"
	ADD
		CONSTRAINT "PK_DailyRoomPrice" -- Daily Room Price �⺻Ű
		PRIMARY KEY (
			"ROOM_UID",  -- ��UID
			"ACMD_DATE"  -- ��������
		);

-- Daily Room Price
COMMENT ON TABLE "DailyRoomPrice" IS 'Daily Room Price';

-- ��UID
COMMENT ON COLUMN "DailyRoomPrice"."ROOM_UID" IS '��UID';

-- ��������
COMMENT ON COLUMN "DailyRoomPrice"."ACMD_DATE" IS '��������';

-- Daily Room Price �⺻Ű
COMMENT ON INDEX "PK_DailyRoomPrice" IS 'Daily Room Price �⺻Ű';

-- Daily Room Price �⺻Ű
COMMENT ON CONSTRAINT "DailyRoomPrice"."PK_DailyRoomPrice" IS 'Daily Room Price �⺻Ű';

-- Daily Room Info
CREATE TABLE "DailyRoomInfo" (
	"ROOM_UID"        VARCHAR(32)   NOT NULL, -- ��UID
	"ACMD_DATE"       VARCHAR(10)   NOT NULL, -- ��������
	"ROOM_RSV_STATUS" VARCHAR(2)    NULL,     -- �濹�����
	"ROOM_PRICE"      VARCHAR(10)   NULL,     -- �氡��
	"HOTDEAL_YN"      VARCHAR(1)    NULL,     -- �ֵ�����
	"MEMO"            VARCHAR(1000) NULL      -- �޸�
);

-- Daily Room Info �⺻Ű
CREATE UNIQUE INDEX "PK_DailyRoomInfo"
	ON "DailyRoomInfo" ( -- Daily Room Info
		"ROOM_UID"  ASC, -- ��UID
		"ACMD_DATE" ASC  -- ��������
	);

-- Daily Room Info
ALTER TABLE "DailyRoomInfo"
	ADD
		CONSTRAINT "PK_DailyRoomInfo" -- Daily Room Info �⺻Ű
		PRIMARY KEY (
			"ROOM_UID",  -- ��UID
			"ACMD_DATE"  -- ��������
		);

-- Daily Room Info
COMMENT ON TABLE "DailyRoomInfo" IS 'Daily Room Info';

-- ��UID
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_UID" IS '��UID';

-- ��������
COMMENT ON COLUMN "DailyRoomInfo"."ACMD_DATE" IS '��������';

-- �濹�����
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_RSV_STATUS" IS '�濹�����';

-- �氡��
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_PRICE" IS '�氡��';

-- �ֵ�����
COMMENT ON COLUMN "DailyRoomInfo"."HOTDEAL_YN" IS '�ֵ�����';

-- �޸�
COMMENT ON COLUMN "DailyRoomInfo"."MEMO" IS '�޸�';

-- Daily Room Info �⺻Ű
COMMENT ON INDEX "PK_DailyRoomInfo" IS 'Daily Room Info �⺻Ű';

-- Daily Room Info �⺻Ű
COMMENT ON CONSTRAINT "DailyRoomInfo"."PK_DailyRoomInfo" IS 'Daily Room Info �⺻Ű';

-- Activity Images
CREATE TABLE "ActivityImages" (
	"ACTV_UID"  VARCHAR(32)  NOT NULL, -- ��Ƽ��ƼUID
	"IMG_URL"   VARCHAR(255) NULL,     -- �̹���URL
	"IMG_TITLE" VARCHAR(100) NULL,     -- �̹�������
	"IMG_NO"    INTEGER      NULL      -- �̹�����ȣ
);

-- Activity Images �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityImages"
	ON "ActivityImages" ( -- Activity Images
		"ACTV_UID" ASC -- ��Ƽ��ƼUID
	);

-- Activity Images
ALTER TABLE "ActivityImages"
	ADD
		CONSTRAINT "PK_ActivityImages" -- Activity Images �⺻Ű
		PRIMARY KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity Images
COMMENT ON TABLE "ActivityImages" IS 'Activity Images';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "ActivityImages"."ACTV_UID" IS '��Ƽ��ƼUID';

-- �̹���URL
COMMENT ON COLUMN "ActivityImages"."IMG_URL" IS '�̹���URL';

-- �̹�������
COMMENT ON COLUMN "ActivityImages"."IMG_TITLE" IS '�̹�������';

-- �̹�����ȣ
COMMENT ON COLUMN "ActivityImages"."IMG_NO" IS '�̹�����ȣ';

-- Activity Images �⺻Ű
COMMENT ON INDEX "PK_ActivityImages" IS 'Activity Images �⺻Ű';

-- Activity Images �⺻Ű
COMMENT ON CONSTRAINT "ActivityImages"."PK_ActivityImages" IS 'Activity Images �⺻Ű';

-- Acvity Packages
CREATE TABLE "ActivityPackages" (
	"PACKAGE_UID"   VARCHAR(32)  NOT NULL, -- ��Ű��UID
	"ACTV_UID"      VARCHAR(32)  NULL,     -- ��Ƽ��ƼUID
	"PACKAGE_NAME"  VARCHAR(100) NULL,     -- ��Ű����
	"OP_START_DATE" VARCHAR(10)  NULL,     -- ���������
	"OP_END_DATE"   VARCHAR(10)  NULL,     -- ���������
	"OP_WEEK_DAY"   VARCHAR(13)  NULL      -- �����
);

-- Acvity Packages �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityPackages"
	ON "ActivityPackages" ( -- Acvity Packages
		"PACKAGE_UID" ASC -- ��Ű��UID
	);

-- Acvity Packages
ALTER TABLE "ActivityPackages"
	ADD
		CONSTRAINT "PK_ActivityPackages" -- Acvity Packages �⺻Ű
		PRIMARY KEY (
			"PACKAGE_UID" -- ��Ű��UID
		);

-- Acvity Packages
COMMENT ON TABLE "ActivityPackages" IS 'Acvity Packages';

-- ��Ű��UID
COMMENT ON COLUMN "ActivityPackages"."PACKAGE_UID" IS '��Ű��UID';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "ActivityPackages"."ACTV_UID" IS '��Ƽ��ƼUID';

-- ��Ű����
COMMENT ON COLUMN "ActivityPackages"."PACKAGE_NAME" IS '��Ű����';

-- ���������
COMMENT ON COLUMN "ActivityPackages"."OP_START_DATE" IS '���������';

-- ���������
COMMENT ON COLUMN "ActivityPackages"."OP_END_DATE" IS '���������';

-- �����
COMMENT ON COLUMN "ActivityPackages"."OP_WEEK_DAY" IS '�����';

-- Acvity Packages �⺻Ű
COMMENT ON INDEX "PK_ActivityPackages" IS 'Acvity Packages �⺻Ű';

-- Acvity Packages �⺻Ű
COMMENT ON CONSTRAINT "ActivityPackages"."PK_ActivityPackages" IS 'Acvity Packages �⺻Ű';

-- Activity Package Desc
CREATE TABLE "ActivityPackageDesc" (
	"PACKAGE_DESC_UID" VARCHAR(32)   NOT NULL, -- ��Ű������UID
	"PACKAGE_UID"      VARCHAR(32)   NOT NULL, -- ��Ű��UID
	"PACKAGE_DESC"     VARCHAR(1000) NOT NULL  -- ��Ű������
);

-- Activity Package Desc �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityPackageDesc"
	ON "ActivityPackageDesc" ( -- Activity Package Desc
		"PACKAGE_DESC_UID" ASC, -- ��Ű������UID
		"PACKAGE_UID"      ASC  -- ��Ű��UID
	);

-- Activity Package Desc
ALTER TABLE "ActivityPackageDesc"
	ADD
		CONSTRAINT "PK_ActivityPackageDesc" -- Activity Package Desc �⺻Ű
		PRIMARY KEY (
			"PACKAGE_DESC_UID", -- ��Ű������UID
			"PACKAGE_UID"       -- ��Ű��UID
		);

-- Activity Package Desc
COMMENT ON TABLE "ActivityPackageDesc" IS 'Activity Package Desc';

-- ��Ű������UID
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_DESC_UID" IS '��Ű������UID';

-- ��Ű��UID
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_UID" IS '��Ű��UID';

-- ��Ű������
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_DESC" IS '��Ű������';

-- Activity Package Desc �⺻Ű
COMMENT ON INDEX "PK_ActivityPackageDesc" IS 'Activity Package Desc �⺻Ű';

-- Activity Package Desc �⺻Ű
COMMENT ON CONSTRAINT "ActivityPackageDesc"."PK_ActivityPackageDesc" IS 'Activity Package Desc �⺻Ű';

-- Package Operation Times
CREATE TABLE "PackageOpTimes" (
	"PACKAGE_OP_TIME_UID" VARCHAR(32) NOT NULL, -- ��Ű����ð�UID
	"PACKAGE_UID"         VARCHAR(32) NOT NULL, -- ��Ű��UID
	"PACKAGE_OP_TIME"     VARCHAR(5)  NOT NULL  -- ��Ű����ð�
);

-- Package Operation Times �⺻Ű
CREATE UNIQUE INDEX "PK_PackageOpTimes"
	ON "PackageOpTimes" ( -- Package Operation Times
		"PACKAGE_OP_TIME_UID" ASC, -- ��Ű����ð�UID
		"PACKAGE_UID"         ASC  -- ��Ű��UID
	);

-- Package Operation Times
ALTER TABLE "PackageOpTimes"
	ADD
		CONSTRAINT "PK_PackageOpTimes" -- Package Operation Times �⺻Ű
		PRIMARY KEY (
			"PACKAGE_OP_TIME_UID", -- ��Ű����ð�UID
			"PACKAGE_UID"          -- ��Ű��UID
		);

-- Package Operation Times
COMMENT ON TABLE "PackageOpTimes" IS 'Package Operation Times';

-- ��Ű����ð�UID
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_OP_TIME_UID" IS '��Ű����ð�UID';

-- ��Ű��UID
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_UID" IS '��Ű��UID';

-- ��Ű����ð�
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_OP_TIME" IS '��Ű����ð�';

-- Package Operation Times �⺻Ű
COMMENT ON INDEX "PK_PackageOpTimes" IS 'Package Operation Times �⺻Ű';

-- Package Operation Times �⺻Ű
COMMENT ON CONSTRAINT "PackageOpTimes"."PK_PackageOpTimes" IS 'Package Operation Times �⺻Ű';

-- Package Price
CREATE TABLE "PackagePrice" (
	"PACKAGE_PRICE_UID" VARCHAR(32)  NOT NULL, -- ��Ű������UID
	"PACKAGE_UID"       VARCHAR(32)  NOT NULL, -- ��Ű��UID
	"QUANTITY_NAME"     VARCHAR(100) NULL,     -- ������
	"PRICE"             VARCHAR(10)  NULL,     -- ����
	"MIN_RSRV_PPL"      VARCHAR(10)  NULL,     -- �ּҿ����ο�
	"MAX_RSRV_PPL"      VARCHAR(10)  NULL      -- �ִ뿹���ο�
);

-- Package Price �⺻Ű
CREATE UNIQUE INDEX "PK_PackagePrice"
	ON "PackagePrice" ( -- Package Price
		"PACKAGE_PRICE_UID" ASC, -- ��Ű������UID
		"PACKAGE_UID"       ASC  -- ��Ű��UID
	);

-- Package Price
ALTER TABLE "PackagePrice"
	ADD
		CONSTRAINT "PK_PackagePrice" -- Package Price �⺻Ű
		PRIMARY KEY (
			"PACKAGE_PRICE_UID", -- ��Ű������UID
			"PACKAGE_UID"        -- ��Ű��UID
		);

-- Package Price
COMMENT ON TABLE "PackagePrice" IS 'Package Price';

-- ��Ű������UID
COMMENT ON COLUMN "PackagePrice"."PACKAGE_PRICE_UID" IS '��Ű������UID';

-- ��Ű��UID
COMMENT ON COLUMN "PackagePrice"."PACKAGE_UID" IS '��Ű��UID';

-- ������
COMMENT ON COLUMN "PackagePrice"."QUANTITY_NAME" IS '������';

-- ����
COMMENT ON COLUMN "PackagePrice"."PRICE" IS '����';

-- �ּҿ����ο�
COMMENT ON COLUMN "PackagePrice"."MIN_RSRV_PPL" IS '�ּҿ����ο�';

-- �ִ뿹���ο�
COMMENT ON COLUMN "PackagePrice"."MAX_RSRV_PPL" IS '�ִ뿹���ο�';

-- Package Price �⺻Ű
COMMENT ON INDEX "PK_PackagePrice" IS 'Package Price �⺻Ű';

-- Package Price �⺻Ű
COMMENT ON CONSTRAINT "PackagePrice"."PK_PackagePrice" IS 'Package Price �⺻Ű';

-- Package Discount
CREATE TABLE "PackageDiscount" (
	"PACKAGE_UID"             VARCHAR(32) NOT NULL, -- ��Ű��UID
	"DISCOUNT_TYPE_CD"        VARCHAR(2)  NOT NULL, -- ����Ÿ���ڵ�
	"DISCOUNT_RATE"           INTEGER     NULL,     -- ���η�
	"DISCOUNT_START_DATE"     VARCHAR(10) NULL,     -- ���ν�������
	"DISCOUNT_END_DATE"       VARCHAR(10) NULL,     -- ������������
	"DISCOUNT_APPLY_WEEK_DAY" VARCHAR(13) NULL      -- �����������
);

-- Package Discount �⺻Ű
CREATE UNIQUE INDEX "PK_PackageDiscount"
	ON "PackageDiscount" ( -- Package Discount
		"PACKAGE_UID"      ASC, -- ��Ű��UID
		"DISCOUNT_TYPE_CD" ASC  -- ����Ÿ���ڵ�
	);

-- Package Discount
ALTER TABLE "PackageDiscount"
	ADD
		CONSTRAINT "PK_PackageDiscount" -- Package Discount �⺻Ű
		PRIMARY KEY (
			"PACKAGE_UID",      -- ��Ű��UID
			"DISCOUNT_TYPE_CD"  -- ����Ÿ���ڵ�
		);

-- Package Discount
COMMENT ON TABLE "PackageDiscount" IS 'Package Discount';

-- ��Ű��UID
COMMENT ON COLUMN "PackageDiscount"."PACKAGE_UID" IS '��Ű��UID';

-- ����Ÿ���ڵ�
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_TYPE_CD" IS '����Ÿ���ڵ�';

-- ���η�
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_RATE" IS '���η�';

-- ���ν�������
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_START_DATE" IS '���ν�������';

-- ������������
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_END_DATE" IS '������������';

-- �����������
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_APPLY_WEEK_DAY" IS '�����������';

-- Package Discount �⺻Ű
COMMENT ON INDEX "PK_PackageDiscount" IS 'Package Discount �⺻Ű';

-- Package Discount �⺻Ű
COMMENT ON CONSTRAINT "PackageDiscount"."PK_PackageDiscount" IS 'Package Discount �⺻Ű';

-- Activity Information
CREATE TABLE "ActivityInfo" (
	"ACTV_UID"      VARCHAR(32)   NOT NULL, -- ��Ƽ��ƼUID
	"EXCLUDE_ITEM"  VARCHAR(1000) NULL,     -- �����׸�
	"INCLUDE_ITEM"  VARCHAR(1000) NULL,     -- �����׸�
	"BUSINESS_HOUR" VARCHAR(1000) NULL,     -- �����ð�
	"SCHEDULE"      VARCHAR(1000) NULL,     -- ������
	"REMINDER"      VARCHAR(1000) NULL      -- �����δ�
);

-- Activity Information �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityInfo"
	ON "ActivityInfo" ( -- Activity Information
		"ACTV_UID" ASC -- ��Ƽ��ƼUID
	);

-- Activity Information
ALTER TABLE "ActivityInfo"
	ADD
		CONSTRAINT "PK_ActivityInfo" -- Activity Information �⺻Ű
		PRIMARY KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity Information
COMMENT ON TABLE "ActivityInfo" IS 'Activity Information';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "ActivityInfo"."ACTV_UID" IS '��Ƽ��ƼUID';

-- �����׸�
COMMENT ON COLUMN "ActivityInfo"."EXCLUDE_ITEM" IS '�����׸�';

-- �����׸�
COMMENT ON COLUMN "ActivityInfo"."INCLUDE_ITEM" IS '�����׸�';

-- �����ð�
COMMENT ON COLUMN "ActivityInfo"."BUSINESS_HOUR" IS '�����ð�';

-- ������
COMMENT ON COLUMN "ActivityInfo"."SCHEDULE" IS '������';

-- �����δ�
COMMENT ON COLUMN "ActivityInfo"."REMINDER" IS '�����δ�';

-- Activity Information �⺻Ű
COMMENT ON INDEX "PK_ActivityInfo" IS 'Activity Information �⺻Ű';

-- Activity Information �⺻Ű
COMMENT ON CONSTRAINT "ActivityInfo"."PK_ActivityInfo" IS 'Activity Information �⺻Ű';

-- Activity Package Options
CREATE TABLE "ActivityPackageOptions" (
	"ACTV_UID"          VARCHAR(32)   NOT NULL, -- ��Ƽ��ƼUID
	"PACKAGE_OPT_UID"   VARCHAR(32)   NOT NULL, -- ��Ű���ɼ�UID
	"PACKAGE_OPT_TITLE" VARCHAR(100)  NULL,     -- ��Ű���ɼ�����
	"PACKAGE_OPT_CTNT"  VARCHAR(1000) NULL      -- ��Ű���ɼǳ���
);

-- Activity Package Options �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityPackageOptions"
	ON "ActivityPackageOptions" ( -- Activity Package Options
		"ACTV_UID"        ASC, -- ��Ƽ��ƼUID
		"PACKAGE_OPT_UID" ASC  -- ��Ű���ɼ�UID
	);

-- Activity Package Options
ALTER TABLE "ActivityPackageOptions"
	ADD
		CONSTRAINT "PK_ActivityPackageOptions" -- Activity Package Options �⺻Ű
		PRIMARY KEY (
			"ACTV_UID",        -- ��Ƽ��ƼUID
			"PACKAGE_OPT_UID"  -- ��Ű���ɼ�UID
		);

-- Activity Package Options
COMMENT ON TABLE "ActivityPackageOptions" IS 'Activity Package Options';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "ActivityPackageOptions"."ACTV_UID" IS '��Ƽ��ƼUID';

-- ��Ű���ɼ�UID
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_UID" IS '��Ű���ɼ�UID';

-- ��Ű���ɼ�����
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_TITLE" IS '��Ű���ɼ�����';

-- ��Ű���ɼǳ���
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_CTNT" IS '��Ű���ɼǳ���';

-- Activity Package Options �⺻Ű
COMMENT ON INDEX "PK_ActivityPackageOptions" IS 'Activity Package Options �⺻Ű';

-- Activity Package Options �⺻Ű
COMMENT ON CONSTRAINT "ActivityPackageOptions"."PK_ActivityPackageOptions" IS 'Activity Package Options �⺻Ű';

-- Activity Policy
CREATE TABLE "ActivityPolicy" (
	"PLCY_UID"         VARCHAR(32)   NOT NULL, -- ��åUID
	"ACTV_UID"         VARCHAR(32)   NOT NULL, -- ��Ƽ��ƼUID
	"CFRM_TYPE_CD"     VARCHAR(2)    NULL,     -- Ȯ��Ÿ���ڵ�
	"CFRM_TIME"        VARCHAR(5)    NULL,     -- Ȯ�νð�
	"RSRV_ABLE_CD"     VARCHAR(2)    NULL,     -- ���డ���ڵ�
	"RSRV_ABLE_DAYS"   INTEGER       NULL,     -- ���డ���ϼ�
	"CANCEL_TYPE_CD"   VARCHAR(2)    NULL,     -- ���Ÿ���ڵ�
	"CANCEL_ABLE_TIME" VARCHAR(5)    NULL,     -- ��Ұ��ɽð�
	"HOW_TO_USE"       VARCHAR(1000) NULL      -- ����
);

-- Activity Policy �⺻Ű
CREATE UNIQUE INDEX "PK_ActivityPolicy"
	ON "ActivityPolicy" ( -- Activity Policy
		"PLCY_UID" ASC, -- ��åUID
		"ACTV_UID" ASC  -- ��Ƽ��ƼUID
	);

-- Activity Policy
ALTER TABLE "ActivityPolicy"
	ADD
		CONSTRAINT "PK_ActivityPolicy" -- Activity Policy �⺻Ű
		PRIMARY KEY (
			"PLCY_UID", -- ��åUID
			"ACTV_UID"  -- ��Ƽ��ƼUID
		);

-- Activity Policy
COMMENT ON TABLE "ActivityPolicy" IS 'Activity Policy';

-- ��åUID
COMMENT ON COLUMN "ActivityPolicy"."PLCY_UID" IS '��åUID';

-- ��Ƽ��ƼUID
COMMENT ON COLUMN "ActivityPolicy"."ACTV_UID" IS '��Ƽ��ƼUID';

-- Ȯ��Ÿ���ڵ�
COMMENT ON COLUMN "ActivityPolicy"."CFRM_TYPE_CD" IS 'Ȯ��Ÿ���ڵ�';

-- Ȯ�νð�
COMMENT ON COLUMN "ActivityPolicy"."CFRM_TIME" IS 'Ȯ�νð�';

-- ���డ���ڵ�
COMMENT ON COLUMN "ActivityPolicy"."RSRV_ABLE_CD" IS '���డ���ڵ�';

-- ���డ���ϼ�
COMMENT ON COLUMN "ActivityPolicy"."RSRV_ABLE_DAYS" IS '���డ���ϼ�';

-- ���Ÿ���ڵ�
COMMENT ON COLUMN "ActivityPolicy"."CANCEL_TYPE_CD" IS '���Ÿ���ڵ�';

-- ��Ұ��ɽð�
COMMENT ON COLUMN "ActivityPolicy"."CANCEL_ABLE_TIME" IS '��Ұ��ɽð�';

-- ����
COMMENT ON COLUMN "ActivityPolicy"."HOW_TO_USE" IS '����';

-- Activity Policy �⺻Ű
COMMENT ON INDEX "PK_ActivityPolicy" IS 'Activity Policy �⺻Ű';

-- Activity Policy �⺻Ű
COMMENT ON CONSTRAINT "ActivityPolicy"."PK_ActivityPolicy" IS 'Activity Policy �⺻Ű';

-- Activity Default Policy
CREATE TABLE "ActivityDfltPolicy" (
	"COL2" <������ Ÿ�� ����> NULL, -- �ＮȮ�α⺻�޽���
	"COL"  <������ Ÿ�� ����> NULL  -- Ȯ�α⺻�޽���
);

-- Activity Default Policy
COMMENT ON TABLE "ActivityDfltPolicy" IS 'Activity Default Policy';

-- �ＮȮ�α⺻�޽���
COMMENT ON COLUMN "ActivityDfltPolicy"."COL2" IS '�ＮȮ�α⺻�޽���';

-- Ȯ�α⺻�޽���
COMMENT ON COLUMN "ActivityDfltPolicy"."COL" IS 'Ȯ�α⺻�޽���';

-- User
CREATE TABLE "User" (
	"USER_ID"              <������ Ÿ�� ����> NULL, -- �����ID
	"USER_NAME"            <������ Ÿ�� ����> NULL, -- ����ڸ�
	"PASSWORD"             <������ Ÿ�� ����> NULL, -- ��й�ȣ
	"PASSWORD_ERROR_COUNT" <������ Ÿ�� ����> NULL, -- ��й�ȣ����Ƚ��
	"LAST_LOGIN_DTTM"      <������ Ÿ�� ����> NULL, -- �������α����Ͻ�
	"LOCK_YN"              <������ Ÿ�� ����> NULL  -- ��ݿ���
);

-- User
COMMENT ON TABLE "User" IS 'User';

-- �����ID
COMMENT ON COLUMN "User"."USER_ID" IS '�����ID';

-- ����ڸ�
COMMENT ON COLUMN "User"."USER_NAME" IS '����ڸ�';

-- ��й�ȣ
COMMENT ON COLUMN "User"."PASSWORD" IS '��й�ȣ';

-- ��й�ȣ����Ƚ��
COMMENT ON COLUMN "User"."PASSWORD_ERROR_COUNT" IS '��й�ȣ����Ƚ��';

-- �������α����Ͻ�
COMMENT ON COLUMN "User"."LAST_LOGIN_DTTM" IS '�������α����Ͻ�';

-- ��ݿ���
COMMENT ON COLUMN "User"."LOCK_YN" IS '��ݿ���';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_NationCity_TO_Accommodation" -- NationCity -> Accommodation
		FOREIGN KEY (
			"CITY_UID" -- ����UID
		)
		REFERENCES "NationCity" ( -- NationCity
			"CITY_UID" -- ����UID
		);

-- NationCity -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_NationCity_TO_Accommodation" IS 'NationCity -> Accommodation';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_Currency_TO_Accommodation" -- Currency -> Accommodation
		FOREIGN KEY (
			"CRC_NATION_CD" -- ��ȭ�����ڵ�
		)
		REFERENCES "Currency" ( -- Currency
			"CRC_NTL_CD" -- ��ȭ�����ڵ�
		);

-- Currency -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_Currency_TO_Accommodation" IS 'Currency -> Accommodation';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_CancelPolicy_TO_Accommodation" -- Cancel Policy -> Accommodation
		FOREIGN KEY (
			"CANCEL_PLCY_UID" -- �����åUID
		)
		REFERENCES "CancelPolicy" ( -- Cancel Policy
			"COL" -- �����åUID
		);

-- Cancel Policy -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_CancelPolicy_TO_Accommodation" IS 'Cancel Policy -> Accommodation';

-- Recommend Spots
ALTER TABLE "RecommendSpots"
	ADD
		CONSTRAINT "FK_Accommodation_TO_RecommendSpots" -- Accommodation -> Recommend Spots
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Recommend Spots
COMMENT ON CONSTRAINT "RecommendSpots"."FK_Accommodation_TO_RecommendSpots" IS 'Accommodation -> Recommend Spots';

-- Themes
ALTER TABLE "Themes"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Themes" -- Accommodation -> Themes
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Themes
COMMENT ON CONSTRAINT "Themes"."FK_Accommodation_TO_Themes" IS 'Accommodation -> Themes';

-- Special Facilities
ALTER TABLE "SpecialFacilities"
	ADD
		CONSTRAINT "FK_Accommodation_TO_SpecialFacilities" -- Accommodation -> Special Facilities
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Special Facilities
COMMENT ON CONSTRAINT "SpecialFacilities"."FK_Accommodation_TO_SpecialFacilities" IS 'Accommodation -> Special Facilities';

-- Accommodation Images
ALTER TABLE "AccommodationImages"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccommodationImages" -- Accommodation -> Accommodation Images
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Accommodation Images
COMMENT ON CONSTRAINT "AccommodationImages"."FK_Accommodation_TO_AccommodationImages" IS 'Accommodation -> Accommodation Images';

-- Extra Options
ALTER TABLE "ExtraOptions"
	ADD
		CONSTRAINT "FK_Accommodation_TO_ExtraOptions" -- Accommodation -> Extra Options
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Extra Options
COMMENT ON CONSTRAINT "ExtraOptions"."FK_Accommodation_TO_ExtraOptions" IS 'Accommodation -> Extra Options';

-- Policies
ALTER TABLE "Policies"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Policies" -- Accommodation -> Policies
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Policies
COMMENT ON CONSTRAINT "Policies"."FK_Accommodation_TO_Policies" IS 'Accommodation -> Policies';

-- Reviews
ALTER TABLE "Reviews"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Reviews" -- Accommodation -> Reviews
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Reviews
COMMENT ON CONSTRAINT "Reviews"."FK_Accommodation_TO_Reviews" IS 'Accommodation -> Reviews';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Rooms" -- Accommodation -> Rooms
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_Accommodation_TO_Rooms" IS 'Accommodation -> Rooms';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_RoomTypes_TO_Rooms" -- Room Types -> Rooms
		FOREIGN KEY (
			"ROOM_TYPE_UID" -- ��Ÿ��UID
		)
		REFERENCES "RoomTypes" ( -- Room Types
			"ROOM_TYPE_UID" -- ��Ÿ��UID
		);

-- Room Types -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_RoomTypes_TO_Rooms" IS 'Room Types -> Rooms';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_SiteTypes_TO_Rooms" -- Site Types -> Rooms
		FOREIGN KEY (
			"SITE_TYPE_UID" -- ����ƮŸ��UID
		)
		REFERENCES "SiteTypes" ( -- Site Types
			"SITE_TYPE_UID" -- ����ƮŸ��UID
		);

-- Site Types -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_SiteTypes_TO_Rooms" IS 'Site Types -> Rooms';

-- Room Images
ALTER TABLE "RoomImages"
	ADD
		CONSTRAINT "FK_Rooms_TO_RoomImages" -- Rooms -> Room Images
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Room Images
COMMENT ON CONSTRAINT "RoomImages"."FK_Rooms_TO_RoomImages" IS 'Rooms -> Room Images';

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccommodationFacilitiesRel" -- Accommodation -> Accommodation Facilities Relation
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Accommodation Facilities Relation
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."FK_Accommodation_TO_AccommodationFacilitiesRel" IS 'Accommodation -> Accommodation Facilities Relation';

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "FK_Facilities_TO_AccommodationFacilitiesRel" -- Facilities -> Accommodation Facilities Relation
		FOREIGN KEY (
			"FCLT_UID" -- ���ڽü�UID
		)
		REFERENCES "Facilities" ( -- Facilities
			"FCLT_UID" -- ���ڽü�UID
		);

-- Facilities -> Accommodation Facilities Relation
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."FK_Facilities_TO_AccommodationFacilitiesRel" IS 'Facilities -> Accommodation Facilities Relation';

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "FK_Rooms_TO_RoomAmenities" -- Rooms -> Room Amenities
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Room Amenities
COMMENT ON CONSTRAINT "RoomAmenities"."FK_Rooms_TO_RoomAmenities" IS 'Rooms -> Room Amenities';

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "FK_Amenities_TO_RoomAmenities" -- Amenities -> Room Amenities
		FOREIGN KEY (
			"AMNY_UID" -- ���ǽü�UID
		)
		REFERENCES "Amenities" ( -- Amenities
			"AMNY_UID" -- ���ǽü�UID
		);

-- Amenities -> Room Amenities
COMMENT ON CONSTRAINT "RoomAmenities"."FK_Amenities_TO_RoomAmenities" IS 'Amenities -> Room Amenities';

-- Special Amenities
ALTER TABLE "SpecialAmenities"
	ADD
		CONSTRAINT "FK_Rooms_TO_SpecialAmenities" -- Rooms -> Special Amenities
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Special Amenities
COMMENT ON CONSTRAINT "SpecialAmenities"."FK_Rooms_TO_SpecialAmenities" IS 'Rooms -> Special Amenities';

-- Default Room Price
ALTER TABLE "DfltRoomPrice"
	ADD
		CONSTRAINT "FK_Rooms_TO_DfltRoomPrice" -- Rooms -> Default Room Price
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Default Room Price
COMMENT ON CONSTRAINT "DfltRoomPrice"."FK_Rooms_TO_DfltRoomPrice" IS 'Rooms -> Default Room Price';

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccomodationPolicyOptionRel" -- Accommodation -> Accomodation PolicyOption Relation
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Accomodation PolicyOption Relation
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."FK_Accommodation_TO_AccomodationPolicyOptionRel" IS 'Accommodation -> Accomodation PolicyOption Relation';

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "FK_PolicyOptions_TO_AccomodationPolicyOptionRel" -- Policy Options -> Accomodation PolicyOption Relation
		FOREIGN KEY (
			"PLCY_OPT_UID" -- ��å�ɼ�UID
		)
		REFERENCES "PolicyOptions" ( -- Policy Options
			"COL3" -- ��å�ɼ�UID
		);

-- Policy Options -> Accomodation PolicyOption Relation
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."FK_PolicyOptions_TO_AccomodationPolicyOptionRel" IS 'Policy Options -> Accomodation PolicyOption Relation';

-- Discount Rates
ALTER TABLE "DiscountRates"
	ADD
		CONSTRAINT "FK_Rooms_TO_DiscountRates" -- Rooms -> Discount Rates
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Discount Rates
COMMENT ON CONSTRAINT "DiscountRates"."FK_Rooms_TO_DiscountRates" IS 'Rooms -> Discount Rates';

-- Season
ALTER TABLE "Season"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Season" -- Accommodation -> Season
		FOREIGN KEY (
			"ACMD_UID" -- ����UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- ����UID
		);

-- Accommodation -> Season
COMMENT ON CONSTRAINT "Season"."FK_Accommodation_TO_Season" IS 'Accommodation -> Season';

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "FK_NationCity_TO_Activity" -- NationCity -> Activity
		FOREIGN KEY (
			"CITY_UID" -- ����UID
		)
		REFERENCES "NationCity" ( -- NationCity
			"CITY_UID" -- ����UID
		);

-- NationCity -> Activity
COMMENT ON CONSTRAINT "Activity"."FK_NationCity_TO_Activity" IS 'NationCity -> Activity';

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "FK_Currency_TO_Activity" -- Currency -> Activity
		FOREIGN KEY (
			"CRC_NATION_CD" -- ��ȭ�����ڵ�
		)
		REFERENCES "Currency" ( -- Currency
			"CRC_NTL_CD" -- ��ȭ�����ڵ�
		);

-- Currency -> Activity
COMMENT ON CONSTRAINT "Activity"."FK_Currency_TO_Activity" IS 'Currency -> Activity';

-- Daily Room Price
ALTER TABLE "DailyRoomPrice"
	ADD
		CONSTRAINT "FK_Rooms_TO_DailyRoomPrice" -- Rooms -> Daily Room Price
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Daily Room Price
COMMENT ON CONSTRAINT "DailyRoomPrice"."FK_Rooms_TO_DailyRoomPrice" IS 'Rooms -> Daily Room Price';

-- Daily Room Info
ALTER TABLE "DailyRoomInfo"
	ADD
		CONSTRAINT "FK_Rooms_TO_DailyRoomInfo" -- Rooms -> Daily Room Info
		FOREIGN KEY (
			"ROOM_UID" -- ��UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- ��UID
		);

-- Rooms -> Daily Room Info
COMMENT ON CONSTRAINT "DailyRoomInfo"."FK_Rooms_TO_DailyRoomInfo" IS 'Rooms -> Daily Room Info';

-- Activity Images
ALTER TABLE "ActivityImages"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityImages" -- Activity -> Activity Images
		FOREIGN KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity -> Activity Images
COMMENT ON CONSTRAINT "ActivityImages"."FK_Activity_TO_ActivityImages" IS 'Activity -> Activity Images';

-- Acvity Packages
ALTER TABLE "ActivityPackages"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPackages" -- Activity -> Acvity Packages
		FOREIGN KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity -> Acvity Packages
COMMENT ON CONSTRAINT "ActivityPackages"."FK_Activity_TO_ActivityPackages" IS 'Activity -> Acvity Packages';

-- Activity Package Desc
ALTER TABLE "ActivityPackageDesc"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_ActivityPackageDesc" -- Acvity Packages -> Activity Package Desc
		FOREIGN KEY (
			"PACKAGE_UID" -- ��Ű��UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- ��Ű��UID
		);

-- Acvity Packages -> Activity Package Desc
COMMENT ON CONSTRAINT "ActivityPackageDesc"."FK_ActivityPackages_TO_ActivityPackageDesc" IS 'Acvity Packages -> Activity Package Desc';

-- Package Operation Times
ALTER TABLE "PackageOpTimes"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackageOpTimes" -- Acvity Packages -> Package Operation Times
		FOREIGN KEY (
			"PACKAGE_UID" -- ��Ű��UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- ��Ű��UID
		);

-- Acvity Packages -> Package Operation Times
COMMENT ON CONSTRAINT "PackageOpTimes"."FK_ActivityPackages_TO_PackageOpTimes" IS 'Acvity Packages -> Package Operation Times';

-- Package Price
ALTER TABLE "PackagePrice"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackagePrice" -- Acvity Packages -> Package Price
		FOREIGN KEY (
			"PACKAGE_UID" -- ��Ű��UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- ��Ű��UID
		);

-- Acvity Packages -> Package Price
COMMENT ON CONSTRAINT "PackagePrice"."FK_ActivityPackages_TO_PackagePrice" IS 'Acvity Packages -> Package Price';

-- Package Discount
ALTER TABLE "PackageDiscount"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackageDiscount" -- Acvity Packages -> Package Discount
		FOREIGN KEY (
			"PACKAGE_UID" -- ��Ű��UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- ��Ű��UID
		);

-- Acvity Packages -> Package Discount
COMMENT ON CONSTRAINT "PackageDiscount"."FK_ActivityPackages_TO_PackageDiscount" IS 'Acvity Packages -> Package Discount';

-- Activity Information
ALTER TABLE "ActivityInfo"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityInfo" -- Activity -> Activity Information
		FOREIGN KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity -> Activity Information
COMMENT ON CONSTRAINT "ActivityInfo"."FK_Activity_TO_ActivityInfo" IS 'Activity -> Activity Information';

-- Activity Package Options
ALTER TABLE "ActivityPackageOptions"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPackageOptions" -- Activity -> Activity Package Options
		FOREIGN KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity -> Activity Package Options
COMMENT ON CONSTRAINT "ActivityPackageOptions"."FK_Activity_TO_ActivityPackageOptions" IS 'Activity -> Activity Package Options';

-- Activity Policy
ALTER TABLE "ActivityPolicy"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPolicy" -- Activity -> Activity Policy
		FOREIGN KEY (
			"ACTV_UID" -- ��Ƽ��ƼUID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- ��Ƽ��ƼUID
		);

-- Activity -> Activity Policy
COMMENT ON CONSTRAINT "ActivityPolicy"."FK_Activity_TO_ActivityPolicy" IS 'Activity -> Activity Policy';