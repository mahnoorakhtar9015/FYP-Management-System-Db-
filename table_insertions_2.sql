use FYP15;


--INSERTION IN USERS TABLE
insert into Users values('_mahnoorakhtar_',1,'ss015','Mahnoor Akhtar',0331523345,'mahnoorakhtar9015@gmail.com','Student');
insert into Users values('hamza_imran',2,'1ff122','Hamza Imran',0331523311,'hamzacoder@gmail.com','Student');
insert into Users values('ainazainabb',3,'gh2233','Aina Syed',0331523341,'ainazainabb99@gmail.com','Student');
--comittee
insert into Users values('javeria.Imtiaz',1,'1df241','Javeria Zia',0331567556,'javeria.zia@nu.edu.pk','Faculty');
insert into Users values('shoaib.Mehboob',5,'12fd21','Shoaib Mehboob',1234511233,'shoaib.mehboob@nu.edu.pk','Faculty');
--supervisors
insert into Users values('shams_farooq',6,'3aa45','Shams Farooq',2010303111,'shams.farooq@nu.edu.pk','Faculty');
insert into Users values('adnan_tariq',7,'ea15','Adnan Tariq',3232323552,'adnan_tariq@nu.edu.pk','Faculty');
insert into Users values('naveed.ahmad',8,'21s345','Naveed Ahmad',2321444211,'naveed.ahmad@nu.edu.pk','Faculty');
--panelists
insert into Users values('eyshaf',9,'4aa45','Eysha Fatima',314433121,'eyshaf@nu.edu.pk','Faculty');
insert into Users values('dinazainab',10,'43f5','Dina Zainab',54543631,'dinazz@nu.edu.pk','Faculty');
insert into Users values('noor_sb',11,'53sd5','Noor ul Aina',457811664,'noorulain@nu.edu.pk','Faculty');


--INSERTION IN COMMITTEE TABLE
insert into Committee values(1,'javeria.Imtiaz');
insert into Committee values(2,'shoaib.Mehboob');


--INSERTION IN SUPERVISORS TABLE
insert into Supervisor values(1,'shams_farooq',4);
insert into Supervisor values(2,'adnan_tariq',5);
insert into Supervisor values(3,'naveed.ahmad',2);


--INSERTION IN PANEL TABLE
insert into Panel values(1,'eyshaf',1);
insert into Panel values(2,'dinazainab',1);
insert into Panel values(3,'noor_sb',2);


--INSERTION IN PROJECT TABLE
insert into Project values(1,'Big Data Research','Analysis of Big data.',1,1,'Active','A');
insert into Project values(2,'Hand Simulation','Research on Hands',2,null,'Non-active','NA');
insert into Project values(3,'Another Project','Test Test',null,2,'Non-active','NA');



--INSERTION IN STUDENT TABLE
insert into Student values(0635,1,'_mahnoorakhtar_');
insert into Student values(0437,1,'hamza_imran');
insert into Student values(0900,1,'ainazainabb');
