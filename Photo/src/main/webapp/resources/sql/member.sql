CREATE table MEMBER (
	id VARCHAR(10) NOT NULL,	//회원 아이디
	password VARCHAR(10) NOT NULL, //비밀번호
	name VARCHAR(10) NOT NULL, //이름
	gender VARCHAR(4), //성별
	birth VARCHAR(10), //생일
	mail VARCHAR(30), // 메일
	phone VARCHAR(20), // 전화번호
	address VARCHAR(90), //주소
	regist_day VARCHAR(50), //가입 일자
	PRIMARY KEY(ID)
	) default CHARSET =utf8;