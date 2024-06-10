

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable VALUES ('admin' ,'admin@clinic.com' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('Aaron@gmail.com', 'doctor', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('Jheysen@gmail.com', 'doctor', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('Romel@gmail.com', 'doctor', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('Michael@gmail.com', 'doctor',2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('ABC@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('DEF@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('XYZ@gmail.com', 'abc', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Aaron@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Aaron Rodriguez', '156133213', 'Enjoy, Lahore', '01-01-2000', 'M', 1, 2500, 30000, 4, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Jheysen@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Jheysen Pacheco', '156133213', 'Enjoy, Lahore', '02-02-2002', 'M', 1, 3000, 25000, 3.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Romel@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Romel Osorio', '156133213', 'Enjoy, Lahore', '03-03-2003', 'M', 1, 1500, 20000, 5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Michael@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Michael Ubarco', '156133213', 'Enjoy, Lahore', '04-04-2004', 'M', 1, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)

--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'ABC', '61536516', 'ENJOY, LAHORE', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'DEF', '61536516', 'ENJOY, LAHORE', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='XYZ@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'XYZ', '61536516', 'ENJOY, LAHORE', '4-4-1996', 'M')


select * from OtherStaff

insert into OtherStaff values ('Javed', '03227561002','Iqbal Town, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Hamza', '03227561002','Iqbal Town, Lhr', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kashan', '03227561002','Iqbal Town, Lhr', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Alio', '03227561002','Iqbal Town, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kaleem', '03227561002','Iqbal Town, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Ali', '03227561002','Iqbal Town, Lhr', 'Guard', 'M', '05-04-1990', 'Matric',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

