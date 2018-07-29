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

-- Accommodation Activity Relation
DROP TABLE MO_AcmdActvRel;

-- Activity ActivityType Relation
DROP TABLE MO_ActvActvRel;

-- Accommodation
CREATE TABLE MO_Accommodation (
	ACMD_UID       VARCHAR(32)   NOT NULL, -- 숙소UID
	USER_ID        VARCHAR(40)   NOT NULL, -- 사용자ID
	ACMD_NAME      VARCHAR(100)  NOT NULL, -- 숙소명
	ACMD_DESC      VARCHAR(1000) NULL,     -- 숙소설명
	IMG_URL        VARCHAR(255)  NULL,     -- 이미지URL
	ACMD_ADDR      VARCHAR(255)  NOT NULL, -- 숙박주소
	ACMD_ALTD      VARCHAR(255)  NULL,     -- 숙박위도
	ACMD_LGTD      VARCHAR(255)  NULL,     -- 숙박경도
	DIRECTION      VARCHAR(1000) NULL,     -- 오는길
	ACMD_AVG_SCORE VARCHAR(3)    NULL,     -- 숙박평균점수
	CITY_NO        INTEGER       NULL,     -- 도시번호
	CRC_NATION_CD  VARCHAR(2)    NULL,     -- 통화국가코드
	CRC_UNIT       VARCHAR(3)    NULL,     -- 통화단위
	CANCEL_PLCY_ID VARCHAR(40)   NULL,     -- 취소정책ID
	ACTIVE_YN      VARCHAR(1)    NOT NULL, -- 활성화여부
	CREATE_DTTM    TIMESTAMP     NOT NULL, -- 생성일시
	UPDATE_DTTM    TIMESTAMP     NOT NULL  -- 수정일시
);

-- Accommodation
ALTER TABLE MO_Accommodation
	ADD
		CONSTRAINT PK_MO_Accommodation -- Accommodation 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙소UID
			USER_ID   -- 사용자ID
		);

-- Accommodation
COMMENT ON TABLE MO_Accommodation IS 'Accommodation';

-- 숙소UID
COMMENT ON COLUMN MO_Accommodation.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_Accommodation.USER_ID IS '사용자ID';

-- 숙소명
COMMENT ON COLUMN MO_Accommodation.ACMD_NAME IS '숙소명';

-- 숙소설명
COMMENT ON COLUMN MO_Accommodation.ACMD_DESC IS '숙소설명';

-- 이미지URL
COMMENT ON COLUMN MO_Accommodation.IMG_URL IS '이미지URL';

-- 숙박주소
COMMENT ON COLUMN MO_Accommodation.ACMD_ADDR IS '숙박주소';

-- 숙박위도
COMMENT ON COLUMN MO_Accommodation.ACMD_ALTD IS '숙박위도';

-- 숙박경도
COMMENT ON COLUMN MO_Accommodation.ACMD_LGTD IS '숙박경도';

-- 오는길
COMMENT ON COLUMN MO_Accommodation.DIRECTION IS '오는길';

-- 숙박평균점수
COMMENT ON COLUMN MO_Accommodation.ACMD_AVG_SCORE IS '숙박평균점수';

-- 도시번호
COMMENT ON COLUMN MO_Accommodation.CITY_NO IS '도시번호';

-- 통화국가코드
COMMENT ON COLUMN MO_Accommodation.CRC_NATION_CD IS '통화국가코드';

-- 통화단위
COMMENT ON COLUMN MO_Accommodation.CRC_UNIT IS '통화단위';

-- 취소정책ID
COMMENT ON COLUMN MO_Accommodation.CANCEL_PLCY_ID IS '취소정책ID';

-- 활성화여부
COMMENT ON COLUMN MO_Accommodation.ACTIVE_YN IS '활성화여부';

-- 생성일시
COMMENT ON COLUMN MO_Accommodation.CREATE_DTTM IS '생성일시';

-- 수정일시
COMMENT ON COLUMN MO_Accommodation.UPDATE_DTTM IS '수정일시';

-- Accommodation 기본키
-- COMMENT ON INDEX PK_MO_Accommodation IS 'Accommodation 기본키';

-- Accommodation 기본키
-- COMMENT ON CONSTRAINT MO_Accommodation.PK_MO_Accommodation IS 'Accommodation 기본키';

-- Currency
CREATE TABLE MO_Currency (
	CRC_NATION_CD   VARCHAR(2)   NOT NULL, -- 통화국가코드
	CRC_UNIT        VARCHAR(3)   NOT NULL, -- 통화단위
	CRC_NATION_NAME VARCHAR(100) NULL,     -- 통화국가명
	CRC_NAME        VARCHAR(100) NULL      -- 통화명
);

-- Currency
ALTER TABLE MO_Currency
	ADD
		CONSTRAINT PK_MO_Currency -- Currency 기본키
		PRIMARY KEY (
			CRC_NATION_CD, -- 통화국가코드
			CRC_UNIT       -- 통화단위
		);

-- Currency
COMMENT ON TABLE MO_Currency IS 'Currency';

-- 통화국가코드
COMMENT ON COLUMN MO_Currency.CRC_NATION_CD IS '통화국가코드';

-- 통화단위
COMMENT ON COLUMN MO_Currency.CRC_UNIT IS '통화단위';

-- 통화국가명
COMMENT ON COLUMN MO_Currency.CRC_NATION_NAME IS '통화국가명';

-- 통화명
COMMENT ON COLUMN MO_Currency.CRC_NAME IS '통화명';

-- Currency 기본키
-- COMMENT ON INDEX PK_MO_Currency IS 'Currency 기본키';

-- Currency 기본키
-- COMMENT ON CONSTRAINT MO_Currency.PK_MO_Currency IS 'Currency 기본키';

-- NationCity
CREATE TABLE MO_NationCity (
	CITY_NO       INTEGER      NOT NULL, -- 도시번호
	NATION_CD     VARCHAR(2)   NULL,     -- 국가코드
	NATION_NAME   VARCHAR(100) NULL,     -- 국가명
	PROVINCE_CD   VARCHAR(2)   NULL,     -- 행정구역코드
	PROVINCE_NAME VARCHAR(100) NULL,     -- 행정구역명
	CITY_CD       VARCHAR(3)   NULL,     -- 도시코드
	CITY_NAME     VARCHAR(100) NULL      -- 도시명
);

-- NationCity
ALTER TABLE MO_NationCity
	ADD
		CONSTRAINT PK_MO_NationCity -- NationCity 기본키
		PRIMARY KEY (
			CITY_NO -- 도시번호
		);

-- NationCity
COMMENT ON TABLE MO_NationCity IS 'NationCity';

-- 도시번호
COMMENT ON COLUMN MO_NationCity.CITY_NO IS '도시번호';

-- 국가코드
COMMENT ON COLUMN MO_NationCity.NATION_CD IS '국가코드';

-- 국가명
COMMENT ON COLUMN MO_NationCity.NATION_NAME IS '국가명';

-- 행정구역코드
COMMENT ON COLUMN MO_NationCity.PROVINCE_CD IS '행정구역코드';

-- 행정구역명
COMMENT ON COLUMN MO_NationCity.PROVINCE_NAME IS '행정구역명';

-- 도시코드
COMMENT ON COLUMN MO_NationCity.CITY_CD IS '도시코드';

-- 도시명
COMMENT ON COLUMN MO_NationCity.CITY_NAME IS '도시명';

-- NationCity 기본키
-- COMMENT ON INDEX PK_MO_NationCity IS 'NationCity 기본키';

-- NationCity 기본키
-- COMMENT ON CONSTRAINT MO_NationCity.PK_MO_NationCity IS 'NationCity 기본키';

-- Recommend Spots
CREATE TABLE MO_RecommendSpots (
	RCMD_PLACE_UID     VARCHAR(32)   NOT NULL, -- 추천장소UID
	ACMD_UID           VARCHAR(32)   NOT NULL, -- 숙소UID
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
			ACMD_UID,       -- 숙소UID
			USER_ID         -- 사용자ID
		);

-- Recommend Spots
COMMENT ON TABLE MO_RecommendSpots IS 'Recommend Spots';

-- 추천장소UID
COMMENT ON COLUMN MO_RecommendSpots.RCMD_PLACE_UID IS '추천장소UID';

-- 숙소UID
COMMENT ON COLUMN MO_RecommendSpots.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_RecommendSpots.USER_ID IS '사용자ID';

-- 추천장소명
COMMENT ON COLUMN MO_RecommendSpots.RCMD_PLACE_NAME IS '추천장소명';

-- 추천장소설명
COMMENT ON COLUMN MO_RecommendSpots.RCMD_PLACE_DESC IS '추천장소설명';

-- 추천장소이미지URL
COMMENT ON COLUMN MO_RecommendSpots.RCMD_PLACE_IMG_URL IS '추천장소이미지URL';

-- Recommend Spots 기본키
-- COMMENT ON INDEX PK_MO_RecommendSpots IS 'Recommend Spots 기본키';

-- Recommend Spots 기본키
-- COMMENT ON CONSTRAINT MO_RecommendSpots.PK_MO_RecommendSpots IS 'Recommend Spots 기본키';

-- Room Types
CREATE TABLE MO_RoomTypes (
	ROOM_TYPE_ID      VARCHAR(40)  NOT NULL, -- 방타입ID
	ROOM_TYPE_NAME    VARCHAR(100) NULL,     -- 방타입명
	ROOM_TYPE_IMG_URL VARCHAR(255) NULL      -- 방타입이미지URL
);

-- Room Types
ALTER TABLE MO_RoomTypes
	ADD
		CONSTRAINT PK_MO_RoomTypes -- Room Types 기본키
		PRIMARY KEY (
			ROOM_TYPE_ID -- 방타입ID
		);

-- Room Types
COMMENT ON TABLE MO_RoomTypes IS 'Room Types';

-- 방타입ID
COMMENT ON COLUMN MO_RoomTypes.ROOM_TYPE_ID IS '방타입ID';

-- 방타입명
COMMENT ON COLUMN MO_RoomTypes.ROOM_TYPE_NAME IS '방타입명';

-- 방타입이미지URL
COMMENT ON COLUMN MO_RoomTypes.ROOM_TYPE_IMG_URL IS '방타입이미지URL';

-- Room Types 기본키
-- COMMENT ON INDEX PK_MO_RoomTypes IS 'Room Types 기본키';

-- Room Types 기본키
-- COMMENT ON CONSTRAINT MO_RoomTypes.PK_MO_RoomTypes IS 'Room Types 기본키';

-- Facilities
CREATE TABLE MO_Facilities (
	FCLT_ID      VARCHAR(40)  NOT NULL, -- 숙박시설ID
	FCLT_NAME    VARCHAR(100) NULL,     -- 숙박시설명
	FCLT_IMG_URL VARCHAR(255) NULL      -- 숙박시설이미지URL
);

-- Facilities
ALTER TABLE MO_Facilities
	ADD
		CONSTRAINT PK_MO_Facilities -- Facilities 기본키
		PRIMARY KEY (
			FCLT_ID -- 숙박시설ID
		);

-- Facilities
COMMENT ON TABLE MO_Facilities IS 'Facilities';

-- 숙박시설ID
COMMENT ON COLUMN MO_Facilities.FCLT_ID IS '숙박시설ID';

-- 숙박시설명
COMMENT ON COLUMN MO_Facilities.FCLT_NAME IS '숙박시설명';

-- 숙박시설이미지URL
COMMENT ON COLUMN MO_Facilities.FCLT_IMG_URL IS '숙박시설이미지URL';

-- Facilities 기본키
-- COMMENT ON INDEX PK_MO_Facilities IS 'Facilities 기본키';

-- Facilities 기본키
-- COMMENT ON CONSTRAINT MO_Facilities.PK_MO_Facilities IS 'Facilities 기본키';

-- Themes
CREATE TABLE MO_Themes (
	ACMD_THEME_ID      VARCHAR(40)  NOT NULL, -- 숙박테마ID
	ACMD_THEME_NAME    VARCHAR(100) NULL,     -- 숙박테마명
	ACMD_THEME_IMG_URL VARCHAR(255) NULL      -- 숙소테마이미지URL
);

-- Themes
ALTER TABLE MO_Themes
	ADD
		CONSTRAINT PK_MO_Themes -- Themes 기본키
		PRIMARY KEY (
			ACMD_THEME_ID -- 숙박테마ID
		);

-- Themes
COMMENT ON TABLE MO_Themes IS 'Themes';

-- 숙박테마ID
COMMENT ON COLUMN MO_Themes.ACMD_THEME_ID IS '숙박테마ID';

-- 숙박테마명
COMMENT ON COLUMN MO_Themes.ACMD_THEME_NAME IS '숙박테마명';

-- 숙소테마이미지URL
COMMENT ON COLUMN MO_Themes.ACMD_THEME_IMG_URL IS '숙소테마이미지URL';

-- Themes 기본키
-- COMMENT ON INDEX PK_MO_Themes IS 'Themes 기본키';

-- Themes 기본키
-- COMMENT ON CONSTRAINT MO_Themes.PK_MO_Themes IS 'Themes 기본키';

-- Special Facilities
CREATE TABLE MO_SpecialFacilities (
	SPECIAL_FCLT_UID  VARCHAR(32)   NOT NULL, -- 특수숙박시설UID
	ACMD_UID          VARCHAR(32)   NOT NULL, -- 숙소UID
	USER_ID           VARCHAR(40)   NOT NULL, -- 사용자ID
	SPECIAL_FCLT_NAME VARCHAR(100)  NULL,     -- 특수숙박시설명
	SPECIAL_FCLT_DESC VARCHAR(1000) NULL      -- 특수숙박시설설명
);

-- Special Facilities
ALTER TABLE MO_SpecialFacilities
	ADD
		CONSTRAINT PK_MO_SpecialFacilities -- Special Facilities 기본키
		PRIMARY KEY (
			SPECIAL_FCLT_UID, -- 특수숙박시설UID
			ACMD_UID,         -- 숙소UID
			USER_ID           -- 사용자ID
		);

-- Special Facilities
COMMENT ON TABLE MO_SpecialFacilities IS 'Special Facilities';

-- 특수숙박시설UID
COMMENT ON COLUMN MO_SpecialFacilities.SPECIAL_FCLT_UID IS '특수숙박시설UID';

-- 숙소UID
COMMENT ON COLUMN MO_SpecialFacilities.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_SpecialFacilities.USER_ID IS '사용자ID';

-- 특수숙박시설명
COMMENT ON COLUMN MO_SpecialFacilities.SPECIAL_FCLT_NAME IS '특수숙박시설명';

-- 특수숙박시설설명
COMMENT ON COLUMN MO_SpecialFacilities.SPECIAL_FCLT_DESC IS '특수숙박시설설명';

-- Special Facilities 기본키
-- COMMENT ON INDEX PK_MO_SpecialFacilities IS 'Special Facilities 기본키';

-- Special Facilities 기본키
-- COMMENT ON CONSTRAINT MO_SpecialFacilities.PK_MO_SpecialFacilities IS 'Special Facilities 기본키';

-- Accommodation Images
CREATE TABLE MO_AcmdImages (
	IMG_UID   VARCHAR(32)  NOT NULL, -- 이미지UID
	ACMD_UID  VARCHAR(32)  NOT NULL, -- 숙소UID
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
			ACMD_UID, -- 숙소UID
			USER_ID   -- 사용자ID
		);

-- Accommodation Images
COMMENT ON TABLE MO_AcmdImages IS 'Accommodation Images';

-- 이미지UID
COMMENT ON COLUMN MO_AcmdImages.IMG_UID IS '이미지UID';

-- 숙소UID
COMMENT ON COLUMN MO_AcmdImages.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_AcmdImages.USER_ID IS '사용자ID';

-- 이미지URL
COMMENT ON COLUMN MO_AcmdImages.IMG_URL IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN MO_AcmdImages.IMG_TITLE IS '이미지제목';

-- 이미지번호
COMMENT ON COLUMN MO_AcmdImages.IMG_NO IS '이미지번호';

-- Accommodation Images 기본키
-- COMMENT ON INDEX PK_MO_AcmdImages IS 'Accommodation Images 기본키';

-- Accommodation Images 기본키
-- COMMENT ON CONSTRAINT MO_AcmdImages.PK_MO_AcmdImages IS 'Accommodation Images 기본키';

-- Extra Options
CREATE TABLE MO_ExtraOptions (
	EXTRA_OPT_UID   VARCHAR(32)   NOT NULL, -- 추가옵션UID
	ACMD_UID        VARCHAR(32)   NOT NULL, -- 숙소UID
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
			ACMD_UID,      -- 숙소UID
			USER_ID        -- 사용자ID
		);

-- Extra Options
COMMENT ON TABLE MO_ExtraOptions IS 'Extra Options';

-- 추가옵션UID
COMMENT ON COLUMN MO_ExtraOptions.EXTRA_OPT_UID IS '추가옵션UID';

-- 숙소UID
COMMENT ON COLUMN MO_ExtraOptions.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_ExtraOptions.USER_ID IS '사용자ID';

-- 추가옵션명
COMMENT ON COLUMN MO_ExtraOptions.EXTRA_OPT_NAME IS '추가옵션명';

-- 추가옵션설명
COMMENT ON COLUMN MO_ExtraOptions.EXTRA_OPT_DESC IS '추가옵션설명';

-- 추가옵션가격
COMMENT ON COLUMN MO_ExtraOptions.EXTRA_OPT_PRICE IS '추가옵션가격';

-- 선택최대개수
COMMENT ON COLUMN MO_ExtraOptions.CHOICE_MAX_CNT IS '선택최대개수';

-- 방문결제여부
COMMENT ON COLUMN MO_ExtraOptions.VISIT_PAY_YN IS '방문결제여부';

-- Extra Options 기본키
-- COMMENT ON INDEX PK_MO_ExtraOptions IS 'Extra Options 기본키';

-- Extra Options 기본키
-- COMMENT ON CONSTRAINT MO_ExtraOptions.PK_MO_ExtraOptions IS 'Extra Options 기본키';

-- Policies
CREATE TABLE MO_Policies (
	ACMD_UID           VARCHAR(32)   NOT NULL, -- 숙소UID
	USER_ID            VARCHAR(40)   NOT NULL, -- 사용자ID
	CHKIN_TIME         VARCHAR(5)    NULL,     -- 체크인시간
	CHKOUT_TIME        VARCHAR(5)    NULL,     -- 체크아웃시간
	IMMDT_CFRM_YN      VARCHAR(1)    NULL,     -- 즉석확인여부
	CFRM_REQ_TIME      VARCHAR(5)    NULL,     -- 확인필요시간
	CFRM_MSG           VARCHAR(1000) NULL,     -- 확인메시지
	RSRV_ABLE_DAYS     VARCHAR(10)   NULL,     -- 예약가능일수
	RSRV_ABLE_DAYS_MSG VARCHAR(1000) NULL      -- 예약가능일수메시지
);

-- Policies
ALTER TABLE MO_Policies
	ADD
		CONSTRAINT PK_MO_Policies -- Policies 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙소UID
			USER_ID   -- 사용자ID
		);

-- Policies
COMMENT ON TABLE MO_Policies IS 'Policies';

-- 숙소UID
COMMENT ON COLUMN MO_Policies.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_Policies.USER_ID IS '사용자ID';

-- 체크인시간
COMMENT ON COLUMN MO_Policies.CHKIN_TIME IS '체크인시간';

-- 체크아웃시간
COMMENT ON COLUMN MO_Policies.CHKOUT_TIME IS '체크아웃시간';

-- 즉석확인여부
COMMENT ON COLUMN MO_Policies.IMMDT_CFRM_YN IS '즉석확인여부';

-- 확인필요시간
COMMENT ON COLUMN MO_Policies.CFRM_REQ_TIME IS '확인필요시간';

-- 확인메시지
COMMENT ON COLUMN MO_Policies.CFRM_MSG IS '확인메시지';

-- 예약가능일수
COMMENT ON COLUMN MO_Policies.RSRV_ABLE_DAYS IS '예약가능일수';

-- 예약가능일수메시지
COMMENT ON COLUMN MO_Policies.RSRV_ABLE_DAYS_MSG IS '예약가능일수메시지';

-- Policies 기본키
-- COMMENT ON INDEX PK_MO_Policies IS 'Policies 기본키';

-- Policies 기본키
-- COMMENT ON CONSTRAINT MO_Policies.PK_MO_Policies IS 'Policies 기본키';

-- Cancel Policy
CREATE TABLE MO_CancelPolicy (
	CANCEL_PLCY_ID   VARCHAR(40)   NOT NULL, -- 취소정책ID
	CANCEL_PLCY_NAME VARCHAR(100)  NULL,     -- 취소정책명
	CANCEL_PLCY_DESC VARCHAR(1000) NULL      -- 취소정책설명
);

-- Cancel Policy
ALTER TABLE MO_CancelPolicy
	ADD
		CONSTRAINT PK_MO_CancelPolicy -- Cancel Policy 기본키
		PRIMARY KEY (
			CANCEL_PLCY_ID -- 취소정책ID
		);

-- Cancel Policy
COMMENT ON TABLE MO_CancelPolicy IS 'Cancel Policy';

-- 취소정책ID
COMMENT ON COLUMN MO_CancelPolicy.CANCEL_PLCY_ID IS '취소정책ID';

-- 취소정책명
COMMENT ON COLUMN MO_CancelPolicy.CANCEL_PLCY_NAME IS '취소정책명';

-- 취소정책설명
COMMENT ON COLUMN MO_CancelPolicy.CANCEL_PLCY_DESC IS '취소정책설명';

-- Cancel Policy 기본키
-- COMMENT ON INDEX PK_MO_CancelPolicy IS 'Cancel Policy 기본키';

-- Cancel Policy 기본키
-- COMMENT ON CONSTRAINT MO_CancelPolicy.PK_MO_CancelPolicy IS 'Cancel Policy 기본키';

-- Policy Options
CREATE TABLE MO_PolicyOptions (
	PLCY_OPT_UID  VARCHAR(32)   NOT NULL, -- 정책옵션UID
	ACMD_UID      VARCHAR(32)   NOT NULL, -- 숙소UID
	USER_ID       VARCHAR(40)   NOT NULL, -- 사용자ID
	PLCY_OPT_NAME VARCHAR(100)  NULL,     -- 정책옵션명
	PLCY_OPT_DESC VARCHAR(1000) NULL      -- 정책옵션설명
);

-- Policy Options
ALTER TABLE MO_PolicyOptions
	ADD
		CONSTRAINT PK_MO_PolicyOptions -- Policy Options 기본키
		PRIMARY KEY (
			PLCY_OPT_UID, -- 정책옵션UID
			ACMD_UID,     -- 숙소UID
			USER_ID       -- 사용자ID
		);

-- Policy Options
COMMENT ON TABLE MO_PolicyOptions IS 'Policy Options';

-- 정책옵션UID
COMMENT ON COLUMN MO_PolicyOptions.PLCY_OPT_UID IS '정책옵션UID';

-- 숙소UID
COMMENT ON COLUMN MO_PolicyOptions.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_PolicyOptions.USER_ID IS '사용자ID';

-- 정책옵션명
COMMENT ON COLUMN MO_PolicyOptions.PLCY_OPT_NAME IS '정책옵션명';

-- 정책옵션설명
COMMENT ON COLUMN MO_PolicyOptions.PLCY_OPT_DESC IS '정책옵션설명';

-- Policy Options 기본키
-- COMMENT ON INDEX PK_MO_PolicyOptions IS 'Policy Options 기본키';

-- Policy Options 기본키
-- COMMENT ON CONSTRAINT MO_PolicyOptions.PK_MO_PolicyOptions IS 'Policy Options 기본키';

-- Reviews
CREATE TABLE MO_Reviews (
	REVIEW_UID   VARCHAR(32)   NOT NULL, -- 리뷰UID
	ACMD_UID     VARCHAR(32)   NOT NULL, -- 숙소UID
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
			ACMD_UID,   -- 숙소UID
			USER_ID     -- 사용자ID
		);

-- Reviews
COMMENT ON TABLE MO_Reviews IS 'Reviews';

-- 리뷰UID
COMMENT ON COLUMN MO_Reviews.REVIEW_UID IS '리뷰UID';

-- 숙소UID
COMMENT ON COLUMN MO_Reviews.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_Reviews.USER_ID IS '사용자ID';

-- 리뷰내용
COMMENT ON COLUMN MO_Reviews.REVIEW_CTNT IS '리뷰내용';

-- 작성일시
COMMENT ON COLUMN MO_Reviews.WRITE_DTTM IS '작성일시';

-- 리뷰점수
COMMENT ON COLUMN MO_Reviews.REVIEW_SCORE IS '리뷰점수';

-- Reviews 기본키
-- COMMENT ON INDEX PK_MO_Reviews IS 'Reviews 기본키';

-- Reviews 기본키
-- COMMENT ON CONSTRAINT MO_Reviews.PK_MO_Reviews IS 'Reviews 기본키';

-- Rooms
CREATE TABLE MO_Rooms (
	ROOM_UID           VARCHAR(32)   NOT NULL, -- 방UID
	ROOM_NAME          VARCHAR(100)  NULL,     -- 방명
	ROOM_DESC          VARCHAR(1000) NULL,     -- 방설명
	IMG_URL            VARCHAR(255)  NULL,     -- 이미지URL
	SITE_TYPE_ID       VARCHAR(40)   NULL,     -- 사이트타입ID
	ROOM_CNT           VARCHAR(10)   NULL,     -- 방개수
	MAX_PPL_CNT        VARCHAR(10)   NULL,     -- 최대인원수
	EXTRA_PPL_CNT      VARCHAR(10)   NULL,     -- 추가인원수
	ADULT_EXTRA_PRICE  VARCHAR(10)   NULL,     -- 성인추가가격
	CHILD_EXTRA_PRICE  VARCHAR(10)   NULL,     -- 아동추가가격
	INFANT_EXTRA_PRICE VARCHAR(10)   NULL,     -- 유아추가가격
	MIN_ACMD_DAYS      VARCHAR(10)   NULL,     -- 최소숙박일수
	BED_CNT            VARCHAR(10)   NULL,     -- 침대개수
	ROOM_SIZE          INTEGER       NULL,     -- 방사이즈
	ACMD_UID           VARCHAR(32)   NULL,     -- 숙소UID
	ROOM_TYPE_ID       VARCHAR(40)   NULL,     -- 방타입ID
	USER_ID            VARCHAR(40)   NULL      -- 사용자ID
);

-- Rooms
ALTER TABLE MO_Rooms
	ADD
		CONSTRAINT PK_MO_Rooms -- Rooms 기본키
		PRIMARY KEY (
			ROOM_UID -- 방UID
		);

-- Rooms
COMMENT ON TABLE MO_Rooms IS 'Rooms';

-- 방UID
COMMENT ON COLUMN MO_Rooms.ROOM_UID IS '방UID';

-- 방명
COMMENT ON COLUMN MO_Rooms.ROOM_NAME IS '방명';

-- 방설명
COMMENT ON COLUMN MO_Rooms.ROOM_DESC IS '방설명';

-- 이미지URL
COMMENT ON COLUMN MO_Rooms.IMG_URL IS '이미지URL';

-- 사이트타입ID
COMMENT ON COLUMN MO_Rooms.SITE_TYPE_ID IS '사이트타입ID';

-- 방개수
COMMENT ON COLUMN MO_Rooms.ROOM_CNT IS '방개수';

-- 최대인원수
COMMENT ON COLUMN MO_Rooms.MAX_PPL_CNT IS '최대인원수';

-- 추가인원수
COMMENT ON COLUMN MO_Rooms.EXTRA_PPL_CNT IS '추가인원수';

-- 성인추가가격
COMMENT ON COLUMN MO_Rooms.ADULT_EXTRA_PRICE IS '성인추가가격';

-- 아동추가가격
COMMENT ON COLUMN MO_Rooms.CHILD_EXTRA_PRICE IS '아동추가가격';

-- 유아추가가격
COMMENT ON COLUMN MO_Rooms.INFANT_EXTRA_PRICE IS '유아추가가격';

-- 최소숙박일수
COMMENT ON COLUMN MO_Rooms.MIN_ACMD_DAYS IS '최소숙박일수';

-- 침대개수
COMMENT ON COLUMN MO_Rooms.BED_CNT IS '침대개수';

-- 방사이즈
COMMENT ON COLUMN MO_Rooms.ROOM_SIZE IS 'UNIT = SQUARE METER';

-- 숙소UID
COMMENT ON COLUMN MO_Rooms.ACMD_UID IS '숙소UID';

-- 방타입ID
COMMENT ON COLUMN MO_Rooms.ROOM_TYPE_ID IS '방타입ID';

-- 사용자ID
COMMENT ON COLUMN MO_Rooms.USER_ID IS '사용자ID';

-- Rooms 기본키
-- COMMENT ON INDEX PK_MO_Rooms IS 'Rooms 기본키';

-- Rooms 기본키
-- COMMENT ON CONSTRAINT MO_Rooms.PK_MO_Rooms IS 'Rooms 기본키';

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

-- Room Images
COMMENT ON TABLE MO_RoomImages IS 'Room Images';

-- 이미지UID
COMMENT ON COLUMN MO_RoomImages.IMG_UID IS '이미지UID';

-- 방UID
COMMENT ON COLUMN MO_RoomImages.ROOM_UID IS '방UID';

-- 이미지URL
COMMENT ON COLUMN MO_RoomImages.IMG_URL IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN MO_RoomImages.IMG_TITLE IS '이미지제목';

-- Room Images 기본키
-- COMMENT ON INDEX PK_MO_RoomImages IS 'Room Images 기본키';

-- Room Images 기본키
-- COMMENT ON CONSTRAINT MO_RoomImages.PK_MO_RoomImages IS 'Room Images 기본키';

-- Amenities
CREATE TABLE MO_Amenities (
	AMNY_ID      VARCHAR(40)  NOT NULL, -- 편의시설ID
	AMNY_NAME    VARCHAR(100) NOT NULL, -- 편의시설명
	AMNY_IMG_URL VARCHAR(255) NULL      -- 편의시설이미지URL
);

-- Amenities
ALTER TABLE MO_Amenities
	ADD
		CONSTRAINT PK_MO_Amenities -- Amenities 기본키
		PRIMARY KEY (
			AMNY_ID -- 편의시설ID
		);

-- Amenities
COMMENT ON TABLE MO_Amenities IS 'Amenities';

-- 편의시설ID
COMMENT ON COLUMN MO_Amenities.AMNY_ID IS '편의시설ID';

-- 편의시설명
COMMENT ON COLUMN MO_Amenities.AMNY_NAME IS '편의시설명';

-- 편의시설이미지URL
COMMENT ON COLUMN MO_Amenities.AMNY_IMG_URL IS '편의시설이미지URL';

-- Amenities 기본키
-- COMMENT ON INDEX PK_MO_Amenities IS 'Amenities 기본키';

-- Amenities 기본키
-- COMMENT ON CONSTRAINT MO_Amenities.PK_MO_Amenities IS 'Amenities 기본키';

-- Accommodation Facilities Relation
CREATE TABLE MO_AcmdFacilitiesRel (
	ACMD_UID VARCHAR(32) NOT NULL, -- 숙소UID
	FCLT_ID  VARCHAR(40) NOT NULL, -- 숙박시설ID
	USER_ID  VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Facilities Relation
ALTER TABLE MO_AcmdFacilitiesRel
	ADD
		CONSTRAINT PK_MO_AcmdFacilitiesRel -- Accommodation Facilities Relation 기본키
		PRIMARY KEY (
			ACMD_UID, -- 숙소UID
			FCLT_ID,  -- 숙박시설ID
			USER_ID   -- 사용자ID
		);

-- Accommodation Facilities Relation
COMMENT ON TABLE MO_AcmdFacilitiesRel IS 'Accommodation Facilities Relation';

-- 숙소UID
COMMENT ON COLUMN MO_AcmdFacilitiesRel.ACMD_UID IS '숙소UID';

-- 숙박시설ID
COMMENT ON COLUMN MO_AcmdFacilitiesRel.FCLT_ID IS '숙박시설ID';

-- 사용자ID
COMMENT ON COLUMN MO_AcmdFacilitiesRel.USER_ID IS '사용자ID';

-- Accommodation Facilities Relation 기본키
-- COMMENT ON INDEX PK_MO_AcmdFacilitiesRel IS 'Accommodation Facilities Relation 기본키';

-- Accommodation Facilities Relation 기본키
-- COMMENT ON CONSTRAINT MO_AcmdFacilitiesRel.PK_MO_AcmdFacilitiesRel IS 'Accommodation Facilities Relation 기본키';

-- Room Amenities
CREATE TABLE MO_RoomAmenities (
	ROOM_UID VARCHAR(32) NOT NULL, -- 방UID
	AMNY_ID  VARCHAR(40) NOT NULL  -- 편의시설ID
);

-- Room Amenities
ALTER TABLE MO_RoomAmenities
	ADD
		CONSTRAINT PK_MO_RoomAmenities -- Room Amenities 기본키
		PRIMARY KEY (
			ROOM_UID, -- 방UID
			AMNY_ID   -- 편의시설ID
		);

-- Room Amenities
COMMENT ON TABLE MO_RoomAmenities IS 'Room Amenities';

-- 방UID
COMMENT ON COLUMN MO_RoomAmenities.ROOM_UID IS '방UID';

-- 편의시설ID
COMMENT ON COLUMN MO_RoomAmenities.AMNY_ID IS '편의시설ID';

-- Room Amenities 기본키
-- COMMENT ON INDEX PK_MO_RoomAmenities IS 'Room Amenities 기본키';

-- Room Amenities 기본키
-- COMMENT ON CONSTRAINT MO_RoomAmenities.PK_MO_RoomAmenities IS 'Room Amenities 기본키';

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

-- Special Amenities
COMMENT ON TABLE MO_SpecialAmenities IS 'Special Amenities';

-- 방UID
COMMENT ON COLUMN MO_SpecialAmenities.ROOM_UID IS '방UID';

-- 특수편의시설명
COMMENT ON COLUMN MO_SpecialAmenities.SPECIAL_AMNY_NAME IS '특수편의시설명';

-- 특수편의시설설명
COMMENT ON COLUMN MO_SpecialAmenities.SPECIAL_AMNY_DESC IS '특수편의시설설명';

-- Special Amenities 기본키
-- COMMENT ON INDEX PK_MO_SpecialAmenities IS 'Special Amenities 기본키';

-- Special Amenities 기본키
-- COMMENT ON CONSTRAINT MO_SpecialAmenities.PK_MO_SpecialAmenities IS 'Special Amenities 기본키';

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

-- Default Room Price
COMMENT ON TABLE MO_DfltRoomPrice IS 'Default Room Price';

-- 방UID
COMMENT ON COLUMN MO_DfltRoomPrice.ROOM_UID IS '방UID';

-- 시즌구분코드
COMMENT ON COLUMN MO_DfltRoomPrice.SEASON_CAT_CD IS '시즌구분코드';

-- 일요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.SUN_PRICE IS '일요일가격';

-- 월요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.MON_PRICE IS '월요일가격';

-- 화요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.TUE_PRICE IS '화요일가격';

-- 수요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.WED_PRICE IS '수요일가격';

-- 목요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.THU_PRICE IS '목요일가격';

-- 금요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.FRI_PRICE IS '금요일가격';

-- 토요일가격
COMMENT ON COLUMN MO_DfltRoomPrice.SAT_PRICE IS '토요일가격';

-- Default Room Price 기본키
-- COMMENT ON INDEX PK_MO_DfltRoomPrice IS 'Default Room Price 기본키';

-- Default Room Price 기본키
-- COMMENT ON CONSTRAINT MO_DfltRoomPrice.PK_MO_DfltRoomPrice IS 'Default Room Price 기본키';

-- Site Types
CREATE TABLE MO_SiteTypes (
	SITE_TYPE_ID   VARCHAR(40)  NOT NULL, -- 사이트타입ID
	SITE_TYPE_NAME VARCHAR(100) NULL      -- 사이트타입명
);

-- Site Types
ALTER TABLE MO_SiteTypes
	ADD
		CONSTRAINT PK_MO_SiteTypes -- Site Types 기본키
		PRIMARY KEY (
			SITE_TYPE_ID -- 사이트타입ID
		);

-- Site Types
COMMENT ON TABLE MO_SiteTypes IS 'Site Types';

-- 사이트타입ID
COMMENT ON COLUMN MO_SiteTypes.SITE_TYPE_ID IS '사이트타입ID';

-- 사이트타입명
COMMENT ON COLUMN MO_SiteTypes.SITE_TYPE_NAME IS '사이트타입명';

-- Site Types 기본키
-- COMMENT ON INDEX PK_MO_SiteTypes IS 'Site Types 기본키';

-- Site Types 기본키
-- COMMENT ON CONSTRAINT MO_SiteTypes.PK_MO_SiteTypes IS 'Site Types 기본키';

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

-- Discount Rates
COMMENT ON TABLE MO_DiscountRates IS 'Discount Rates';

-- 방UID
COMMENT ON COLUMN MO_DiscountRates.ROOM_UID IS '방UID';

-- 할인타입코드
COMMENT ON COLUMN MO_DiscountRates.DISCOUNT_TYPE_CD IS '할인타입코드';

-- 할인률
COMMENT ON COLUMN MO_DiscountRates.DISCOUNT_RATE IS '할인률';

-- 할인시작일자
COMMENT ON COLUMN MO_DiscountRates.DISCOUNT_START_DATE IS '할인시작일자';

-- 할인종료일자
COMMENT ON COLUMN MO_DiscountRates.DISCOUNT_END_DATE IS '할인종료일자';

-- 할인적용요일
COMMENT ON COLUMN MO_DiscountRates.DISCOUNT_APPLY_WEEK_DAY IS '할인적용요일';

-- Discount Rates 기본키
-- COMMENT ON INDEX PK_MO_DiscountRates IS 'Discount Rates 기본키';

-- Discount Rates 기본키
-- COMMENT ON CONSTRAINT MO_DiscountRates.PK_MO_DiscountRates IS 'Discount Rates 기본키';

-- Season
CREATE TABLE MO_Season (
	SEASON_CD         VARCHAR(2)  NOT NULL, -- 시즌코드
	ACMD_UID          VARCHAR(32) NOT NULL, -- 숙소UID
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
			ACMD_UID,  -- 숙소UID
			USER_ID    -- 사용자ID
		);

-- Season
COMMENT ON TABLE MO_Season IS 'Season';

-- 시즌코드
COMMENT ON COLUMN MO_Season.SEASON_CD IS '시즌코드';

-- 숙소UID
COMMENT ON COLUMN MO_Season.ACMD_UID IS '숙소UID';

-- 사용자ID
COMMENT ON COLUMN MO_Season.USER_ID IS '사용자ID';

-- 시즌시작일자
COMMENT ON COLUMN MO_Season.SEASON_START_DATE IS '시즌시작일자';

-- 시즌종료일자
COMMENT ON COLUMN MO_Season.SEASON_END_DATE IS '시즌종료일자';

-- Season 기본키
-- COMMENT ON INDEX PK_MO_Season IS 'Season 기본키';

-- Season 기본키
-- COMMENT ON CONSTRAINT MO_Season.PK_MO_Season IS 'Season 기본키';

-- Activity
CREATE TABLE MO_Activity (
	ACTV_UID      VARCHAR(32)   NOT NULL, -- 액티비티UID
	USER_ID       VARCHAR(40)   NOT NULL, -- 사용자ID
	ACTV_NAME     VARCHAR(100)  NULL,     -- 액티비티명
	CITY_NO       INTEGER       NULL,     -- 도시번호
	EMAIL         VARCHAR(100)  NULL,     -- 이메일
	CONTACT       VARCHAR(30)   NULL,     -- 연락처
	IMG_URL       VARCHAR(255)  NULL,     -- 이미지URL
	VIDEO_URL     VARCHAR(255)  NULL,     -- 비디오URL
	CRC_NATION_CD VARCHAR(2)    NULL,     -- 통화국가코드
	DURATION      VARCHAR(5)    NULL,     -- 소요시간
	ACTV_ADDR     VARCHAR(255)  NULL,     -- 액티비티주소
	ACTV_ALTD     VARCHAR(255)  NULL,     -- 액티비티위도
	ACTV_LGTD     VARCHAR(255)  NULL,     -- 액티비티경도
	DIRECTION     VARCHAR(1000) NULL,     -- 오는길
	CRC_UNIT      VARCHAR(3)    NULL,     -- 통화단위
	CREATE_DTTM   TIMESTAMP     NOT NULL, -- 생성일시
	UPDATE_DTTM   TIMESTAMP     NOT NULL  -- 수정일시
);

-- Activity
ALTER TABLE MO_Activity
	ADD
		CONSTRAINT PK_MO_Activity -- Activity 기본키
		PRIMARY KEY (
			ACTV_UID, -- 액티비티UID
			USER_ID   -- 사용자ID
		);

-- Activity
COMMENT ON TABLE MO_Activity IS 'Activity';

-- 액티비티UID
COMMENT ON COLUMN MO_Activity.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_Activity.USER_ID IS '사용자ID';

-- 액티비티명
COMMENT ON COLUMN MO_Activity.ACTV_NAME IS '액티비티명';

-- 도시번호
COMMENT ON COLUMN MO_Activity.CITY_NO IS '도시번호';

-- 이메일
COMMENT ON COLUMN MO_Activity.EMAIL IS '이메일';

-- 연락처
COMMENT ON COLUMN MO_Activity.CONTACT IS '연락처';

-- 이미지URL
COMMENT ON COLUMN MO_Activity.IMG_URL IS '이미지URL';

-- 비디오URL
COMMENT ON COLUMN MO_Activity.VIDEO_URL IS '비디오URL';

-- 통화국가코드
COMMENT ON COLUMN MO_Activity.CRC_NATION_CD IS '통화국가코드';

-- 소요시간
COMMENT ON COLUMN MO_Activity.DURATION IS '소요시간';

-- 액티비티주소
COMMENT ON COLUMN MO_Activity.ACTV_ADDR IS '액티비티주소';

-- 액티비티위도
COMMENT ON COLUMN MO_Activity.ACTV_ALTD IS '액티비티위도';

-- 액티비티경도
COMMENT ON COLUMN MO_Activity.ACTV_LGTD IS '액티비티경도';

-- 오는길
COMMENT ON COLUMN MO_Activity.DIRECTION IS '오는길';

-- 통화단위
COMMENT ON COLUMN MO_Activity.CRC_UNIT IS '통화단위';

-- 생성일시
COMMENT ON COLUMN MO_Activity.CREATE_DTTM IS '생성일시';

-- 수정일시
COMMENT ON COLUMN MO_Activity.UPDATE_DTTM IS '수정일시';

-- Activity 기본키
-- COMMENT ON INDEX PK_MO_Activity IS 'Activity 기본키';

-- Activity 기본키
-- COMMENT ON CONSTRAINT MO_Activity.PK_MO_Activity IS 'Activity 기본키';

-- Acvity Types
CREATE TABLE MO_ActivityTypes (
	ACTV_TYPE_ID      VARCHAR(40)  NOT NULL, -- 액티비티타입ID
	ACTV_TYPE_NAME    VARCHAR(100) NULL,     -- 액티비티타입명
	ACTV_TYPE_IMG_URL VARCHAR(255) NULL      -- 액티비티타입이미지URL
);

-- Acvity Types
ALTER TABLE MO_ActivityTypes
	ADD
		CONSTRAINT PK_MO_ActivityTypes -- Acvity Types 기본키
		PRIMARY KEY (
			ACTV_TYPE_ID -- 액티비티타입ID
		);

-- Acvity Types
COMMENT ON TABLE MO_ActivityTypes IS 'Acvity Types';

-- 액티비티타입ID
COMMENT ON COLUMN MO_ActivityTypes.ACTV_TYPE_ID IS '액티비티타입ID';

-- 액티비티타입명
COMMENT ON COLUMN MO_ActivityTypes.ACTV_TYPE_NAME IS '액티비티타입명';

-- 액티비티타입이미지URL
COMMENT ON COLUMN MO_ActivityTypes.ACTV_TYPE_IMG_URL IS '액티비티타입이미지URL';

-- Acvity Types 기본키
-- COMMENT ON INDEX PK_MO_ActivityTypes IS 'Acvity Types 기본키';

-- Acvity Types 기본키
-- COMMENT ON CONSTRAINT MO_ActivityTypes.PK_MO_ActivityTypes IS 'Acvity Types 기본키';

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

-- Daily Room Info
COMMENT ON TABLE MO_DailyRoomInfo IS 'Daily Room Info';

-- 방UID
COMMENT ON COLUMN MO_DailyRoomInfo.ROOM_UID IS '방UID';

-- 숙박일자
COMMENT ON COLUMN MO_DailyRoomInfo.ACMD_DATE IS '숙박일자';

-- 방예약상태
COMMENT ON COLUMN MO_DailyRoomInfo.ROOM_RSV_STATUS IS '방예약상태';

-- 방가격
COMMENT ON COLUMN MO_DailyRoomInfo.ROOM_PRICE IS '방가격';

-- 핫딜여부
COMMENT ON COLUMN MO_DailyRoomInfo.HOTDEAL_YN IS '핫딜여부';

-- 메모
COMMENT ON COLUMN MO_DailyRoomInfo.MEMO IS '메모';

-- Daily Room Info 기본키
-- COMMENT ON INDEX PK_MO_DailyRoomInfo IS 'Daily Room Info 기본키';

-- Daily Room Info 기본키
-- COMMENT ON CONSTRAINT MO_DailyRoomInfo.PK_MO_DailyRoomInfo IS 'Daily Room Info 기본키';

-- Activity Images
CREATE TABLE MO_ActivityImages (
	ACTV_UID  VARCHAR(32)  NOT NULL, -- 액티비티UID
	USER_ID   VARCHAR(40)  NOT NULL, -- 사용자ID
	IMG_URL   VARCHAR(255) NULL,     -- 이미지URL
	IMG_TITLE VARCHAR(100) NULL,     -- 이미지제목
	IMG_NO    INTEGER      NULL      -- 이미지번호
);

-- Activity Images
ALTER TABLE MO_ActivityImages
	ADD
		CONSTRAINT PK_MO_ActivityImages -- Activity Images 기본키
		PRIMARY KEY (
			ACTV_UID, -- 액티비티UID
			USER_ID   -- 사용자ID
		);

-- Activity Images
COMMENT ON TABLE MO_ActivityImages IS 'Activity Images';

-- 액티비티UID
COMMENT ON COLUMN MO_ActivityImages.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_ActivityImages.USER_ID IS '사용자ID';

-- 이미지URL
COMMENT ON COLUMN MO_ActivityImages.IMG_URL IS '이미지URL';

-- 이미지제목
COMMENT ON COLUMN MO_ActivityImages.IMG_TITLE IS '이미지제목';

-- 이미지번호
COMMENT ON COLUMN MO_ActivityImages.IMG_NO IS '이미지번호';

-- Activity Images 기본키
-- COMMENT ON INDEX PK_MO_ActivityImages IS 'Activity Images 기본키';

-- Activity Images 기본키
-- COMMENT ON CONSTRAINT MO_ActivityImages.PK_MO_ActivityImages IS 'Activity Images 기본키';

-- Acvity Packages
CREATE TABLE MO_ActivityPackages (
	PACKAGE_UID   VARCHAR(32)  NOT NULL, -- 패키지UID
	ACTV_UID      VARCHAR(32)  NULL,     -- 액티비티UID
	USER_ID       VARCHAR(40)  NULL,     -- 사용자ID
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

-- Acvity Packages
COMMENT ON TABLE MO_ActivityPackages IS 'Acvity Packages';

-- 패키지UID
COMMENT ON COLUMN MO_ActivityPackages.PACKAGE_UID IS '패키지UID';

-- 액티비티UID
COMMENT ON COLUMN MO_ActivityPackages.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_ActivityPackages.USER_ID IS '사용자ID';

-- 패키지명
COMMENT ON COLUMN MO_ActivityPackages.PACKAGE_NAME IS '패키지명';

-- 운영시작일자
COMMENT ON COLUMN MO_ActivityPackages.OP_START_DATE IS '운영시작일자';

-- 운영종료일자
COMMENT ON COLUMN MO_ActivityPackages.OP_END_DATE IS '운영종료일자';

-- 운영요일
COMMENT ON COLUMN MO_ActivityPackages.OP_WEEK_DAY IS '운영요일';

-- Acvity Packages 기본키
-- COMMENT ON INDEX PK_MO_ActivityPackages IS 'Acvity Packages 기본키';

-- Acvity Packages 기본키
-- COMMENT ON CONSTRAINT MO_ActivityPackages.PK_MO_ActivityPackages IS 'Acvity Packages 기본키';

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

-- Activity Package Desc
COMMENT ON TABLE MO_ActivityPackageDesc IS 'Activity Package Desc';

-- 패키지설명UID
COMMENT ON COLUMN MO_ActivityPackageDesc.PACKAGE_DESC_UID IS '패키지설명UID';

-- 패키지UID
COMMENT ON COLUMN MO_ActivityPackageDesc.PACKAGE_UID IS '패키지UID';

-- 패키지설명
COMMENT ON COLUMN MO_ActivityPackageDesc.PACKAGE_DESC IS '패키지설명';

-- Activity Package Desc 기본키
-- COMMENT ON INDEX PK_MO_ActivityPackageDesc IS 'Activity Package Desc 기본키';

-- Activity Package Desc 기본키
-- COMMENT ON CONSTRAINT MO_ActivityPackageDesc.PK_MO_ActivityPackageDesc IS 'Activity Package Desc 기본키';

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

-- Package Operation Times
COMMENT ON TABLE MO_PackageOpTimes IS 'Package Operation Times';

-- 패키지운영시간UID
COMMENT ON COLUMN MO_PackageOpTimes.PACKAGE_OP_TIME_UID IS '패키지운영시간UID';

-- 패키지UID
COMMENT ON COLUMN MO_PackageOpTimes.PACKAGE_UID IS '패키지UID';

-- 패키지운영시간
COMMENT ON COLUMN MO_PackageOpTimes.PACKAGE_OP_TIME IS '패키지운영시간';

-- Package Operation Times 기본키
-- COMMENT ON INDEX PK_MO_PackageOpTimes IS 'Package Operation Times 기본키';

-- Package Operation Times 기본키
-- COMMENT ON CONSTRAINT MO_PackageOpTimes.PK_MO_PackageOpTimes IS 'Package Operation Times 기본키';

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

-- Package Price
COMMENT ON TABLE MO_PackagePrice IS 'Package Price';

-- 패키지가격UID
COMMENT ON COLUMN MO_PackagePrice.PACKAGE_PRICE_UID IS '패키지가격UID';

-- 패키지UID
COMMENT ON COLUMN MO_PackagePrice.PACKAGE_UID IS '패키지UID';

-- 수량명
COMMENT ON COLUMN MO_PackagePrice.QUANTITY_NAME IS '수량명';

-- 가격
COMMENT ON COLUMN MO_PackagePrice.PRICE IS '가격';

-- 최소예약인원
COMMENT ON COLUMN MO_PackagePrice.MIN_RSRV_PPL IS '최소예약인원';

-- 최대예약인원
COMMENT ON COLUMN MO_PackagePrice.MAX_RSRV_PPL IS '최대예약인원';

-- Package Price 기본키
-- COMMENT ON INDEX PK_MO_PackagePrice IS 'Package Price 기본키';

-- Package Price 기본키
-- COMMENT ON CONSTRAINT MO_PackagePrice.PK_MO_PackagePrice IS 'Package Price 기본키';

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

-- Package Discount
COMMENT ON TABLE MO_PackageDiscount IS 'Package Discount';

-- 패키지UID
COMMENT ON COLUMN MO_PackageDiscount.PACKAGE_UID IS '패키지UID';

-- 할인타입코드
COMMENT ON COLUMN MO_PackageDiscount.DISCOUNT_TYPE_CD IS '할인타입코드';

-- 할인률
COMMENT ON COLUMN MO_PackageDiscount.DISCOUNT_RATE IS '할인률';

-- 할인시작일자
COMMENT ON COLUMN MO_PackageDiscount.DISCOUNT_START_DATE IS '할인시작일자';

-- 할인종료일자
COMMENT ON COLUMN MO_PackageDiscount.DISCOUNT_END_DATE IS '할인종료일자';

-- 할인적용요일
COMMENT ON COLUMN MO_PackageDiscount.DISCOUNT_APPLY_WEEK_DAY IS '할인적용요일';

-- Package Discount 기본키
-- COMMENT ON INDEX PK_MO_PackageDiscount IS 'Package Discount 기본키';

-- Package Discount 기본키
-- COMMENT ON CONSTRAINT MO_PackageDiscount.PK_MO_PackageDiscount IS 'Package Discount 기본키';

-- Activity Information
CREATE TABLE MO_ActivityInfo (
	ACTV_UID      VARCHAR(32)   NOT NULL, -- 액티비티UID
	USER_ID       VARCHAR(40)   NOT NULL, -- 사용자ID
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
			ACTV_UID, -- 액티비티UID
			USER_ID   -- 사용자ID
		);

-- Activity Information
COMMENT ON TABLE MO_ActivityInfo IS 'Activity Information';

-- 액티비티UID
COMMENT ON COLUMN MO_ActivityInfo.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_ActivityInfo.USER_ID IS '사용자ID';

-- 제외항목
COMMENT ON COLUMN MO_ActivityInfo.EXCLUDE_ITEM IS '제외항목';

-- 포함항목
COMMENT ON COLUMN MO_ActivityInfo.INCLUDE_ITEM IS '포함항목';

-- 영업시간
COMMENT ON COLUMN MO_ActivityInfo.BUSINESS_HOUR IS '영업시간';

-- 스케쥴
COMMENT ON COLUMN MO_ActivityInfo.SCHEDULE IS '스케쥴';

-- 리마인더
COMMENT ON COLUMN MO_ActivityInfo.REMINDER IS '리마인더';

-- Activity Information 기본키
-- COMMENT ON INDEX PK_MO_ActivityInfo IS 'Activity Information 기본키';

-- Activity Information 기본키
-- COMMENT ON CONSTRAINT MO_ActivityInfo.PK_MO_ActivityInfo IS 'Activity Information 기본키';

-- Activity Package Options
CREATE TABLE MO_ActivityPackageOptions (
	PACKAGE_OPT_UID   VARCHAR(32)   NOT NULL, -- 패키지옵션UID
	ACTV_UID          VARCHAR(32)   NOT NULL, -- 액티비티UID
	USER_ID           VARCHAR(40)   NOT NULL, -- 사용자ID
	PACKAGE_OPT_TITLE VARCHAR(100)  NULL,     -- 패키지옵션제목
	PACKAGE_OPT_CTNT  VARCHAR(1000) NULL      -- 패키지옵션내용
);

-- Activity Package Options
ALTER TABLE MO_ActivityPackageOptions
	ADD
		CONSTRAINT PK_MO_ActivityPackageOptions -- Activity Package Options 기본키
		PRIMARY KEY (
			PACKAGE_OPT_UID, -- 패키지옵션UID
			ACTV_UID,        -- 액티비티UID
			USER_ID          -- 사용자ID
		);

-- Activity Package Options
COMMENT ON TABLE MO_ActivityPackageOptions IS 'Activity Package Options';

-- 패키지옵션UID
COMMENT ON COLUMN MO_ActivityPackageOptions.PACKAGE_OPT_UID IS '패키지옵션UID';

-- 액티비티UID
COMMENT ON COLUMN MO_ActivityPackageOptions.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_ActivityPackageOptions.USER_ID IS '사용자ID';

-- 패키지옵션제목
COMMENT ON COLUMN MO_ActivityPackageOptions.PACKAGE_OPT_TITLE IS '패키지옵션제목';

-- 패키지옵션내용
COMMENT ON COLUMN MO_ActivityPackageOptions.PACKAGE_OPT_CTNT IS '패키지옵션내용';

-- Activity Package Options 기본키
-- COMMENT ON INDEX PK_MO_ActivityPackageOptions IS 'Activity Package Options 기본키';

-- Activity Package Options 기본키
-- COMMENT ON CONSTRAINT MO_ActivityPackageOptions.PK_MO_ActivityPackageOptions IS 'Activity Package Options 기본키';

-- Activity Policy
CREATE TABLE MO_ActivityPolicy (
	PLCY_UID         VARCHAR(32)   NOT NULL, -- 정책UID
	ACTV_UID         VARCHAR(32)   NOT NULL, -- 액티비티UID
	USER_ID          VARCHAR(40)   NOT NULL, -- 사용자ID
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
			ACTV_UID, -- 액티비티UID
			USER_ID   -- 사용자ID
		);

-- Activity Policy
COMMENT ON TABLE MO_ActivityPolicy IS 'Activity Policy';

-- 정책UID
COMMENT ON COLUMN MO_ActivityPolicy.PLCY_UID IS '정책UID';

-- 액티비티UID
COMMENT ON COLUMN MO_ActivityPolicy.ACTV_UID IS '액티비티UID';

-- 사용자ID
COMMENT ON COLUMN MO_ActivityPolicy.USER_ID IS '사용자ID';

-- 확인타입코드
COMMENT ON COLUMN MO_ActivityPolicy.CFRM_TYPE_CD IS '확인타입코드';

-- 확인시간
COMMENT ON COLUMN MO_ActivityPolicy.CFRM_TIME IS '확인시간';

-- 예약가능코드
COMMENT ON COLUMN MO_ActivityPolicy.RSRV_ABLE_CD IS '예약가능코드';

-- 예약가능일수
COMMENT ON COLUMN MO_ActivityPolicy.RSRV_ABLE_DAYS IS '예약가능일수';

-- 취소타입코드
COMMENT ON COLUMN MO_ActivityPolicy.CANCEL_TYPE_CD IS '취소타입코드';

-- 취소가능시간
COMMENT ON COLUMN MO_ActivityPolicy.CANCEL_ABLE_TIME IS '취소가능시간';

-- 사용법
COMMENT ON COLUMN MO_ActivityPolicy.HOW_TO_USE IS '사용법';

-- Activity Policy 기본키
-- COMMENT ON INDEX PK_MO_ActivityPolicy IS 'Activity Policy 기본키';

-- Activity Policy 기본키
-- COMMENT ON CONSTRAINT MO_ActivityPolicy.PK_MO_ActivityPolicy IS 'Activity Policy 기본키';

-- User Info
CREATE TABLE MO_UserInfo (
	USER_ID              VARCHAR(40)  NOT NULL, -- 사용자ID
	USER_NAME            VARCHAR(100) NULL,     -- 사용자명
	PASSWORD             VARCHAR(512) NULL,     -- 비밀번호
	EMAIL                VARCHAR(100) NULL,     -- 이메일
	CONTACT              VARCHAR(20)  NULL,     -- 연락처
	PROFILE_IMG_URL      VARCHAR(255) NULL,     -- 프로필이미지URL
	PASSWORD_ERROR_COUNT VARCHAR(10)  NULL,     -- 비밀번호오류횟수
	LOCK_YN              VARCHAR(1)   NULL,     -- 잠금여부
	SIGNUP_DTTM          TIMESTAMP    NOT NULL, -- 가입일시
	LAST_LOGIN_DTTM      TIMESTAMP    NULL      -- 마지막로그인일시
);

-- User Info
ALTER TABLE MO_UserInfo
	ADD
		CONSTRAINT PK_MO_UserInfo -- User Info 기본키
		PRIMARY KEY (
			USER_ID -- 사용자ID
		);

-- User Info
COMMENT ON TABLE MO_UserInfo IS 'User Info';

-- 사용자ID
COMMENT ON COLUMN MO_UserInfo.USER_ID IS '사용자ID';

-- 사용자명
COMMENT ON COLUMN MO_UserInfo.USER_NAME IS '사용자명';

-- 비밀번호
COMMENT ON COLUMN MO_UserInfo.PASSWORD IS '비밀번호';

-- 이메일
COMMENT ON COLUMN MO_UserInfo.EMAIL IS '이메일';

-- 연락처
COMMENT ON COLUMN MO_UserInfo.CONTACT IS '연락처';

-- 프로필이미지URL
COMMENT ON COLUMN MO_UserInfo.PROFILE_IMG_URL IS '프로필이미지URL';

-- 비밀번호오류횟수
COMMENT ON COLUMN MO_UserInfo.PASSWORD_ERROR_COUNT IS '비밀번호오류횟수';

-- 잠금여부
COMMENT ON COLUMN MO_UserInfo.LOCK_YN IS '잠금여부';

-- 가입일시
COMMENT ON COLUMN MO_UserInfo.SIGNUP_DTTM IS '가입일시';

-- 마지막로그인일시
COMMENT ON COLUMN MO_UserInfo.LAST_LOGIN_DTTM IS '마지막로그인일시';

-- User Info 기본키
-- COMMENT ON INDEX PK_MO_UserInfo IS 'User Info 기본키';

-- User Info 기본키
-- COMMENT ON CONSTRAINT MO_UserInfo.PK_MO_UserInfo IS 'User Info 기본키';

-- Accommodation Themes Relation
CREATE TABLE MO_AcmdThemesRel (
	ACMD_UID      VARCHAR(32) NOT NULL, -- 숙소UID
	ACMD_THEME_ID VARCHAR(40) NOT NULL, -- 숙박테마ID
	USER_ID       VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Themes Relation
ALTER TABLE MO_AcmdThemesRel
	ADD
		CONSTRAINT PK_MO_AcmdThemesRel -- Accommodation Themes Relation 기본키
		PRIMARY KEY (
			ACMD_UID,      -- 숙소UID
			ACMD_THEME_ID, -- 숙박테마ID
			USER_ID        -- 사용자ID
		);

-- Accommodation Themes Relation
COMMENT ON TABLE MO_AcmdThemesRel IS 'Accommodation Themes Relation';

-- 숙소UID
COMMENT ON COLUMN MO_AcmdThemesRel.ACMD_UID IS '숙소UID';

-- 숙박테마ID
COMMENT ON COLUMN MO_AcmdThemesRel.ACMD_THEME_ID IS '숙박테마ID';

-- 사용자ID
COMMENT ON COLUMN MO_AcmdThemesRel.USER_ID IS '사용자ID';

-- Accommodation Themes Relation 기본키
-- COMMENT ON INDEX PK_MO_AcmdThemesRel IS 'Accommodation Themes Relation 기본키';

-- Accommodation Themes Relation 기본키
-- COMMENT ON CONSTRAINT MO_AcmdThemesRel.PK_MO_AcmdThemesRel IS 'Accommodation Themes Relation 기본키';

-- Accommodation Activity Relation
CREATE TABLE MO_AcmdActvRel (
	ACMD_UID     VARCHAR(32) NOT NULL, -- 숙소UID
	ACTV_TYPE_ID VARCHAR(40) NOT NULL, -- 액티비티타입ID
	USER_ID      VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Accommodation Activity Relation
ALTER TABLE MO_AcmdActvRel
	ADD
		CONSTRAINT PK_MO_AcmdActvRel -- Accommodation Activity Relation 기본키
		PRIMARY KEY (
			ACMD_UID,     -- 숙소UID
			ACTV_TYPE_ID, -- 액티비티타입ID
			USER_ID       -- 사용자ID
		);

-- Accommodation Activity Relation
COMMENT ON TABLE MO_AcmdActvRel IS 'Accommodation Activity Relation';

-- 숙소UID
COMMENT ON COLUMN MO_AcmdActvRel.ACMD_UID IS '숙소UID';

-- 액티비티타입ID
COMMENT ON COLUMN MO_AcmdActvRel.ACTV_TYPE_ID IS '액티비티타입ID';

-- 사용자ID
COMMENT ON COLUMN MO_AcmdActvRel.USER_ID IS '사용자ID';

-- Accommodation Activity Relation 기본키
-- COMMENT ON INDEX PK_MO_AcmdActvRel IS 'Accommodation Activity Relation 기본키';

-- Accommodation Activity Relation 기본키
-- COMMENT ON CONSTRAINT MO_AcmdActvRel.PK_MO_AcmdActvRel IS 'Accommodation Activity Relation 기본키';

-- Activity ActivityType Relation
CREATE TABLE MO_ActvActvRel (
	ACTV_UID     VARCHAR(32) NOT NULL, -- 액티비티UID
	ACTV_TYPE_ID VARCHAR(40) NOT NULL, -- 액티비티타입ID
	USER_ID      VARCHAR(40) NOT NULL  -- 사용자ID
);

-- Activity ActivityType Relation
ALTER TABLE MO_ActvActvRel
	ADD
		CONSTRAINT PK_MO_ActvActvRel -- Activity ActivityType Relation 기본키
		PRIMARY KEY (
			ACTV_UID,     -- 액티비티UID
			ACTV_TYPE_ID, -- 액티비티타입ID
			USER_ID       -- 사용자ID
		);

-- Activity ActivityType Relation
COMMENT ON TABLE MO_ActvActvRel IS 'Activity ActivityType Relation';

-- 액티비티UID
COMMENT ON COLUMN MO_ActvActvRel.ACTV_UID IS '액티비티UID';

-- 액티비티타입ID
COMMENT ON COLUMN MO_ActvActvRel.ACTV_TYPE_ID IS '액티비티타입ID';

-- 사용자ID
COMMENT ON COLUMN MO_ActvActvRel.USER_ID IS '사용자ID';

-- Activity ActivityType Relation 기본키
-- COMMENT ON INDEX PK_MO_ActvActvRel IS 'Activity ActivityType Relation 기본키';

-- Activity ActivityType Relation 기본키
-- COMMENT ON CONSTRAINT MO_ActvActvRel.PK_MO_ActvActvRel IS 'Activity ActivityType Relation 기본키';