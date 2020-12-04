--SCHEMA: university_library_system

--DROP SCHEMA university_library_system ;

CREATE SCHEMA university_library_system;

SET search_path TO university_library_system, PUBLIC;

--LIBRARIAN
CREATE TABLE librarian(
	librarian_id VARCHAR PRIMARY KEY,
	librarian_name VARCHAR(20) NOT NULL,
	librarian_age INT,
    librarian_gender char(1) check(librarian_gender in('M','F','T')),
	librarian_designation VARCHAR(10) check(librarian_designation in('admin','assistant','clerk')),
	librarian_salary FLOAT check(librarian_salary>=5000 and librarian_salary<=20000)
);

--CATEGORY
CREATE TABLE category(
	category_id VARCHAR PRIMARY KEY,
	cname VARCHAR NOT NULL
);

--PROGRAM
CREATE TABLE program(
	program_id VARCHAR PRIMARY KEY,
	program_name VARCHAR(40),
	duration INT,
	degree_type CHAR
);

--DEPARTMENT
CREATE TABLE department(
	department_id VARCHAR PRIMARY KEY,
	department_name VARCHAR
);

--AUTHOR
CREATE TABLE author(
	author_id VARCHAR PRIMARY KEY,
	author_name VARCHAR NOT NULL,
	author_gender CHAR(1) CHECK(author_gender IN ('M', 'F', 'T')),
	author_age INT,
	author_address VARCHAR
);

--STUDENT
CREATE TABLE student(
	student_id DECIMAL(9,0) PRIMARY KEY,
	student_name VARCHAR NOT NULL,
	student_gender CHAR(1) CHECK(student_gender IN ('M', 'F')),
	student_address VARCHAR,
	student_contact_no VARCHAR(10),
	student_email_id VARCHAR,
	date_of_birth DATE,
	joinig_year DATE,
	cpi REAL check(cpi>=0 and cpi<=10),
	PID VARCHAR(5) REFERENCES program(program_id)
);

--SHELF
CREATE TABLE shelf(
	shelf_id VARCHAR PRIMARY KEY,
	no_of_books INT,
	no_of_thesis INT,
	CID VARCHAR REFERENCES category(category_id)
);

--FACULTY
CREATE TABLE faculty(
	faculty_id DECIMAL(9,0) PRIMARY KEY, 
	faculty_name VARCHAR NOT NULL,
	faculty_gender CHAR(1) CHECK(faculty_gender IN ('M', 'F')),
	faculty_address VARCHAR,
	faculty_contact_no INT,
	faculty_email VARCHAR,
	faculty_salary FLOAT check(faculty_salary>=20000 and faculty_salary<=50000),      --RANGE ?
	DID VARCHAR REFERENCES department(department_id)
);

--REGISTER
CREATE TABLE student_register(
	s_visitor_id DECIMAL(9,0) PRIMARY KEY,
	s_visitor_name VARCHAR NOT NULL,
	s_date DATE,
	s_time_of_entry TIME,
	s_time_of_leave TIME,
	SID DECIMAL(9,0) REFERENCES student(student_id)
);

CREATE TABLE faculty_register(
	f_visitor_id DECIMAL(9,0) PRIMARY KEY,
	f_visitor_name VARCHAR NOT NULL,
	f_date DATE,
	f_time_of_entry TIME,
	f_time_of_leave TIME,
	FID DECIMAL(9,0) REFERENCES faculty(faculty_id)  --CHECK IF RIGHT ?
);

--BOOK
CREATE TABLE book(
	book_id VARCHAR PRIMARY KEY,
	book_title VARCHAR NOT NULL,
	ISBN INT NOT NULL,  --DTYPE ?
	book_pages INT,
	book_price INT,    --RANGE maybe not applicable
	edition VARCHAR,
	publication_name VARCHAR NOT NULL,
	CID VARCHAR REFERENCES category(category_id)
);

--JOURNAL 
CREATE TABLE journal(
	journal_id VARCHAR PRIMARY KEY,
	journal_title VARCHAR NOT NULL,
	volume INT,
	no_of_articles INT,
	journal_pages INT,
	release_month DATE,
	journal_price INT,  --MAX PRICE ?
	CID VARCHAR REFERENCES category(category_id) 
);

--ISSUE BOOK TO FACULTY
CREATE TABLE issue_book_to_faculty(
	faculty_id DECIMAL(9,0) REFERENCES faculty(faculty_id),
	book_id VARCHAR REFERENCES book(book_id),
    LID varchar references librarian(librarian_id)
	PRIMARY KEY(faculty_id, book_id, LID)
);

--ISSUE BOOK TO STUDENT
CREATE TABLE issue_book_to_student(
	student_id DECIMAL(9,0) REFERENCES student(student_id),
	book_id VARCHAR REFERENCES book(book_id),
	student_issue_date DATE NOT NULL,
	student_return_date DATE , --CORRECT ?
	days_delayed INT NOT NULL,
	fine DECIMAL,  --CORRECT ?
	LID VARCHAR REFERENCES librarian(librarian_id),
	PRIMARY KEY(student_id, book_id, LID)
);

--BORROW STUDENT BOOK
CREATE TABLE student_borrows_book(
	student_id DECIMAL(9,0) REFERENCES student(student_id),
	book_id VARCHAR REFERENCES book(book_id),
	PRIMARY KEY(student_id, book_id)
);

--BORROW FACULTY BOOK
CREATE TABLE faculty_borrows_book(
	faculty_id DECIMAL(9,0) REFERENCES faculty(faculty_id),
	book_id VARCHAR REFERENCES book(book_id),
	PRIMARY KEY(faculty_id, book_id)
);

--BOOK AUTHOR 
CREATE TABLE book_author(
	book_id VARCHAR REFERENCES book(book_id),
	author_id VARCHAR REFERENCES author(author_id),
	PRIMARY KEY(book_id, author_id)
);

-- JOURNAL AUTHOR
CREATE TABLE journal_author(
	journal_id VARCHAR REFERENCES journal(journal_id),
	author_id VARCHAR REFERENCES author(author_id),
	PRIMARY KEY(journal_id, author_id)
);

--CATEGORY SUBTOPIC
CREATE TABLE category_subtopics(
	category_id VARCHAR REFERENCES category(category_id),
	subtopics VARCHAR,
	PRIMARY KEY(category_id, subtopics)
);

--THESIS
CREATE TABLE thesis(
	thesis_id VARCHAR PRIMARY KEY,
	thesis_name VARCHAR NOT NULL,
	thesis_pages INT,
	CID VARCHAR REFERENCES category(category_id),
	AUTH_ID VARCHAR REFERENCES author(author_id)
);

--ISSUE THESIS TO FACULTY
CREATE TABLE issue_thesis_to_faculty(
	faculty_id DECIMAL(9,0) REFERENCES faculty(faculty_id),
	thesis_id VARCHAR REFERENCES thesis(thesis_id),
	thesis_issue_date DATE NOT NULL,
	thesis_return_date DATE,
	LID VARCHAR REFERENCES librarian(librarian_id),
	PRIMARY KEY(faculty_id, thesis_id, LID)
);

--BORROW FACULTY THESIS
CREATE TABLE faculty_borrows_thesis(
	faculty_id DECIMAL(9,0) REFERENCES faculty(faculty_id),
	thesis_id VARCHAR REFERENCES thesis(thesis_id),
	PRIMARY KEY(faculty_id, thesis_id)
);
