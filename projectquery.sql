SELECT * FROM university_library_system.student;
SELECT * FROM university_library_system.program;

SELECT * FROM university_library_system.student
WHERE pid = 'IT12';

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121201, 'SHREY SHAH', 'M', 'Jalainwala Bagh, Ludhiana,Punjab', '8745630125', 'shahpunjab@gmail.com', '1995/01/23', 7.45, 'IT12', 2012);
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121202, 'KATRINA KAIF', 'F', 'Meerut, Uttar Pradesh', '7519840213', 'kaifkat019@gmail.com', '1995/07/13', 7.40, 'IT12', 2012);
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121203, 'AMISHA RATHORE', 'F', 'Darjeeling, Kolkata', '9456102347', 'rathoream.star@gmail.com', '1995/11/09', 8.45, 'IT12', 2012);
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121204, 'HARDY SANDHU', 'M', 'Amritsar, Punjab', '9715647893', 'iamhardysandh@gmail.com', '1994/08/23', 7.95, 'IT12', 2012);
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121205, 'AMY JACKSON', 'F', 'Near, Old Church, Pune, Mahrashtra', '8874996237', 'amyjackson145@gmail.com', '1995/02/13', 6.91, 'IT12', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121206, 'SIDHU MOOSEWALA', 'M', 'Gurugram, Haryana', '9753197645', 'gangstersidhu@gmail.com', '1994/10/25', 7.40, 'IT12', 2012);
	
INSERT INTO university_library_system.program(
	program_id, program_name, duration, degree_type)
	VALUES ('BCS01', 'BTech Computer Sc', 4, 'BT');
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120102, 'RAM PUROHIT', 'M', 'Udaipur, Rajasthan', '9875120349', 'purohit12iam@gmail.com', '1998/10/30', 8.60, 'BCS01', 2012);
	
INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120103, 'SMITA JAIN', 'F', 'Gandhi Road, Ahmedabad, Gujarat', '8456712379', 'jain12smitato@yahoomail.com', '1997/07/11', 7.91, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120104, 'ARYAN NANDA', 'M', 'Gandhinagar, Gujarat', '9875641234', 'nandaaryan123@gmail.com', '1997/06/25', 7.84, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120105, 'SONAL PANJWANI', 'F', 'Vasant Kunj, Greater Kailash, New Delhi', '8750201368', 'panjwanisonalme@ymail.com', '1997/02/11', 7.09, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120106, 'HARIHAR DASH', 'M', 'Queen Road, Kolkata, West Bengal', '8080879480', 'dashharidance@gmail.com', '1997/12/01', 7.46, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120107, 'SNEHA THAKKAR', 'F', 'New Mall Area, Gandhinagar, Gujarat', '9870145063', 'thakker.sneha09@gmail.com', '1997/03/13', 7.53, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120108, 'ANANYA PANDEY', 'F', 'Churchgate, Mumbai, Maharashtra', '8746315978', 'iamananyapandey@rocketmail.com', '1996/09/09', 7.16, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120109, 'SAMAY SHARMA', 'M', 'Street Merket, Ahmedabad, Gujarat', '7012456789', 'timesamay101@gmail.com', '1997/08/11', 7.06, 'BCS01', 2012);

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20120110, 'AAROHI RAINA', 'F', 'Ludhiana, Punjab', '9879465264', 'rainaaarohi98@ymail.com', '1997/12/01', 7.98, 'BCS01', 2012);

INSERT INTO university_library_system.program(
	program_id, program_name, duration, degree_type)
	VALUES ('BEC15', 'BTech Electronics CE', 4, 'BT');

INSERT INTO university_library_system.student(
	student_id, student_name, student_gender, student_address, student_contact_no, student_email_id, date_of_birth, cpi, pid, joining_year)
	VALUES (20121501, 'SANIA NEHWAL', 'F', 'Kailur Road,Indore, Madhya Pradesh', '9807654356', 'saniagirl@gmail.com', '1995/04/17', 7.02, 'BEC15', 2012);
	
insert into department(
	department_id, department_name)
	values ('CS011', 'Computer Science');
	

insert into department(
	department_id, department_name)
	values ('IT112', 'Information Technology');
	
insert into department(
	department_id, department_name)
	values ('EC115', 'Electronics and Communication Technology');

INSERT INTO university_library_system.register(
	visitor_id, visitor_name, designation, date_, time_of_entry, time_of_leave, sid, fid)
	VALUES (12, 'Tejas shah', 'faculty', '12/03/2014', '11:30', '11:49', NULL, 115002);
	
	
INSERT INTO university_library_system.faculty_borrows_thesis(
	faculty_id, thesis_id)
	VALUES (115002, 'T0006')
	
insert into university_library_system.thesis(
	thesis_id,thesis_name,thesis_pages,cid,auth_id) 
	values('T0006','What makes a good query language?',150,'C0001','A0004')	
	
insert into university_library_system.author(
	author_id,author_name,author_gender,author_age,author_address) 
	values ('A0004','Ratnakar Sahu','M',45,'Maharastra')		

insert into author(
	author_id, author_name, author_gender, author_age, author_address)
	values ('A0006', 'Robert C. Martin', 'M', 52, 'Dallas, Texas, United States of America');
	
insert into category(
	category_id, cname)
	values ('C0005', 'Software Engineering');
	
insert into book(
	book_id, book_title, isbn, book_pages, book_price, edition, publication_name, cid)
	values ('B0011', 'Clean Code: A Handbook of Agile Software Craftsmanship', 9780132, 464, 3084, '2010', ' Pearson; 1st Edition', 'C0005');  --cat C0005

insert into book_author(
	book_id, author_id)
	values ('B0011', 'A0006');
	
insert into thesis(
	thesis_id, thesis_name, thesis_pages, cid, auth_id)
	values ('T0007', ' Manifesto for agile software development', 18, 'C0005', 'A0006');

Insert into university_library_system.librarian(
Librarian_id, librarian_name, librarian_age, librarian_designation, librarian_salary)
Values('L01', 'Nivedita Sharma', 31, 'asst. Librarian', '29500');

Insert into university_library_system.librarian(
Librarian_id, librarian_name, librarian_age, librarian_designation, librarian_salary)
Values('L02', 'Raj Verma', 29, 'Librarian', '32000');

Insert into university_library_system.librarian(
Librarian_id, librarian_name, librarian_age, librarian_designation, librarian_salary)
Values('L03', 'Nagesh Kumar', 25, 'Asst. Librarian', '23500');

INSERT INTO university_library_system.book
	(book_id, book_title, ISBN, book_pages, book_price, edition, publication_name, CID)
	VALUES ('B0001','Principles of Database Systems',120120,260,600,'2015', 'ABCDEFG', 'C0001');
	
INSERT INTO university_library_system.book(
	book_id, book_title, ISBN, book_pages, book_price, edition, publication_name, CID)
	VALUES('B0002', 'Fundamentals of Computer Algorithms' ,526120,300,500, '2005','GDJJSK', 'C0002');

INSERT INTO university_library_system.book(
	book_id, book_title, ISBN, book_pages, book_price, edition, publication_name, CID)
	VALUES('B003', 'Data Structures Using C and C++' , 508129, 250, 500, '2005', 'MZJSK','C0002');
	
insert into student_borrows_book(
	student_id, book_id)
	values (20121805, 'B003');
	
insert into student_borrows_book(
	student_id, book_id)
	values (20121802, 'B0001');
