CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Authors(
  AuthorID INT PRIMARY KEY AUTO_INCREMENT,
  Name varchar(100) NOT NULL);

CREATE TABLE Books(
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(50) NOT NULL,
  Genre varchar(50),
  AuthorID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID));

CREATE TABLE Members(
  MemberID INT PRIMARY KEY AUTO_INCREMENT,
  Name varchar(100),
  Email varchar(100) UNIQUE);

CREATE TABLE BorrowRecords(
  BorrowID INT PRIMARY KEY AUTO_INCREMENT,
  BookID int,
  MemberID INT,
  BorrowDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (BookID) REFERENCES BOOKS(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID));	