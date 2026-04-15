CREATE TABLE Insurance (
    PolicyNumber INT PRIMARY KEY,
    InsuranceName VARCHAR(50),
    CoverageLimit DECIMAL(10, 2)
);

INSERT INTO Insurance VALUES
(1001, 'altaeawunia', 13000.35),
(1002, 'alarabia',12250.87),
(1003, 'LifeGuard', 15078.45),
(1004, 'HealthSecure', 25000.1),
(1005, 'MediSafe', 12000.58),
(1006, 'CareWell', 180000.20),
(1007, 'PrimeHealth', 300000.85),
(1008, 'Bubba', 220000.14),
(1009, 'Salamah', 160000.12),
(1010, 'SecureLife', 190000.47);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(15),
    EmergencyContactNumber VARCHAR(15),
    Address VARCHAR(255),
    InsurancePolicyNumber INT,
    FOREIGN KEY (InsurancePolicyNumber) REFERENCES Insurance(PolicyNumber)
);

INSERT INTO Patients VALUES
(111, 'Saoud', 'Waleed', '1980-05-15', 'Male', '123-456-7890', '987-654-3210', 'Taif, Alsadad', 1008),
(112, 'Jamal', 'Hatem', '1992-07-22', 'Female', '234-567-8901', '876-543-2109', 'Jeddah, ALsafa', 1006),
(113, 'Ali', 'Omar', '1975-09-10', 'Male', '345-678-9012', '765-432-1098', 'Taif, Nakheb', 1007),
(114, 'Waleed', 'Hamed', '1988-11-30', 'Female', '456-789-0123', '654-321-0987', 'Taif, Alsadad', 1004),
(115, 'Ahmed', 'Ali', '1965-03-25', 'Male', '567-890-1234', '543-210-9876', 'Jeddah, ALsafa', 1005),
(116, 'Amal', 'Mohamed', '1995-08-15', 'Female', '678-901-2345', '432-109-8765', 'Reyadh, Ola', 1002),
(117, 'Yosef', 'Hassan', '1982-01-20', 'Male', '789-012-3456', '321-098-7654', 'Los Angeles, 22Street', 1003),
(118, 'Sarah', 'Ahmed', '1978-12-05', 'Female', '890-123-4567', '210-987-6543', 'Reyadh, Ola', 1001),
(119, 'James', 'Thomas', '1983-04-17', 'Male', '901-234-5678', '109-876-5432', 'Los Angeles, 22Street', 1010),
(120, 'Laura', 'Jackson', '1990-02-28', 'Female', '012-345-6789', '098-765-4321', 'London, Kings boulevard', 1009),
(121, 'Hassan', 'Hamad', '1990-02-28', 'Male', '011-121-852', '098-765-4321', 'Taif, Nakheb', 1004),
(122, 'Mosa', 'Salem', '1990-02-28', 'Male', '054-458-021', '098-765-4321', 'Jeddah, ALsafa', 1001),
(123, 'Shoqe', 'Ali', '1990-02-28', 'Female', '059-882-6631', '098-765-4321', 'Taif, Alsadad', 1005);


CREATE TABLE Physicians (
    PhysicianID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(50),
    ContactNumber VARCHAR(15),
    Email VARCHAR(50)
);

INSERT INTO Physicians VALUES
(1, 'Ali', 'Basem', 'Cardiology', '123-456-7890', 'Alibasem@Gmail.com'),
(2, 'Ahmed', 'Al-harthy', 'Neurology', '234-567-8901', 'C.Ahmed@Gmail.com'),
(3, 'Dalal', 'Namnaqani', 'Orthopedics', '345-678-9012', 'Dalal.NM@Gmail.com'),
(4, 'Diana', 'Jamal', 'Pediatrics', '456-789-0123', 'DianaJ@Gmail.com'),
(5, 'Edward', 'Jones', 'Dermatology', '567-890-1234', 'EDJ36@Gmail.com'),
(6, 'Fahad', 'Saad', 'Gastroenterology', '678-901-2345', 'Fahad.s@Gmail.com'),
(7, 'Hassan', 'Mohamed', 'Neurology', '789-012-3456', 'HSMO11@Gmail.com'),
(8, 'Hannah', 'Mojlid', 'Psychiatry', '890-123-4567', 'hannah.m@Gmail.com'),
(9, 'Rayan', 'AL-Shamrani', 'General Medicine', '901-234-5678', 'Rayan.SH@Gmail.com'),
(10, 'Julia', 'Roberts', 'Oncology', '012-345-6789', 'julia.R@Gmail.com');


CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    AdmissionDiagnosis VARCHAR(255),
    ReferringPhysician INT,
    RoomNumber VARCHAR(10),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ReferringPhysician) REFERENCES Physicians(PhysicianID)
);

INSERT INTO Admissions VALUES
(1010, 113, '2020-01-10', '2020-01-15', 'COVID-19', 1, '101A'),
(2020, 115, '2021-02-05', '2021-02-10', 'Appendicitis', 2, '102B'),
(3030, 119, '2023-03-12', '2023-03-18', 'Fractured Arm', 3, '103C'),
(4040, 111, '2020-04-07', '2020-04-14', 'COVID-19', 4, '104D'),
(5050, 113, '2024-05-20', '2024-05-27', 'Skin Infection', 5, '105E'),
(6060, 116, '2024-06-15', '2024-06-20', 'Gastric Ulcer', 6, '106F'),
(7070, 115, '2022-07-01', '2022-07-08', 'Cataract Surgery', 7, '107G'),
(8080, 118, '2020-08-09', '2020-08-15', 'COVID-19', 3, '108H'),
(9090, 117, '2020-09-11', '2020-09-18', 'COVID-19', 9, '109I'),
(1101, 120, '2023-10-05', '2023-10-12', 'Breast Cancer Treatment', 10, '110J'),
(1102, 112, '2024-11-10', '2024-11-17', 'Hypertension', 3, '111K'),
(1103, 114, '2024-12-01', '2024-12-07', 'Migraine', 8, '112L');



CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    PhysicianID INT,
    AppointmentDate DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID)
);

INSERT INTO Appointments VALUES
(101, 114, 6, '2024-04-01 09:00:00', 'Confirmed'),
(102, 112, 4, '2024-06-02 10:00:00', 'Canceled'),
(103, 113, 3, '2024-01-03 11:00:00', 'Rescheduled'),
(104, 119, 5, '2024-07-04 12:00:00', 'Confirmed'),
(105, 117 , 1, '2024-03-05 13:00:00', 'Confirmed'),
(106, 111, 2, '2024-04-06 14:00:00', 'Canceled'),
(107, 115, 7, '2024-02-07 15:00:00', 'Confirmed'),
(108, 120, 10, '2024-09-08 16:00:00', 'Confirmed'),
(109, 118, 8, '2024-08-09 17:00:00', 'Rescheduled'),
(201, 116, 9, '2024-03-10 18:00:00', 'Confirmed'),
(202, 112, 3, '2024-06-03 10:00:00','Confirmed');



CREATE TABLE Nurses (
    NurseID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Shift VARCHAR(20),
    ContactNumber VARCHAR(15),
    Email VARCHAR(50)
);

INSERT INTO Nurses VALUES
(10, 'Ebraheem', 'Faris', 'Day', '123-456-7890', 'Ebraheem.f@hmail.com'),
(20, 'Layla', 'Ali', 'Night', '234-567-8901', 'Lay.ali@hmail.com'),
(30, 'Asmaa', 'Majed', 'Evening', '345-678-9012', 'Asmaa.majed@hmail.com'),
(40, 'Saleh', 'Salem', 'Day', '456-789-0123', 'Salehss@hmail.com'),
(50, 'Abeer', 'Ahmed', 'Night', '567-890-1234', 'Abora.ahmed@hmail.com'),
(60, 'Salman', 'Mohamed', 'Evening', '678-901-2345', 'Salmanss@hmail.com'),
(70, 'Soltan', 'Akram', 'Day', '789-012-3456', 'solatn.AK@hmail.com'),
(80, 'Amal', 'Mosa', 'Night', '890-123-4567', 'A.mosa@hmail.com'),
(90, 'Miar', 'Thabet', 'Evening', '901-234-5678', 'MiarTh@hmail.com'),
(91, 'Salah', 'Zein', 'Day', '012-345-6789', 'Salahz@hmail.com');



CREATE TABLE Tests (
    TestID INT PRIMARY KEY,
    TestName VARCHAR(50),
    Description TEXT
);

INSERT INTO Tests VALUES
(10001, 'Blood Test', 'A comprehensive blood test to check various health indicators.'),
(10002, 'MRI', 'Magnetic Resonance Imaging to get detailed images of organs and tissues.'),
(10003, 'X-Ray', 'Imaging test to view the inside of the body, especially bones.'),
(10004, 'ECG', 'Electrocardiogram to check the heart’s electrical activity.'),
(10005, 'Urine Test', 'Analysis of urine sample to detect various health conditions.'),
(10006, 'Glucose Test', 'Blood test to measure the level of glucose.'),
(10007, 'CT Scan', 'Computed Tomography scan to create detailed images of internal structures.'),
(10008, 'Allergy Test', 'Test to identify allergic reactions to various substances.'),
(10009, 'Cholesterol Test', 'Blood test to measure cholesterol levels.'),
(10010, 'Thyroid Function Test', 'Blood test to assess the function of the thyroid gland.');




CREATE TABLE TestResults (
    ResultID INT PRIMARY KEY,
    TestID INT,
    PatientID INT,
    ResultDate DATE,
    ResultDetails TEXT,
    FOREIGN KEY (TestID) REFERENCES Tests(TestID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);


INSERT INTO TestResults VALUES
(1111, 10001, 120, '2024-02-01', 'Blood test results: Hemoglobin levels normal.'),
(1112, 10002, 119, '2024-08-02', 'MRI results: No abnormalities detected.'),
(1113, 10003, 118, '2024-06-03', 'X-ray results: Fracture healing well.'),
(1114, 10004, 117, '2024-07-04', 'ECG results: Normal heart rhythm.'),
(1115, 10005, 116, '2024-04-05', 'Urine test results: No signs of infection.'),
(1116, 10006, 115, '2024-05-06', 'Blood test results: Elevated glucose levels.'),
(1117, 10007, 114, '2024-02-07', 'CT scan results: Clear.'),
(1118, 10008, 113, '2024-01-08', 'Allergy test results: Positive for pollen.'),
(1119, 10009, 112, '2024-05-09', 'Cholesterol test results: Levels within normal range.'),
(1120, 10010, 111, '2024-04-10', 'Thyroid function test results: Normal TSH levels.');



CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(50),
    Dosage VARCHAR(50),
    Route VARCHAR(20),
    Frequency VARCHAR(50)
);

INSERT INTO Medications VALUES
(1001, 'Aspirin', '500mg', 'Oral', 'Twice daily'),
(1002, 'Lisinopril', '10mg', 'Oral', 'Once daily'),
(1003, 'Metformin', '1000mg', 'Oral', 'Twice daily'),
(1004, 'Atorvastatin', '20mg', 'Oral', 'Once daily'),
(1005, 'Levothyroxine', '100mcg', 'Oral', 'Once daily'),
(1006, 'Insulin', '10 units', 'Injectable', 'Before meals'),
(1007, 'Albuterol', '2 puffs', 'Inhalation', 'As needed'),
(1008, 'Warfarin', '5mg', 'Oral', 'Once daily'),
(1009, 'Omeprazole', '20mg', 'Oral', 'Once daily'),
(1010, 'Prednisone', '5mg', 'Oral', 'Once daily');


CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    PhysicianID INT,
    MedicationID INT,
    PrescriptionDate DATE,
    DosageInstructions TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

INSERT INTO Prescriptions VALUES
(01, 111, 1, 1001, '2024-06-01', 'Take 1 tablet with water every 4 hours as needed for pain'),
(02, 112, 2, 1002, '2024-06-02', 'Take 1 tablet by mouth once daily in the morning'),
(03, 113,  3, 1003, '2024-06-03', 'Take 1 tablet by mouth twice daily with meals'),
(04, 114,  4, 1004, '2024-06-04', 'Take 1 tablet by mouth once daily in the evening'),
(05, 115,  5, 1005, '2024-06-05', 'Take 1 tablet by mouth once daily in the morning'),
(06, 116,  6, 1006, '2024-06-06', 'Inject 10 mll subcutaneously before each meal'),
(07, 117,  7, 1007, '2024-06-07', 'Inhale 2 puffs as needed for shortness of breath'),
(08, 118,  8, 1008, '2024-06-08', 'Take 1 tablet by mouth once daily at bedtime'),
(09, 119,  9, 1009, '2024-06-09', 'Take 1 tablet by mouth once daily before breakfast'),
(11, 120,  10, 1010, '2024-06-10', 'Take 1 tablet by mouth once daily in the morning');