
Use SchoolsysDB

Create Table Class (
	ClassId int primary key identity(1,1) not null, 
	ClassName varchar(50) null

);

Create Table Subject (
	SubjectId int primary key identity(1,1) not null, 
	ClassId int foreign key references Class (ClassId) null, 
	SubjectName varchar(50) null
);

Create Table Student (
	StudentId int primary key identity (1,1) not null, 
	Name varchar(50) null, 
	DOB date null,
	Gender varchar(50) null, 
	Mobile bigint null, 
	Rollno varchar(50) null, 
	Address varchar(max) null, 
	ClassId int foreign key references Class (ClassId) null

	
); 

Create Table Teacher(
	TeacherID int primary key identity(1,1) not null, 
	Name varchar(50) null, 
	DOB date null,
	Gender varchar(50) null, 
	Mobile bigint null, 
	Email varchar(50) null, 
	Rollno varchar(50) null, 
	Address varchar(max) null,
	Password varchar(50) null
);

Create Table TeacherSubject (
	ID int primary key identity (1,1) not null, 
	ClassId int foreign key references Class (ClassId) null, 
	SubjectId int foreign key references Subject(SubjectId)null, 
	TeacherId int foreign key references Teacher(TeacherId) null

); 

Create Table TeacherAttendance(
	ID int primary key identity (1,1) not null, 
	TeacherID int foreign key references Teacher(TeacherID), 
	Status bit null ,
	Date date null
); 

Create Table StudentAttendance(
	ID int primary key identity (1,1) not null, 
	ClassId int foreign key references Class (ClassId) null,
	SubjectId int foreign key references Subject(SubjectId) null,
	RollNo varchar(50) null,
	Status bit null ,
	Date date null
); 

Create Table Fee(
	FeeId int primary key identity (1,1) not null, 
	ClassId int foreign key references Class (ClassId) null, 
	FeeAmount int null
	); 

Create Table Exam(
	ExamId int primary key identity(1,1) not null, 
	ClassId int foreign key references Class (ClassId) null, 
	SubjectId int foreign key references Subject(SubjectId) null, 
	RollNo varchar(20) null, 
	TotalMarks int null, 
	Outofmarks int null
); 

Create table Expense ( 
	ExpenseId int primary key identity(1,1) not null, 
	ClassId int foreign key references Class (ClassId) null, 
	SubjectId int foreign key references Subject (SubjectId) null,
	ChangeAmount int null
); 

