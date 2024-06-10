

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

INSERT INTO LoginTable(Email, Password, Type) VALUES('Kean@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('JipDaper@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('Rigor@gmail.com', 'abc', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Aaron@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Aaron Rodriguez', '09209316496', 'Malabon', '01-01-2000', 'M', 1, 2500, 30000, 4, 0, 'United States Medical Licensing Examination, Bachelor Degree ', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Jheysen@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Jheysen Pacheco', '09649947296', 'Caloocan', '02-02-2002', 'M', 1, 3000, 25000, 3.5, 0, 'United States Medical Licensing Examination, Bachelor Degree', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Romel@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Romel Osorio', '09985948196', 'Navotas', '03-03-2003', 'M', 1, 1500, 20000, 5, 0, 'United States Medical Licensing Examination, Bachelor Degree', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'Michael@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Michael Ubarco', '09978948197', 'Bulacan', '04-04-2004', 'M', 1, 1000, 15000, 4.5, 0, 'United States Medical Licensing Examination, Bachelor Degree', 'ENJOY', 10, 1)

--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='Kean@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Kean Lura', '09098989874', 'Caloocan', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='JipDaper@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Jip Dampher', '09878456241', 'Caloocan', '1-6-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='Rigor@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Rigor Syguat', '09874523614', 'Malabon', '1-1-1999', 'M')


select * from OtherStaff

insert into OtherStaff values ('Charles', '09209316496','Lambakin Bulacan', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Jeff', '09098989874','Saog Marilao', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kesha', '09874523614','Iba Lambakin', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Rigor', '09098989874','Caloocan North', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Lura', '09978948197','Monumento', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kean', '09649947296','Navotas', 'Guard', 'M', '05-04-1990', 'Matric',5000)


