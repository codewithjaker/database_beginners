DROP DATABASE IF EXISTS clinic_management_project;
CREATE DATABASE clinic_management_project;
USE clinic_management_project;

CREATE TABLE departments(department_id INT PRIMARY KEY,department_name VARCHAR(100) NOT NULL UNIQUE);
CREATE TABLE doctors(doctor_id INT PRIMARY KEY,doctor_name VARCHAR(100) NOT NULL,phone VARCHAR(20) UNIQUE,department_id INT,consultation_fee DECIMAL(10,2) DEFAULT 500,FOREIGN KEY(department_id) REFERENCES departments(department_id) ON UPDATE CASCADE ON DELETE SET NULL);
CREATE TABLE patients(patient_id INT PRIMARY KEY,patient_name VARCHAR(100) NOT NULL,gender VARCHAR(10) CHECK(gender IN('Male','Female')),age INT CHECK(age>=0),phone VARCHAR(20),city VARCHAR(80));
CREATE TABLE appointments(appointment_id INT PRIMARY KEY,patient_id INT NOT NULL,doctor_id INT NOT NULL,appointment_date DATE NOT NULL,appointment_status VARCHAR(30) DEFAULT 'Scheduled',FOREIGN KEY(patient_id) REFERENCES patients(patient_id) ON UPDATE CASCADE ON DELETE CASCADE,FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE medicines(medicine_id INT PRIMARY KEY,medicine_name VARCHAR(120) NOT NULL UNIQUE,category VARCHAR(80),unit_price DECIMAL(10,2) CHECK(unit_price>=0),stock INT DEFAULT 0 CHECK(stock>=0));
CREATE TABLE prescriptions(prescription_id INT PRIMARY KEY,appointment_id INT NOT NULL,medicine_id INT NOT NULL,dosage VARCHAR(100),quantity INT CHECK(quantity>0),FOREIGN KEY(appointment_id) REFERENCES appointments(appointment_id) ON UPDATE CASCADE ON DELETE CASCADE,FOREIGN KEY(medicine_id) REFERENCES medicines(medicine_id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE bills(bill_id INT PRIMARY KEY,patient_id INT NOT NULL,appointment_id INT,bill_date DATE NOT NULL,consultation_fee DECIMAL(10,2) DEFAULT 0,medicine_fee DECIMAL(10,2) DEFAULT 0,other_fee DECIMAL(10,2) DEFAULT 0,payment_status VARCHAR(20) DEFAULT 'Unpaid',FOREIGN KEY(patient_id) REFERENCES patients(patient_id) ON UPDATE CASCADE ON DELETE CASCADE,FOREIGN KEY(appointment_id) REFERENCES appointments(appointment_id) ON UPDATE CASCADE ON DELETE SET NULL);

INSERT INTO departments VALUES(1,'Medicine'),(2,'Cardiology'),(3,'Pediatrics'),(4,'Orthopedics'),(5,'Gynecology');
INSERT INTO doctors VALUES(101,'Dr. Ahmed Hasan','01911111111',1,800),(102,'Dr. Nusrat Jahan','01922222222',2,1200),(103,'Dr. Karim Rahman','01933333333',3,700),(104,'Dr. Sadia Islam','01944444444',4,900),(105,'Dr. Farhana Akter','01955555555',5,1000);
INSERT INTO patients VALUES(1001,'Rahim Ahmed','Male',45,'01710000001','Feni'),(1002,'Karim Hasan','Male',52,'01710000002','Dhaka'),(1003,'Nadia Akter','Female',30,'01710000003','Feni'),(1004,'Sadia Rahman','Female',28,'01710000004','Chattogram'),(1005,'Hasan Ali','Male',65,'01710000005','Cumilla'),(1006,'Mim Akter','Female',12,'01710000006','Dhaka'),(1007,'Tanvir Hossain','Male',35,'01710000007','Noakhali'),(1008,'Jannat Ara','Female',41,'01710000008','Feni'),(1009,'Fahim Chowdhury','Male',8,'01710000009','Rajshahi'),(1010,'Mahi Sultana','Female',55,'01710000010','Feni');
INSERT INTO medicines VALUES(201,'Paracetamol','Pain Relief',2.50,500),(202,'Amoxicillin','Antibiotic',8.00,300),(203,'Omeprazole','Gastric',4.00,400),(204,'Azithromycin','Antibiotic',12.00,250),(205,'ORS','Saline',10.00,600),(206,'Vitamin D','Vitamin',15.00,200),(207,'Cetirizine','Antihistamine',3.00,350),(208,'Calcium','Supplement',6.00,280);
INSERT INTO appointments VALUES(5001,1001,101,'2026-02-01','Completed'),(5002,1002,102,'2026-02-02','Completed'),(5003,1003,101,'2026-02-03','Completed'),(5004,1004,105,'2026-02-04','Completed'),(5005,1005,102,'2026-02-05','Completed'),(5006,1006,103,'2026-02-06','Completed'),(5007,1007,101,'2026-02-07','Scheduled'),(5008,1008,105,'2026-02-08','Completed'),(5009,1009,103,'2026-02-09','Completed'),(5010,1010,101,'2026-02-10','Scheduled'),(5011,1001,102,'2026-02-12','Completed'),(5012,1003,101,'2026-02-13','Completed');
INSERT INTO prescriptions VALUES(1,5001,201,'1 tablet twice daily',10),(2,5001,203,'1 capsule before meal',7),(3,5002,203,'1 capsule daily',14),(4,5002,206,'1 tablet daily',10),(5,5003,207,'1 tablet at night',7),(6,5004,206,'1 tablet daily',15),(7,5005,201,'1 tablet as needed',10),(8,5005,203,'1 capsule daily',14),(9,5006,205,'As directed',5),(10,5008,208,'1 tablet daily',20),(11,5009,201,'1 tablet twice daily',10),(12,5011,204,'1 tablet daily',5),(13,5012,203,'1 capsule daily',10);
INSERT INTO bills VALUES(1,1001,5001,'2026-02-01',800,53,100,'Paid'),(2,1002,5002,'2026-02-02',1200,246,100,'Paid'),(3,1003,5003,'2026-02-03',800,21,0,'Paid'),(4,1004,5004,'2026-02-04',1000,225,100,'Paid'),(5,1005,5005,'2026-02-05',1200,81,200,'Unpaid'),(6,1006,5006,'2026-02-06',700,50,0,'Paid'),(7,1008,5008,'2026-02-08',1000,120,100,'Paid'),(8,1009,5009,'2026-02-09',700,25,0,'Unpaid'),(9,1001,5011,'2026-02-12',1200,60,0,'Paid'),(10,1003,5012,'2026-02-13',800,40,0,'Unpaid');

-- BASIC / FILTERING
SELECT * FROM patients;
SELECT patient_name,age,city FROM patients WHERE age>=40;
SELECT * FROM patients WHERE city IN('Feni','Dhaka');
SELECT * FROM patients WHERE age BETWEEN 18 AND 60;
SELECT * FROM patients ORDER BY age DESC LIMIT 5;

-- AGGREGATES
SELECT COUNT(*) AS total_patients FROM patients;
SELECT COUNT(*) AS total_doctors FROM doctors;
SELECT MAX(consultation_fee) AS highest_fee FROM doctors;
SELECT MIN(consultation_fee) AS lowest_fee FROM doctors;
SELECT AVG(consultation_fee) AS average_fee FROM doctors;
SELECT SUM(consultation_fee+medicine_fee+other_fee) AS total_billed FROM bills;

-- GROUP BY / HAVING
SELECT city,COUNT(*) AS total_patients FROM patients GROUP BY city;
SELECT doctor_id,COUNT(*) AS total_appointments FROM appointments GROUP BY doctor_id;
SELECT doctor_id,COUNT(*) AS total_appointments FROM appointments GROUP BY doctor_id HAVING COUNT(*)>=2;
SELECT payment_status,COUNT(*) AS total_bills FROM bills GROUP BY payment_status;

-- JOINS
SELECT a.appointment_id,p.patient_name,d.doctor_name,a.appointment_date,a.appointment_status
FROM appointments a JOIN patients p ON a.patient_id=p.patient_id JOIN doctors d ON a.doctor_id=d.doctor_id;
SELECT d.doctor_name,dep.department_name,d.consultation_fee
FROM doctors d LEFT JOIN departments dep ON d.department_id=dep.department_id;
SELECT p.patient_name,m.medicine_name,pr.dosage,pr.quantity
FROM prescriptions pr JOIN appointments a ON pr.appointment_id=a.appointment_id JOIN patients p ON a.patient_id=p.patient_id JOIN medicines m ON pr.medicine_id=m.medicine_id;
SELECT p.patient_name,b.bill_id,b.consultation_fee,b.medicine_fee,b.other_fee,b.payment_status
FROM patients p LEFT JOIN bills b ON p.patient_id=b.patient_id;

-- SUBQUERIES
SELECT doctor_name,consultation_fee FROM doctors WHERE consultation_fee>(SELECT AVG(consultation_fee) FROM doctors);
SELECT patient_name FROM patients WHERE patient_id IN(SELECT patient_id FROM bills WHERE payment_status='Unpaid');
SELECT doctor_name,consultation_fee FROM doctors WHERE consultation_fee=(SELECT MAX(consultation_fee) FROM doctors);
SELECT patient_name FROM patients WHERE patient_id IN(SELECT patient_id FROM appointments GROUP BY patient_id HAVING COUNT(*)>1);

-- UNION
SELECT patient_name AS person_name FROM patients WHERE city='Feni'
UNION
SELECT patient_name AS person_name FROM patients WHERE city='Dhaka';

-- VIEW
DROP VIEW IF EXISTS appointment_details;
CREATE VIEW appointment_details AS
SELECT a.appointment_id,p.patient_name,p.phone,d.doctor_name,dep.department_name,a.appointment_date,a.appointment_status
FROM appointments a JOIN patients p ON a.patient_id=p.patient_id JOIN doctors d ON a.doctor_id=d.doctor_id LEFT JOIN departments dep ON d.department_id=dep.department_id;
SELECT * FROM appointment_details;

-- BILL REPORT
SELECT p.patient_name,SUM(b.consultation_fee) AS consultation_total,SUM(b.medicine_fee) AS medicine_total,SUM(b.other_fee) AS other_total,SUM(b.consultation_fee+b.medicine_fee+b.other_fee) AS grand_total
FROM patients p JOIN bills b ON p.patient_id=b.patient_id GROUP BY p.patient_id,p.patient_name ORDER BY grand_total DESC;

-- MEDICINE REPORT
SELECT category,COUNT(*) AS medicine_count,SUM(stock) AS total_stock,AVG(unit_price) AS average_price
FROM medicines GROUP BY category;
SELECT * FROM medicines WHERE stock<(SELECT AVG(stock) FROM medicines) ORDER BY stock ASC;

-- ALTER / UPDATE / DELETE PRACTICE
ALTER TABLE patients ADD COLUMN blood_group VARCHAR(5);
UPDATE patients SET city='Feni' WHERE patient_id=1010;
-- DELETE FROM appointments WHERE appointment_id=5010;

-- FINAL CHALLENGES
-- 1. Find patients with unpaid bills.
-- 2. Find doctors with above-average consultation fees.
-- 3. Find doctor-wise appointment counts.
-- 4. Find medicines below average stock.
-- 5. Create a view joining patient, doctor and department.
