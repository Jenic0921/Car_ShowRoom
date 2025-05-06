INSERT INTO kkh990921db.book VALUES('Jenic1234', '펠리세이드', 3896,'가격 : 3,896 ~ 5,491만원<Br>연료 : 가솔린,디젤<Br>연비 : 복합 8.5 ~ 12.4km/ℓ 도심 7.6 ~ 11.3, 고속 10 ~ 14.1<Br>배기 : 2,199 ~ 3,778cc', 'HYUNDAI', '준대형 SUV', 'Palisade.png');

INSERT INTO kkh990921db.book VALUES('Jenic1235', '아반떼', 1975,'가격 : 1,975 ~ 2,818만원<Br>연료 : LPG,가솔린<Br>연비 : 복합 10.3 ~ 15.3km/ℓ 도심 9.1 ~ 13.7, 고속 12.1 ~ 17.7<Br>배기 : 1,591 ~ 1,598cc', 'HYUNDAI', '준중형 세단', 'Avante.png');

INSERT INTO kkh990921db.book VALUES('Jenic1236', '코나', 2446, '가격 : 2,446 ~ 3,422만원<Br>연료 : 가솔린<Br>연비 : 복합 11.2 ~ 13.6km/ℓ 도심 10 ~ 12.6, 고속 13.1 ~ 15.5<Br>배기 : 1,598 ~ 1,999cc', 'HYUNDAI', '소형 SUV', 'Kona.png');


CREATE TABLE IF NOT EXISTS kkh990921db.book (
   id varchar(10) not null ,
   name varchar(20),
   unitPrice integer,
   description text,
   publisher varchar(20),
   category varchar(20),
   fileName varchar(20),
   PRIMARY KEY(id)
) default CHARSET=utf8;