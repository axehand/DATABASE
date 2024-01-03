CREATE TABLE `Member` (
	`member_id`	varchar	NOT NULL,
	`member_pw`	varchar	NOT NULL,
	`member_name`	vatchar	NOT NULL,
	`member_address`	varchar	NULL,
	`member_call`	varchar	NOT NULL,
	`member_email`	varchar	NOT NULL,
	`member_nick`	varchar	NOT NULL,
	`member_date`	varchar	NOT NULL,
	`report_num`	int	NOT NULL,
	`grade_code`	int	NOT NULL
);

CREATE TABLE `Type` (
	`type_code`	int	NOT NULL,
	`type_info`	varchar	NULL
);

CREATE TABLE `Review` (
	`review_code`	int	NOT NULL,
	`review_star`	int	NULL,
	`review_content`	varchar	NULL,
	`review_updown`	int	NULL,
	`review_date`	varchar	NULL,
	`info_code`	int	NOT NULL,
	`review_writer`	varchar	NOT NULL,
	`photo_code`	int	NOT NULL
);

CREATE TABLE `Comment` (
	`comment_code`	int	NOT NULL,
	`comment_content`	varcahr	NULL,
	`review_code`	int	NOT NULL,
	`comment_writer`	varchar	NOT NULL,
	`share_code`	int	NOT NULL,
	`category_feature`	int	NOT NULL
);

CREATE TABLE `Information` (
	`info_code`	int	NOT NULL,
	`info_name`	varchar	NULL,
	`info_address`	varchar	NULL,
	`info_call`	varchar	NULL,
	`info_date`	varchar	NULL,
	`type_code`	int	NOT NULL,
	`info_writer`	varchar	NOT NULL,
	`photo_code`	int	NOT NULL
);

CREATE TABLE `GoodsShare` (
	`goods_code`	int	NOT NULL,
	`category_feature`	int	NOT NULL,
	`goods_name`	varchar	NOT NULL,
	`goods_feature`	varchar	NOT NULL,
	`goods_date`	varchar	NOT NULL,
	`goods_writer`	varcahr	NOT NULL,
	`photo_code`	int	NOT NULL
);

CREATE TABLE `MemberGrade` (
	`grade_code`	int	NOT NULL,
	`grade_content`	varchar	NOT NULL
);

CREATE TABLE `QNA` (
	`Q_id`	int	NOT NULL,
	`Q_content`	varchar	NOT NULL,
	`Q_date`	varchar	NOT NULL,
	`A_content`	varchar	NULL,
	`Q_writer`	varchar	NOT NULL
);

CREATE TABLE `Administer` (
	`admin_id`	varchar	NOT NULL,
	`admin_pss`	varchar	NOT NULL,
	`admin_nickname`	varchar	NOT NULL
);

CREATE TABLE `Report` (
	`report_number`	int	NOT NULL,
	`report_content`	varchar	NOT NULL,
	`report_date`	varchar	NOT NULL,
	`report_code`	int	NOT NULL,
	`report_now_code`	int	NOT NULL,
	`Info_code`	int	NOT NULL,
	`report_subject`	varchar	NOT NULL,
	`report_writer`	varchar	NOT NULL
);

CREATE TABLE `Profile` (
	`Member_ID`	varchar	NOT NULL,
	`location`	varchar	NULL	COMMENT '주인의 거주지역',
	`my_introduce`	varchar	NULL,
	`my_nickname`	varchar	NOT NULL,
	`photo_id`	int	NOT NULL
);

CREATE TABLE `Blacklist` (
	`black_id`	varchar	NOT NULL,
	`black_reason`	varchar	NOT NULL,
	`black_ candidate`	varchar	NULL
);

CREATE TABLE `Report_Type` (
	`Report_code`	int	NOT NULL,
	`report_category`	varchar	NULL
);

CREATE TABLE `Report_Status` (
	`Status_code`	int	NOT NULL,
	`Status_category`	varchar	NULL
);

CREATE TABLE `AnimalCategory` (
	`animal_code`	int	NOT NULL,
	`animal_code_feature`	varchar	NOT NULL
);

CREATE TABLE `Billboard` (
	`freeboard`	int	NOT NULL	COMMENT '게시판 일련번호',
	`board_writer`	varchar	NOT NULL,
	`board_content`	varchar	NULL,
	`board_date`	varchar	NULL,
	`board_check`	int	NULL,
	`board_recommend`	int	NULL,
	`photo_code`	int	NOT NULL,
	`comment_code`	int	NOT NULL
);

CREATE TABLE `MemberAdmin` (
	`Member_ID`	varchar	NOT NULL,
	`business_code`	int	NULL,
	`blacklist_code`	int	NULL,
	`status_code`	int	NOT NULL,
	`connection_date`	varchar	NOT NULL,
	`admin_id`	varchar	NOT NULL
);

CREATE TABLE `Status` (
	`status_code`	int	NOT NULL,
	`status_code_feature`	varchar	NOT NULL
);

CREATE TABLE `Pet` (
	`pet_number`	int	NOT NULL,
	`pet_id`	varchar	NOT NULL,
	`pet_type`	varchar	NULL,
	`pet_name`	varchar	NOT NULL,
	`pet_birth`	varchar	NULL,
	`pet_sex`	varchar	NULL,
	`photo_code`	int	NOT NULL
);

CREATE TABLE `Notification` (
	`notification`	int	NOT NULL,
	`notification_text`	varchar	NULL,
	`admin_id`	varchar	NOT NULL,
	`photo_code`	int	NOT NULL
);

CREATE TABLE `Animal_type_category` (
	`type_code`	int	NOT NULL,
	`animaltype_code`	varchar	NOT NULL
);

CREATE TABLE `Goods` (
	`goods_category`	int	NOT NULL,
	`goods_category_feature`	varchar	NOT NULL
);

CREATE TABLE `Photo` (
	`photo_code`	int	NOT NULL,
	`photo_name`	varchar	NOT NULL,
	`photo_directory`	varchar	NOT NULL,
	`photo_rename`	varchar	NOT NULL
);

ALTER TABLE `Member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_id`
);

ALTER TABLE `Type` ADD CONSTRAINT `PK_TYPE` PRIMARY KEY (
	`type_code`
);

ALTER TABLE `Review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_code`
);

ALTER TABLE `Comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
	`comment_code`
);

ALTER TABLE `Information` ADD CONSTRAINT `PK_INFORMATION` PRIMARY KEY (
	`info_code`
);

ALTER TABLE `GoodsShare` ADD CONSTRAINT `PK_GOODSSHARE` PRIMARY KEY (
	`goods_code`,
	`category_feature`
);

ALTER TABLE `MemberGrade` ADD CONSTRAINT `PK_MEMBERGRADE` PRIMARY KEY (
	`grade_code`
);

ALTER TABLE `QNA` ADD CONSTRAINT `PK_QNA` PRIMARY KEY (
	`Q_id`
);

ALTER TABLE `Administer` ADD CONSTRAINT `PK_ADMINISTER` PRIMARY KEY (
	`admin_id`
);

ALTER TABLE `Report` ADD CONSTRAINT `PK_REPORT` PRIMARY KEY (
	`report_number`
);

ALTER TABLE `Profile` ADD CONSTRAINT `PK_PROFILE` PRIMARY KEY (
	`Member_ID`
);

ALTER TABLE `Blacklist` ADD CONSTRAINT `PK_BLACKLIST` PRIMARY KEY (
	`black_id`
);

ALTER TABLE `Report_Type` ADD CONSTRAINT `PK_REPORT_TYPE` PRIMARY KEY (
	`Report_code`
);

ALTER TABLE `Report_Status` ADD CONSTRAINT `PK_REPORT_STATUS` PRIMARY KEY (
	`Status_code`
);

ALTER TABLE `AnimalCategory` ADD CONSTRAINT `PK_ANIMALCATEGORY` PRIMARY KEY (
	`animal_code`
);

ALTER TABLE `Billboard` ADD CONSTRAINT `PK_BILLBOARD` PRIMARY KEY (
	`freeboard`,
	`board_writer`
);

ALTER TABLE `MemberAdmin` ADD CONSTRAINT `PK_MEMBERADMIN` PRIMARY KEY (
	`Member_ID`
);

ALTER TABLE `Status` ADD CONSTRAINT `PK_STATUS` PRIMARY KEY (
	`status_code`
);

ALTER TABLE `Pet` ADD CONSTRAINT `PK_PET` PRIMARY KEY (
	`pet_number`,
	`pet_id`
);

ALTER TABLE `Notification` ADD CONSTRAINT `PK_NOTIFICATION` PRIMARY KEY (
	`notification`
);

ALTER TABLE `Animal_type_category` ADD CONSTRAINT `PK_ANIMAL_TYPE_CATEGORY` PRIMARY KEY (
	`type_code`,
	`animaltype_code`
);

ALTER TABLE `Goods` ADD CONSTRAINT `PK_GOODS` PRIMARY KEY (
	`goods_category`
);

ALTER TABLE `Photo` ADD CONSTRAINT `PK_PHOTO` PRIMARY KEY (
	`photo_code`
);

ALTER TABLE `Member` ADD CONSTRAINT `FK_MemberGrade_TO_Member_1` FOREIGN KEY (
	`grade_code`
)
REFERENCES `MemberGrade` (
	`grade_code`
);

ALTER TABLE `Review` ADD CONSTRAINT `FK_Information_TO_Review_1` FOREIGN KEY (
	`info_code`
)
REFERENCES `Information` (
	`info_code`
);

ALTER TABLE `Review` ADD CONSTRAINT `FK_Member_TO_Review_1` FOREIGN KEY (
	`review_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Review` ADD CONSTRAINT `FK_Photo_TO_Review_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_Review_TO_Comment_1` FOREIGN KEY (
	`review_code`
)
REFERENCES `Review` (
	`review_code`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_Member_TO_Comment_1` FOREIGN KEY (
	`comment_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_GoodsShare_TO_Comment_1` FOREIGN KEY (
	`share_code`
)
REFERENCES `GoodsShare` (
	`goods_code`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_GoodsShare_TO_Comment_2` FOREIGN KEY (
	`category_feature`
)
REFERENCES `GoodsShare` (
	`category_feature`
);

ALTER TABLE `Information` ADD CONSTRAINT `FK_Type_TO_Information_1` FOREIGN KEY (
	`type_code`
)
REFERENCES `Type` (
	`type_code`
);

ALTER TABLE `Information` ADD CONSTRAINT `FK_Member_TO_Information_1` FOREIGN KEY (
	`info_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Information` ADD CONSTRAINT `FK_Photo_TO_Information_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `GoodsShare` ADD CONSTRAINT `FK_Goods_TO_GoodsShare_1` FOREIGN KEY (
	`category_feature`
)
REFERENCES `Goods` (
	`goods_category`
);

ALTER TABLE `GoodsShare` ADD CONSTRAINT `FK_Member_TO_GoodsShare_1` FOREIGN KEY (
	`goods_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `GoodsShare` ADD CONSTRAINT `FK_Photo_TO_GoodsShare_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `QNA` ADD CONSTRAINT `FK_Member_TO_QNA_1` FOREIGN KEY (
	`Q_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Report` ADD CONSTRAINT `FK_Report_Type_TO_Report_1` FOREIGN KEY (
	`report_code`
)
REFERENCES `Report_Type` (
	`Report_code`
);

ALTER TABLE `Report` ADD CONSTRAINT `FK_Report_Status_TO_Report_1` FOREIGN KEY (
	`report_now_code`
)
REFERENCES `Report_Status` (
	`Status_code`
);

ALTER TABLE `Report` ADD CONSTRAINT `FK_Information_TO_Report_1` FOREIGN KEY (
	`Info_code`
)
REFERENCES `Information` (
	`info_code`
);

ALTER TABLE `Report` ADD CONSTRAINT `FK_Member_TO_Report_1` FOREIGN KEY (
	`report_subject`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Report` ADD CONSTRAINT `FK_Member_TO_Report_2` FOREIGN KEY (
	`report_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Profile` ADD CONSTRAINT `FK_Member_TO_Profile_1` FOREIGN KEY (
	`Member_ID`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Profile` ADD CONSTRAINT `FK_Photo_TO_Profile_1` FOREIGN KEY (
	`photo_id`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `Blacklist` ADD CONSTRAINT `FK_Member_TO_Blacklist_1` FOREIGN KEY (
	`black_id`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Billboard` ADD CONSTRAINT `FK_Member_TO_Billboard_1` FOREIGN KEY (
	`board_writer`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `Billboard` ADD CONSTRAINT `FK_Photo_TO_Billboard_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `Billboard` ADD CONSTRAINT `FK_Comment_TO_Billboard_1` FOREIGN KEY (
	`comment_code`
)
REFERENCES `Comment` (
	`comment_code`
);

ALTER TABLE `MemberAdmin` ADD CONSTRAINT `FK_Member_TO_MemberAdmin_1` FOREIGN KEY (
	`Member_ID`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `MemberAdmin` ADD CONSTRAINT `FK_Status_TO_MemberAdmin_1` FOREIGN KEY (
	`status_code`
)
REFERENCES `Status` (
	`status_code`
);

ALTER TABLE `MemberAdmin` ADD CONSTRAINT `FK_Administer_TO_MemberAdmin_1` FOREIGN KEY (
	`admin_id`
)
REFERENCES `Administer` (
	`admin_id`
);

ALTER TABLE `Pet` ADD CONSTRAINT `FK_Profile_TO_Pet_1` FOREIGN KEY (
	`pet_id`
)
REFERENCES `Profile` (
	`Member_ID`
);

ALTER TABLE `Pet` ADD CONSTRAINT `FK_Photo_TO_Pet_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `Notification` ADD CONSTRAINT `FK_Administer_TO_Notification_1` FOREIGN KEY (
	`admin_id`
)
REFERENCES `Administer` (
	`admin_id`
);

ALTER TABLE `Notification` ADD CONSTRAINT `FK_Photo_TO_Notification_1` FOREIGN KEY (
	`photo_code`
)
REFERENCES `Photo` (
	`photo_code`
);

ALTER TABLE `Animal_type_category` ADD CONSTRAINT `FK_Type_TO_Animal_type_category_1` FOREIGN KEY (
	`type_code`
)
REFERENCES `Type` (
	`type_code`
);

ALTER TABLE `Animal_type_category` ADD CONSTRAINT `FK_AnimalCategory_TO_Animal_type_category_1` FOREIGN KEY (
	`animaltype_code`
)
REFERENCES `AnimalCategory` (
	`animal_code`
);

