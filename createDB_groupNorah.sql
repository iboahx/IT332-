CREATE TABLE branch (
 branch_no CHAR(3) PRIMARY KEY ,
 branch_name VARCHAR(15) NOT NULL ,
 b_location VARCHAR(15));
 
CREATE TABLE branch_phone (
 branch_no CHAR(3) , 
 phone NUMBER(10) ,
 PRIMARY KEY (branch_no,phone),
 FOREIGN KEY (branch_no) REFERENCES branch(branch_no));

CREATE TABLE room (
 room_no INT PRIMARY KEY ,
 r_type VARCHAR(15) NOT NULL ,
 r_state VARCHAR(15) NOT NULL ,
 r_duration VARCHAR(15));

CREATE TABLE room_branch ( 
 room_no INT,
 branch_no CHAR(3),
 PRIMARY KEY (branch_no,room_no) ,
 FOREIGN KEY (room_no) REFERENCES room (room_no),
 FOREIGN KEY (branch_no) REFERENCES branch (branch_no));

CREATE TABLE book (
ISBN NUMBER(12) PRIMARY KEY, 
b_name VARCHAR(20) NOT NULL, 
b_state VARCHAR(15)); 

CREATE TABLE bookAuthor (
ISBN NUMBER(12) NOT NULL, 
F_author VARCHAR(20) NOT NULL, 
S_author VARCHAR(20) NOT NULL, 
FOREIGN KEY (ISBN) REFERENCES book(ISBN)); 

CREATE TABLE bookPublisher (
ISBN NUMBER(12)NOT NULL , 
publisher VARCHAR(20), 
FOREIGN KEY (ISBN) REFERENCES book(ISBN));


CREATE TABLE book_branch ( 
branch_no CHAR(3),
ISBN NUMBER(12), 
PRIMARY KEY (branch_no,ISBN), 
FOREIGN KEY (ISBN) REFERENCES book(ISBN),
FOREIGN KEY (branch_no) REFERENCES branch(branch_no));

CREATE TABLE thesis ( 
th_no INT PRIMARY KEY, 
th_name VARCHAR(20) NOT NULL, 
th_description VARCHAR(50)); 

CREATE TABLE thesisAuthor ( 
th_no INT ,
f_author VARCHAR(15) NOT NULL, 
s_author VARCHAR(15) NOT NULL, 
FOREIGN KEY (th_no) REFERENCES thesis(th_no)); 

CREATE TABLE thesis_branch (
th_no INT, 
branch_no CHAR(3),
PRIMARY KEY (branch_no,th_no),
FOREIGN KEY (th_no) REFERENCES thesis (th_no), 
FOREIGN KEY (branch_no) REFERENCES branch(branch_no) );

CREATE TABLE journal (
J_no INT PRIMARY KEY ,
title VARCHAR(20) NOT NULL ,
article_info VARCHAR(50),
J_state VARCHAR(20)); 

CREATE TABLE journal_branch ( 
J_no INT , 
branch_no CHAR(3) ,
PRIMARY KEY (branch_no,J_no), 
FOREIGN KEY(J_no) REFERENCES journal(J_no),
FOREIGN KEY(branch_no) REFERENCES branch(branch_no)); 

CREATE TABLE VS_recording ( 
R_no INT PRIMARY KEY, 
R_name VARCHAR(50) NOT NULL , 
R_description VARCHAR(80),
publisher VARCHAR(80));

CREATE TABLE recording_branch ( 
R_no INT NOT NULL , 
branch_no CHAR(3) ,
PRIMARY KEY (branch_no,R_no), 
FOREIGN KEY(R_no) REFERENCES VS_recording(R_no),
FOREIGN KEY(branch_no) REFERENCES branch(branch_no)); 

CREATE TABLE mprivilege (
privilege_no CHAR(4) PRIMARY KEY,
loan_period VARCHAR(20) NOT NULL,
max_item NUMBER(2),
max_renewal NUMBER(2));
    
CREATE TABLE Memberr ( 
mID NUMBER(10) PRIMARY KEY, 
PIN CHAR(10) NOT NULL, 
f_name VARCHAR(20),
l_name VARCHAR(20),
m_type VARCHAR (20) NOT NULL,
birthdate DATE ,
join_date DATE ,
expiry_date DATE , 
privilege_no CHAR(4),
FOREIGN KEY(privilege_no) REFERENCES mprivilege (privilege_no));

CREATE TABLE member_address (
mID NUMBER(10),
building VARCHAR(20) , 
city VARCHAR(20) , 
street VARCHAR(20),
PRIMARY KEY(mID,building),
FOREIGN KEY(mID) REFERENCES Memberr(mID));

CREATE TABLE member_phone (
mID NUMBER(10),
phone_no NUMBER(10),
PRIMARY KEY (mID,phone_no), 
FOREIGN KEY (mID) REFERENCES Memberr(mID));

CREATE TABLE member_branch (
mID NUMBER(10),
branch_no CHAR(3),
PRIMARY KEY (branch_no,mID), 
FOREIGN KEY(branch_no) REFERENCES branch(branch_no),
FOREIGN KEY (mID) REFERENCES Memberr (mID));
   
CREATE TABLE loan (
loan_no CHAR(3) PRIMARY KEY ,
mID NUMBER(10) ,
item VARCHAR(20) NOT NULL ,
due_date DATE, 
status VARCHAR(30),
branch_no CHAR(3),
FOREIGN KEY(mID) REFERENCES Memberr(mID) ,
FOREIGN KEY (branch_no) REFERENCES branch (branch_no));

CREATE TABLE finee (
fine_no CHAR(3) PRIMARY KEY ,
amount VARCHAR(20) NOT NULL,
status VARCHAR(30) ,
loan_no CHAR(3 )NOT NULL,
f_description VARCHAR(80),
FOREIGN KEY (loan_no) REFERENCES loan (loan_no));

CREATE TABLE short_loan (
short_lono CHAR(3) PRIMARY KEY,
mID NUMBER(10),
itemTypy VARCHAR(20) NOT NULL,
rdate DATE ,
rtime  VARCHAR(15) ,
status VARCHAR(30) ,
FOREIGN KEY(mID) REFERENCES Memberr(mID));
