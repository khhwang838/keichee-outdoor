-- Accommodation
DROP TABLE MO_Accommodation;

-- Currency
DROP TABLE MO_Currency;

-- NationCity
DROP TABLE MO_NationCity;

-- Recommend Spots
DROP TABLE MO_RecommendSpots;

-- Room Types
DROP TABLE MO_RoomTypes;

-- Facilities
DROP TABLE MO_Facilities;

-- Themes
DROP TABLE MO_Themes;

-- Special Facilities
DROP TABLE MO_SpecialFacilities;

-- Accommodation Images
DROP TABLE MO_AcmdImages;

-- Extra Options
DROP TABLE MO_ExtraOptions;

-- Policies
DROP TABLE MO_Policies;

-- Cancel Policy
DROP TABLE MO_CancelPolicy;

-- Policy Options
DROP TABLE MO_PolicyOptions;

-- Reviews
DROP TABLE MO_Reviews;

-- Rooms
DROP TABLE MO_Rooms;

-- Room Images
DROP TABLE MO_RoomImages;

-- Amenities
DROP TABLE MO_Amenities;

-- Accommodation Facilities Relation
DROP TABLE MO_AcmdFacilitiesRel;

-- Room Amenities
DROP TABLE MO_RoomAmenities;

-- Special Amenities
DROP TABLE MO_SpecialAmenities;

-- Default Room Price
DROP TABLE MO_DfltRoomPrice;

-- Accomodation PolicyOption Relation
DROP TABLE MO_AcmdPolicyOptionRel;

-- Site Types
DROP TABLE MO_SiteTypes;

-- Discount Rates
DROP TABLE MO_DiscountRates;

-- Season
DROP TABLE MO_Season;

-- Activity
DROP TABLE MO_Activity;

-- Acvity Types
DROP TABLE MO_ActivityTypes;

-- Daily Room Info
DROP TABLE MO_DailyRoomInfo;

-- Activity Images
DROP TABLE MO_ActivityImages;

-- Acvity Packages
DROP TABLE MO_ActivityPackages;

-- Activity Package Desc
DROP TABLE MO_ActivityPackageDesc;

-- Package Operation Times
DROP TABLE MO_PackageOpTimes;

-- Package Price
DROP TABLE MO_PackagePrice;

-- Package Discount
DROP TABLE MO_PackageDiscount;

-- Activity Information
DROP TABLE MO_ActivityInfo;

-- Activity Package Options
DROP TABLE MO_ActivityPackageOptions;

-- Activity Policy
DROP TABLE MO_ActivityPolicy;

-- User Info
DROP TABLE MO_UserInfo;

-- Accommodation Themes Relation
DROP TABLE MO_AcmdThemesRel;

-- Accommodation Special Facilities Relation
DROP TABLE MO_AcmdSpecialFacilitiesRel;

-- Accommodation Types
DROP TABLE MO_AcmdTypes;

-- Accommodation Types Relation
DROP TABLE MO_AcmdTypesRel;


-- Accommodation
CREATE TABLE MO_Accommodation (
	ACMD_UID        VARCHAR(32)   NOT NULL, -- 숙박UID
	USER_ID         VARCHAR(40)   NOT NULL, -- 사용자ID
	ACMD_NAME       VARCHAR(100)  NULL,     -- 숙박명
	ACMD_DESC       VARCHAR(1000) NULL,     -- 숙박설명
	EMAIL           VARCHAR(100)  NULL,     -- 이메일
	CONTACT         VARCHAR(20)   NULL,     -- 연락처
	IMG_URL         VARCHAR(255)  NULL,     -- 이미지URL
	ACMD_ADDR       VARCHAR(255)  NULL,     -- 숙박주소
	ACMD_ALTD       VARCHAR(255)  NULL,     -- 숙박위도
	ACMD_LGTD       VARCHAR(255)  NULL,     -- 숙박경도
	DIRECTION       VARCHAR(1000) NULL,     -- 오는길
	ACMD_AVG_SCORE  VARCHAR(3)    NULL,     -- 숙박평균점수
	CITY_UID        VARCHAR(32)   NULL,     -- 도시UID
	CRC_NATION_CD   VARCHAR(2)    NULL,     -- 통화국가코드
	CANCEL_PLCY_UID VARCHAR(32)   NULL      -- 취소정책UID
);

-- Accommodation
ALTER TABLE MO_Accommodation
	ADD
		CONSTRAINT PK_MO_Accommodation -- Accommodation 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙박UID
			USER_ID   -- 사용자ID
		);

-- Currency
CREATE TABLE MO_Currency (
	CRC_NTL_CD      VARCHAR(2)   NOT NULL, -- 통화국가코드
	CRC_NATION_NAME VARCHAR(100) NULL,     -- 통화국가명
	CRC_NAME        VARCHAR(100) NULL,     -- 통화명
	CRC_UNIT        VARCHAR(3)   NULL      -- 통화단위
);

-- Currency
ALTER TABLE MO_Currency
	ADD
		CONSTRAINT PK_MO_Currency -- Currency 기본키
		PRIMARY KEY (
			CRC_NTL_CD -- 통화국가코드
		);

-- NationCity
CREATE TABLE MO_NationCity (
	CITY_UID    VARCHAR(32)  NOT NULL, -- 도시UID
	NATION_CD   VARCHAR(2)   NULL,     -- 국가코드
	NATION_NAME VARCHAR(100) NULL,     -- 국가명
	CITY_CD     VARCHAR(2)   NULL,     -- 도시코드
	CITY_NAME   VARCHAR(100) NULL      -- 도시명
);

-- NationCity
ALTER TABLE MO_NationCity
	ADD
		CONSTRAINT PK_MO_NationCity -- NationCity 기본키
		PRIMARY KEY (
			CITY_UID -- 도시UID
		);

-- Recommend Spots
CREATE TABLE MO_RecommendSpots (
	RCMD_PLACE_UID     VARCHAR(32)   NOT NULL, -- 추천장소UID
	ACMD_UID           VARCHAR(32)   NOT NULL, -- 숙박UID
	USER_ID            VARCHAR(40)   NOT NULL, -- 사용자ID
	RCMD_PLACE_NAME    VARCHAR(100)  NULL,     -- 추천장소명
	RCMD_PLACE_DESC    VARCHAR(1000) NULL,     -- 추천장소설명
	RCMD_PLACE_IMG_URL VARCHAR(255)  NULL      -- 추천장소이미지URL
);

-- Recommend Spots
ALTER TABLE MO_RecommendSpots
	ADD
		CONSTRAINT PK_MO_RecommendSpots -- Recommend Spots 기본키
		PRIMARY KEY (
			RCMD_PLACE_UID, -- 추천장소UID
			ACMD_UID,       -- 숙박UID
			USER_ID         -- 사용자ID
		);

-- Room Types
CREATE TABLE MO_RoomTypes (
	ROOM_TYPE_UID  VARCHAR(32)  NOT NULL, -- 방타입UID
	ROOM_TYPE_NAME VARCHAR(100) NULL,     -- 방타입명
	ROOM_TYPE_IMG  VARCHAR(255) NULL      -- 방타입이미지
);

-- Room Types
ALTER TABLE MO_RoomTypes
	ADD
		CONSTRAINT PK_MO_RoomTypes -- Room Types 기본키
		PRIMARY KEY (
			ROOM_TYPE_UID -- 방타입UID
		);

-- Facilities
CREATE TABLE MO_Facilities (
	FCLT_ID   VARCHAR(40)  NOT NULL, -- 숙박시설ID
	FCLT_NAME VARCHAR(100) NULL,     -- 숙박시설명
	FCLT_IMG  VARCHAR(255) NULL      -- 숙박시설이미지
);

-- Facilities
ALTER TABLE MO_Facilities
	ADD
		CONSTRAINT PK_MO_Facilities -- Facilities 기본키
		PRIMARY KEY (
			FCLT_ID -- 숙박시설ID
		);

-- Themes
CREATE TABLE MO_Themes (
	ACMD_THEME_ID   VARCHAR(40)  NOT NULL, -- 숙박테마ID
	ACMD_THEME_NAME VARCHAR(100) NULL,     -- 숙박테마명
	ACMD_THEME_IMG  VARCHAR(255) NULL      -- 숙박테마이미지
);

-- Themes
ALTER TABLE MO_Themes
	ADD
		CONSTRAINT PK_MO_Themes -- Themes 기본키
		PRIMARY KEY (
			ACMD_THEME_ID -- 숙박테마ID
		);

-- Special Facilities
CREATE TABLE MO_SpecialFacilities (
	SPECIAL_FCLT_ID   VARCHAR(40)   NOT NULL, -- 특수숙박시설ID
	SPECIAL_FCLT_NAME VARCHAR(100)  NULL,     -- 특수숙박시설명
	SPECIAL_FCLT_DESC VARCHAR(1000) NULL      -- 특수숙박시설설명
);

-- Special Facilities
ALTER TABLE MO_SpecialFacilities
	ADD
		CONSTRAINT PK_MO_SpecialFacilities -- Special Facilities 기본키
		PRIMARY KEY (
			SPECIAL_FCLT_ID -- 특수숙박시설ID
		);

-- Accommodation Images
CREATE TABLE MO_AcmdImages (
	IMG_UID   VARCHAR(32)  NOT NULL, -- 이미지UID
	ACMD_UID  VARCHAR(32)  NOT NULL, -- 숙박UID
	USER_ID   VARCHAR(40)  NOT NULL, -- 사용자ID
	IMG_URL   VARCHAR(255) NULL,     -- 이미지URL
	IMG_TITLE VARCHAR(100) NULL,     -- 이미지제목
	IMG_NO    INTEGER      NULL      -- 이미지번호
);

-- Accommodation Images
ALTER TABLE MO_AcmdImages
	ADD
		CONSTRAINT PK_MO_AcmdImages -- Accommodation Images 기본키
		PRIMARY KEY (
			IMG_UID,  -- 이미지UID
			ACMD_UID, -- 숙박UID
			USER_ID   -- 사용자ID
		);

-- Extra Options
CREATE TABLE MO_ExtraOptions (
	EXTRA_OPT_UID   VARCHAR(32)   NOT NULL, -- 추가옵션UID
	ACMD_UID        VARCHAR(32)   NOT NULL, -- 숙박UID
	USER_ID         VARCHAR(40)   NOT NULL, -- 사용자ID
	EXTRA_OPT_NAME  VARCHAR(100)  NULL,     -- 추가옵션명
	EXTRA_OPT_DESC  VARCHAR(1000) NULL,     -- 추가옵션설명
	EXTRA_OPT_PRICE VARCHAR(10)   NULL,     -- 추가옵션가격
	CHOICE_MAX_CNT  VARCHAR(10)   NULL,     -- 선택최대개수
	VISIT_PAY_YN    VARCHAR(1)    NULL      -- 방문결제여부
);

-- Extra Options
ALTER TABLE MO_ExtraOptions
	ADD
		CONSTRAINT PK_MO_ExtraOptions -- Extra Options 기본키
		PRIMARY KEY (
			EXTRA_OPT_UID, -- 추가옵션UID
			ACMD_UID,      -- 숙박UID
			USER_ID        -- 사용자ID
		);

-- Policies
CREATE TABLE MO_Policies (
	ACMD_UID           VARCHAR(32)   NOT NULL, -- 숙박UID
	USER_ID            VARCHAR(40)   NOT NULL, -- 사용자ID
	CHKIN_TIME         VARCHAR(5)    NULL,     -- 체크인시간
	CHKOUT_TIME        VARCHAR(5)    NULL,     -- 체크아웃시간
	IMMDT_CFRM_YN      VARCHAR(1)    NULL,     -- 즉석확인여부
	CFRM_REQ_TIME      VARCHAR(5)    NULL,     -- 확인필요시간
	CFRM_REQ_TIME_MSG  VARCHAR(1000) NULL,     -- 확인필요시간메시지
	RSRV_ABLE_DAYS     VARCHAR(10)   NULL,     -- 예약가능일수
	RSRV_ABLE_DAYS_MSG VARCHAR(1000) NULL      -- 예약가능일수메시지
);

-- Policies
ALTER TABLE MO_Policies
	ADD
		CONSTRAINT PK_MO_Policies -- Policies 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙박UID
			USER_ID   -- 사용자ID
		);

-- Cancel Policy
CREATE TABLE MO_CancelPolicy (
	CANCEL_PLCY_UID  VARCHAR(32)   NOT NULL, -- 취소정책UID
	CANCEL_PLCY_NAME VARCHAR(100)  NULL,     -- 취소정책명
	CANCEL_PLCY_DESC VARCHAR(1000) NULL      -- 취소정책설명
);

-- Cancel Policy
ALTER TABLE MO_CancelPolicy
	ADD
		CONSTRAINT PK_MO_CancelPolicy -- Cancel Policy 기본키
		PRIMARY KEY (
			CANCEL_PLCY_UID -- 취소정책UID
		);

-- Policy Options
CREATE TABLE MO_PolicyOptions (
	PLCY_OPT_UID  VARCHAR(32)   NOT NULL, -- 정책옵션UID
	PLCY_OPT_NAME VARCHAR(100)  NULL,     -- 정책옵션명
	PLCY_OPT_DESC VARCHAR(1000) NULL      -- 정책옵션설명
);

-- Policy Options
ALTER TABLE MO_PolicyOptions
	ADD
		CONSTRAINT PK_MO_PolicyOptions -- Policy Options 기본키
		PRIMARY KEY (
			PLCY_OPT_UID -- 정책옵션UID
		);

-- Reviews
CREATE TABLE MO_Reviews (
	REVIEW_UID   VARCHAR(32)   NOT NULL, -- 리뷰UID
	ACMD_UID     VARCHAR(32)   NOT NULL, -- 숙박UID
	USER_ID      VARCHAR(40)   NOT NULL, -- 사용자ID
	REVIEW_CTNT  VARCHAR(1000) NULL,     -- 리뷰내용
	WRITE_DTTM   VARCHAR(20)   NULL,     -- 작성일시
	REVIEW_SCORE VARCHAR(3)    NULL      -- 리뷰점수
);

-- Reviews
ALTER TABLE MO_Reviews
	ADD
		CONSTRAINT PK_MO_Reviews -- Reviews 기본키
		PRIMARY KEY (
			REVIEW_UID, -- 리뷰UID
			ACMD_UID,   -- 숙박UID
			USER_ID     -- 사용자ID
		);

-- Rooms
CREATE TABLE MO_Rooms (
	ROOM_UID           VARCHAR(32)   NOT NULL, -- 방UID
	ROOM_NAME          VARCHAR(100)  NULL,     -- 방명
	ROOM_DESC          VARCHAR(1000) NULL,     -- 방설명
	IMG_URL            VARCHAR(255)  NULL,     -- 이미지URL
	SITE_TYPE_UID      VARCHAR(32)   NULL,     -- 사이트타입UID
	ROOM_CNT           VARCHAR(10)   NULL,     -- 방개수
	MAX_PPL_CNT        VARCHAR(10)   NULL,     -- 최대인원수
	EXTRA_PPL_CNT      VARCHAR(10)   NULL,     -- 추가인원수
	ADULT_EXTRA_PRICE  VARCHAR(10)   NULL,     -- 성인추가가격
	CHILD_EXTRA_PRICE  VARCHAR(10)   NULL,     -- 아동추가가격
	INFANT_EXTRA_PRICE VARCHAR(10)   NULL,     -- 유아추가가격
	MIN_ACMD_DAYS      VARCHAR(10)   NULL,     -- 최소숙박일수
	BED_CNT            VARCHAR(10)   NULL,     -- 침대개수
	ROOM_SIZE          INTEGER       NULL,     -- 방사이즈
	ACMD_UID           VARCHAR(32)   NULL,     -- 숙박UID
	ROOM_TYPE_UID      VARCHAR(32)   NULL,     -- 방타입UID
	USER_ID            VARCHAR(40)   NULL      -- 사용자ID
);

-- Rooms
ALTER TABLE MO_Rooms
	ADD
		CONSTRAINT PK_MO_Rooms -- Rooms 기본키
		PRIMARY KEY (
			ROOM_UID -- 방UID
		);

-- Room Images
CREATE TABLE MO_RoomImages (
	IMG_UID   VARCHAR(32)  NOT NULL, -- 이미지UID
	ROOM_UID  VARCHAR(32)  NOT NULL, -- 방UID
	IMG_URL   VARCHAR(255) NULL,     -- 이미지URL
	IMG_TITLE VARCHAR(100) NULL      -- 이미지제목
);

-- Room Images
ALTER TABLE MO_RoomImages
	ADD
		CONSTRAINT PK_MO_RoomImages -- Room Images 기본키
		PRIMARY KEY (
			IMG_UID,  -- 이미지UID
			ROOM_UID  -- 방UID
		);

-- Amenities
CREATE TABLE MO_Amenities (
	AMNY_UID  VARCHAR(32)  NOT NULL, -- 편의시설UID
	AMNY_NAME VARCHAR(100) NOT NULL, -- 편의시설명
	AMNY_IMG  VARCHAR(255) NULL      -- 편의시설이미지
);

-- Amenities
ALTER TABLE MO_Amenities
	ADD
		CONSTRAINT PK_MO_Amenities -- Amenities 기본키
		PRIMARY KEY (
			AMNY_UID -- 편의시설UID
		);

-- Accommodation Facilities Relation
CREATE TABLE MO_AcmdFacilitiesRel (
	ACMD_UID VARCHAR(32) NOT NULL, -- 숙박UID
	FCLT_ID  VARCHAR(40) NOT NULL, -- 숙박시설ID
	USER_ID  VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Facilities Relation
ALTER TABLE MO_AcmdFacilitiesRel
	ADD
		CONSTRAINT PK_MO_AcmdFacilitiesRel -- Accommodation Facilities Relation 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙박UID
			FCLT_ID,  -- 숙박시설ID
			USER_ID   -- 사용자ID
		);

-- Room Amenities
CREATE TABLE MO_RoomAmenities (
	ROOM_UID VARCHAR(32) NOT NULL, -- 방UID
	AMNY_UID VARCHAR(32) NOT NULL  -- 편의시설UID
);

-- Room Amenities
ALTER TABLE MO_RoomAmenities
	ADD
		CONSTRAINT PK_MO_RoomAmenities -- Room Amenities 기본키
		PRIMARY KEY (
			ROOM_UID, -- 방UID
			AMNY_UID  -- 편의시설UID
		);

-- Special Amenities
CREATE TABLE MO_SpecialAmenities (
	ROOM_UID          VARCHAR(32)   NOT NULL, -- 방UID
	SPECIAL_AMNY_NAME VARCHAR(100)  NULL,     -- 특수편의시설명
	SPECIAL_AMNY_DESC VARCHAR(1000) NULL      -- 특수편의시설설명
);

-- Special Amenities
ALTER TABLE MO_SpecialAmenities
	ADD
		CONSTRAINT PK_MO_SpecialAmenities -- Special Amenities 기본키
		PRIMARY KEY (
			ROOM_UID -- 방UID
		);

-- Default Room Price
CREATE TABLE MO_DfltRoomPrice (
	ROOM_UID      VARCHAR(32) NOT NULL, -- 방UID
	SEASON_CAT_CD VARCHAR(2)  NOT NULL, -- 시즌구분코드
	SUN_PRICE     VARCHAR(10) NULL,     -- 일요일가격
	MON_PRICE     VARCHAR(10) NULL,     -- 월요일가격
	TUE_PRICE     VARCHAR(10) NULL,     -- 화요일가격
	WED_PRICE     VARCHAR(10) NULL,     -- 수요일가격
	THU_PRICE     VARCHAR(10) NULL,     -- 목요일가격
	FRI_PRICE     VARCHAR(10) NULL,     -- 금요일가격
	SAT_PRICE     VARCHAR(10) NULL      -- 토요일가격
);

-- Default Room Price
ALTER TABLE MO_DfltRoomPrice
	ADD
		CONSTRAINT PK_MO_DfltRoomPrice -- Default Room Price 기본키
		PRIMARY KEY (
			ROOM_UID,      -- 방UID
			SEASON_CAT_CD  -- 시즌구분코드
		);

-- Accomodation PolicyOption Relation
CREATE TABLE MO_AcmdPolicyOptionRel (
	ACMD_UID     VARCHAR(32) NOT NULL, -- 숙박UID
	PLCY_OPT_UID VARCHAR(32) NOT NULL, -- 정책옵션UID
	USER_ID      VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accomodation PolicyOption Relation
ALTER TABLE MO_AcmdPolicyOptionRel
	ADD
		CONSTRAINT PK_MO_AcmdPolicyOptionRel -- Accomodation PolicyOption Relation 기본키
		PRIMARY KEY (
			ACMD_UID,     -- 숙박UID
			PLCY_OPT_UID, -- 정책옵션UID
			USER_ID       -- 사용자ID
		);

-- Site Types
CREATE TABLE MO_SiteTypes (
	SITE_TYPE_UID  VARCHAR(32)  NOT NULL, -- 사이트타입UID
	SITE_TYPE_NAME VARCHAR(100) NULL      -- 사이트타입명
);

-- Site Types
ALTER TABLE MO_SiteTypes
	ADD
		CONSTRAINT PK_MO_SiteTypes -- Site Types 기본키
		PRIMARY KEY (
			SITE_TYPE_UID -- 사이트타입UID
		);

-- Discount Rates
CREATE TABLE MO_DiscountRates (
	ROOM_UID                VARCHAR(32) NOT NULL, -- 방UID
	DISCOUNT_TYPE_CD        VARCHAR(2)  NOT NULL, -- 할인타입코드
	DISCOUNT_RATE           INTEGER     NULL,     -- 할인률
	DISCOUNT_START_DATE     VARCHAR(10) NULL,     -- 할인시작일자
	DISCOUNT_END_DATE       VARCHAR(10) NULL,     -- 할인종료일자
	DISCOUNT_APPLY_WEEK_DAY VARCHAR(13) NULL      -- 할인적용요일
);

-- Discount Rates
ALTER TABLE MO_DiscountRates
	ADD
		CONSTRAINT PK_MO_DiscountRates -- Discount Rates 기본키
		PRIMARY KEY (
			ROOM_UID,         -- 방UID
			DISCOUNT_TYPE_CD  -- 할인타입코드
		);

-- Season
CREATE TABLE MO_Season (
	SEASON_CD         VARCHAR(2)  NOT NULL, -- 시즌코드
	ACMD_UID          VARCHAR(32) NOT NULL, -- 숙박UID
	USER_ID           VARCHAR(40) NOT NULL, -- 사용자ID
	SEASON_START_DATE VARCHAR(10) NULL,     -- 시즌시작일자
	SEASON_END_DATE   VARCHAR(10) NULL      -- 시즌종료일자
);

-- Season
ALTER TABLE MO_Season
	ADD
		CONSTRAINT PK_MO_Season -- Season 기본키
		PRIMARY KEY (
			SEASON_CD, -- 시즌코드
			ACMD_UID,  -- 숙박UID
			USER_ID    -- 사용자ID
		);

-- Activity
CREATE TABLE MO_Activity (
	ACTV_UID      VARCHAR(32)   NOT NULL, -- 액티비티UID
	ACTV_NAME     VARCHAR(100)  NULL,     -- 액티비티명
	CITY_UID      VARCHAR(32)   NULL,     -- 도시UID
	EMAIL         VARCHAR(100)  NULL,     -- 이메일
	CONTACT       VARCHAR(30)   NULL,     -- 연락처
	IMG_URL       VARCHAR(255)  NULL,     -- 이미지URL
	VIDEO_URL     VARCHAR(255)  NULL,     -- 비디오URL
	CRC_NATION_CD VARCHAR(2)    NULL,     -- 통화국가코드
	DURATION      VARCHAR(5)    NULL,     -- 소요시간
	ACTV_ADDR     VARCHAR(255)  NULL,     -- 액티비티주소
	ACTV_ALTD     VARCHAR(255)  NULL,     -- 액티비티위도
	ACTV_LGTD     VARCHAR(255)  NULL,     -- 액티비티경도
	DIRECTION     VARCHAR(1000) NULL      -- 오는길
);

-- Activity
ALTER TABLE MO_Activity
	ADD
		CONSTRAINT PK_MO_Activity -- Activity 기본키
		PRIMARY KEY (
			ACTV_UID -- 액티비티UID
		);

-- Acvity Types
CREATE TABLE MO_ActivityTypes (
	ACTV_TYPE_UID  VARCHAR(32)  NOT NULL, -- 액티비티타입UID
	ACTV_TYPE_NAME VARCHAR(100) NULL,     -- 액티비티타입명
	ACTV_TYPE_IMG  VARCHAR(255) NULL      -- 액티비티타입이미지
);

-- Acvity Types
ALTER TABLE MO_ActivityTypes
	ADD
		CONSTRAINT PK_MO_ActivityTypes -- Acvity Types 기본키
		PRIMARY KEY (
			ACTV_TYPE_UID -- 액티비티타입UID
		);

-- Daily Room Info
CREATE TABLE MO_DailyRoomInfo (
	ROOM_UID        VARCHAR(32)   NOT NULL, -- 방UID
	ACMD_DATE       VARCHAR(10)   NOT NULL, -- 숙박일자
	ROOM_RSV_STATUS VARCHAR(2)    NULL,     -- 방예약상태
	ROOM_PRICE      VARCHAR(10)   NULL,     -- 방가격
	HOTDEAL_YN      VARCHAR(1)    NULL,     -- 핫딜여부
	MEMO            VARCHAR(1000) NULL      -- 메모
);

-- Daily Room Info
ALTER TABLE MO_DailyRoomInfo
	ADD
		CONSTRAINT PK_MO_DailyRoomInfo -- Daily Room Info 기본키
		PRIMARY KEY (
			ROOM_UID,  -- 방UID
			ACMD_DATE  -- 숙박일자
		);

-- Activity Images
CREATE TABLE MO_ActivityImages (
	ACTV_UID  VARCHAR(32)  NOT NULL, -- 액티비티UID
	IMG_URL   VARCHAR(255) NULL,     -- 이미지URL
	IMG_TITLE VARCHAR(100) NULL,     -- 이미지제목
	IMG_NO    INTEGER      NULL      -- 이미지번호
);

-- Activity Images
ALTER TABLE MO_ActivityImages
	ADD
		CONSTRAINT PK_MO_ActivityImages -- Activity Images 기본키
		PRIMARY KEY (
			ACTV_UID -- 액티비티UID
		);

-- Acvity Packages
CREATE TABLE MO_ActivityPackages (
	PACKAGE_UID   VARCHAR(32)  NOT NULL, -- 패키지UID
	ACTV_UID      VARCHAR(32)  NULL,     -- 액티비티UID
	PACKAGE_NAME  VARCHAR(100) NULL,     -- 패키지명
	OP_START_DATE VARCHAR(10)  NULL,     -- 운영시작일자
	OP_END_DATE   VARCHAR(10)  NULL,     -- 운영종료일자
	OP_WEEK_DAY   VARCHAR(13)  NULL      -- 운영요일
);

-- Acvity Packages
ALTER TABLE MO_ActivityPackages
	ADD
		CONSTRAINT PK_MO_ActivityPackages -- Acvity Packages 기본키
		PRIMARY KEY (
			PACKAGE_UID -- 패키지UID
		);

-- Activity Package Desc
CREATE TABLE MO_ActivityPackageDesc (
	PACKAGE_DESC_UID VARCHAR(32)   NOT NULL, -- 패키지설명UID
	PACKAGE_UID      VARCHAR(32)   NOT NULL, -- 패키지UID
	PACKAGE_DESC     VARCHAR(1000) NOT NULL  -- 패키지설명
);

-- Activity Package Desc
ALTER TABLE MO_ActivityPackageDesc
	ADD
		CONSTRAINT PK_MO_ActivityPackageDesc -- Activity Package Desc 기본키
		PRIMARY KEY (
			PACKAGE_DESC_UID, -- 패키지설명UID
			PACKAGE_UID       -- 패키지UID
		);

-- Package Operation Times
CREATE TABLE MO_PackageOpTimes (
	PACKAGE_OP_TIME_UID VARCHAR(32) NOT NULL, -- 패키지운영시간UID
	PACKAGE_UID         VARCHAR(32) NOT NULL, -- 패키지UID
	PACKAGE_OP_TIME     VARCHAR(5)  NOT NULL  -- 패키지운영시간
);

-- Package Operation Times
ALTER TABLE MO_PackageOpTimes
	ADD
		CONSTRAINT PK_MO_PackageOpTimes -- Package Operation Times 기본키
		PRIMARY KEY (
			PACKAGE_OP_TIME_UID, -- 패키지운영시간UID
			PACKAGE_UID          -- 패키지UID
		);

-- Package Price
CREATE TABLE MO_PackagePrice (
	PACKAGE_PRICE_UID VARCHAR(32)  NOT NULL, -- 패키지가격UID
	PACKAGE_UID       VARCHAR(32)  NOT NULL, -- 패키지UID
	QUANTITY_NAME     VARCHAR(100) NULL,     -- 수량명
	PRICE             VARCHAR(10)  NULL,     -- 가격
	MIN_RSRV_PPL      VARCHAR(10)  NULL,     -- 최소예약인원
	MAX_RSRV_PPL      VARCHAR(10)  NULL      -- 최대예약인원
);

-- Package Price
ALTER TABLE MO_PackagePrice
	ADD
		CONSTRAINT PK_MO_PackagePrice -- Package Price 기본키
		PRIMARY KEY (
			PACKAGE_PRICE_UID, -- 패키지가격UID
			PACKAGE_UID        -- 패키지UID
		);

-- Package Discount
CREATE TABLE MO_PackageDiscount (
	PACKAGE_UID             VARCHAR(32) NOT NULL, -- 패키지UID
	DISCOUNT_TYPE_CD        VARCHAR(2)  NOT NULL, -- 할인타입코드
	DISCOUNT_RATE           INTEGER     NULL,     -- 할인률
	DISCOUNT_START_DATE     VARCHAR(10) NULL,     -- 할인시작일자
	DISCOUNT_END_DATE       VARCHAR(10) NULL,     -- 할인종료일자
	DISCOUNT_APPLY_WEEK_DAY VARCHAR(13) NULL      -- 할인적용요일
);

-- Package Discount
ALTER TABLE MO_PackageDiscount
	ADD
		CONSTRAINT PK_MO_PackageDiscount -- Package Discount 기본키
		PRIMARY KEY (
			PACKAGE_UID,      -- 패키지UID
			DISCOUNT_TYPE_CD  -- 할인타입코드
		);

-- Activity Information
CREATE TABLE MO_ActivityInfo (
	ACTV_UID      VARCHAR(32)   NOT NULL, -- 액티비티UID
	EXCLUDE_ITEM  VARCHAR(1000) NULL,     -- 제외항목
	INCLUDE_ITEM  VARCHAR(1000) NULL,     -- 포함항목
	BUSINESS_HOUR VARCHAR(1000) NULL,     -- 영업시간
	SCHEDULE      VARCHAR(1000) NULL,     -- 스케쥴
	REMINDER      VARCHAR(1000) NULL      -- 리마인더
);

-- Activity Information
ALTER TABLE MO_ActivityInfo
	ADD
		CONSTRAINT PK_MO_ActivityInfo -- Activity Information 기본키
		PRIMARY KEY (
			ACTV_UID -- 액티비티UID
		);

-- Activity Package Options
CREATE TABLE MO_ActivityPackageOptions (
	ACTV_UID          VARCHAR(32)   NOT NULL, -- 액티비티UID
	PACKAGE_OPT_UID   VARCHAR(32)   NOT NULL, -- 패키지옵션UID
	PACKAGE_OPT_TITLE VARCHAR(100)  NULL,     -- 패키지옵션제목
	PACKAGE_OPT_CTNT  VARCHAR(1000) NULL      -- 패키지옵션내용
);

-- Activity Package Options
ALTER TABLE MO_ActivityPackageOptions
	ADD
		CONSTRAINT PK_MO_ActivityPackageOptions -- Activity Package Options 기본키
		PRIMARY KEY (
			ACTV_UID,        -- 액티비티UID
			PACKAGE_OPT_UID  -- 패키지옵션UID
		);

-- Activity Policy
CREATE TABLE MO_ActivityPolicy (
	PLCY_UID         VARCHAR(32)   NOT NULL, -- 정책UID
	ACTV_UID         VARCHAR(32)   NOT NULL, -- 액티비티UID
	CFRM_TYPE_CD     VARCHAR(2)    NULL,     -- 확인타입코드
	CFRM_TIME        VARCHAR(5)    NULL,     -- 확인시간
	RSRV_ABLE_CD     VARCHAR(2)    NULL,     -- 예약가능코드
	RSRV_ABLE_DAYS   INTEGER       NULL,     -- 예약가능일수
	CANCEL_TYPE_CD   VARCHAR(2)    NULL,     -- 취소타입코드
	CANCEL_ABLE_TIME VARCHAR(5)    NULL,     -- 취소가능시간
	HOW_TO_USE       VARCHAR(1000) NULL      -- 사용법
);

-- Activity Policy
ALTER TABLE MO_ActivityPolicy
	ADD
		CONSTRAINT PK_MO_ActivityPolicy -- Activity Policy 기본키
		PRIMARY KEY (
			PLCY_UID, -- 정책UID
			ACTV_UID  -- 액티비티UID
		);

-- User Info
CREATE TABLE MO_UserInfo (
	USER_ID              VARCHAR(40)  NOT NULL, -- 사용자ID
	USER_NAME            VARCHAR(100) NULL,     -- 사용자명
	PASSWORD             VARCHAR(512) NULL,     -- 비밀번호
	PROFILE_IMG_URL      VARCHAR(255) NULL,     -- 프로필이미지URL
	PASSWORD_ERROR_COUNT VARCHAR(10)  NULL,     -- 비밀번호오류횟수
	LOCK_YN              VARCHAR(1)   NULL,     -- 잠금여부
	SIGNUP_DTTM          VARCHAR(20)  NULL,     -- 가입일시
	LAST_LOGIN_DTTM      VARCHAR(20)  NULL      -- 마지막로그인일시
);

-- User Info
ALTER TABLE MO_UserInfo
	ADD
		CONSTRAINT PK_MO_UserInfo -- User Info 기본키
		PRIMARY KEY (
			USER_ID -- 사용자ID
		);

-- Accommodation Themes Relation
CREATE TABLE MO_AcmdThemesRel (
	ACMD_UID      VARCHAR(32) NOT NULL, -- 숙박UID
	ACMD_THEME_ID VARCHAR(40) NOT NULL, -- 숙박테마ID
	USER_ID       VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Themes Relation
ALTER TABLE MO_AcmdThemesRel
	ADD
		CONSTRAINT PK_MO_AcmdThemesRel -- Accommodation Themes Relation 기본키
		PRIMARY KEY (
			ACMD_UID,      -- 숙박UID
			ACMD_THEME_ID, -- 숙박테마ID
			USER_ID        -- 사용자ID
		);

-- Accommodation Special Facilities Relation
CREATE TABLE MO_AcmdSpecialFacilitiesRel (
	SPECIAL_FCLT_ID VARCHAR(40) NOT NULL, -- 특수숙박시설ID
	ACMD_UID        VARCHAR(32) NOT NULL, -- 숙박UID
	USER_ID         VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Special Facilities Relation
ALTER TABLE MO_AcmdSpecialFacilitiesRel
	ADD
		CONSTRAINT PK_MO_AcmdSpecialFacilitiesRel -- Accommodation Special Facilities Relation 기본키
		PRIMARY KEY (
			SPECIAL_FCLT_ID, -- 특수숙박시설ID
			ACMD_UID,        -- 숙박UID
			USER_ID          -- 사용자ID
		);

-- Accommodation Types
CREATE TABLE MO_AcmdTypes (
	ACMD_TYPE_ID   VARCHAR(40)  NOT NULL, -- 숙박타입ID
	ACMD_TYPE_NAME VARCHAR(100) NULL,     -- 숙박타입명
	ACMD_TYPE_IMG  VARCHAR(255) NULL      -- 숙박타입이미지
);

-- Accommodation Types
ALTER TABLE MO_AcmdTypes
	ADD
		CONSTRAINT PK_MO_AcmdTypes -- Accommodation Types 기본키
		PRIMARY KEY (
			ACMD_TYPE_ID -- 숙박타입ID
		);

-- Accommodation Types Relation
CREATE TABLE MO_AcmdTypesRel (
	ACMD_TYPE_ID VARCHAR(40) NOT NULL, -- 숙박타입ID
	ACMD_UID     VARCHAR(32) NOT NULL, -- 숙박UID
	USER_ID      VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Types Relation
ALTER TABLE MO_AcmdTypesRel
	ADD
		CONSTRAINT PK_MO_AcmdTypesRel -- Accommodation Types Relation 기본키
		PRIMARY KEY (
			ACMD_TYPE_ID, -- 숙박타입ID
			ACMD_UID,     -- 숙박UID
			USER_ID       -- 사용자ID
		);