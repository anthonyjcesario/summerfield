CREATE DATABASE summerfield;

USE summerfield;

CREATE TABLE students(
student_id		INT		AUTO_INCREMENT,
first_name		VARCHAR(50),
last_name		VARCHAR5(50),
dob			DATE,
address			VARCHAR(500),
guardian_name		VARCHAR(50),
guardian_number		VARCHAR(15),
email			VARCHAR(150),
enrollment_date		DATE,
grade_level		INT,
PRIMARY KEY (student_id)
);

CREATE TABLE attendance(
attendance_id		INT		AUTO_INCREMENT,
student_id		INT,
date			DATE,
attendance_status	VARCHAR(50),
PRIMARY KEY (attendance_id),
FOREIGN KEY REFERENCES students(student_id)
);

CREATE TABLE billing(
invoice_id		INT		AUTO_INCREMENT,
student_id		INT,
billing_date		DATE,
amount_due		DOUBLE,
payment_status		VARCHAR(50),
due_date		DATE,
PRIMARY KEY (invoice_id),
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE payments(
payment_id		INT		AUTO_INCREMENT,
student_id		INT,
payment_date		DATE,
amount_paid		DOUBLE,
payment_method		VARCHAR(50),
PRIMARY KEY (payment_id),
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE reports(
report_id		INT		AUTO_INCREMENT,
report_type		VARCHAR(50),
date_generated		DATE
);

