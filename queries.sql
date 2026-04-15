SELECT AppointmentDate, Status
FROM Appointments
WHERE AppointmentDate > CURDATE();



SELECT p.FirstName, p.LastName, a.AdmissionDate, a.DischargeDate
FROM Patients p
JOIN Admissions a ON p.PatientID = a.PatientID
JOIN Physicians ph ON a.ReferringPhysician = ph.PhysicianID
WHERE ph.FirstName = 'Dalal' AND ph.LastName = 'Namnaqani';



SELECT *
FROM Physicians
WHERE Specialization = 'Neurology';



SELECT ContactNumber
FROM Nurses
WHERE Shift = 'Day';



SELECT Dosage, MedicationName
FROM Medications
WHERE Route IN ('Oral', 'Injectable');



SELECT *
FROM Insurance
WHERE CoverageLimit > 15000;




SELECT DISTINCT Tests.Description
FROM Tests
JOIN TestResults ON Tests.TestID = TestResults.TestID
JOIN Patients ON TestResults.PatientID = Patients.PatientID
WHERE Patients.Address LIKE '%Alsadad%';



SELECT  * 
FROM Physicians ph
JOIN Appointments a ON ph.PhysicianID = a.PhysicianID
JOIN Patients p ON a.PatientID = p.PatientID
WHERE a.Status = 'Confirmed'
AND p.Gender = 'Female';



SELECT   FirstName, LastName, Specialization
FROM Physicians 
WHERE PhysicianID = 9;
