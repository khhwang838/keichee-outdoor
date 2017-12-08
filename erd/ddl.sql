-- Accommodation
CREATE TABLE "Accommodation" (
	"ACMD_UID"        VARCHAR(32)   NOT NULL, -- 숙박UID
	"ACMD_NAME"       VARCHAR(100)  NULL,     -- 숙박명
	"ACMD_DESC"       VARCHAR(1000) NULL,     -- 숙박설명
	"EMAIL"           VARCHAR(100)  NULL,     -- 이메일
	"CONTACT"         VARCHAR(20)   NULL,     -- 연락처
	"IMG_URL"         VARCHAR(255)  NULL,     -- 이미지URL
	"ACMD_ADDR"       VARCHAR(255)  NULL,     -- 숙박주소
	"ACMD_ALTD"       VARCHAR(255)  NULL,     -- 숙박위도
	"ACMD_LGTD"       VARCHAR(255)  NULL,     -- 숙박경도
	"DIRECTION"       VARCHAR(1000) NULL,     -- 오는길
	"ACMD_AVG_SCORE"  VARCHAR(3)    NULL,     -- 숙박평균점수
	"CITY_UID"        VARCHAR(32)   NULL,     -- 도시UID
	"CRC_NATION_CD"   VARCHAR(2)    NULL,     -- 통화국가코드
	"CANCEL_PLCY_UID" VARCHAR(32)   NULL      -- 취소정책UID
);

-- Accommodation 기본키
CREATE UNIQUE INDEX "PK_Accommodation"
	ON "Accommodation" ( -- Accommodation
		"ACMD_UID" ASC -- 숙박UID
	);

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "PK_Accommodation" -- Accommodation 기본키
		PRIMARY KEY (
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation
COMMENT ON TABLE "Accommodation" IS 'Accommodation';

-- 숙박UID
COMMENT ON COLUMN "Accommodation"."ACMD_UID" IS '숙박UID';

-- 숙박명
COMMENT ON COLUMN "Accommodation"."ACMD_NAME" IS '숙박명';

-- 숙박설명
COMMENT ON COLUMN "Accommodation"."ACMD_DESC" IS '숙박설명';

-- 이메일
COMMENT ON COLUMN "Accommodation"."EMAIL" IS '이메일';

-- 연락처
COMMENT ON COLUMN "Accommodation"."CONTACT" IS '연락처';

-- 이미지URL
COMMENT ON COLUMN "Accommodation"."IMG_URL" IS '이미지URL';

-- 숙박주소
COMMENT ON COLUMN "Accommodation"."ACMD_ADDR" IS '숙박주소';

-- 숙박위도
COMMENT ON COLUMN "Accommodation"."ACMD_ALTD" IS '숙박위도';

-- 숙박경도
COMMENT ON COLUMN "Accommodation"."ACMD_LGTD" IS '숙박경도';

-- 오는길
COMMENT ON COLUMN "Accommodation"."DIRECTION" IS '오는길';

-- 숙박평균점수
COMMENT ON COLUMN "Accommodation"."ACMD_AVG_SCORE" IS '숙박평균점수';

-- 도시UID
COMMENT ON COLUMN "Accommodation"."CITY_UID" IS '도시UID';

-- 통화국가코드
COMMENT ON COLUMN "Accommodation"."CRC_NATION_CD" IS '통화국가코드';

-- 취소정책UID
COMMENT ON COLUMN "Accommodation"."CANCEL_PLCY_UID" IS '취소정책UID';

-- Accommodation 기본키
COMMENT ON INDEX "PK_Accommodation" IS 'Accommodation 기본키';

-- Accommodation 기본키
COMMENT ON CONSTRAINT "Accommodation"."PK_Accommodation" IS 'Accommodation 기본키';

-- Currency
CREATE TABLE "Currency" (
	"CRC_NTL_CD"      VARCHAR(2)   NOT NULL, -- 통화국가코드
	"CRC_NATION_NAME" VARCHAR(100) NULL,     -- 통화국가명
	"CRC_NAME"        VARCHAR(100) NULL,     -- 통화명
	"CRC_UNIT"        VARCHAR(3)   NULL      -- 통화단위
);

-- Currency 기본키
CREATE UNIQUE INDEX "PK_Currency"
	ON "Currency" ( -- Currency
		"CRC_NTL_CD" ASC -- 통화국가코드
	);

-- Currency
ALTER TABLE "Currency"
	ADD
		CONSTRAINT "PK_Currency" -- Currency 기본키
		PRIMARY KEY (
			"CRC_NTL_CD" -- 통화국가코드
		);

-- Currency
COMMENT ON TABLE "Currency" IS 'Currency';

-- 통화국가코드
COMMENT ON COLUMN "Currency"."CRC_NTL_CD" IS '통화국가코드';

-- 통화국가명
COMMENT ON COLUMN "Currency"."CRC_NATION_NAME" IS '통화국가명';

-- 통화명
COMMENT ON COLUMN "Currency"."CRC_NAME" IS '통화명';

-- 통화단위
COMMENT ON COLUMN "Currency"."CRC_UNIT" IS '통화단위';

-- Currency 기본키
COMMENT ON INDEX "PK_Currency" IS 'Currency 기본키';

-- Currency 기본키
COMMENT ON CONSTRAINT "Currency"."PK_Currency" IS 'Currency 기본키';

-- NationCity
CREATE TABLE "NationCity" (
	"CITY_UID"    VARCHAR(32)  NOT NULL, -- 도시UID
	"NATION_CD"   VARCHAR(2)   NULL,     -- 국가코드
	"NATION_NAME" VARCHAR(100) NULL,     -- 국가명
	"CITY_CD"     VARCHAR(2)   NULL,     -- 도시코드
	"CITY_NAME"   VARCHAR(100) NULL      -- 도시명
);

-- NationCity 기본키
CREATE UNIQUE INDEX "PK_NationCity"
	ON "NationCity" ( -- NationCity
		"CITY_UID" ASC -- 도시UID
	);

-- NationCity
ALTER TABLE "NationCity"
	ADD
		CONSTRAINT "PK_NationCity" -- NationCity 기본키
		PRIMARY KEY (
			"CITY_UID" -- 도시UID
		);

-- NationCity
COMMENT ON TABLE "NationCity" IS 'NationCity';

-- 도시UID
COMMENT ON COLUMN "NationCity"."CITY_UID" IS '도시UID';

-- 국가코드
COMMENT ON COLUMN "NationCity"."NATION_CD" IS '국가코드';

-- 국가명
COMMENT ON COLUMN "NationCity"."NATION_NAME" IS '국가명';

-- 도시코드
COMMENT ON COLUMN "NationCity"."CITY_CD" IS '도시코드';

-- 도시명
COMMENT ON COLUMN "NationCity"."CITY_NAME" IS '도시명';

-- NationCity 기본키
COMMENT ON INDEX "PK_NationCity" IS 'NationCity 기본키';

-- NationCity 기본키
COMMENT ON CONSTRAINT "NationCity"."PK_NationCity" IS 'NationCity 기본키';

-- Recommend Spots
CREATE TABLE "RecommendSpots" (
	"ACMD_UID"           VARCHAR(32)   NOT NULL, -- 숙박UID
	"RCMD_PLACE_UID"     VARCHAR(32)   NULL,     -- 추천장소UID
	"RCMD_PLACE_NAME"    VARCHAR(100)  NULL,     -- 추천장소명
	"RCMD_PLACE_DESC"    VARCHAR(1000) NULL,     -- 추천장소설명
	"RCMD_PLACE_IMG_URL" VARCHAR(255)  NULL      -- 추천장소이미지URL
);

-- Recommend Spots 기본키
CREATE UNIQUE INDEX "PK_RecommendSpots"
	ON "RecommendSpots" ( -- Recommend Spots
		"ACMD_UID" ASC -- 숙박UID
	);

-- Recommend Spots
ALTER TABLE "RecommendSpots"
	ADD
		CONSTRAINT "PK_RecommendSpots" -- Recommend Spots 기본키
		PRIMARY KEY (
			"ACMD_UID" -- 숙박UID
		);

-- Recommend Spots
COMMENT ON TABLE "RecommendSpots" IS 'Recommend Spots';

-- 숙박UID
COMMENT ON COLUMN "RecommendSpots"."ACMD_UID" IS '숙박UID';

-- 추천장소UID
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_UID" IS '추천장소UID';

-- 추천장소명
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_NAME" IS '추천장소명';

-- 추천장소설명
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_DESC" IS '추천장소설명';

-- 추천장소이미지URL
COMMENT ON COLUMN "RecommendSpots"."RCMD_PLACE_IMG_URL" IS '추천장소이미지URL';

-- Recommend Spots 기본키
COMMENT ON INDEX "PK_RecommendSpots" IS 'Recommend Spots 기본키';

-- Recommend Spots 기본키
COMMENT ON CONSTRAINT "RecommendSpots"."PK_RecommendSpots" IS 'Recommend Spots 기본키';

-- Room Types
CREATE TABLE "RoomTypes" (
	"ROOM_TYPE_UID"  VARCHAR(32)        NOT NULL, -- 방타입UID
	"ROOM_TYPE_NAME" VARCHAR(100)       NULL,     -- 방타입명
	"ROOM_TYPE_IMG"  <데이터 타입 없음> NULL      -- 방타입이미지
);

-- Room Types 기본키
CREATE UNIQUE INDEX "PK_RoomTypes"
	ON "RoomTypes" ( -- Room Types
		"ROOM_TYPE_UID" ASC -- 방타입UID
	);

-- Room Types
ALTER TABLE "RoomTypes"
	ADD
		CONSTRAINT "PK_RoomTypes" -- Room Types 기본키
		PRIMARY KEY (
			"ROOM_TYPE_UID" -- 방타입UID
		);

-- Room Types
COMMENT ON TABLE "RoomTypes" IS 'Room Types';

-- 방타입UID
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_UID" IS '방타입UID';

-- 방타입명
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_NAME" IS '방타입명';

-- 방타입이미지
COMMENT ON COLUMN "RoomTypes"."ROOM_TYPE_IMG" IS '방타입이미지';

-- Room Types 기본키
COMMENT ON INDEX "PK_RoomTypes" IS 'Room Types 기본키';

-- Room Types 기본키
COMMENT ON CONSTRAINT "RoomTypes"."PK_RoomTypes" IS 'Room Types 기본키';

-- Facilities
CREATE TABLE "Facilities" (
	"FCLT_UID"  VARCHAR(32)  NOT NULL, -- 숙박시설UID
	"FCLT_NAME" VARCHAR(100) NULL,     -- 숙박시설명
	"FCLT_IMG"  VARCHAR(255) NULL      -- 숙박시설이미지
);

-- Facilities 기본키
CREATE UNIQUE INDEX "PK_Facilities"
	ON "Facilities" ( -- Facilities
		"FCLT_UID" ASC -- 숙박시설UID
	);

-- Facilities
ALTER TABLE "Facilities"
	ADD
		CONSTRAINT "PK_Facilities" -- Facilities 기본키
		PRIMARY KEY (
			"FCLT_UID" -- 숙박시설UID
		);

-- Facilities
COMMENT ON TABLE "Facilities" IS 'Facilities';

-- 숙박시설UID
COMMENT ON COLUMN "Facilities"."FCLT_UID" IS '숙박시설UID';

-- 숙박시설명
COMMENT ON COLUMN "Facilities"."FCLT_NAME" IS '숙박시설명';

-- 숙박시설이미지
COMMENT ON COLUMN "Facilities"."FCLT_IMG" IS '숙박시설이미지';

-- Facilities 기본키
COMMENT ON INDEX "PK_Facilities" IS 'Facilities 기본키';

-- Facilities 기본키
COMMENT ON CONSTRAINT "Facilities"."PK_Facilities" IS 'Facilities 기본키';

-- Themes
CREATE TABLE "Themes" (
	"ACMD_THEME_UID"  VARCHAR(32)  NOT NULL, -- 숙박테마UID
	"ACMD_UID"        VARCHAR(32)  NOT NULL, -- 숙박UID
	"ACMD_THEME_NAME" VARCHAR(100) NULL,     -- 숙박테마명
	"ACMD_THEME_IMG"  VARCHAR(255) NULL      -- 숙박테마이미지
);

-- Themes 기본키
CREATE UNIQUE INDEX "PK_Themes"
	ON "Themes" ( -- Themes
		"ACMD_THEME_UID" ASC, -- 숙박테마UID
		"ACMD_UID"       ASC  -- 숙박UID
	);

-- Themes
ALTER TABLE "Themes"
	ADD
		CONSTRAINT "PK_Themes" -- Themes 기본키
		PRIMARY KEY (
			"ACMD_THEME_UID", -- 숙박테마UID
			"ACMD_UID"        -- 숙박UID
		);

-- Themes
COMMENT ON TABLE "Themes" IS 'Themes';

-- 숙박테마UID
COMMENT ON COLUMN "Themes"."ACMD_THEME_UID" IS '숙박테마UID';

-- 숙박UID
COMMENT ON COLUMN "Themes"."ACMD_UID" IS '숙박UID';

-- 숙박테마명
COMMENT ON COLUMN "Themes"."ACMD_THEME_NAME" IS '숙박테마명';

-- 숙박테마이미지
COMMENT ON COLUMN "Themes"."ACMD_THEME_IMG" IS '숙박테마이미지';

-- Themes 기본키
COMMENT ON INDEX "PK_Themes" IS 'Themes 기본키';

-- Themes 기본키
COMMENT ON CONSTRAINT "Themes"."PK_Themes" IS 'Themes 기본키';

-- Special Facilities
CREATE TABLE "SpecialFacilities" (
	"ACMD_UID"          VARCHAR(32)   NOT NULL, -- 숙박UID
	"SPECIAL_FCLT_NAME" VARCHAR(100)  NULL,     -- 특수숙박시설명
	"SPECIAL_FCLT_DESC" VARCHAR(1000) NULL      -- 특수숙박시설설명
);

-- Special Facilities 기본키
CREATE UNIQUE INDEX "PK_SpecialFacilities"
	ON "SpecialFacilities" ( -- Special Facilities
		"ACMD_UID" ASC -- 숙박UID
	);

-- Special Facilities
ALTER TABLE "SpecialFacilities"
	ADD
		CONSTRAINT "PK_SpecialFacilities" -- Special Facilities 기본키
		PRIMARY KEY (
			"ACMD_UID" -- 숙박UID
		);

-- Special Facilities
COMMENT ON TABLE "SpecialFacilities" IS 'Special Facilities';

-- 숙박UID
COMMENT ON COLUMN "SpecialFacilities"."ACMD_UID" IS '숙박UID';

-- 특수숙박시설명
COMMENT ON COLUMN "SpecialFacilities"."SPECIAL_FCLT_NAME" IS '특수숙박시설명';

-- 특수숙박시설설명
COMMENT ON COLUMN "SpecialFacilities"."SPECIAL_FCLT_DESC" IS '특수숙박시설설명';

-- Special Facilities 기본키
COMMENT ON INDEX "PK_SpecialFacilities" IS 'Special Facilities 기본키';

-- Special Facilities 기본키
COMMENT ON CONSTRAINT "SpecialFacilities"."PK_SpecialFacilities" IS 'Special Facilities 기본키';

-- Accommodation Images
CREATE TABLE "AccommodationImages" (
	"ACMD_UID"  VARCHAR(32)  NOT NULL, -- 숙박UID
	"IMG_URL"   VARCHAR(255) NULL,     -- 이미지URL
	"IMG_TITLE" VARCHAR(100) NULL,     -- 이미지제목
	"IMG_NO"    INTEGER      NULL      -- 이미지번호
);

-- Accommodation Images 기본키
CREATE UNIQUE INDEX "PK_AccommodationImages"
	ON "AccommodationImages" ( -- Accommodation Images
		"ACMD_UID" ASC -- 숙박UID
	);

-- Accommodation Images
ALTER TABLE "AccommodationImages"
	ADD
		CONSTRAINT "PK_AccommodationImages" -- Accommodation Images 기본키
		PRIMARY KEY (
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation Images
COMMENT ON TABLE "AccommodationImages" IS 'Accommodation Images';

-- 숙박UID
COMMENT ON COLUMN "AccommodationImages"."ACMD_UID" IS '숙박UID';

-- 이미지URL
COMMENT ON COLUMN "AccommodationImages"."IMG_URL" IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN "AccommodationImages"."IMG_TITLE" IS '이미지제목';

-- 이미지번호
COMMENT ON COLUMN "AccommodationImages"."IMG_NO" IS '이미지번호';

-- Accommodation Images 기본키
COMMENT ON INDEX "PK_AccommodationImages" IS 'Accommodation Images 기본키';

-- Accommodation Images 기본키
COMMENT ON CONSTRAINT "AccommodationImages"."PK_AccommodationImages" IS 'Accommodation Images 기본키';

-- Extra Options
CREATE TABLE "ExtraOptions" (
	"ACMD_UID"        VARCHAR(32)   NOT NULL, -- 숙박UID
	"EXTRA_OPT_UID"   VARCHAR(32)   NOT NULL, -- 추가옵션UID
	"EXTRA_OPT_NAME"  VARCHAR(100)  NULL,     -- 추가옵션명
	"EXTRA_OPT_DESC"  VARCHAR(1000) NULL,     -- 추가옵션설명
	"EXTRA_OPT_PRICE" VARCHAR(10)   NULL,     -- 추가옵션가격
	"CHOICE_MAX_CNT"  VARCHAR(10)   NULL,     -- 선택최대개수
	"VISIT_PAY_YN"    VARCHAR(1)    NULL      -- 방문결제여부
);

-- Extra Options 기본키
CREATE UNIQUE INDEX "PK_ExtraOptions"
	ON "ExtraOptions" ( -- Extra Options
		"ACMD_UID"      ASC, -- 숙박UID
		"EXTRA_OPT_UID" ASC  -- 추가옵션UID
	);

-- Extra Options
ALTER TABLE "ExtraOptions"
	ADD
		CONSTRAINT "PK_ExtraOptions" -- Extra Options 기본키
		PRIMARY KEY (
			"ACMD_UID",      -- 숙박UID
			"EXTRA_OPT_UID"  -- 추가옵션UID
		);

-- Extra Options
COMMENT ON TABLE "ExtraOptions" IS 'Extra Options';

-- 숙박UID
COMMENT ON COLUMN "ExtraOptions"."ACMD_UID" IS '숙박UID';

-- 추가옵션UID
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_UID" IS '추가옵션UID';

-- 추가옵션명
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_NAME" IS '추가옵션명';

-- 추가옵션설명
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_DESC" IS '추가옵션설명';

-- 추가옵션가격
COMMENT ON COLUMN "ExtraOptions"."EXTRA_OPT_PRICE" IS '추가옵션가격';

-- 선택최대개수
COMMENT ON COLUMN "ExtraOptions"."CHOICE_MAX_CNT" IS '선택최대개수';

-- 방문결제여부
COMMENT ON COLUMN "ExtraOptions"."VISIT_PAY_YN" IS '방문결제여부';

-- Extra Options 기본키
COMMENT ON INDEX "PK_ExtraOptions" IS 'Extra Options 기본키';

-- Extra Options 기본키
COMMENT ON CONSTRAINT "ExtraOptions"."PK_ExtraOptions" IS 'Extra Options 기본키';

-- Policies
CREATE TABLE "Policies" (
	"ACMD_UID"           VARCHAR(32)   NOT NULL, -- 숙박UID
	"CHKIN_TIME"         VARCHAR(5)    NULL,     -- 체크인시간
	"CHKOUT_TIME"        VARCHAR(5)    NULL,     -- 체크아웃시간
	"IMMDT_CFRM_YN"      VARCHAR(1)    NULL,     -- 즉석확인여부
	"CFRM_REQ_TIME"      VARCHAR(5)    NULL,     -- 확인필요시간
	"CFRM_REQ_TIME_MSG"  VARCHAR(1000) NULL,     -- 확인필요시간메시지
	"RSRV_ABLE_DAYS"     VARCHAR(10)   NULL,     -- 예약가능일수
	"RSRV_ABLE_DAYS_MSG" VARCHAR(1000) NULL      -- 예약가능일수메시지
);

-- Policies 기본키
CREATE UNIQUE INDEX "PK_Policies"
	ON "Policies" ( -- Policies
		"ACMD_UID" ASC -- 숙박UID
	);

-- Policies
ALTER TABLE "Policies"
	ADD
		CONSTRAINT "PK_Policies" -- Policies 기본키
		PRIMARY KEY (
			"ACMD_UID" -- 숙박UID
		);

-- Policies
COMMENT ON TABLE "Policies" IS 'Policies';

-- 숙박UID
COMMENT ON COLUMN "Policies"."ACMD_UID" IS '숙박UID';

-- 체크인시간
COMMENT ON COLUMN "Policies"."CHKIN_TIME" IS '체크인시간';

-- 체크아웃시간
COMMENT ON COLUMN "Policies"."CHKOUT_TIME" IS '체크아웃시간';

-- 즉석확인여부
COMMENT ON COLUMN "Policies"."IMMDT_CFRM_YN" IS '즉석확인여부';

-- 확인필요시간
COMMENT ON COLUMN "Policies"."CFRM_REQ_TIME" IS '확인필요시간';

-- 확인필요시간메시지
COMMENT ON COLUMN "Policies"."CFRM_REQ_TIME_MSG" IS '확인필요시간메시지';

-- 예약가능일수
COMMENT ON COLUMN "Policies"."RSRV_ABLE_DAYS" IS '예약가능일수';

-- 예약가능일수메시지
COMMENT ON COLUMN "Policies"."RSRV_ABLE_DAYS_MSG" IS '예약가능일수메시지';

-- Policies 기본키
COMMENT ON INDEX "PK_Policies" IS 'Policies 기본키';

-- Policies 기본키
COMMENT ON CONSTRAINT "Policies"."PK_Policies" IS 'Policies 기본키';

-- Cancel Policy
CREATE TABLE "CancelPolicy" (
	"COL"              VARCHAR(32)   NOT NULL, -- 취소정책UID
	"CANCEL_PLCY_NAME" VARCHAR(100)  NULL,     -- 취소정책명
	"CANCEL_PLCY_DESC" VARCHAR(1000) NULL      -- 취소정책설명
);

-- Cancel Policy 기본키
CREATE UNIQUE INDEX "PK_CancelPolicy"
	ON "CancelPolicy" ( -- Cancel Policy
		"COL" ASC -- 취소정책UID
	);

-- Cancel Policy
ALTER TABLE "CancelPolicy"
	ADD
		CONSTRAINT "PK_CancelPolicy" -- Cancel Policy 기본키
		PRIMARY KEY (
			"COL" -- 취소정책UID
		);

-- Cancel Policy
COMMENT ON TABLE "CancelPolicy" IS 'Cancel Policy';

-- 취소정책UID
COMMENT ON COLUMN "CancelPolicy"."COL" IS '취소정책UID';

-- 취소정책명
COMMENT ON COLUMN "CancelPolicy"."CANCEL_PLCY_NAME" IS '취소정책명';

-- 취소정책설명
COMMENT ON COLUMN "CancelPolicy"."CANCEL_PLCY_DESC" IS '취소정책설명';

-- Cancel Policy 기본키
COMMENT ON INDEX "PK_CancelPolicy" IS 'Cancel Policy 기본키';

-- Cancel Policy 기본키
COMMENT ON CONSTRAINT "CancelPolicy"."PK_CancelPolicy" IS 'Cancel Policy 기본키';

-- Policy Options
CREATE TABLE "PolicyOptions" (
	"COL3"          VARCHAR(32)   NOT NULL, -- 정책옵션UID
	"PLCY_OPT_NAME" VARCHAR(100)  NULL,     -- 정책옵션명
	"PLCY_OPT_DESC" VARCHAR(1000) NULL      -- 정책옵션설명
);

-- Policy Options 기본키
CREATE UNIQUE INDEX "PK_PolicyOptions"
	ON "PolicyOptions" ( -- Policy Options
		"COL3" ASC -- 정책옵션UID
	);

-- Policy Options
ALTER TABLE "PolicyOptions"
	ADD
		CONSTRAINT "PK_PolicyOptions" -- Policy Options 기본키
		PRIMARY KEY (
			"COL3" -- 정책옵션UID
		);

-- Policy Options
COMMENT ON TABLE "PolicyOptions" IS 'Policy Options';

-- 정책옵션UID
COMMENT ON COLUMN "PolicyOptions"."COL3" IS '정책옵션UID';

-- 정책옵션명
COMMENT ON COLUMN "PolicyOptions"."PLCY_OPT_NAME" IS '정책옵션명';

-- 정책옵션설명
COMMENT ON COLUMN "PolicyOptions"."PLCY_OPT_DESC" IS '정책옵션설명';

-- Policy Options 기본키
COMMENT ON INDEX "PK_PolicyOptions" IS 'Policy Options 기본키';

-- Policy Options 기본키
COMMENT ON CONSTRAINT "PolicyOptions"."PK_PolicyOptions" IS 'Policy Options 기본키';

-- Reviews
CREATE TABLE "Reviews" (
	"REVIEW_UID"   VARCHAR(32)   NOT NULL, -- 리뷰UID
	"ACMD_UID"     VARCHAR(32)   NOT NULL, -- 숙박UID
	"REVIEW_CTNT"  VARCHAR(1000) NULL,     -- 리뷰내용
	"USER_ID"      VARCHAR(40)   NULL,     -- 사용자ID
	"WRITE_DTTM"   VARCHAR(20)   NULL,     -- 작성일시
	"REVIEW_SCORE" VARCHAR(3)    NULL      -- 리뷰점수
);

-- Reviews 기본키
CREATE UNIQUE INDEX "PK_Reviews"
	ON "Reviews" ( -- Reviews
		"REVIEW_UID" ASC, -- 리뷰UID
		"ACMD_UID"   ASC  -- 숙박UID
	);

-- Reviews
ALTER TABLE "Reviews"
	ADD
		CONSTRAINT "PK_Reviews" -- Reviews 기본키
		PRIMARY KEY (
			"REVIEW_UID", -- 리뷰UID
			"ACMD_UID"    -- 숙박UID
		);

-- Reviews
COMMENT ON TABLE "Reviews" IS 'Reviews';

-- 리뷰UID
COMMENT ON COLUMN "Reviews"."REVIEW_UID" IS '리뷰UID';

-- 숙박UID
COMMENT ON COLUMN "Reviews"."ACMD_UID" IS '숙박UID';

-- 리뷰내용
COMMENT ON COLUMN "Reviews"."REVIEW_CTNT" IS '리뷰내용';

-- 사용자ID
COMMENT ON COLUMN "Reviews"."USER_ID" IS '사용자ID';

-- 작성일시
COMMENT ON COLUMN "Reviews"."WRITE_DTTM" IS '작성일시';

-- 리뷰점수
COMMENT ON COLUMN "Reviews"."REVIEW_SCORE" IS '리뷰점수';

-- Reviews 기본키
COMMENT ON INDEX "PK_Reviews" IS 'Reviews 기본키';

-- Reviews 기본키
COMMENT ON CONSTRAINT "Reviews"."PK_Reviews" IS 'Reviews 기본키';

-- Rooms
CREATE TABLE "Rooms" (
	"ROOM_UID"           VARCHAR(32)   NOT NULL, -- 방UID
	"ROOM_NAME"          VARCHAR(100)  NULL,     -- 방명
	"ROOM_DESC"          VARCHAR(1000) NULL,     -- 방설명
	"IMG_URL"            VARCHAR(255)  NULL,     -- 이미지URL
	"SITE_TYPE_UID"      VARCHAR(32)   NULL,     -- 사이트타입UID
	"ROOM_CNT"           VARCHAR(10)   NULL,     -- 방개수
	"MAX_PPL_CNT"        VARCHAR(10)   NULL,     -- 최대인원수
	"EXTRA_PPL_CNT"      VARCHAR(10)   NULL,     -- 추가인원수
	"ADULT_EXTRA_PRICE"  VARCHAR(10)   NULL,     -- 성인추가가격
	"CHILD_EXTRA_PRICE"  VARCHAR(10)   NULL,     -- 아동추가가격
	"INFANT_EXTRA_PRICE" VARCHAR(10)   NULL,     -- 유아추가가격
	"MIN_ACMD_DAYS"      VARCHAR(10)   NULL,     -- 최소숙박일수
	"BED_CNT"            VARCHAR(10)   NULL,     -- 침대개수
	"ROOM_SIZE"          INTEGER       NULL,     -- 방사이즈
	"ACMD_UID"           VARCHAR(32)   NULL,     -- 숙박UID
	"ROOM_TYPE_UID"      VARCHAR(32)   NULL      -- 방타입UID
);

-- Rooms 기본키
CREATE UNIQUE INDEX "PK_Rooms"
	ON "Rooms" ( -- Rooms
		"ROOM_UID" ASC -- 방UID
	);

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "PK_Rooms" -- Rooms 기본키
		PRIMARY KEY (
			"ROOM_UID" -- 방UID
		);

-- Rooms
COMMENT ON TABLE "Rooms" IS 'Rooms';

-- 방UID
COMMENT ON COLUMN "Rooms"."ROOM_UID" IS '방UID';

-- 방명
COMMENT ON COLUMN "Rooms"."ROOM_NAME" IS '방명';

-- 방설명
COMMENT ON COLUMN "Rooms"."ROOM_DESC" IS '방설명';

-- 이미지URL
COMMENT ON COLUMN "Rooms"."IMG_URL" IS '이미지URL';

-- 사이트타입UID
COMMENT ON COLUMN "Rooms"."SITE_TYPE_UID" IS '사이트타입UID';

-- 방개수
COMMENT ON COLUMN "Rooms"."ROOM_CNT" IS '방개수';

-- 최대인원수
COMMENT ON COLUMN "Rooms"."MAX_PPL_CNT" IS '최대인원수';

-- 추가인원수
COMMENT ON COLUMN "Rooms"."EXTRA_PPL_CNT" IS '추가인원수';

-- 성인추가가격
COMMENT ON COLUMN "Rooms"."ADULT_EXTRA_PRICE" IS '성인추가가격';

-- 아동추가가격
COMMENT ON COLUMN "Rooms"."CHILD_EXTRA_PRICE" IS '아동추가가격';

-- 유아추가가격
COMMENT ON COLUMN "Rooms"."INFANT_EXTRA_PRICE" IS '유아추가가격';

-- 최소숙박일수
COMMENT ON COLUMN "Rooms"."MIN_ACMD_DAYS" IS '최소숙박일수';

-- 침대개수
COMMENT ON COLUMN "Rooms"."BED_CNT" IS '침대개수';

-- 방사이즈
COMMENT ON COLUMN "Rooms"."ROOM_SIZE" IS 'UNIT = SQUARE METER';

-- 숙박UID
COMMENT ON COLUMN "Rooms"."ACMD_UID" IS '숙박UID';

-- 방타입UID
COMMENT ON COLUMN "Rooms"."ROOM_TYPE_UID" IS '방타입UID';

-- Rooms 기본키
COMMENT ON INDEX "PK_Rooms" IS 'Rooms 기본키';

-- Rooms 기본키
COMMENT ON CONSTRAINT "Rooms"."PK_Rooms" IS 'Rooms 기본키';

-- Room Images
CREATE TABLE "RoomImages" (
	"IMG_UID"   VARCHAR(32)  NOT NULL, -- 이미지UID
	"ROOM_UID"  VARCHAR(32)  NOT NULL, -- 방UID
	"IMG_URL"   VARCHAR(255) NULL,     -- 이미지URL
	"IMG_TITLE" VARCHAR(100) NULL      -- 이미지제목
);

-- Room Images 기본키
CREATE UNIQUE INDEX "PK_RoomImages"
	ON "RoomImages" ( -- Room Images
		"IMG_UID"  ASC, -- 이미지UID
		"ROOM_UID" ASC  -- 방UID
	);

-- Room Images
ALTER TABLE "RoomImages"
	ADD
		CONSTRAINT "PK_RoomImages" -- Room Images 기본키
		PRIMARY KEY (
			"IMG_UID",  -- 이미지UID
			"ROOM_UID"  -- 방UID
		);

-- Room Images
COMMENT ON TABLE "RoomImages" IS 'Room Images';

-- 이미지UID
COMMENT ON COLUMN "RoomImages"."IMG_UID" IS '이미지UID';

-- 방UID
COMMENT ON COLUMN "RoomImages"."ROOM_UID" IS '방UID';

-- 이미지URL
COMMENT ON COLUMN "RoomImages"."IMG_URL" IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN "RoomImages"."IMG_TITLE" IS '이미지제목';

-- Room Images 기본키
COMMENT ON INDEX "PK_RoomImages" IS 'Room Images 기본키';

-- Room Images 기본키
COMMENT ON CONSTRAINT "RoomImages"."PK_RoomImages" IS 'Room Images 기본키';

-- Amenities
CREATE TABLE "Amenities" (
	"AMNY_UID"  VARCHAR(32)        NOT NULL, -- 편의시설UID
	"AMNY_NAME" VARCHAR(100)       NOT NULL, -- 편의시설명
	"AMNY_IMG"  <데이터 타입 없음> NULL      -- 편의시설이미지
);

-- Amenities 기본키
CREATE UNIQUE INDEX "PK_Amenities"
	ON "Amenities" ( -- Amenities
		"AMNY_UID" ASC -- 편의시설UID
	);

-- Amenities
ALTER TABLE "Amenities"
	ADD
		CONSTRAINT "PK_Amenities" -- Amenities 기본키
		PRIMARY KEY (
			"AMNY_UID" -- 편의시설UID
		);

-- Amenities
COMMENT ON TABLE "Amenities" IS 'Amenities';

-- 편의시설UID
COMMENT ON COLUMN "Amenities"."AMNY_UID" IS '편의시설UID';

-- 편의시설명
COMMENT ON COLUMN "Amenities"."AMNY_NAME" IS '편의시설명';

-- 편의시설이미지
COMMENT ON COLUMN "Amenities"."AMNY_IMG" IS '편의시설이미지';

-- Amenities 기본키
COMMENT ON INDEX "PK_Amenities" IS 'Amenities 기본키';

-- Amenities 기본키
COMMENT ON CONSTRAINT "Amenities"."PK_Amenities" IS 'Amenities 기본키';

-- Accommodation Facilities Relation
CREATE TABLE "AccommodationFacilitiesRel" (
	"ACMD_UID" VARCHAR(32) NOT NULL, -- 숙박UID
	"FCLT_UID" VARCHAR(32) NOT NULL  -- 숙박시설UID
);

-- Accommodation Facilities Relation 기본키
CREATE UNIQUE INDEX "PK_AccommodationFacilitiesRel"
	ON "AccommodationFacilitiesRel" ( -- Accommodation Facilities Relation
		"ACMD_UID" ASC, -- 숙박UID
		"FCLT_UID" ASC  -- 숙박시설UID
	);

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "PK_AccommodationFacilitiesRel" -- Accommodation Facilities Relation 기본키
		PRIMARY KEY (
			"ACMD_UID", -- 숙박UID
			"FCLT_UID"  -- 숙박시설UID
		);

-- Accommodation Facilities Relation
COMMENT ON TABLE "AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation';

-- 숙박UID
COMMENT ON COLUMN "AccommodationFacilitiesRel"."ACMD_UID" IS '숙박UID';

-- 숙박시설UID
COMMENT ON COLUMN "AccommodationFacilitiesRel"."FCLT_UID" IS '숙박시설UID';

-- Accommodation Facilities Relation 기본키
COMMENT ON INDEX "PK_AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation 기본키';

-- Accommodation Facilities Relation 기본키
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."PK_AccommodationFacilitiesRel" IS 'Accommodation Facilities Relation 기본키';

-- Room Amenities
CREATE TABLE "RoomAmenities" (
	"ROOM_UID" VARCHAR(32) NOT NULL, -- 방UID
	"AMNY_UID" VARCHAR(32) NOT NULL  -- 편의시설UID
);

-- Room Amenities 기본키
CREATE UNIQUE INDEX "PK_RoomAmenities"
	ON "RoomAmenities" ( -- Room Amenities
		"ROOM_UID" ASC, -- 방UID
		"AMNY_UID" ASC  -- 편의시설UID
	);

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "PK_RoomAmenities" -- Room Amenities 기본키
		PRIMARY KEY (
			"ROOM_UID", -- 방UID
			"AMNY_UID"  -- 편의시설UID
		);

-- Room Amenities
COMMENT ON TABLE "RoomAmenities" IS 'Room Amenities';

-- 방UID
COMMENT ON COLUMN "RoomAmenities"."ROOM_UID" IS '방UID';

-- 편의시설UID
COMMENT ON COLUMN "RoomAmenities"."AMNY_UID" IS '편의시설UID';

-- Room Amenities 기본키
COMMENT ON INDEX "PK_RoomAmenities" IS 'Room Amenities 기본키';

-- Room Amenities 기본키
COMMENT ON CONSTRAINT "RoomAmenities"."PK_RoomAmenities" IS 'Room Amenities 기본키';

-- Special Amenities
CREATE TABLE "SpecialAmenities" (
	"ROOM_UID"          VARCHAR(32)   NOT NULL, -- 방UID
	"SPECIAL_AMNY_NAME" VARCHAR(100)  NULL,     -- 특수편의시설명
	"SPECIAL_AMNY_DESC" VARCHAR(1000) NULL      -- 특수편의시설설명
);

-- Special Amenities 기본키
CREATE UNIQUE INDEX "PK_SpecialAmenities"
	ON "SpecialAmenities" ( -- Special Amenities
		"ROOM_UID" ASC -- 방UID
	);

-- Special Amenities
ALTER TABLE "SpecialAmenities"
	ADD
		CONSTRAINT "PK_SpecialAmenities" -- Special Amenities 기본키
		PRIMARY KEY (
			"ROOM_UID" -- 방UID
		);

-- Special Amenities
COMMENT ON TABLE "SpecialAmenities" IS 'Special Amenities';

-- 방UID
COMMENT ON COLUMN "SpecialAmenities"."ROOM_UID" IS '방UID';

-- 특수편의시설명
COMMENT ON COLUMN "SpecialAmenities"."SPECIAL_AMNY_NAME" IS '특수편의시설명';

-- 특수편의시설설명
COMMENT ON COLUMN "SpecialAmenities"."SPECIAL_AMNY_DESC" IS '특수편의시설설명';

-- Special Amenities 기본키
COMMENT ON INDEX "PK_SpecialAmenities" IS 'Special Amenities 기본키';

-- Special Amenities 기본키
COMMENT ON CONSTRAINT "SpecialAmenities"."PK_SpecialAmenities" IS 'Special Amenities 기본키';

-- Default Room Price
CREATE TABLE "DfltRoomPrice" (
	"ROOM_UID"      VARCHAR(32) NOT NULL, -- 방UID
	"SEASON_CAT_CD" VARCHAR(2)  NOT NULL, -- 시즌구분코드
	"SUN_PRICE"     VARCHAR(10) NULL,     -- 일요일가격
	"MON_PRICE"     VARCHAR(10) NULL,     -- 월요일가격
	"TUE_PRICE"     VARCHAR(10) NULL,     -- 화요일가격
	"WED_PRICE"     VARCHAR(10) NULL,     -- 수요일가격
	"THU_PRICE"     VARCHAR(10) NULL,     -- 목요일가격
	"FRI_PRICE"     VARCHAR(10) NULL,     -- 금요일가격
	"SAT_PRICE"     VARCHAR(10) NULL      -- 토요일가격
);

-- Default Room Price 기본키
CREATE UNIQUE INDEX "PK_DfltRoomPrice"
	ON "DfltRoomPrice" ( -- Default Room Price
		"ROOM_UID"      ASC, -- 방UID
		"SEASON_CAT_CD" ASC  -- 시즌구분코드
	);

-- Default Room Price
ALTER TABLE "DfltRoomPrice"
	ADD
		CONSTRAINT "PK_DfltRoomPrice" -- Default Room Price 기본키
		PRIMARY KEY (
			"ROOM_UID",      -- 방UID
			"SEASON_CAT_CD"  -- 시즌구분코드
		);

-- Default Room Price
COMMENT ON TABLE "DfltRoomPrice" IS 'Default Room Price';

-- 방UID
COMMENT ON COLUMN "DfltRoomPrice"."ROOM_UID" IS '방UID';

-- 시즌구분코드
COMMENT ON COLUMN "DfltRoomPrice"."SEASON_CAT_CD" IS '시즌구분코드';

-- 일요일가격
COMMENT ON COLUMN "DfltRoomPrice"."SUN_PRICE" IS '일요일가격';

-- 월요일가격
COMMENT ON COLUMN "DfltRoomPrice"."MON_PRICE" IS '월요일가격';

-- 화요일가격
COMMENT ON COLUMN "DfltRoomPrice"."TUE_PRICE" IS '화요일가격';

-- 수요일가격
COMMENT ON COLUMN "DfltRoomPrice"."WED_PRICE" IS '수요일가격';

-- 목요일가격
COMMENT ON COLUMN "DfltRoomPrice"."THU_PRICE" IS '목요일가격';

-- 금요일가격
COMMENT ON COLUMN "DfltRoomPrice"."FRI_PRICE" IS '금요일가격';

-- 토요일가격
COMMENT ON COLUMN "DfltRoomPrice"."SAT_PRICE" IS '토요일가격';

-- Default Room Price 기본키
COMMENT ON INDEX "PK_DfltRoomPrice" IS 'Default Room Price 기본키';

-- Default Room Price 기본키
COMMENT ON CONSTRAINT "DfltRoomPrice"."PK_DfltRoomPrice" IS 'Default Room Price 기본키';

-- Accomodation PolicyOption Relation
CREATE TABLE "AccomodationPolicyOptionRel" (
	"ACMD_UID"     VARCHAR(32) NOT NULL, -- 숙박UID
	"PLCY_OPT_UID" VARCHAR(32) NOT NULL  -- 정책옵션UID
);

-- Accomodation PolicyOption Relation 기본키
CREATE UNIQUE INDEX "PK_AccomodationPolicyOptionRel"
	ON "AccomodationPolicyOptionRel" ( -- Accomodation PolicyOption Relation
		"ACMD_UID"     ASC, -- 숙박UID
		"PLCY_OPT_UID" ASC  -- 정책옵션UID
	);

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "PK_AccomodationPolicyOptionRel" -- Accomodation PolicyOption Relation 기본키
		PRIMARY KEY (
			"ACMD_UID",     -- 숙박UID
			"PLCY_OPT_UID"  -- 정책옵션UID
		);

-- Accomodation PolicyOption Relation
COMMENT ON TABLE "AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation';

-- 숙박UID
COMMENT ON COLUMN "AccomodationPolicyOptionRel"."ACMD_UID" IS '숙박UID';

-- 정책옵션UID
COMMENT ON COLUMN "AccomodationPolicyOptionRel"."PLCY_OPT_UID" IS '정책옵션UID';

-- Accomodation PolicyOption Relation 기본키
COMMENT ON INDEX "PK_AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation 기본키';

-- Accomodation PolicyOption Relation 기본키
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."PK_AccomodationPolicyOptionRel" IS 'Accomodation PolicyOption Relation 기본키';

-- Site Types
CREATE TABLE "SiteTypes" (
	"SITE_TYPE_UID"  VARCHAR(32)  NOT NULL, -- 사이트타입UID
	"SITE_TYPE_NAME" VARCHAR(100) NULL      -- 사이트타입명
);

-- Site Types 기본키
CREATE UNIQUE INDEX "PK_SiteTypes"
	ON "SiteTypes" ( -- Site Types
		"SITE_TYPE_UID" ASC -- 사이트타입UID
	);

-- Site Types
ALTER TABLE "SiteTypes"
	ADD
		CONSTRAINT "PK_SiteTypes" -- Site Types 기본키
		PRIMARY KEY (
			"SITE_TYPE_UID" -- 사이트타입UID
		);

-- Site Types
COMMENT ON TABLE "SiteTypes" IS 'Site Types';

-- 사이트타입UID
COMMENT ON COLUMN "SiteTypes"."SITE_TYPE_UID" IS '사이트타입UID';

-- 사이트타입명
COMMENT ON COLUMN "SiteTypes"."SITE_TYPE_NAME" IS '사이트타입명';

-- Site Types 기본키
COMMENT ON INDEX "PK_SiteTypes" IS 'Site Types 기본키';

-- Site Types 기본키
COMMENT ON CONSTRAINT "SiteTypes"."PK_SiteTypes" IS 'Site Types 기본키';

-- Discount Rates
CREATE TABLE "DiscountRates" (
	"ROOM_UID"                VARCHAR(32) NOT NULL, -- 방UID
	"DISCOUNT_TYPE_CD"        VARCHAR(2)  NOT NULL, -- 할인타입코드
	"DISCOUNT_RATE"           INTEGER     NULL,     -- 할인률
	"DISCOUNT_START_DATE"     VARCHAR(10) NULL,     -- 할인시작일자
	"DISCOUNT_END_DATE"       VARCHAR(10) NULL,     -- 할인종료일자
	"DISCOUNT_APPLY_WEEK_DAY" VARCHAR(13) NULL      -- 할인적용요일
);

-- Discount Rates 기본키
CREATE UNIQUE INDEX "PK_DiscountRates"
	ON "DiscountRates" ( -- Discount Rates
		"ROOM_UID"         ASC, -- 방UID
		"DISCOUNT_TYPE_CD" ASC  -- 할인타입코드
	);

-- Discount Rates
ALTER TABLE "DiscountRates"
	ADD
		CONSTRAINT "PK_DiscountRates" -- Discount Rates 기본키
		PRIMARY KEY (
			"ROOM_UID",         -- 방UID
			"DISCOUNT_TYPE_CD"  -- 할인타입코드
		);

-- Discount Rates
COMMENT ON TABLE "DiscountRates" IS 'Discount Rates';

-- 방UID
COMMENT ON COLUMN "DiscountRates"."ROOM_UID" IS '방UID';

-- 할인타입코드
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_TYPE_CD" IS '할인타입코드';

-- 할인률
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_RATE" IS '할인률';

-- 할인시작일자
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_START_DATE" IS '할인시작일자';

-- 할인종료일자
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_END_DATE" IS '할인종료일자';

-- 할인적용요일
COMMENT ON COLUMN "DiscountRates"."DISCOUNT_APPLY_WEEK_DAY" IS '할인적용요일';

-- Discount Rates 기본키
COMMENT ON INDEX "PK_DiscountRates" IS 'Discount Rates 기본키';

-- Discount Rates 기본키
COMMENT ON CONSTRAINT "DiscountRates"."PK_DiscountRates" IS 'Discount Rates 기본키';

-- Season
CREATE TABLE "Season" (
	"ACMD_UID"          VARCHAR(32) NOT NULL, -- 숙박UID
	"SEASON_CD"         VARCHAR(2)  NOT NULL, -- 시즌코드
	"SEASON_START_DATE" VARCHAR(10) NULL,     -- 시즌시작일자
	"SEASON_END_DATE"   VARCHAR(10) NULL      -- 시즌종료일자
);

-- Season 기본키
CREATE UNIQUE INDEX "PK_Season"
	ON "Season" ( -- Season
		"ACMD_UID"  ASC, -- 숙박UID
		"SEASON_CD" ASC  -- 시즌코드
	);

-- Season
ALTER TABLE "Season"
	ADD
		CONSTRAINT "PK_Season" -- Season 기본키
		PRIMARY KEY (
			"ACMD_UID",  -- 숙박UID
			"SEASON_CD"  -- 시즌코드
		);

-- Season
COMMENT ON TABLE "Season" IS 'Season';

-- 숙박UID
COMMENT ON COLUMN "Season"."ACMD_UID" IS '숙박UID';

-- 시즌코드
COMMENT ON COLUMN "Season"."SEASON_CD" IS '시즌코드';

-- 시즌시작일자
COMMENT ON COLUMN "Season"."SEASON_START_DATE" IS '시즌시작일자';

-- 시즌종료일자
COMMENT ON COLUMN "Season"."SEASON_END_DATE" IS '시즌종료일자';

-- Season 기본키
COMMENT ON INDEX "PK_Season" IS 'Season 기본키';

-- Season 기본키
COMMENT ON CONSTRAINT "Season"."PK_Season" IS 'Season 기본키';

-- Activity
CREATE TABLE "Activity" (
	"ACTV_UID"      VARCHAR(32)   NOT NULL, -- 액티비티UID
	"ACTV_NAME"     VARCHAR(100)  NULL,     -- 액티비티명
	"CITY_UID"      VARCHAR(32)   NULL,     -- 도시UID
	"EMAIL"         VARCHAR(100)  NULL,     -- 이메일
	"CONTACT"       VARCHAR(30)   NULL,     -- 연락처
	"IMG_URL"       VARCHAR(255)  NULL,     -- 이미지URL
	"VIDEO_URL"     VARCHAR(255)  NULL,     -- 비디오URL
	"CRC_NATION_CD" VARCHAR(2)    NULL,     -- 통화국가코드
	"DURATION"      VARCHAR(5)    NULL,     -- 소요시간
	"ACTV_ADDR"     VARCHAR(255)  NULL,     -- 액티비티주소
	"ACTV_ALTD"     VARCHAR(255)  NULL,     -- 액티비티위도
	"ACTV_LGTD"     VARCHAR(255)  NULL,     -- 액티비티경도
	"DIRECTION"     VARCHAR(1000) NULL      -- 오는길
);

-- Activity 기본키
CREATE UNIQUE INDEX "PK_Activity"
	ON "Activity" ( -- Activity
		"ACTV_UID" ASC -- 액티비티UID
	);

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "PK_Activity" -- Activity 기본키
		PRIMARY KEY (
			"ACTV_UID" -- 액티비티UID
		);

-- Activity
COMMENT ON TABLE "Activity" IS 'Activity';

-- 액티비티UID
COMMENT ON COLUMN "Activity"."ACTV_UID" IS '액티비티UID';

-- 액티비티명
COMMENT ON COLUMN "Activity"."ACTV_NAME" IS '액티비티명';

-- 도시UID
COMMENT ON COLUMN "Activity"."CITY_UID" IS '도시UID';

-- 이메일
COMMENT ON COLUMN "Activity"."EMAIL" IS '이메일';

-- 연락처
COMMENT ON COLUMN "Activity"."CONTACT" IS '연락처';

-- 이미지URL
COMMENT ON COLUMN "Activity"."IMG_URL" IS '이미지URL';

-- 비디오URL
COMMENT ON COLUMN "Activity"."VIDEO_URL" IS '비디오URL';

-- 통화국가코드
COMMENT ON COLUMN "Activity"."CRC_NATION_CD" IS '통화국가코드';

-- 소요시간
COMMENT ON COLUMN "Activity"."DURATION" IS '소요시간';

-- 액티비티주소
COMMENT ON COLUMN "Activity"."ACTV_ADDR" IS '액티비티주소';

-- 액티비티위도
COMMENT ON COLUMN "Activity"."ACTV_ALTD" IS '액티비티위도';

-- 액티비티경도
COMMENT ON COLUMN "Activity"."ACTV_LGTD" IS '액티비티경도';

-- 오는길
COMMENT ON COLUMN "Activity"."DIRECTION" IS '오는길';

-- Activity 기본키
COMMENT ON INDEX "PK_Activity" IS 'Activity 기본키';

-- Activity 기본키
COMMENT ON CONSTRAINT "Activity"."PK_Activity" IS 'Activity 기본키';

-- Acvity Types
CREATE TABLE "ActivityTypes" (
	"ACTV_TYPE_UID"  VARCHAR(32)        NOT NULL, -- 액티비티타입UID
	"ACTV_TYPE_NAME" VARCHAR(100)       NULL,     -- 액티비티타입명
	"ACTV_TYPE_IMG"  <데이터 타입 없음> NULL      -- 액티비티타입이미지
);

-- Acvity Types 기본키
CREATE UNIQUE INDEX "PK_ActivityTypes"
	ON "ActivityTypes" ( -- Acvity Types
		"ACTV_TYPE_UID" ASC -- 액티비티타입UID
	);

-- Acvity Types
ALTER TABLE "ActivityTypes"
	ADD
		CONSTRAINT "PK_ActivityTypes" -- Acvity Types 기본키
		PRIMARY KEY (
			"ACTV_TYPE_UID" -- 액티비티타입UID
		);

-- Acvity Types
COMMENT ON TABLE "ActivityTypes" IS 'Acvity Types';

-- 액티비티타입UID
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_UID" IS '액티비티타입UID';

-- 액티비티타입명
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_NAME" IS '액티비티타입명';

-- 액티비티타입이미지
COMMENT ON COLUMN "ActivityTypes"."ACTV_TYPE_IMG" IS '액티비티타입이미지';

-- Acvity Types 기본키
COMMENT ON INDEX "PK_ActivityTypes" IS 'Acvity Types 기본키';

-- Acvity Types 기본키
COMMENT ON CONSTRAINT "ActivityTypes"."PK_ActivityTypes" IS 'Acvity Types 기본키';

-- Daily Room Price
CREATE TABLE "DailyRoomPrice" (
	"ROOM_UID"  VARCHAR(32) NOT NULL, -- 방UID
	"ACMD_DATE" VARCHAR(10) NOT NULL  -- 숙박일자
);

-- Daily Room Price 기본키
CREATE UNIQUE INDEX "PK_DailyRoomPrice"
	ON "DailyRoomPrice" ( -- Daily Room Price
		"ROOM_UID"  ASC, -- 방UID
		"ACMD_DATE" ASC  -- 숙박일자
	);

-- Daily Room Price
ALTER TABLE "DailyRoomPrice"
	ADD
		CONSTRAINT "PK_DailyRoomPrice" -- Daily Room Price 기본키
		PRIMARY KEY (
			"ROOM_UID",  -- 방UID
			"ACMD_DATE"  -- 숙박일자
		);

-- Daily Room Price
COMMENT ON TABLE "DailyRoomPrice" IS 'Daily Room Price';

-- 방UID
COMMENT ON COLUMN "DailyRoomPrice"."ROOM_UID" IS '방UID';

-- 숙박일자
COMMENT ON COLUMN "DailyRoomPrice"."ACMD_DATE" IS '숙박일자';

-- Daily Room Price 기본키
COMMENT ON INDEX "PK_DailyRoomPrice" IS 'Daily Room Price 기본키';

-- Daily Room Price 기본키
COMMENT ON CONSTRAINT "DailyRoomPrice"."PK_DailyRoomPrice" IS 'Daily Room Price 기본키';

-- Daily Room Info
CREATE TABLE "DailyRoomInfo" (
	"ROOM_UID"        VARCHAR(32)   NOT NULL, -- 방UID
	"ACMD_DATE"       VARCHAR(10)   NOT NULL, -- 숙박일자
	"ROOM_RSV_STATUS" VARCHAR(2)    NULL,     -- 방예약상태
	"ROOM_PRICE"      VARCHAR(10)   NULL,     -- 방가격
	"HOTDEAL_YN"      VARCHAR(1)    NULL,     -- 핫딜여부
	"MEMO"            VARCHAR(1000) NULL      -- 메모
);

-- Daily Room Info 기본키
CREATE UNIQUE INDEX "PK_DailyRoomInfo"
	ON "DailyRoomInfo" ( -- Daily Room Info
		"ROOM_UID"  ASC, -- 방UID
		"ACMD_DATE" ASC  -- 숙박일자
	);

-- Daily Room Info
ALTER TABLE "DailyRoomInfo"
	ADD
		CONSTRAINT "PK_DailyRoomInfo" -- Daily Room Info 기본키
		PRIMARY KEY (
			"ROOM_UID",  -- 방UID
			"ACMD_DATE"  -- 숙박일자
		);

-- Daily Room Info
COMMENT ON TABLE "DailyRoomInfo" IS 'Daily Room Info';

-- 방UID
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_UID" IS '방UID';

-- 숙박일자
COMMENT ON COLUMN "DailyRoomInfo"."ACMD_DATE" IS '숙박일자';

-- 방예약상태
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_RSV_STATUS" IS '방예약상태';

-- 방가격
COMMENT ON COLUMN "DailyRoomInfo"."ROOM_PRICE" IS '방가격';

-- 핫딜여부
COMMENT ON COLUMN "DailyRoomInfo"."HOTDEAL_YN" IS '핫딜여부';

-- 메모
COMMENT ON COLUMN "DailyRoomInfo"."MEMO" IS '메모';

-- Daily Room Info 기본키
COMMENT ON INDEX "PK_DailyRoomInfo" IS 'Daily Room Info 기본키';

-- Daily Room Info 기본키
COMMENT ON CONSTRAINT "DailyRoomInfo"."PK_DailyRoomInfo" IS 'Daily Room Info 기본키';

-- Activity Images
CREATE TABLE "ActivityImages" (
	"ACTV_UID"  VARCHAR(32)  NOT NULL, -- 액티비티UID
	"IMG_URL"   VARCHAR(255) NULL,     -- 이미지URL
	"IMG_TITLE" VARCHAR(100) NULL,     -- 이미지제목
	"IMG_NO"    INTEGER      NULL      -- 이미지번호
);

-- Activity Images 기본키
CREATE UNIQUE INDEX "PK_ActivityImages"
	ON "ActivityImages" ( -- Activity Images
		"ACTV_UID" ASC -- 액티비티UID
	);

-- Activity Images
ALTER TABLE "ActivityImages"
	ADD
		CONSTRAINT "PK_ActivityImages" -- Activity Images 기본키
		PRIMARY KEY (
			"ACTV_UID" -- 액티비티UID
		);

-- Activity Images
COMMENT ON TABLE "ActivityImages" IS 'Activity Images';

-- 액티비티UID
COMMENT ON COLUMN "ActivityImages"."ACTV_UID" IS '액티비티UID';

-- 이미지URL
COMMENT ON COLUMN "ActivityImages"."IMG_URL" IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN "ActivityImages"."IMG_TITLE" IS '이미지제목';

-- 이미지번호
COMMENT ON COLUMN "ActivityImages"."IMG_NO" IS '이미지번호';

-- Activity Images 기본키
COMMENT ON INDEX "PK_ActivityImages" IS 'Activity Images 기본키';

-- Activity Images 기본키
COMMENT ON CONSTRAINT "ActivityImages"."PK_ActivityImages" IS 'Activity Images 기본키';

-- Acvity Packages
CREATE TABLE "ActivityPackages" (
	"PACKAGE_UID"   VARCHAR(32)  NOT NULL, -- 패키지UID
	"ACTV_UID"      VARCHAR(32)  NULL,     -- 액티비티UID
	"PACKAGE_NAME"  VARCHAR(100) NULL,     -- 패키지명
	"OP_START_DATE" VARCHAR(10)  NULL,     -- 운영시작일자
	"OP_END_DATE"   VARCHAR(10)  NULL,     -- 운영종료일자
	"OP_WEEK_DAY"   VARCHAR(13)  NULL      -- 운영요일
);

-- Acvity Packages 기본키
CREATE UNIQUE INDEX "PK_ActivityPackages"
	ON "ActivityPackages" ( -- Acvity Packages
		"PACKAGE_UID" ASC -- 패키지UID
	);

-- Acvity Packages
ALTER TABLE "ActivityPackages"
	ADD
		CONSTRAINT "PK_ActivityPackages" -- Acvity Packages 기본키
		PRIMARY KEY (
			"PACKAGE_UID" -- 패키지UID
		);

-- Acvity Packages
COMMENT ON TABLE "ActivityPackages" IS 'Acvity Packages';

-- 패키지UID
COMMENT ON COLUMN "ActivityPackages"."PACKAGE_UID" IS '패키지UID';

-- 액티비티UID
COMMENT ON COLUMN "ActivityPackages"."ACTV_UID" IS '액티비티UID';

-- 패키지명
COMMENT ON COLUMN "ActivityPackages"."PACKAGE_NAME" IS '패키지명';

-- 운영시작일자
COMMENT ON COLUMN "ActivityPackages"."OP_START_DATE" IS '운영시작일자';

-- 운영종료일자
COMMENT ON COLUMN "ActivityPackages"."OP_END_DATE" IS '운영종료일자';

-- 운영요일
COMMENT ON COLUMN "ActivityPackages"."OP_WEEK_DAY" IS '운영요일';

-- Acvity Packages 기본키
COMMENT ON INDEX "PK_ActivityPackages" IS 'Acvity Packages 기본키';

-- Acvity Packages 기본키
COMMENT ON CONSTRAINT "ActivityPackages"."PK_ActivityPackages" IS 'Acvity Packages 기본키';

-- Activity Package Desc
CREATE TABLE "ActivityPackageDesc" (
	"PACKAGE_DESC_UID" VARCHAR(32)   NOT NULL, -- 패키지설명UID
	"PACKAGE_UID"      VARCHAR(32)   NOT NULL, -- 패키지UID
	"PACKAGE_DESC"     VARCHAR(1000) NOT NULL  -- 패키지설명
);

-- Activity Package Desc 기본키
CREATE UNIQUE INDEX "PK_ActivityPackageDesc"
	ON "ActivityPackageDesc" ( -- Activity Package Desc
		"PACKAGE_DESC_UID" ASC, -- 패키지설명UID
		"PACKAGE_UID"      ASC  -- 패키지UID
	);

-- Activity Package Desc
ALTER TABLE "ActivityPackageDesc"
	ADD
		CONSTRAINT "PK_ActivityPackageDesc" -- Activity Package Desc 기본키
		PRIMARY KEY (
			"PACKAGE_DESC_UID", -- 패키지설명UID
			"PACKAGE_UID"       -- 패키지UID
		);

-- Activity Package Desc
COMMENT ON TABLE "ActivityPackageDesc" IS 'Activity Package Desc';

-- 패키지설명UID
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_DESC_UID" IS '패키지설명UID';

-- 패키지UID
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_UID" IS '패키지UID';

-- 패키지설명
COMMENT ON COLUMN "ActivityPackageDesc"."PACKAGE_DESC" IS '패키지설명';

-- Activity Package Desc 기본키
COMMENT ON INDEX "PK_ActivityPackageDesc" IS 'Activity Package Desc 기본키';

-- Activity Package Desc 기본키
COMMENT ON CONSTRAINT "ActivityPackageDesc"."PK_ActivityPackageDesc" IS 'Activity Package Desc 기본키';

-- Package Operation Times
CREATE TABLE "PackageOpTimes" (
	"PACKAGE_OP_TIME_UID" VARCHAR(32) NOT NULL, -- 패키지운영시간UID
	"PACKAGE_UID"         VARCHAR(32) NOT NULL, -- 패키지UID
	"PACKAGE_OP_TIME"     VARCHAR(5)  NOT NULL  -- 패키지운영시간
);

-- Package Operation Times 기본키
CREATE UNIQUE INDEX "PK_PackageOpTimes"
	ON "PackageOpTimes" ( -- Package Operation Times
		"PACKAGE_OP_TIME_UID" ASC, -- 패키지운영시간UID
		"PACKAGE_UID"         ASC  -- 패키지UID
	);

-- Package Operation Times
ALTER TABLE "PackageOpTimes"
	ADD
		CONSTRAINT "PK_PackageOpTimes" -- Package Operation Times 기본키
		PRIMARY KEY (
			"PACKAGE_OP_TIME_UID", -- 패키지운영시간UID
			"PACKAGE_UID"          -- 패키지UID
		);

-- Package Operation Times
COMMENT ON TABLE "PackageOpTimes" IS 'Package Operation Times';

-- 패키지운영시간UID
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_OP_TIME_UID" IS '패키지운영시간UID';

-- 패키지UID
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_UID" IS '패키지UID';

-- 패키지운영시간
COMMENT ON COLUMN "PackageOpTimes"."PACKAGE_OP_TIME" IS '패키지운영시간';

-- Package Operation Times 기본키
COMMENT ON INDEX "PK_PackageOpTimes" IS 'Package Operation Times 기본키';

-- Package Operation Times 기본키
COMMENT ON CONSTRAINT "PackageOpTimes"."PK_PackageOpTimes" IS 'Package Operation Times 기본키';

-- Package Price
CREATE TABLE "PackagePrice" (
	"PACKAGE_PRICE_UID" VARCHAR(32)  NOT NULL, -- 패키지가격UID
	"PACKAGE_UID"       VARCHAR(32)  NOT NULL, -- 패키지UID
	"QUANTITY_NAME"     VARCHAR(100) NULL,     -- 수량명
	"PRICE"             VARCHAR(10)  NULL,     -- 가격
	"MIN_RSRV_PPL"      VARCHAR(10)  NULL,     -- 최소예약인원
	"MAX_RSRV_PPL"      VARCHAR(10)  NULL      -- 최대예약인원
);

-- Package Price 기본키
CREATE UNIQUE INDEX "PK_PackagePrice"
	ON "PackagePrice" ( -- Package Price
		"PACKAGE_PRICE_UID" ASC, -- 패키지가격UID
		"PACKAGE_UID"       ASC  -- 패키지UID
	);

-- Package Price
ALTER TABLE "PackagePrice"
	ADD
		CONSTRAINT "PK_PackagePrice" -- Package Price 기본키
		PRIMARY KEY (
			"PACKAGE_PRICE_UID", -- 패키지가격UID
			"PACKAGE_UID"        -- 패키지UID
		);

-- Package Price
COMMENT ON TABLE "PackagePrice" IS 'Package Price';

-- 패키지가격UID
COMMENT ON COLUMN "PackagePrice"."PACKAGE_PRICE_UID" IS '패키지가격UID';

-- 패키지UID
COMMENT ON COLUMN "PackagePrice"."PACKAGE_UID" IS '패키지UID';

-- 수량명
COMMENT ON COLUMN "PackagePrice"."QUANTITY_NAME" IS '수량명';

-- 가격
COMMENT ON COLUMN "PackagePrice"."PRICE" IS '가격';

-- 최소예약인원
COMMENT ON COLUMN "PackagePrice"."MIN_RSRV_PPL" IS '최소예약인원';

-- 최대예약인원
COMMENT ON COLUMN "PackagePrice"."MAX_RSRV_PPL" IS '최대예약인원';

-- Package Price 기본키
COMMENT ON INDEX "PK_PackagePrice" IS 'Package Price 기본키';

-- Package Price 기본키
COMMENT ON CONSTRAINT "PackagePrice"."PK_PackagePrice" IS 'Package Price 기본키';

-- Package Discount
CREATE TABLE "PackageDiscount" (
	"PACKAGE_UID"             VARCHAR(32) NOT NULL, -- 패키지UID
	"DISCOUNT_TYPE_CD"        VARCHAR(2)  NOT NULL, -- 할인타입코드
	"DISCOUNT_RATE"           INTEGER     NULL,     -- 할인률
	"DISCOUNT_START_DATE"     VARCHAR(10) NULL,     -- 할인시작일자
	"DISCOUNT_END_DATE"       VARCHAR(10) NULL,     -- 할인종료일자
	"DISCOUNT_APPLY_WEEK_DAY" VARCHAR(13) NULL      -- 할인적용요일
);

-- Package Discount 기본키
CREATE UNIQUE INDEX "PK_PackageDiscount"
	ON "PackageDiscount" ( -- Package Discount
		"PACKAGE_UID"      ASC, -- 패키지UID
		"DISCOUNT_TYPE_CD" ASC  -- 할인타입코드
	);

-- Package Discount
ALTER TABLE "PackageDiscount"
	ADD
		CONSTRAINT "PK_PackageDiscount" -- Package Discount 기본키
		PRIMARY KEY (
			"PACKAGE_UID",      -- 패키지UID
			"DISCOUNT_TYPE_CD"  -- 할인타입코드
		);

-- Package Discount
COMMENT ON TABLE "PackageDiscount" IS 'Package Discount';

-- 패키지UID
COMMENT ON COLUMN "PackageDiscount"."PACKAGE_UID" IS '패키지UID';

-- 할인타입코드
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_TYPE_CD" IS '할인타입코드';

-- 할인률
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_RATE" IS '할인률';

-- 할인시작일자
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_START_DATE" IS '할인시작일자';

-- 할인종료일자
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_END_DATE" IS '할인종료일자';

-- 할인적용요일
COMMENT ON COLUMN "PackageDiscount"."DISCOUNT_APPLY_WEEK_DAY" IS '할인적용요일';

-- Package Discount 기본키
COMMENT ON INDEX "PK_PackageDiscount" IS 'Package Discount 기본키';

-- Package Discount 기본키
COMMENT ON CONSTRAINT "PackageDiscount"."PK_PackageDiscount" IS 'Package Discount 기본키';

-- Activity Information
CREATE TABLE "ActivityInfo" (
	"ACTV_UID"      VARCHAR(32)   NOT NULL, -- 액티비티UID
	"EXCLUDE_ITEM"  VARCHAR(1000) NULL,     -- 제외항목
	"INCLUDE_ITEM"  VARCHAR(1000) NULL,     -- 포함항목
	"BUSINESS_HOUR" VARCHAR(1000) NULL,     -- 영업시간
	"SCHEDULE"      VARCHAR(1000) NULL,     -- 스케쥴
	"REMINDER"      VARCHAR(1000) NULL      -- 리마인더
);

-- Activity Information 기본키
CREATE UNIQUE INDEX "PK_ActivityInfo"
	ON "ActivityInfo" ( -- Activity Information
		"ACTV_UID" ASC -- 액티비티UID
	);

-- Activity Information
ALTER TABLE "ActivityInfo"
	ADD
		CONSTRAINT "PK_ActivityInfo" -- Activity Information 기본키
		PRIMARY KEY (
			"ACTV_UID" -- 액티비티UID
		);

-- Activity Information
COMMENT ON TABLE "ActivityInfo" IS 'Activity Information';

-- 액티비티UID
COMMENT ON COLUMN "ActivityInfo"."ACTV_UID" IS '액티비티UID';

-- 제외항목
COMMENT ON COLUMN "ActivityInfo"."EXCLUDE_ITEM" IS '제외항목';

-- 포함항목
COMMENT ON COLUMN "ActivityInfo"."INCLUDE_ITEM" IS '포함항목';

-- 영업시간
COMMENT ON COLUMN "ActivityInfo"."BUSINESS_HOUR" IS '영업시간';

-- 스케쥴
COMMENT ON COLUMN "ActivityInfo"."SCHEDULE" IS '스케쥴';

-- 리마인더
COMMENT ON COLUMN "ActivityInfo"."REMINDER" IS '리마인더';

-- Activity Information 기본키
COMMENT ON INDEX "PK_ActivityInfo" IS 'Activity Information 기본키';

-- Activity Information 기본키
COMMENT ON CONSTRAINT "ActivityInfo"."PK_ActivityInfo" IS 'Activity Information 기본키';

-- Activity Package Options
CREATE TABLE "ActivityPackageOptions" (
	"ACTV_UID"          VARCHAR(32)   NOT NULL, -- 액티비티UID
	"PACKAGE_OPT_UID"   VARCHAR(32)   NOT NULL, -- 패키지옵션UID
	"PACKAGE_OPT_TITLE" VARCHAR(100)  NULL,     -- 패키지옵션제목
	"PACKAGE_OPT_CTNT"  VARCHAR(1000) NULL      -- 패키지옵션내용
);

-- Activity Package Options 기본키
CREATE UNIQUE INDEX "PK_ActivityPackageOptions"
	ON "ActivityPackageOptions" ( -- Activity Package Options
		"ACTV_UID"        ASC, -- 액티비티UID
		"PACKAGE_OPT_UID" ASC  -- 패키지옵션UID
	);

-- Activity Package Options
ALTER TABLE "ActivityPackageOptions"
	ADD
		CONSTRAINT "PK_ActivityPackageOptions" -- Activity Package Options 기본키
		PRIMARY KEY (
			"ACTV_UID",        -- 액티비티UID
			"PACKAGE_OPT_UID"  -- 패키지옵션UID
		);

-- Activity Package Options
COMMENT ON TABLE "ActivityPackageOptions" IS 'Activity Package Options';

-- 액티비티UID
COMMENT ON COLUMN "ActivityPackageOptions"."ACTV_UID" IS '액티비티UID';

-- 패키지옵션UID
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_UID" IS '패키지옵션UID';

-- 패키지옵션제목
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_TITLE" IS '패키지옵션제목';

-- 패키지옵션내용
COMMENT ON COLUMN "ActivityPackageOptions"."PACKAGE_OPT_CTNT" IS '패키지옵션내용';

-- Activity Package Options 기본키
COMMENT ON INDEX "PK_ActivityPackageOptions" IS 'Activity Package Options 기본키';

-- Activity Package Options 기본키
COMMENT ON CONSTRAINT "ActivityPackageOptions"."PK_ActivityPackageOptions" IS 'Activity Package Options 기본키';

-- Activity Policy
CREATE TABLE "ActivityPolicy" (
	"PLCY_UID"         VARCHAR(32)   NOT NULL, -- 정책UID
	"ACTV_UID"         VARCHAR(32)   NOT NULL, -- 액티비티UID
	"CFRM_TYPE_CD"     VARCHAR(2)    NULL,     -- 확인타입코드
	"CFRM_TIME"        VARCHAR(5)    NULL,     -- 확인시간
	"RSRV_ABLE_CD"     VARCHAR(2)    NULL,     -- 예약가능코드
	"RSRV_ABLE_DAYS"   INTEGER       NULL,     -- 예약가능일수
	"CANCEL_TYPE_CD"   VARCHAR(2)    NULL,     -- 취소타입코드
	"CANCEL_ABLE_TIME" VARCHAR(5)    NULL,     -- 취소가능시간
	"HOW_TO_USE"       VARCHAR(1000) NULL      -- 사용법
);

-- Activity Policy 기본키
CREATE UNIQUE INDEX "PK_ActivityPolicy"
	ON "ActivityPolicy" ( -- Activity Policy
		"PLCY_UID" ASC, -- 정책UID
		"ACTV_UID" ASC  -- 액티비티UID
	);

-- Activity Policy
ALTER TABLE "ActivityPolicy"
	ADD
		CONSTRAINT "PK_ActivityPolicy" -- Activity Policy 기본키
		PRIMARY KEY (
			"PLCY_UID", -- 정책UID
			"ACTV_UID"  -- 액티비티UID
		);

-- Activity Policy
COMMENT ON TABLE "ActivityPolicy" IS 'Activity Policy';

-- 정책UID
COMMENT ON COLUMN "ActivityPolicy"."PLCY_UID" IS '정책UID';

-- 액티비티UID
COMMENT ON COLUMN "ActivityPolicy"."ACTV_UID" IS '액티비티UID';

-- 확인타입코드
COMMENT ON COLUMN "ActivityPolicy"."CFRM_TYPE_CD" IS '확인타입코드';

-- 확인시간
COMMENT ON COLUMN "ActivityPolicy"."CFRM_TIME" IS '확인시간';

-- 예약가능코드
COMMENT ON COLUMN "ActivityPolicy"."RSRV_ABLE_CD" IS '예약가능코드';

-- 예약가능일수
COMMENT ON COLUMN "ActivityPolicy"."RSRV_ABLE_DAYS" IS '예약가능일수';

-- 취소타입코드
COMMENT ON COLUMN "ActivityPolicy"."CANCEL_TYPE_CD" IS '취소타입코드';

-- 취소가능시간
COMMENT ON COLUMN "ActivityPolicy"."CANCEL_ABLE_TIME" IS '취소가능시간';

-- 사용법
COMMENT ON COLUMN "ActivityPolicy"."HOW_TO_USE" IS '사용법';

-- Activity Policy 기본키
COMMENT ON INDEX "PK_ActivityPolicy" IS 'Activity Policy 기본키';

-- Activity Policy 기본키
COMMENT ON CONSTRAINT "ActivityPolicy"."PK_ActivityPolicy" IS 'Activity Policy 기본키';

-- Activity Default Policy
CREATE TABLE "ActivityDfltPolicy" (
	"COL2" <데이터 타입 없음> NULL, -- 즉석확인기본메시지
	"COL"  <데이터 타입 없음> NULL  -- 확인기본메시지
);

-- Activity Default Policy
COMMENT ON TABLE "ActivityDfltPolicy" IS 'Activity Default Policy';

-- 즉석확인기본메시지
COMMENT ON COLUMN "ActivityDfltPolicy"."COL2" IS '즉석확인기본메시지';

-- 확인기본메시지
COMMENT ON COLUMN "ActivityDfltPolicy"."COL" IS '확인기본메시지';

-- User
CREATE TABLE "User" (
	"USER_ID"              <데이터 타입 없음> NULL, -- 사용자ID
	"USER_NAME"            <데이터 타입 없음> NULL, -- 사용자명
	"PASSWORD"             <데이터 타입 없음> NULL, -- 비밀번호
	"PASSWORD_ERROR_COUNT" <데이터 타입 없음> NULL, -- 비밀번호오류횟수
	"LAST_LOGIN_DTTM"      <데이터 타입 없음> NULL, -- 마지막로그인일시
	"LOCK_YN"              <데이터 타입 없음> NULL  -- 잠금여부
);

-- User
COMMENT ON TABLE "User" IS 'User';

-- 사용자ID
COMMENT ON COLUMN "User"."USER_ID" IS '사용자ID';

-- 사용자명
COMMENT ON COLUMN "User"."USER_NAME" IS '사용자명';

-- 비밀번호
COMMENT ON COLUMN "User"."PASSWORD" IS '비밀번호';

-- 비밀번호오류횟수
COMMENT ON COLUMN "User"."PASSWORD_ERROR_COUNT" IS '비밀번호오류횟수';

-- 마지막로그인일시
COMMENT ON COLUMN "User"."LAST_LOGIN_DTTM" IS '마지막로그인일시';

-- 잠금여부
COMMENT ON COLUMN "User"."LOCK_YN" IS '잠금여부';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_NationCity_TO_Accommodation" -- NationCity -> Accommodation
		FOREIGN KEY (
			"CITY_UID" -- 도시UID
		)
		REFERENCES "NationCity" ( -- NationCity
			"CITY_UID" -- 도시UID
		);

-- NationCity -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_NationCity_TO_Accommodation" IS 'NationCity -> Accommodation';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_Currency_TO_Accommodation" -- Currency -> Accommodation
		FOREIGN KEY (
			"CRC_NATION_CD" -- 통화국가코드
		)
		REFERENCES "Currency" ( -- Currency
			"CRC_NTL_CD" -- 통화국가코드
		);

-- Currency -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_Currency_TO_Accommodation" IS 'Currency -> Accommodation';

-- Accommodation
ALTER TABLE "Accommodation"
	ADD
		CONSTRAINT "FK_CancelPolicy_TO_Accommodation" -- Cancel Policy -> Accommodation
		FOREIGN KEY (
			"CANCEL_PLCY_UID" -- 취소정책UID
		)
		REFERENCES "CancelPolicy" ( -- Cancel Policy
			"COL" -- 취소정책UID
		);

-- Cancel Policy -> Accommodation
COMMENT ON CONSTRAINT "Accommodation"."FK_CancelPolicy_TO_Accommodation" IS 'Cancel Policy -> Accommodation';

-- Recommend Spots
ALTER TABLE "RecommendSpots"
	ADD
		CONSTRAINT "FK_Accommodation_TO_RecommendSpots" -- Accommodation -> Recommend Spots
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Recommend Spots
COMMENT ON CONSTRAINT "RecommendSpots"."FK_Accommodation_TO_RecommendSpots" IS 'Accommodation -> Recommend Spots';

-- Themes
ALTER TABLE "Themes"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Themes" -- Accommodation -> Themes
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Themes
COMMENT ON CONSTRAINT "Themes"."FK_Accommodation_TO_Themes" IS 'Accommodation -> Themes';

-- Special Facilities
ALTER TABLE "SpecialFacilities"
	ADD
		CONSTRAINT "FK_Accommodation_TO_SpecialFacilities" -- Accommodation -> Special Facilities
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Special Facilities
COMMENT ON CONSTRAINT "SpecialFacilities"."FK_Accommodation_TO_SpecialFacilities" IS 'Accommodation -> Special Facilities';

-- Accommodation Images
ALTER TABLE "AccommodationImages"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccommodationImages" -- Accommodation -> Accommodation Images
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Accommodation Images
COMMENT ON CONSTRAINT "AccommodationImages"."FK_Accommodation_TO_AccommodationImages" IS 'Accommodation -> Accommodation Images';

-- Extra Options
ALTER TABLE "ExtraOptions"
	ADD
		CONSTRAINT "FK_Accommodation_TO_ExtraOptions" -- Accommodation -> Extra Options
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Extra Options
COMMENT ON CONSTRAINT "ExtraOptions"."FK_Accommodation_TO_ExtraOptions" IS 'Accommodation -> Extra Options';

-- Policies
ALTER TABLE "Policies"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Policies" -- Accommodation -> Policies
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Policies
COMMENT ON CONSTRAINT "Policies"."FK_Accommodation_TO_Policies" IS 'Accommodation -> Policies';

-- Reviews
ALTER TABLE "Reviews"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Reviews" -- Accommodation -> Reviews
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Reviews
COMMENT ON CONSTRAINT "Reviews"."FK_Accommodation_TO_Reviews" IS 'Accommodation -> Reviews';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Rooms" -- Accommodation -> Rooms
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_Accommodation_TO_Rooms" IS 'Accommodation -> Rooms';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_RoomTypes_TO_Rooms" -- Room Types -> Rooms
		FOREIGN KEY (
			"ROOM_TYPE_UID" -- 방타입UID
		)
		REFERENCES "RoomTypes" ( -- Room Types
			"ROOM_TYPE_UID" -- 방타입UID
		);

-- Room Types -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_RoomTypes_TO_Rooms" IS 'Room Types -> Rooms';

-- Rooms
ALTER TABLE "Rooms"
	ADD
		CONSTRAINT "FK_SiteTypes_TO_Rooms" -- Site Types -> Rooms
		FOREIGN KEY (
			"SITE_TYPE_UID" -- 사이트타입UID
		)
		REFERENCES "SiteTypes" ( -- Site Types
			"SITE_TYPE_UID" -- 사이트타입UID
		);

-- Site Types -> Rooms
COMMENT ON CONSTRAINT "Rooms"."FK_SiteTypes_TO_Rooms" IS 'Site Types -> Rooms';

-- Room Images
ALTER TABLE "RoomImages"
	ADD
		CONSTRAINT "FK_Rooms_TO_RoomImages" -- Rooms -> Room Images
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Room Images
COMMENT ON CONSTRAINT "RoomImages"."FK_Rooms_TO_RoomImages" IS 'Rooms -> Room Images';

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccommodationFacilitiesRel" -- Accommodation -> Accommodation Facilities Relation
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Accommodation Facilities Relation
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."FK_Accommodation_TO_AccommodationFacilitiesRel" IS 'Accommodation -> Accommodation Facilities Relation';

-- Accommodation Facilities Relation
ALTER TABLE "AccommodationFacilitiesRel"
	ADD
		CONSTRAINT "FK_Facilities_TO_AccommodationFacilitiesRel" -- Facilities -> Accommodation Facilities Relation
		FOREIGN KEY (
			"FCLT_UID" -- 숙박시설UID
		)
		REFERENCES "Facilities" ( -- Facilities
			"FCLT_UID" -- 숙박시설UID
		);

-- Facilities -> Accommodation Facilities Relation
COMMENT ON CONSTRAINT "AccommodationFacilitiesRel"."FK_Facilities_TO_AccommodationFacilitiesRel" IS 'Facilities -> Accommodation Facilities Relation';

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "FK_Rooms_TO_RoomAmenities" -- Rooms -> Room Amenities
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Room Amenities
COMMENT ON CONSTRAINT "RoomAmenities"."FK_Rooms_TO_RoomAmenities" IS 'Rooms -> Room Amenities';

-- Room Amenities
ALTER TABLE "RoomAmenities"
	ADD
		CONSTRAINT "FK_Amenities_TO_RoomAmenities" -- Amenities -> Room Amenities
		FOREIGN KEY (
			"AMNY_UID" -- 편의시설UID
		)
		REFERENCES "Amenities" ( -- Amenities
			"AMNY_UID" -- 편의시설UID
		);

-- Amenities -> Room Amenities
COMMENT ON CONSTRAINT "RoomAmenities"."FK_Amenities_TO_RoomAmenities" IS 'Amenities -> Room Amenities';

-- Special Amenities
ALTER TABLE "SpecialAmenities"
	ADD
		CONSTRAINT "FK_Rooms_TO_SpecialAmenities" -- Rooms -> Special Amenities
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Special Amenities
COMMENT ON CONSTRAINT "SpecialAmenities"."FK_Rooms_TO_SpecialAmenities" IS 'Rooms -> Special Amenities';

-- Default Room Price
ALTER TABLE "DfltRoomPrice"
	ADD
		CONSTRAINT "FK_Rooms_TO_DfltRoomPrice" -- Rooms -> Default Room Price
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Default Room Price
COMMENT ON CONSTRAINT "DfltRoomPrice"."FK_Rooms_TO_DfltRoomPrice" IS 'Rooms -> Default Room Price';

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "FK_Accommodation_TO_AccomodationPolicyOptionRel" -- Accommodation -> Accomodation PolicyOption Relation
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Accomodation PolicyOption Relation
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."FK_Accommodation_TO_AccomodationPolicyOptionRel" IS 'Accommodation -> Accomodation PolicyOption Relation';

-- Accomodation PolicyOption Relation
ALTER TABLE "AccomodationPolicyOptionRel"
	ADD
		CONSTRAINT "FK_PolicyOptions_TO_AccomodationPolicyOptionRel" -- Policy Options -> Accomodation PolicyOption Relation
		FOREIGN KEY (
			"PLCY_OPT_UID" -- 정책옵션UID
		)
		REFERENCES "PolicyOptions" ( -- Policy Options
			"COL3" -- 정책옵션UID
		);

-- Policy Options -> Accomodation PolicyOption Relation
COMMENT ON CONSTRAINT "AccomodationPolicyOptionRel"."FK_PolicyOptions_TO_AccomodationPolicyOptionRel" IS 'Policy Options -> Accomodation PolicyOption Relation';

-- Discount Rates
ALTER TABLE "DiscountRates"
	ADD
		CONSTRAINT "FK_Rooms_TO_DiscountRates" -- Rooms -> Discount Rates
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Discount Rates
COMMENT ON CONSTRAINT "DiscountRates"."FK_Rooms_TO_DiscountRates" IS 'Rooms -> Discount Rates';

-- Season
ALTER TABLE "Season"
	ADD
		CONSTRAINT "FK_Accommodation_TO_Season" -- Accommodation -> Season
		FOREIGN KEY (
			"ACMD_UID" -- 숙박UID
		)
		REFERENCES "Accommodation" ( -- Accommodation
			"ACMD_UID" -- 숙박UID
		);

-- Accommodation -> Season
COMMENT ON CONSTRAINT "Season"."FK_Accommodation_TO_Season" IS 'Accommodation -> Season';

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "FK_NationCity_TO_Activity" -- NationCity -> Activity
		FOREIGN KEY (
			"CITY_UID" -- 도시UID
		)
		REFERENCES "NationCity" ( -- NationCity
			"CITY_UID" -- 도시UID
		);

-- NationCity -> Activity
COMMENT ON CONSTRAINT "Activity"."FK_NationCity_TO_Activity" IS 'NationCity -> Activity';

-- Activity
ALTER TABLE "Activity"
	ADD
		CONSTRAINT "FK_Currency_TO_Activity" -- Currency -> Activity
		FOREIGN KEY (
			"CRC_NATION_CD" -- 통화국가코드
		)
		REFERENCES "Currency" ( -- Currency
			"CRC_NTL_CD" -- 통화국가코드
		);

-- Currency -> Activity
COMMENT ON CONSTRAINT "Activity"."FK_Currency_TO_Activity" IS 'Currency -> Activity';

-- Daily Room Price
ALTER TABLE "DailyRoomPrice"
	ADD
		CONSTRAINT "FK_Rooms_TO_DailyRoomPrice" -- Rooms -> Daily Room Price
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Daily Room Price
COMMENT ON CONSTRAINT "DailyRoomPrice"."FK_Rooms_TO_DailyRoomPrice" IS 'Rooms -> Daily Room Price';

-- Daily Room Info
ALTER TABLE "DailyRoomInfo"
	ADD
		CONSTRAINT "FK_Rooms_TO_DailyRoomInfo" -- Rooms -> Daily Room Info
		FOREIGN KEY (
			"ROOM_UID" -- 방UID
		)
		REFERENCES "Rooms" ( -- Rooms
			"ROOM_UID" -- 방UID
		);

-- Rooms -> Daily Room Info
COMMENT ON CONSTRAINT "DailyRoomInfo"."FK_Rooms_TO_DailyRoomInfo" IS 'Rooms -> Daily Room Info';

-- Activity Images
ALTER TABLE "ActivityImages"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityImages" -- Activity -> Activity Images
		FOREIGN KEY (
			"ACTV_UID" -- 액티비티UID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- 액티비티UID
		);

-- Activity -> Activity Images
COMMENT ON CONSTRAINT "ActivityImages"."FK_Activity_TO_ActivityImages" IS 'Activity -> Activity Images';

-- Acvity Packages
ALTER TABLE "ActivityPackages"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPackages" -- Activity -> Acvity Packages
		FOREIGN KEY (
			"ACTV_UID" -- 액티비티UID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- 액티비티UID
		);

-- Activity -> Acvity Packages
COMMENT ON CONSTRAINT "ActivityPackages"."FK_Activity_TO_ActivityPackages" IS 'Activity -> Acvity Packages';

-- Activity Package Desc
ALTER TABLE "ActivityPackageDesc"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_ActivityPackageDesc" -- Acvity Packages -> Activity Package Desc
		FOREIGN KEY (
			"PACKAGE_UID" -- 패키지UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- 패키지UID
		);

-- Acvity Packages -> Activity Package Desc
COMMENT ON CONSTRAINT "ActivityPackageDesc"."FK_ActivityPackages_TO_ActivityPackageDesc" IS 'Acvity Packages -> Activity Package Desc';

-- Package Operation Times
ALTER TABLE "PackageOpTimes"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackageOpTimes" -- Acvity Packages -> Package Operation Times
		FOREIGN KEY (
			"PACKAGE_UID" -- 패키지UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- 패키지UID
		);

-- Acvity Packages -> Package Operation Times
COMMENT ON CONSTRAINT "PackageOpTimes"."FK_ActivityPackages_TO_PackageOpTimes" IS 'Acvity Packages -> Package Operation Times';

-- Package Price
ALTER TABLE "PackagePrice"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackagePrice" -- Acvity Packages -> Package Price
		FOREIGN KEY (
			"PACKAGE_UID" -- 패키지UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- 패키지UID
		);

-- Acvity Packages -> Package Price
COMMENT ON CONSTRAINT "PackagePrice"."FK_ActivityPackages_TO_PackagePrice" IS 'Acvity Packages -> Package Price';

-- Package Discount
ALTER TABLE "PackageDiscount"
	ADD
		CONSTRAINT "FK_ActivityPackages_TO_PackageDiscount" -- Acvity Packages -> Package Discount
		FOREIGN KEY (
			"PACKAGE_UID" -- 패키지UID
		)
		REFERENCES "ActivityPackages" ( -- Acvity Packages
			"PACKAGE_UID" -- 패키지UID
		);

-- Acvity Packages -> Package Discount
COMMENT ON CONSTRAINT "PackageDiscount"."FK_ActivityPackages_TO_PackageDiscount" IS 'Acvity Packages -> Package Discount';

-- Activity Information
ALTER TABLE "ActivityInfo"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityInfo" -- Activity -> Activity Information
		FOREIGN KEY (
			"ACTV_UID" -- 액티비티UID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- 액티비티UID
		);

-- Activity -> Activity Information
COMMENT ON CONSTRAINT "ActivityInfo"."FK_Activity_TO_ActivityInfo" IS 'Activity -> Activity Information';

-- Activity Package Options
ALTER TABLE "ActivityPackageOptions"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPackageOptions" -- Activity -> Activity Package Options
		FOREIGN KEY (
			"ACTV_UID" -- 액티비티UID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- 액티비티UID
		);

-- Activity -> Activity Package Options
COMMENT ON CONSTRAINT "ActivityPackageOptions"."FK_Activity_TO_ActivityPackageOptions" IS 'Activity -> Activity Package Options';

-- Activity Policy
ALTER TABLE "ActivityPolicy"
	ADD
		CONSTRAINT "FK_Activity_TO_ActivityPolicy" -- Activity -> Activity Policy
		FOREIGN KEY (
			"ACTV_UID" -- 액티비티UID
		)
		REFERENCES "Activity" ( -- Activity
			"ACTV_UID" -- 액티비티UID
		);

-- Activity -> Activity Policy
COMMENT ON CONSTRAINT "ActivityPolicy"."FK_Activity_TO_ActivityPolicy" IS 'Activity -> Activity Policy';