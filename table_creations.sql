
create database FYP15;

use FYP15;

create table Users
(
   username varchar(32) primary key,
   id int not null unique,
   password varchar(32) not null,
   name varchar(32) not null,
   mobile numeric not null,
   email varchar(40) not null,
   role varchar(32) not null
);


create table Committee
(
   id int primary key,
   username varchar(32) not null
);


create table Supervisor
(
  id int primary key,
  username varchar(32) not null,
  noOfproj int check(noOfproj<=6) not null
);


create table Panel
(
  id int primary key,
  username varchar(32) foreign key references Users(username),
  panel_no int not null
);


create table Project
(
  projectID int primary key,
  projectName varchar(32) not null,
  projectDesc varchar(4096) not null,
  supervisorId int foreign key references Supervisor(id),
  panel_no int,
  status varchar(32) not null,
  grade varchar(2) 
);


create table Student
(
   rollno int primary key,
   projectID int,
   username varchar(32) foreign key references Users(username)
);


create table Deadlines
(
  id int primary key,
  projectID int foreign key references Project(projectID),
  deadline_type varchar(32) not null,
  deadline_date date not null
);



create table Evaluation
(
   id int primary key,
   projectID int foreign key references Project(projectID),
   panelistUsername varchar(32) foreign key references Users(username),
   poster numeric check ( poster>=0 AND poster<=10) not null,
   fyp_plan numeric check(fyp_plan>=0 AND fyp_plan<=10) not null,
   design numeric check(design>=0 AND design<=10) not null,
   quality numeric check(quality>=0 AND quality<=10) not null,
   style numeric check(style>=0 AND style<=10) not null,
   clarity numeric check(clarity>=0 AND clarity<=10) not null,
   features numeric check(features>=0 AND features<=10) not null,
   Dynamics numeric check(Dynamics>=0 AND Dynamics<=10)not null,
   presentation numeric check(presentation>=0 AND presentation<=10)not null,
   work_imp numeric check(work_imp>=0 AND work_imp<=10)not null,
   overall numeric check (overall>=0 AND overall<=10)not null,
   code numeric check(code>=0 AND code<=10)not null,
   integration numeric check(integration>=0 AND integration<=10)not null,
   DFD numeric check(DFD>=0 AND DFD<=10)not null,
   questions numeric check(questions>=0 AND questions<=10)not null,
   reviews varchar(512),
   grade varchar(2),
 );


 create table Reviews
 (
   id int primary key,
   projectID int foreign key references Project(projectID),
   supervisorId int foreign key references Supervisor(id),
   Suggestions varchar(512)
);


 create table SupervisorReviews
 (
   id int primary key,
   projectID int foreign key references Project(projectID),
   Suggestions varchar(512)
);


create table OperationsAudit
(
  operationID int identity(1,1) Primary key,
  operationType varchar(255) NOT NULL,
  tableName varchar(255)NOT NULL,
  DateofOperation datetime NOT NULL
);