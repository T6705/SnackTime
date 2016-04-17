USE unicknet_snacktime;

DROP TABLE Country;
DROP TABLE LikePerMonth;
DROP TABLE account;
DROP TABLE brand;
DROP TABLE comment;
DROP TABLE comments;
DROP TABLE company;
DROP TABLE expression;
DROP TABLE snack;
DROP TABLE subscript_company;
DROP TABLE subscript_type;
DROP TABLE types;
DROP TABLE users;

CREATE TABLE Country
(countryid VARCHAR(20),
 countrycode VARCHAR(20),
 countryname VARCHAR(255),
 PRIMARY KEY(countryid));

CREATE TABLE types
(tid VARCHAR(20),
 type VARCHAR(255),
 PRIMARY KEY(tid));

CREATE TABLE subsript_type
(sid VARCHAR(20),
 tid VARCHAR(20),
 update_date DATE,
 PRIMARY KEY(sid, tid));

CREATE TABLE subsript_company
(sid VARCHAR(20),
 cid VARCHAR(20),
 update_date DATE,
 PRIMARY KEY(sid, cid));

CREATE TABLE expression
(exid VARCHAR(20) NOT NULL UNIQUE,
 sid VARCHAR(20) ,
 uid VARCHAR(20),
 expression VARCHAR(1),
 update_date DATE,
 PRIMARY KEY(exid));

CREATE TABLE LikePerMonth
(sid VARCHAR(20) NOT NULL UNIQUE,
 likes INT,
 dislike INT,
 dates DATE,
 PRIMARY KEY(sid));

CREATE TABLE snack
(id VARCHAR(20) NOT NULL UNIQUE,
 cid VARCHAR(255),
 name VARCHAR(255), 
 types VARCHAR(255),
 country VARCHAR(255),
 price DOUBLE PRECISION(5,2),
 ImgResult VARCHAR(255),
 PRIMARY KEY(id));

CREATE TABLE account
(uid VARCHAR(30) NOT NULL UNIQUE,
 dis_name VARCHAR(255),
 pwd VARCHAR(255),
 PRIMARY KEY(uid));

CREATE TABLE company
(cid VARCHAR(30) NOT NULL UNIQUE,
 cname VARCHAR(255),
 PRIMARY KEY(cid));

CREATE TABLE brand
(bid VARCHAR(30) NOT NULL UNIQUE,
 bname VARCHAR(255),
 PRIMARY KEY(bid));

CREATE TABLE comments
(cid VARCHAR(30) NOT NULL UNIQUE,
 accountid VARCHAR(30),
 content VARCHAR(255),
 PRIMARY KEY(cid));

INSERT INTO subsript_type VALUES ('000', '000', '2016-04-17');
INSERT INTO subsript_type VALUES ('001', '001', '2016-04-17');
INSERT INTO subsript_type VALUES ('002', '002', '2016-04-17');
INSERT INTO subsript_type VALUES ('003', '003', '2016-04-17');
INSERT INTO subsript_type VALUES ('004', '004', '2016-04-17');
INSERT INTO subsript_type VALUES ('005', '005', '2016-04-17');
INSERT INTO subsript_type VALUES ('006', '006', '2016-04-17');
INSERT INTO subsript_type VALUES ('007', '007', '2016-04-17');
INSERT INTO subsript_type VALUES ('008', '008', '2016-04-17');
INSERT INTO subsript_type VALUES ('009', '009', '2016-04-17');
INSERT INTO subsript_type VALUES ('010', '010', '2016-04-17');

INSERT INTO subsript_company VALUES ('000', '000', '2016-04-17');
INSERT INTO subsript_company VALUES ('001', '001', '2016-04-17');
INSERT INTO subsript_company VALUES ('002', '002', '2016-04-17');
INSERT INTO subsript_company VALUES ('003', '003', '2016-04-17');
INSERT INTO subsript_company VALUES ('004', '004', '2016-04-17');
INSERT INTO subsript_company VALUES ('005', '005', '2016-04-17');
INSERT INTO subsript_company VALUES ('006', '006', '2016-04-17');
INSERT INTO subsript_company VALUES ('007', '007', '2016-04-17');
INSERT INTO subsript_company VALUES ('008', '008', '2016-04-17');
INSERT INTO subsript_company VALUES ('009', '009', '2016-04-17');
INSERT INTO subsript_company VALUES ('010', '010', '2016-04-17');

INSERT INTO types VALUES ('000', 'chips');
INSERT INTO types VALUES ('001', 'cookie');
INSERT INTO types VALUES ('002', 'candy');
INSERT INTO types VALUES ('003', 'cracker');
INSERT INTO types VALUES ('004', 'cake');
INSERT INTO types VALUES ('005', 'energy bar');

INSERT INTO expression VALUES ('000', '000', 'L', '2016-04-16');
INSERT INTO expression VALUES ('001', '001', 'L', '2016-04-16');
INSERT INTO expression VALUES ('002', '002', 'L', '2016-04-16');
INSERT INTO expression VALUES ('003', '003', 'L', '2016-04-16');
INSERT INTO expression VALUES ('004', '004', 'L', '2016-04-16');
INSERT INTO expression VALUES ('005', '005', 'L', '2016-04-16');
INSERT INTO expression VALUES ('006', '006', 'L', '2016-04-16');
INSERT INTO expression VALUES ('007', '007', 'L', '2016-04-16');
INSERT INTO expression VALUES ('008', '008', 'L', '2016-04-16');
INSERT INTO expression VALUES ('009', '009', 'L', '2016-04-16');
INSERT INTO expression VALUES ('010', '010', 'L', '2016-04-16');

INSERT INTO Country VALUES ('000', 'AF', 'Afghanistan');
INSERT INTO Country VALUES ('001', 'AL', 'Albania');
INSERT INTO Country VALUES ('002', 'DZ', 'Algeria');
INSERT INTO Country VALUES ('003', 'DS', 'American Samoa');
INSERT INTO Country VALUES ('004', 'AD', 'Andorra');
INSERT INTO Country VALUES ('005', 'AO', 'Angola');
INSERT INTO Country VALUES ('006', 'AI', 'Anguilla');
INSERT INTO Country VALUES ('007', 'AQ', 'Antarctica');
INSERT INTO Country VALUES ('008', 'AG', 'Antigua and Barbuda');
INSERT INTO Country VALUES ('009', 'AR', 'Argentina');
INSERT INTO Country VALUES ('010', 'AM', 'Armenia');
INSERT INTO Country VALUES ('011', 'AW', 'Aruba');
INSERT INTO Country VALUES ('012', 'AU', 'Australia');
INSERT INTO Country VALUES ('013', 'AT', 'Austria');
INSERT INTO Country VALUES ('014', 'AZ', 'Azerbaijan');
INSERT INTO Country VALUES ('015', 'BS', 'Bahamas');
INSERT INTO Country VALUES ('016', 'BH', 'Bahrain');
INSERT INTO Country VALUES ('017', 'BD', 'Bangladesh');
INSERT INTO Country VALUES ('018', 'BB', 'Barbados');
INSERT INTO Country VALUES ('019', 'BY', 'Belarus');
INSERT INTO Country VALUES ('020', 'BE', 'Belgium');
INSERT INTO Country VALUES ('021', 'BZ', 'Belize');
INSERT INTO Country VALUES ('022', 'BJ', 'Benin');
INSERT INTO Country VALUES ('023', 'BM', 'Bermuda');
INSERT INTO Country VALUES ('024', 'BT', 'Bhutan');
INSERT INTO Country VALUES ('025', 'BO', 'Bolivia');
INSERT INTO Country VALUES ('026', 'BA', 'Bosnia and Herzegovina');
INSERT INTO Country VALUES ('027', 'BW', 'Botswana');
INSERT INTO Country VALUES ('028', 'BV', 'Bouvet Island');
INSERT INTO Country VALUES ('029', 'BR', 'Brazil');
INSERT INTO Country VALUES ('030', 'IO', 'British Indian Ocean Territory');
INSERT INTO Country VALUES ('031', 'BN', 'Brunei Darussalam');
INSERT INTO Country VALUES ('032', 'BG', 'Bulgaria');
INSERT INTO Country VALUES ('033', 'BF', 'Burkina Faso');
INSERT INTO Country VALUES ('034', 'BI', 'Burundi');
INSERT INTO Country VALUES ('035', 'KH', 'Cambodia');
INSERT INTO Country VALUES ('036', 'CM', 'Cameroon');
INSERT INTO Country VALUES ('037', 'CA', 'Canada');
INSERT INTO Country VALUES ('038', 'CV', 'Cape Verde');
INSERT INTO Country VALUES ('039', 'KY', 'Cayman Islands');
INSERT INTO Country VALUES ('040', 'CF', 'Central African Republic');
INSERT INTO Country VALUES ('041', 'TD', 'Chad');
INSERT INTO Country VALUES ('042', 'CL', 'Chile');
INSERT INTO Country VALUES ('043', 'CN', 'China');
INSERT INTO Country VALUES ('044', 'CX', 'Christmas Island');
INSERT INTO Country VALUES ('045', 'CC', 'Cocos (Keeling) Islands');
INSERT INTO Country VALUES ('046', 'CO', 'Colombia');
INSERT INTO Country VALUES ('047', 'KM', 'Comoros');
INSERT INTO Country VALUES ('048', 'CG', 'Congo');
INSERT INTO Country VALUES ('049', 'CK', 'Cook Islands');
INSERT INTO Country VALUES ('050', 'CR', 'Costa Rica');
INSERT INTO Country VALUES ('051', 'HR', 'Croatia (Hrvatska)');
INSERT INTO Country VALUES ('052', 'CU', 'Cuba');
INSERT INTO Country VALUES ('053', 'CY', 'Cyprus');
INSERT INTO Country VALUES ('054', 'CZ', 'Czech Republic');
INSERT INTO Country VALUES ('055', 'DK', 'Denmark');
INSERT INTO Country VALUES ('056', 'DJ', 'Djibouti');
INSERT INTO Country VALUES ('057', 'DM', 'Dominica');
INSERT INTO Country VALUES ('058', 'DO', 'Dominican Republic');
INSERT INTO Country VALUES ('059', 'TP', 'East Timor');
INSERT INTO Country VALUES ('060', 'EC', 'Ecuador');
INSERT INTO Country VALUES ('061', 'EG', 'Egypt');
INSERT INTO Country VALUES ('062', 'SV', 'El Salvador');
INSERT INTO Country VALUES ('063', 'GQ', 'Equatorial Guinea');
INSERT INTO Country VALUES ('064', 'ER', 'Eritrea');
INSERT INTO Country VALUES ('065', 'EE', 'Estonia');
INSERT INTO Country VALUES ('066', 'ET', 'Ethiopia');
INSERT INTO Country VALUES ('067', 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO Country VALUES ('068', 'FO', 'Faroe Islands');
INSERT INTO Country VALUES ('069', 'FJ', 'Fiji');
INSERT INTO Country VALUES ('070', 'FI', 'Finland');
INSERT INTO Country VALUES ('071', 'FR', 'France');
INSERT INTO Country VALUES ('072', 'FX', 'France, Metropolitan');
INSERT INTO Country VALUES ('073', 'GF', 'French Guiana');
INSERT INTO Country VALUES ('074', 'PF', 'French Polynesia');
INSERT INTO Country VALUES ('075', 'TF', 'French Southern Territories');
INSERT INTO Country VALUES ('076', 'GA', 'Gabon');
INSERT INTO Country VALUES ('077', 'GM', 'Gambia');
INSERT INTO Country VALUES ('078', 'GE', 'Georgia');
INSERT INTO Country VALUES ('079', 'DE', 'Germany');
INSERT INTO Country VALUES ('080', 'GH', 'Ghana');
INSERT INTO Country VALUES ('081', 'GI', 'Gibraltar');
INSERT INTO Country VALUES ('082', 'GK', 'Guernsey');
INSERT INTO Country VALUES ('083', 'GR', 'Greece');
INSERT INTO Country VALUES ('084', 'GL', 'Greenland');
INSERT INTO Country VALUES ('085', 'GD', 'Grenada');
INSERT INTO Country VALUES ('086', 'GP', 'Guadeloupe');
INSERT INTO Country VALUES ('087', 'GU', 'Guam');
INSERT INTO Country VALUES ('088', 'GT', 'Guatemala');
INSERT INTO Country VALUES ('089', 'GN', 'Guinea');
INSERT INTO Country VALUES ('090', 'GW', 'Guinea-Bissau');
INSERT INTO Country VALUES ('091', 'GY', 'Guyana');
INSERT INTO Country VALUES ('092', 'HT', 'Haiti');
INSERT INTO Country VALUES ('093', 'HM', 'Heard and Mc Donald Islands');
INSERT INTO Country VALUES ('094', 'HN', 'Honduras');
INSERT INTO Country VALUES ('095', 'HK', 'Hong Kong');
INSERT INTO Country VALUES ('096', 'HU', 'Hungary');
INSERT INTO Country VALUES ('097', 'IS', 'Iceland');
INSERT INTO Country VALUES ('098', 'IN', 'India');
INSERT INTO Country VALUES ('099', 'IM', 'Isle of Man');
INSERT INTO Country VALUES ('100', 'ID', 'Indonesia');
INSERT INTO Country VALUES ('101', 'IR', 'Iran (Islamic Republic of)');
INSERT INTO Country VALUES ('102', 'IQ', 'Iraq');
INSERT INTO Country VALUES ('103', 'IE', 'Ireland');
INSERT INTO Country VALUES ('104', 'IL', 'Israel');
INSERT INTO Country VALUES ('105', 'IT', 'Italy');
INSERT INTO Country VALUES ('106', 'CI', 'Ivory Coast');
INSERT INTO Country VALUES ('107', 'JE', 'Jersey');
INSERT INTO Country VALUES ('108', 'JM', 'Jamaica');
INSERT INTO Country VALUES ('109', 'JP', 'Japan');
INSERT INTO Country VALUES ('110', 'JO', 'Jordan');
INSERT INTO Country VALUES ('111', 'KZ', 'Kazakhstan');
INSERT INTO Country VALUES ('112', 'KE', 'Kenya');
INSERT INTO Country VALUES ('113', 'KI', 'Kiribati');
INSERT INTO Country VALUES ('114', 'KP', 'Korea, Democratic People''s Republic of');
INSERT INTO Country VALUES ('115', 'KR', 'Korea, Republic of');
INSERT INTO Country VALUES ('116', 'XK', 'Kosovo');
INSERT INTO Country VALUES ('117', 'KW', 'Kuwait');
INSERT INTO Country VALUES ('118', 'KG', 'Kyrgyzstan');
INSERT INTO Country VALUES ('119', 'LA', 'Lao People''s Democratic Republic');
INSERT INTO Country VALUES ('120', 'LV', 'Latvia');
INSERT INTO Country VALUES ('121', 'LB', 'Lebanon');
INSERT INTO Country VALUES ('122', 'LS', 'Lesotho');
INSERT INTO Country VALUES ('123', 'LR', 'Liberia');
INSERT INTO Country VALUES ('124', 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO Country VALUES ('125', 'LI', 'Liechtenstein');
INSERT INTO Country VALUES ('126', 'LT', 'Lithuania');
INSERT INTO Country VALUES ('127', 'LU', 'Luxembourg');
INSERT INTO Country VALUES ('128', 'MO', 'Macau');
INSERT INTO Country VALUES ('129', 'MK', 'Macedonia');
INSERT INTO Country VALUES ('130', 'MG', 'Madagascar');
INSERT INTO Country VALUES ('131', 'MW', 'Malawi');
INSERT INTO Country VALUES ('132', 'MY', 'Malaysia');
INSERT INTO Country VALUES ('133', 'MV', 'Maldives');
INSERT INTO Country VALUES ('134', 'ML', 'Mali');
INSERT INTO Country VALUES ('135', 'MT', 'Malta');
INSERT INTO Country VALUES ('136', 'MH', 'Marshall Islands');
INSERT INTO Country VALUES ('137', 'MQ', 'Martinique');
INSERT INTO Country VALUES ('138', 'MR', 'Mauritania');
INSERT INTO Country VALUES ('139', 'MU', 'Mauritius');
INSERT INTO Country VALUES ('140', 'TY', 'Mayotte');
INSERT INTO Country VALUES ('141', 'MX', 'Mexico');
INSERT INTO Country VALUES ('142', 'FM', 'Micronesia, Federated States of');
INSERT INTO Country VALUES ('143', 'MD', 'Moldova, Republic of');
INSERT INTO Country VALUES ('144', 'MC', 'Monaco');
INSERT INTO Country VALUES ('145', 'MN', 'Mongolia');
INSERT INTO Country VALUES ('146', 'ME', 'Montenegro');
INSERT INTO Country VALUES ('147', 'MS', 'Montserrat');
INSERT INTO Country VALUES ('148', 'MA', 'Morocco');
INSERT INTO Country VALUES ('149', 'MZ', 'Mozambique');
INSERT INTO Country VALUES ('150', 'MM', 'Myanmar');
INSERT INTO Country VALUES ('151', 'NA', 'Namibia');
INSERT INTO Country VALUES ('152', 'NR', 'Nauru');
INSERT INTO Country VALUES ('153', 'NP', 'Nepal');
INSERT INTO Country VALUES ('154', 'NL', 'Netherlands');
INSERT INTO Country VALUES ('155', 'AN', 'Netherlands Antilles');
INSERT INTO Country VALUES ('156', 'NC', 'New Caledonia');
INSERT INTO Country VALUES ('157', 'NZ', 'New Zealand');
INSERT INTO Country VALUES ('158', 'NI', 'Nicaragua');
INSERT INTO Country VALUES ('159', 'NE', 'Niger');
INSERT INTO Country VALUES ('160', 'NG', 'Nigeria');
INSERT INTO Country VALUES ('161', 'NU', 'Niue');
INSERT INTO Country VALUES ('162', 'NF', 'Norfolk Island');
INSERT INTO Country VALUES ('163', 'MP', 'Northern Mariana Islands');
INSERT INTO Country VALUES ('164', 'NO', 'Norway');
INSERT INTO Country VALUES ('165', 'OM', 'Oman');
INSERT INTO Country VALUES ('166', 'PK', 'Pakistan');
INSERT INTO Country VALUES ('167', 'PW', 'Palau');
INSERT INTO Country VALUES ('168', 'PS', 'Palestine');
INSERT INTO Country VALUES ('169', 'PA', 'Panama');
INSERT INTO Country VALUES ('170', 'PG', 'Papua New Guinea');
INSERT INTO Country VALUES ('171', 'PY', 'Paraguay');
INSERT INTO Country VALUES ('172', 'PE', 'Peru');
INSERT INTO Country VALUES ('173', 'PH', 'Philippines');
INSERT INTO Country VALUES ('174', 'PN', 'Pitcairn');
INSERT INTO Country VALUES ('175', 'PL', 'Poland');
INSERT INTO Country VALUES ('176', 'PT', 'Portugal');
INSERT INTO Country VALUES ('177', 'PR', 'Puerto Rico');
INSERT INTO Country VALUES ('178', 'QA', 'Qatar');
INSERT INTO Country VALUES ('179', 'RE', 'Reunion');
INSERT INTO Country VALUES ('180', 'RO', 'Romania');
INSERT INTO Country VALUES ('181', 'RU', 'Russian Federation');
INSERT INTO Country VALUES ('182', 'RW', 'Rwanda');
INSERT INTO Country VALUES ('183', 'KN', 'Saint Kitts and Nevis');
INSERT INTO Country VALUES ('184', 'LC', 'Saint Lucia');
INSERT INTO Country VALUES ('185', 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO Country VALUES ('186', 'WS', 'Samoa');
INSERT INTO Country VALUES ('187', 'SM', 'San Marino');
INSERT INTO Country VALUES ('188', 'ST', 'Sao Tome and Principe');
INSERT INTO Country VALUES ('189', 'SA', 'Saudi Arabia');
INSERT INTO Country VALUES ('190', 'SN', 'Senegal');
INSERT INTO Country VALUES ('191', 'RS', 'Serbia');
INSERT INTO Country VALUES ('192', 'SC', 'Seychelles');
INSERT INTO Country VALUES ('193', 'SL', 'Sierra Leone');
INSERT INTO Country VALUES ('194', 'SG', 'Singapore');
INSERT INTO Country VALUES ('195', 'SK', 'Slovakia');
INSERT INTO Country VALUES ('196', 'SI', 'Slovenia');
INSERT INTO Country VALUES ('197', 'SB', 'Solomon Islands');
INSERT INTO Country VALUES ('198', 'SO', 'Somalia');
INSERT INTO Country VALUES ('199', 'ZA', 'South Africa');
INSERT INTO Country VALUES ('200', 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO Country VALUES ('201', 'ES', 'Spain');
INSERT INTO Country VALUES ('202', 'LK', 'Sri Lanka');
INSERT INTO Country VALUES ('203', 'SH', 'St. Helena');
INSERT INTO Country VALUES ('204', 'PM', 'St. Pierre and Miquelon');
INSERT INTO Country VALUES ('205', 'SD', 'Sudan');
INSERT INTO Country VALUES ('206', 'SR', 'Suriname');
INSERT INTO Country VALUES ('207', 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO Country VALUES ('208', 'SZ', 'Swaziland');
INSERT INTO Country VALUES ('209', 'SE', 'Sweden');
INSERT INTO Country VALUES ('210', 'CH', 'Switzerland');
INSERT INTO Country VALUES ('211', 'SY', 'Syrian Arab Republic');
INSERT INTO Country VALUES ('212', 'TW', 'Taiwan');
INSERT INTO Country VALUES ('213', 'TJ', 'Tajikistan');
INSERT INTO Country VALUES ('214', 'TZ', 'Tanzania, United Republic of');
INSERT INTO Country VALUES ('215', 'TH', 'Thailand');
INSERT INTO Country VALUES ('216', 'TG', 'Togo');
INSERT INTO Country VALUES ('217', 'TK', 'Tokelau');
INSERT INTO Country VALUES ('218', 'TO', 'Tonga');
INSERT INTO Country VALUES ('219', 'TT', 'Trinidad and Tobago');
INSERT INTO Country VALUES ('220', 'TN', 'Tunisia');
INSERT INTO Country VALUES ('221', 'TR', 'Turkey');
INSERT INTO Country VALUES ('222', 'TM', 'Turkmenistan');
INSERT INTO Country VALUES ('223', 'TC', 'Turks and Caicos Islands');
INSERT INTO Country VALUES ('224', 'TV', 'Tuvalu');
INSERT INTO Country VALUES ('225', 'UG', 'Uganda');
INSERT INTO Country VALUES ('226', 'UA', 'Ukraine');
INSERT INTO Country VALUES ('227', 'AE', 'United Arab Emirates');
INSERT INTO Country VALUES ('228', 'GB', 'United Kingdom');
INSERT INTO Country VALUES ('229', 'US', 'United States');
INSERT INTO Country VALUES ('230', 'UM', 'United States minor outlying islands');
INSERT INTO Country VALUES ('231', 'UY', 'Uruguay');
INSERT INTO Country VALUES ('232', 'UZ', 'Uzbekistan');
INSERT INTO Country VALUES ('233', 'VU', 'Vanuatu');
INSERT INTO Country VALUES ('234', 'VA', 'Vatican City State');
INSERT INTO Country VALUES ('235', 'VE', 'Venezuela');
INSERT INTO Country VALUES ('236', 'VN', 'Vietnam');
INSERT INTO Country VALUES ('237', 'VG', 'Virgin Islands (British)');
INSERT INTO Country VALUES ('238', 'VI', 'Virgin Islands (U.S.)');
INSERT INTO Country VALUES ('239', 'WF', 'Wallis and Futuna Islands');
INSERT INTO Country VALUES ('240', 'EH', 'Western Sahara');
INSERT INTO Country VALUES ('241', 'YE', 'Yemen');
INSERT INTO Country VALUES ('242', 'YU', 'Yugoslavia');
INSERT INTO Country VALUES ('243', 'ZR', 'Zaire');
INSERT INTO Country VALUES ('244', 'ZM', 'Zambia');
INSERT INTO Country VALUES ('245', 'ZW', 'Zimbabwe');


INSERT INTO LikePerMonth VALUES ('000', '5', '5', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('001', '8', '3', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('002', '3', '0', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('003', '0', '8', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('004', '6', '2', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('005', '8', '1', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('006', '4', '1', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('007', '6', '6', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('008', '2', '2', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('009', '10','1', '2016-04-01');
INSERT INTO LikePerMonth VALUES ('010', '5', '6', '2016-04-01');

INSERT INTO snack VALUES ('000','000','ccc chips', 'chips', 'CHINA', '10', 'http://unicomhk.net/hackaton/www/img/snack/calbee_ethnicans_potato_chips.jpg');
INSERT INTO snack VALUES ('001','001','good good candy', 'candy', 'JAPAN', '15', 'http://unicomhk.net/hackaton/www/img/snack/select_blackcurrant_flavour_pastilles.jpg');
INSERT INTO snack VALUES ('002','002','chips of korea', 'chips', 'KOREA', '13', 'http://unicomhk.net/hackaton/www/img/snack/calbee_potato_chips-bbq.jpg');
INSERT INTO snack VALUES ('003','003','cookie','cookie', 'CHINA', '5', 'http://unicomhk.net/hackaton/www/img/snack/kjeldsens_butter_cookies.jpg');
INSERT INTO snack VALUES ('004','004','mini mini cake', 'cake', 'U.S.A', '30', 'http://unicomhk.net/hackaton/www/img/snack/ritz_lemon_sandwich.jpg');
INSERT INTO snack VALUES ('005','005','kk chips', 'chips', 'KOREA', '17', 'http://unicomhk.net/hackaton/www/img/snack/calbee_potato_chips_spicy_pizza.jpg');
INSERT INTO snack VALUES ('006','006','hell cracker', 'cracker', 'HELL', '20', 'http://unicomhk.net/hackaton/www/img/snack/edo_pack_potato_cracker.jpg');
INSERT INTO snack VALUES ('007','007','chips of china', 'chips', 'CHINA', '5', 'http://unicomhk.net/hackaton/www/img/snack/hansel_premium_cheese_sandwich.jpg');
INSERT INTO snack VALUES ('008','008','lemon puff','CHINA', 'puff', '7', , 'http://unicomhk.net/hackaton/www/img/snack/garden_lemon_puff_portion.jpg');
INSERT INTO snack VALUES ('009','009','good good chips', 'chips', 'JAPAN', '23', 'http://unicomhk.net/hackaton/www/img/snack/hamlet_dark_chocolate_chips.jpg');
INSERT INTO snack VALUES ('010','010','energy bar', 'eneryg bar', 'UK', '14', 'http://unicomhk.net/hackaton/www/img/snack/dextro_energy_candy_pineapple.jpg');

INSERT INTO account VALUES ('002','splunk','changeme');
INSERT INTO account VALUES ('005','Mary','changeyou');
INSERT INTO account VALUES ('001','Peter','changeher');
INSERT INTO account VALUES ('006','Star','changethem');
INSERT INTO account VALUES ('007','SoFarAway','changehim');
INSERT INTO account VALUES ('008','Tommy','changeit');
INSERT INTO account VALUES ('003','123164651','changemymind');
INSERT INTO account VALUES ('004','agafa6','changetheworld');
INSERT INTO account VALUES ('000','asalfalvjalja','root');
INSERT INTO account VALUES ('009','000000000','goodbye');
INSERT INTO account VALUES ('010','chill','change');

INSERT INTO brand VALUES ('000', 'goodtaste');
INSERT INTO brand VALUES ('001', 'tastegood');
INSERT INTO brand VALUES ('002', 'eatmore');
INSERT INTO brand VALUES ('003', 'eatsome');
INSERT INTO brand VALUES ('004', 'kitkat');
INSERT INTO brand VALUES ('005', 'muji');
INSERT INTO brand VALUES ('006', 'nike');
INSERT INTO brand VALUES ('007', 'tictac');
INSERT INTO brand VALUES ('008', 'madhead');
INSERT INTO brand VALUES ('009', 'madleg');
INSERT INTO brand VALUES ('010', 'madhand');

INSERT INTO company VALUES ('000', 'goodtaste');
INSERT INTO company VALUES ('001', 'tastegood');
INSERT INTO company VALUES ('002', 'eatmore');
INSERT INTO company VALUES ('003', 'eatsome');
INSERT INTO company VALUES ('004', 'kitkat');
INSERT INTO company VALUES ('005', 'muji');
INSERT INTO company VALUES ('006', 'nike');
INSERT INTO company VALUES ('007', 'tictac');
INSERT INTO company VALUES ('008', 'madhead');
INSERT INTO company VALUES ('009', 'madleg');
INSERT INTO company VALUES ('010', 'madhand');

INSERT INTO comments VALUES ('000', '000', 'very good');
INSERT INTO comments VALUES ('001', '001', 'i am lovin it');
INSERT INTO comments VALUES ('004', '004', 'seems good');
INSERT INTO comments VALUES ('005', '005', 'i will try it again');
INSERT INTO comments VALUES ('006', '006', '=]');
INSERT INTO comments VALUES ('007', '007', '=['); INSERT INTO comments VALUES ('008', '008', 'gg');
INSERT INTO comments VALUES ('002', '002', 'balabababa');
INSERT INTO comments VALUES ('003', '003', 'i want more');
INSERT INTO comments VALUES ('009', '009', 'well played');
INSERT INTO comments VALUES ('010', '010', 'thank you');
