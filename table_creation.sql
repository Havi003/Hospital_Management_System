-- Create the database
CREATE DATABASE HospitalManagement;
USE HospitalManagement;

-- Create the Patient table
CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL,
    AdmissionNumber INT NOT NULL UNIQUE
);

-- Create the Room table
CREATE TABLE Room (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber INT NOT NULL UNIQUE,
    BuildingID INT NOT NULL
);

-- Create the Building table
CREATE TABLE Building (
    BuildingID INT AUTO_INCREMENT PRIMARY KEY,
    BuildingName VARCHAR(255) NOT NULL
);

-- Create the Physician table
CREATE TABLE Physician (
    PhysicianID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL
);

-- Create the Appointment table
CREATE TABLE Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentDate DATETIME NOT NULL,
    PatientID INT NOT NULL,
    PhysicianID INT NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID)
);

-- Create the Drug table
CREATE TABLE Drug (
    DrugID INT AUTO_INCREMENT PRIMARY KEY,
    DrugName VARCHAR(255) NOT NULL,
    DrugCode VARCHAR(50) NOT NULL UNIQUE
);

-- Create the DrugLabel table
CREATE TABLE DrugLabel (
    LabelID INT AUTO_INCREMENT PRIMARY KEY,
    DrugID INT NOT NULL,
    LabelDetails TEXT NOT NULL,
    FOREIGN KEY (DrugID) REFERENCES Drug(DrugID)
);

-- Create the DrugPrescription table
CREATE TABLE DrugPrescription (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    PhysicianID INT NOT NULL,
    DrugID INT NOT NULL,
    Dosage VARCHAR(100) NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID),
    FOREIGN KEY (DrugID) REFERENCES Drug(DrugID)
);

-- Assign Patients to Rooms
CREATE TABLE PatientRoom (
    PatientRoomID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    RoomID INT NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    UNIQUE (PatientID)
);