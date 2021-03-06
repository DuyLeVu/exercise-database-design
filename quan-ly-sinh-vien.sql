CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class(
	ClassID INT PRIMARY KEY,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME NOT NULL,
    Status BIT
);
CREATE TABLE Student(
	StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address VARCHAR(50),
    Phone VARCHAR(20),
    Status BIT,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);
CREATE TABLE Subject(	
	SubID INT AUTO_INCREMENT PRIMARY KEY,
    SubNAME VARCHAR(30) NOT NULL,
    Credit TINYINT NOT NULL DEFAULT 1 CHECK ( CREDIT >= 1),
    Status BIT DEFAULT 1 
);
CREATE TABLE Mark(
	MarkID INT AUTO_INCREMENT PRIMARY KEY,
    SubID INT,
    StudentID INT,
    Mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubID, StudentID),
    FOREIGN KEY (SubID) REFERENCES Subject (SubID),
    FOREIGN KEY (StudentID) REFERENCES Student (StudentID)
);
