Create database UniversityDb

use UniversityDb

Create table Student(
Id int Primary key Identity,
[Name] varchar(15) not null,
[Surname] varchar(15) not null,
[Age] int not null)

Create table Teacher(
Id int Primary key Identity(10,1),
[Name] varchar(15) not null,
[Surname] varchar(15) not null,
[Age] int not null)

Create table [Group](
Id int Primary key Identity(20,1),
[Name] varchar(15) not null,
StudentId int Foreign key references Student (Id))


Create table Faculty(
Id int Primary key Identity(30,1),
[Name] varchar(15) not null,
TeacherId int Foreign key references Teacher (Id))

Create table University(
Id int Primary key Identity(40,1),
[Name] varchar(15) not null,
FacultyId int Foreign key references Faculty (Id),
GroupId int Foreign key references [Group] (Id))

insert into Student
values('Ayat','Nezirli',20),
('Nicat','Elimov',20),
('Elvin','Huseynov',22),
('Faiq','Resulzade',19),
('Kamran','Abbasov',20)


insert into Teacher
values('Zamiq','Memmedov',42),
('Zaur','Qarayev',40),
('Eli','Bayramov',45)

insert into [Group]
values('Tk-75',1),
('Tk-75',3),
('Tk-68',2),
('Tk-70',4),
('Tk-70',5)

insert into Faculty
values('Riyaziyyat',11),
('Riyaziyyat',12),
('Tarix',10),
('Geologiya',11)

insert into University
values('Bdu',48,20),
('Bdu',48,21),
('Bdu',49,20),
('Bdu',49,21),
('Bdu',50,22),
('Bdu',50,23),
('Bdu',50,24),
('Bdu',51,22)

select * from University
select * from Faculty
select 
U .[Name] as [UniversityName],
F.[Name] as [FacultyName],
G.[Name] as [GroupName],
T.[Name] as [TeacherName],
T.Surname as [TeacherSurname],
T.Age as [TeacherAge],
S.[Name] as [StudentName],
S.Surname as [StudentSurname],
S.Age as [StudentAge]
from University U
join [Group] G on G.Id=U.GroupId
join Faculty F on F.Id=U.FacultyId 
join Teacher T on F.TeacherId= T.Id
join Student S on G.StudentId=S.Id
where G.[Name]='Tk-68'






















