CREATE DATABASE OnlineConsultation;
USE OnlineConsultation;

CREATE TABLE Consultant (
  ConsultantID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Specialty VARCHAR(100),
  Availability VARCHAR(100)
);

CREATE TABLE Client (
  ClientID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Email VARCHAR(100)
);

CREATE TABLE Consultation (
  ConsultationID INT PRIMARY KEY AUTO_INCREMENT,
  Date DATE,
  Time VARCHAR(20),
  Topic VARCHAR(100),
  ConsultantID INT,
  ClientID INT,
  FOREIGN KEY (ConsultantID) REFERENCES Consultant(ConsultantID),
  FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

CREATE TABLE Payment (
  PaymentID INT PRIMARY KEY AUTO_INCREMENT,
  Amount DECIMAL(10,2),
  Method VARCHAR(50),
  Status VARCHAR(50),
  ConsultationID INT,
  FOREIGN KEY (ConsultationID) REFERENCES Consultation(ConsultationID)
);
