CREATE TABLE donor(
ID varchar(11) PRIMARY KEY,
FullName varchar(50) NOT NULL, HairColor
varchar(10) NOT NULL,
EyeColor varchar(10 ) NOT NULL,
Race varchar(20) NOT NULL,
PhysicalPast varchar(100) NOT NULL,
MentalPast varchar(100) NOT NULL,
Age int NOT NULL,
PhoneNo varchar(15) NOT NULL
);
INSERT INTO donor VALUES (13459685426, Lila Sweet, Auburn, Green, White, heart disease, healthy,
32, 05433568941);
INSERT INTO donor VALUES (36524825100, Velma Boyle, Blonde, Green, White, healthy, healthy, 28,
05444963526);
INSERT INTO donor VALUES (36984102578, Willa Perry, Brown, Green, Black, diabetes, depression,
30, 05488523695);
INSERT INTO donor VALUES (15786300265, Zelenia Cote, Blonde, Blue, White, diabetes, healthy, 29,
05466325894);
INSERT INTO donor VALUES (13542808795, Megan Albert, Ginger, Green, White, healthy, healthy,
20, 05485214785);
INSERT INTO donor VALUES (69523541026, Suki Hall, Brown, Hazel, Asian, healthy, anxiety, 29,
05466874123);
INSERT INTO donor VALUES (78541236952, Katara Agua, Brown, Blue, White, healthy, healthy, 33,
05412369595);
INSERT INTO donor VALUES (96582213047, Eftalya Talma, Brown, Black, Asian, healthy, anxiety, 37,
05489651410);
INSERT INTO donor VALUES (36421054050, Azula Loerd, Brown, Black, Black, healthy, healthy, 35,
05403206560);
INSERT INTO donor VALUES (16842994773, Hanna Dalen, Blonde, Brown, White, healthy, bipolar, 24,
05433891415);
CREATE TABLE stock (
StockNo varchar(5) PRIMARY KEY NOT NULL,
StockStatus varchar(16) NOT NULL,
Urgency varchar(10),
EnterTime varchar(5) NOT NULL
);
INSERT INTO stock VALUES (15236, Available, Urgent, 12:12);
INSERT INTO stock VALUES (65980, Available, Urgent, 10:96);
INSERT INTO stock VALUES (10230, Unavailable, Not Urgent, 08:02);
INSERT INTO stock VALUES (98206, Unavailable, Not Urgent, 22:00);
INSERT INTO stock VALUES (14120, Available, Urgent, 11:10);
INSERT INTO stock VALUES (20301, Unavailable, Not Urgent, 08:09);
INSERT INTO stock VALUES (10445, Available, Urgent, 10:36);
INSERT INTO stock VALUES (66666, Available, Not Urgent, 09:05);
INSERT INTO stock VALUES (96512, Unavailable, Not Urgent, 12:30);
INSERT INTO stock VALUES (15427, Available, Urgent, 06:20); CREATE TABLE RacialInformation (
ID varchar(11) PRIMARY KEY NOT NULL,
Race varchar(20) NOT NULL,
ID varchar(11) NOT NULL REFERENCES Donor(ID)
);
INSERT INTO RacialInformation VALUES (13459685426, White);
INSERT INTO RacialInformation VALUES (36524825100, White);
INSERT INTO RacialInformation VALUES (36984102578, Black);
INSERT INTO RacialInformation VALUES (15786300265, White);
INSERT INTO RacialInformation VALUES (13542808795, White);
INSERT INTO RacialInformation VALUES (69523541026, Asian);
INSERT INTO RacialInformation VALUES (78541236952, White);
INSERT INTO RacialInformation VALUES (96582213047, Asian);
INSERT INTO RacialInformation VALUES (36421054050, Black);
INSERT INTO RacialInformation VALUES (16842994773, White); CREATE TABLE customer(
ID varchar(11) PRIMARY KEY NOT NULL,
FullName varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
PhoneNo varchar(15) NOT NULL,
Preferences varchar(200) NOT NULL,
);
INSERT INTO customer VALUES (13779315469, Brie Washington, Akhisar/Manisa, 05097634252,
White-Brown Eyes-Blonde Hair);
INSERT INTO customer VALUES (24724897231, Susan Colins, Nilüfer/Bursa, 05322453245, Black-Blue
Eyes-Grey Hair);
INSERT INTO customer VALUES (47625003481, Jasmine Maguire, Fahri Kayahan/Malatya,
05205336162, Black-Green Eyes-Black Hair);
INSERT INTO customer VALUES (51378955476, Melissa Holland, Kadıköy/İstanbul, 05056452313,
Asian-Blue Eyes-Brown Hair);
INSERT INTO customer VALUES (23177713080, Elizabeth Evans, Sefaköy/İstanbul, 05075724887,
White-Hazel Eyes-Red Hair);
INSERT INTO customer VALUES (90713407222, Yelena Downey, Bilkent/Ankara, 05058318271,
AsianAmber Eyes-Blonde Hair);
INSERT INTO customer VALUES (52390977164, Maya Hepburn, Buca/İzmir, 04726314232,
HispanicRed Eyes-Brown Hair);
INSERT INTO customer VALUES (27367834252, Thalia Brock, Atakum/Samsun, 05577624790,
AsianHazel Eyes-Blonde Hair);
INSERT INTO customer VALUES (89010025713, Alicia Lynch, Elmalı/Antalya, 05087131348, WhiteBlue
Eyes-Brown Hair);
INSERT INTO customer VALUES (57773913263, Riley Kuzu, Tarsus/Mersin, 07634729887,
HispanicAmber Eyes-Grey Hair);
CREATE TABLE egg (
 EggID integer PRIMARY KEY,
 Number integer NOT NULL,
 Status varchar(255) NOT NULL,
 TakenTime integer NOT NULL
DocID integer FOREIGN KEY REFERENCES doctor(ID),
DonID varchar(11) FOREIGN KEY REFERENCES donor(ID),
EggStockNo varchar(5) FOREIGN KEY REFERENCES stock(StockNo),
CustID varchar(11) FOREIGN KEY REFERENCES customer(ID)
);
INSERT INTO egg VALUES (31282,158,'Unavailable',2016, 96395427308, 13459685426, 15236,
13779315469);
INSERT INTO egg VALUES (56254,749,'Unavailable',2018, 61014898254, 36524825100,65980,
24724897231);
INSERT INTO egg VALUES (80395,113,'Unavailable',2009, 60661414303, 36984102578, 10230,
47625003481);
INSERT INTO egg VALUES (19522,550,'Available',2004, 48534431601, 15786300265, 98206,
51378955476);
INSERT INTO egg VALUES (97573,195,'Unavailable',2022, 55479974799, 13542808795, 14120,
23177713080);
INSERT INTO egg VALUES (45709,351,'Available',2012, 99461448203, 69523541026, 20301,
90713407222);
INSERT INTO egg VALUES (13913,811,'Unavailable',2009, 33774057460, 78541236952, 10445,
52390977164);
INSERT INTO egg VALUES (10548,443,'Available',2021, 44535249484, 96582213047, 66666,
27367834252);
INSERT INTO egg VALUES (26294,461,'Available',2016, 78464201964, 36421054050, 96512,
89010025713);
INSERT INTO egg VALUES (41556,166,'Unavailable',2022, 20012114781, 16842994773, 15427,
57773913263);
CREATE TABLE doctor (
 ID integer NOT NULL,
 FullName varchar(40) default NOT NULL,
 EmployTime varchar(255) NOT NULL,
 YearOfExpertise integer NOT NULL,
 UniInfo varchar(255) default NOT NULL
);
INSERT INTO doctor VALUES (96395427308,'Sacha Fields','21.06.12',11,'Oxford'),
 INSERT INTO doctor VALUES (61014898254,'Simone Torres','09.07.15',6,'Swiss Federal Institute of
Technology Lausanne'),
 INSERT INTO doctor VALUES (60661414303,'Adrienne Massey','25.04.24',21,'Ankara University'),
INSERT INTO doctor VALUES (48534431601,'Yasir Cardenas','06.10.20',6,'Ankara University'),
INSERT INTO doctor VALUES (55479974799,'Jescie Curry','05.04.23',9,'Hacettepe University'),
INSERT INTO doctor VALUES (99461448203,'Hedy Landry','10.07.28',17,'Swiss Federal Institute of
Technology Lausanne'),
INSERT INTO doctor VALUES (33774057460,'Salvador Erickson','06.05.18',22,'Cambridge'),
INSERT INTO doctor VALUES (44535249484,'Ayanna Roberts','07.06.15',18,'Ankara University'),
INSERT INTO doctor VALUES (78464201964,'Hoyt Nielsen','25.12.11',15,'Hacettepe University'),
INSERT INTO doctor VALUES (20012114781,'Amelia Booker','19.04.17',11,'Ankara University');
CREATE TABLE benefits (
 FullName varchar(40) default NOT NULL,
 EmployTime varchar(255) NOT NULL,
 YearOfExpertise integer NOT NULL,
 UniInfo varchar(255) default NOT NULL
FullName varchar(50) NOT NULL, HairColor
varchar(10) NOT NULL,
EyeColor varchar(10 ) NOT NULL,
Race varchar(20) NOT NULL,
PhysicalPast varchar(100) NOT NULL,
MentalPast varchar(100) NOT NULL,
Age int NOT NULL,
PhoneNo varchar(15) NOT NULL
DocID integer FOREIGN KEY REFERENCES doctor(ID),
CustID varchar(11) FOREIGN KEY REFERENCES customer(ID),
PayCardNo varchar (16) FOREIGN KEY REFERENCES payment(CardNo),
PaySecNo varchar (22) FOREIGN KEY REFERENCES payment(SecNo)
);
INSERT INTO benefits VALUES (96395427308,'Sacha Fields','21.06.12',11,'Oxford', 13459685426, Lila
Sweet, Auburn, Green, White, heart disease, healthy, 32, 05433568941, 45689658521236,
96545678523144);
INSERT INTO benefits VALUES (61014898254,'Simone Torres','09.07.15',6,'Swiss Federal Institute of
Technology Lausanne', 36524825100, Velma Boyle, Blonde, Green, White, healthy, healthy, 28,
05444963526, 89745614785236, 87498541233365);
INSERT INTO benefits VALUES (60661414303,'Adrienne Massey','25.04.24',21,'Ankara University',
36984102578, Willa Perry, Brown, Green, Black, diabetes, depression, 30, 05488523695,
65417895463211, 02548963147856);
INSERT INTO benefits VALUES (48534431601,'Yasir Cardenas','06.10.20',6,'Ankara University',
15786300265, Zelenia Cote, Blonde, Blue, White, diabetes, healthy, 29, 05466325894,
9654789652354,78965478921365);
INSERT INTO benefits VALUES (55479974799,'Jescie Curry','05.04.23',9,'Hacettepe University',
13542808795, Megan Albert, Ginger, Green, White, healthy, healthy, 20, 05485214785,
62541369854123,88896547123658);
INSERT INTO benefits VALUES (99461448203,'Hedy Landry','10.07.28',17,'Swiss Federal Institute of
Technology Lausanne', 69523541026, Suki Hall, Brown, Hazel, Asian, healthy, anxiety, 29,
05466874123,78966654125874,33652147896541);
INSERT INTO benefits VALUES (33774057460,'Salvador Erickson','06.05.18',22,'Cambridge',
78541236952, Katara Agua, Brown, Blue, White, healthy, healthy, 33, 05412369595,
34615436987524,0036521478965);
INSERT INTO benefits VALUES (44535249484,'Ayanna Roberts','07.06.15',18,'Ankara University',
96582213047, Eftalya Talma, Brown, Black, Asian, healthy, anxiety, 37,
0548965141024516547896541,12348796587412,);
INSERT INTO benefits VALUES (78464201964,'Hoyt Nielsen','25.12.11',15,'Hacettepe University',
36421054050, Azula Loerd, Brown, Black, Black, healthy, healthy, 35, 05403206560,
65478914578954,12547896541254);
INSERT INTO benefits VALUES (20012114781,'Amelia Booker','19.04.17',11,'Ankara University',
16842994773, Hanna Dalen, Blonde, Brown, White, healthy, bipolar, 24, 05433891415,
15469854126547,32147895456321);
CREATE TABLE payment (
CardNo varchar(16) PRIMARY KEY,
SecNo varchar (22) PRIMARY KEY,
Amount varchar (10),
Currency varchar (10),
TransferType varchar (15),
CustomID varchar (20) FOREIGN KEY REFERENCES Customer(ID),
);
INSERT INTO payment VALUES ( 45689658521236,96545678523144,6500,DOLLARS,FRESH,
13779315469);
INSERT INTO payment VALUES( 89745614785236,87498541233365,6243,EUROS,FRESH,
24724897231);
INSERT INTO payment VALUES( 65417895463211,02548963147856,7000,DOLLARS,FROZEN,
47625003481);
INSERT INTO payment VALUES( 9654789652354,78965478921365,6500,DOLLARS,FRESH,
51378955476);
INSERT INTO payment VALUES( 62541369854123,88896547123658,8000,EUROS,CLEAVAGE,
23177713080);
INSERT INTO payment VALUES (78966654125874,33652147896541,6500,DOLLARS,FRESH,
90713407222);
INSERT INTO payment VALUES (34615436987524,0036521478965,8000,EUROS,CLEAVAGE,
52390977164);
INSERT INTO payment VALUES ( 24516547896541,12348796587412,6243,EUROS,EUROS,FRESH,
27367834252);
INSERT INTO payment VALUES ( 65478914578954,12547896541254,6723,EUROS,FROZEN,
89010025713);
INSERT INTO payment VALUES (15469854126547,32147895456321,8000,EUROES,CLEAVAGE,
57773913263); 