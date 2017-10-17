CREATE TABLE Persons (
	Id INT IDENTITY  NOT NULL,
	FirstName VARCHAR(50),
	Salary DECIMAL(15, 2),
	PassportID INT
)

CREATE TABLE Passports (
	Id INT IDENTITY (101,1) NOT NULL,
	PassportNumber CHAR(8)
)

INSERT INTO Persons VALUES
('Roberto', 43300.00, 102),
('Tom', 56100.00, 103),
('Yana', 60200.00, 101)

INSERT INTO Passports VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')

ALTER TABLE Persons
ADD CONSTRAINT PK_Persons 
PRIMARY KEY (Id)

ALTER TABLE Passports
ADD CONSTRAINT PK_Passports 
PRIMARY KEY (Id)

ALTER TABLE Persons
ADD CONSTRAINT FK_Persons_Passports 
FOREIGN KEY (PassportID) 
REFERENCES Passports(Id)