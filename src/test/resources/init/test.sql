drop table if exists test;

create table test (
                      spalte1 int,
                      spalte2 varchar(100)
);

insert into test VALUES (34,'hey');
insert into test VALUES (12,'hallo');


drop table if exists titanic;

create table titanic (
                         PassengerId int,
                         Pclass int,
                         Name varchar(100),
                         Sex varchar(10),
                         Age float,
                         SibSp int,
                         Parch int,
                         Ticket varchar(20),
                         Fare float,
                         Cabin varchar(20),
                         Embarked varchar(1)
);

insert into titanic VALUES (892,3,'Kelly, Mr. James','male',34.5,0,0,'330911',7.8292,NULL,'Q');
insert into titanic VALUES (893,3,'Wilkes, Mrs. James (Ellen Needs)','female',47,1,0,'363272',7,NULL,'S');
insert into titanic VALUES (894,2,'Myles, Mr. Thomas Francis','male',62,0,0,'240276',9.6875,NULL,'Q');
insert into titanic VALUES (895,3,'Wirz, Mr. Albert','male',27,0,0,'315154',8.6625,NULL,'S');
INSERT INTO titanic VALUES (896,3,'Hirvonen, Mrs. Alexander (Helga E Lindqvist)','female',22,1,1,'3101298',12.2875,NULL,'S');
INSERT INTO titanic VALUES (897,3,'Svensson, Mr. Johan Cervin','male',14,0,0,'7538',9.225,NULL,'S');
INSERT INTO titanic VALUES (898,3,'Connolly, Miss. Kate','female',30,0,0,'330972',7.6292,NULL,'Q');

INSERT INTO titanic VALUES (899,2,'Caldwell, Mr. Albert Francis','male',26,1,1,'248738',29,NULL,'S');
INSERT INTO titanic VALUES (900,3,'Abrahim, Mrs. Joseph (Sophie Halaut Easu)','female',18,0,0,'2657',7.2292,NULL,'C');
INSERT INTO titanic VALUES (901,3,'Davies, Mr. John Samuel','male',21,2,0,'A/4 48871',24.15,NULL,'S');
INSERT INTO titanic VALUES (902,3,'Ilieff, Mr. Ylio','male',NULL,0,0,'349220',7.8958,NULL,'S');
INSERT INTO titanic VALUES (903,1,'Jones, Mr. Charles Cresson','male',46,0,0,'694',26,NULL,'S');
INSERT INTO titanic VALUES (904,1,'Snyder, Mrs. John Pillsbury (Nelle Stevenson)','female',23,1,0,'21228',82.2667,'B45','S');
INSERT INTO titanic VALUES (905,2,'Howard, Mr. Benjamin','male',63,1,0,'24065',26,NULL,'S');
INSERT INTO titanic VALUES (906,1,'Chaffee, Mrs. Herbert Fuller (Carrie Constance Toogood)','female',47,1,0,'W.E.P. 5734',61.175,'E31','S');
INSERT INTO titanic VALUES (907,2,'del Carlo, Mrs. Sebastiano (Argenia Genovesi)','female',24,1,0,'SC/PARIS 2167',27.7208,NULL,'C');
INSERT INTO titanic VALUES (908,2,'Keane, Mr. Daniel','male',35,0,0,'233734',12.35,NULL,'Q');
INSERT INTO titanic VALUES (909,3,'Assaf, Mr. Gerios','male',21,0,0,'2692',7.225,NULL,'C');
INSERT INTO titanic VALUES (910,3,'Ilmakangas, Miss. Ida Livija','female',27,1,0,'STON/O2. 3101270',7.925,NULL,'S');
INSERT INTO titanic VALUES (911,3,'Assaf Khalil, Mrs. Mariana (Miriam")"','female',45,0,0,'2696',7.225,NULL,'C');
INSERT INTO titanic VALUES (912,1,'Rothschild, Mr. Martin','male',55,1,0,'PC 17603',59.4,NULL,'C');
INSERT INTO titanic VALUES (913,3,'Olsen, Master. Artur Karl','male',9,0,1,'C 17368',3.1708,NULL,'S');
INSERT INTO titanic VALUES (914,1,'Flegenheim, Mrs. Alfred (Antoinette)','female',NULL,0,0,'PC 17598',31.6833,NULL,'S');
INSERT INTO titanic VALUES (915,1,'Williams, Mr. Richard Norris II','male',21,0,1,'PC 17597',61.3792,NULL,'C');
INSERT INTO titanic VALUES (916,1,'Ryerson, Mrs. Arthur Larned (Emily Maria Borie)','female',48,1,3,'PC 17608',262.375,'B57 B59 B63 B66','C');
INSERT INTO titanic VALUES (917,3,'Robins, Mr. Alexander A','male',50,1,0,'A/5. 3337',14.5,NULL,'S');
INSERT INTO titanic VALUES (918,1,'Ostby, Miss. Helene Ragnhild','female',22,0,1,'113509',61.9792,'B36','C');
INSERT INTO titanic VALUES (919,3,'Daher, Mr. Shedid','male',22.5,0,0,'2698',7.225,NULL,'C');
INSERT INTO titanic VALUES (920,1,'Brady, Mr. John Bertram','male',41,0,0,'113054',30.5,'A21','S');
INSERT INTO titanic VALUES (921,3,'Samaan, Mr. Elias','male',NULL,2,0,'2662',21.6792,NULL,'C');
INSERT INTO titanic VALUES (922,2,'Louch, Mr. Charles Alexander','male',50,1,0,'SC/AH 3085',26,NULL,'S');
INSERT INTO titanic VALUES (923,2,'Jefferys, Mr. Clifford Thomas','male',24,2,0,'C.A. 31029',31.5,NULL,'S');
INSERT INTO titanic VALUES (924,3,'Dean, Mrs. Bertram (Eva Georgetta Light)','female',33,1,2,'C.A. 2315',20.575,NULL,'S');
INSERT INTO titanic VALUES (925,3,'Johnston, Mrs. Andrew G (Elizabeth Lily" Watson)"','female',NULL,1,2,'W./C. 6607',23.45,NULL,'S');
INSERT INTO titanic VALUES (926,1,'Mock, Mr. Philipp Edmund','male',30,1,0,'13236',57.75,'C78','C');
INSERT INTO titanic VALUES (927,3,'Katavelas, Mr. Vassilios (Catavelas Vassilios")"','male',18.5,0,0,'2682',7.2292,NULL,'C');
INSERT INTO titanic VALUES (928,3,'Roth, Miss. Sarah A','female',NULL,0,0,'342712',8.05,NULL,'S');
INSERT INTO titanic VALUES (929,3,'Cacic, Miss. Manda','female',21,0,0,'315087',8.6625,NULL,'S');
INSERT INTO titanic VALUES (930,3,'Sap, Mr. Julius','male',25,0,0,'345768',9.5,NULL,'S');
INSERT INTO titanic VALUES (931,3,'Hee, Mr. Ling','male',NULL,0,0,'1601',56.4958,NULL,'S');
INSERT INTO titanic VALUES (932,3,'Karun, Mr. Franz','male',39,0,1,'349256',13.4167,NULL,'C');
INSERT INTO titanic VALUES (933,1,'Franklin, Mr. Thomas Parham','male',NULL,0,0,'113778',26.55,'D34','S');
INSERT INTO titanic VALUES (934,3,'Goldsmith, Mr. Nathan','male',41,0,0,'SOTON/O.Q. 3101263',7.85,NULL,'S');
INSERT INTO titanic VALUES (935,2,'Corbett, Mrs. Walter H (Irene Colvin)','female',30,0,0,'237249',13,NULL,'S');
INSERT INTO titanic VALUES (936,1,'Kimball, Mrs. Edwin Nelson Jr (Gertrude Parsons)','female',45,1,0,'11753',52.5542,'D19','S');
INSERT INTO titanic VALUES (937,3,'Peltomaki, Mr. Nikolai Johannes','male',25,0,0,'STON/O 2. 3101291',7.925,NULL,'S');
INSERT INTO titanic VALUES (938,1,'Chevre, Mr. Paul Romaine','male',45,0,0,'PC 17594',29.7,'A9','C');
INSERT INTO titanic VALUES (939,3,'Shaughnessy, Mr. Patrick','male',NULL,0,0,'370374',7.75,NULL,'Q');
INSERT INTO titanic VALUES (940,1,'Bucknell, Mrs. William Robert (Emma Eliza Ward)','female',60,0,0,'11813',76.2917,'D15','C');
INSERT INTO titanic VALUES (941,3,'Coutts, Mrs. William (Winnie Minnie" Treanor)"','female',36,0,2,'C.A. 37671',15.9,NULL,'S');
INSERT INTO titanic VALUES (942,1,'Smith, Mr. Lucien Philip','male',24,1,0,'13695',60,'C31','S');
INSERT INTO titanic VALUES (943,2,'Pulbaum, Mr. Franz','male',27,0,0,'SC/PARIS 2168',15.0333,NULL,'C');
INSERT INTO titanic VALUES (944,2,'Hocking, Miss. Ellen Nellie""','female',20,2,1,'29105',23,NULL,'S');
INSERT INTO titanic VALUES (945,1,'Fortune, Miss. Ethel Flora','female',28,3,2,'19950',263,'C23 C25 C27','S');


