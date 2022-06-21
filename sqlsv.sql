
create table Students(
Id INT primary key,
StudentName VARCHAR (255),
AGE INT,
Email VARCHAR (255)
);
use quanlyhocvien;
insert into Students VALUES (1, 'Nguyen Quang An' , 18, 'an@yahoo.com' );
insert into Students VALUES (2, 'Nguyen Cong Vinh' , 20, 'vinh@gmail.com' );
insert into Students VALUES (3, 'Nguyen Van Quyenn' , 21, 'an@dcmquyen.com' );
insert into Students VALUES (4, 'Pham Thanh Binh' , 18, 'binh@com' );
insert into Students VALUES (5, 'Bien dep zai' , 99, 'boipro.com' );



create table Classes(
Id INT primary key,
Classname VARCHAR (255)
);
insert into Classes VALUES (1,  'C0706L');
insert into Classes VALUES (2,  'C0536i');

create table ClassStudent(
StudentID INT primary key,
foreign key (StudentID) references students(id),
ClassID INT,
foreign key (ClassID) references Classes(id)

);

insert into Classes VALUES (1, 2);
insert into Classes VALUES (2, 2);
create table Subjects(
SubjectsID INT primary key,
SubjectsName Varchar(255)
);
insert into Subjects VALUES (1,'SQL');
insert into Subjects VALUES (2, 'Java');
insert into Subjects VALUES (3, 'Python');
insert into Subjects VALUES (4, 'C++');

create table Marks(
Mark INT,
SubjectsID INT,
foreign key(SubjectsID) references Subjects(SubjectsID),
StudentID INT primary key,
foreign key (StudentID) references students(id)
);

INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('5', '1', '2');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('8', '2', '3');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('4', '2', '4');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('8', '1', '2');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('9', '1', '1');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('3', '2', '2');
INSERT INTO `quanlyhocvien`.`marks` (`Mark`, `SubjectsID`, `StudentID`) VALUES ('5', '2', '1');

SELECT StudentName FROM students;

SELECT avg(mark)  FROM marks;

SELECT SubjectsName FROM subjects;

SELECT max(mark) FROM quanlyhocvien.marks;

SELECT Mark FROM quanlyhocvien.marks

order by Mark desc

SELECT SubjectsName  as  'Day la mon hoc' FROM  quanlyhocvien.subjects 

SELECT AGE 
 FROM quanlyhocvien.students
 Group by Age
 having (age > 15 and age <50)