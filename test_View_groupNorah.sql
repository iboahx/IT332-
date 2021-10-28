INSERT INTO branch (branch_no, branch_name, b_location) VALUES ('F09','MAIN','Mulaida');
INSERT INTO branch (branch_no, branch_name, b_location) VALUES ('F10','COC','Mulaida');
INSERT INTO branch (branch_no, branch_name, b_location) VALUES ('F11','CBE','Mulaida');
INSERT INTO branch (branch_no, branch_name, b_location) VALUES ('F12','COS','Unyzah');
INSERT INTO branch (branch_no, branch_name, b_location) VALUES ('F13','COP','Unyzah');


INSERT INTO book (ISBN, b_name, b_state) VALUES (0201752840,'database design','not available');
INSERT INTO book (ISBN, b_name, b_state) VALUES (1492051367,'introducing paython','available');
INSERT INTO book (ISBN, b_name, b_state) VALUES (1413325490,'write business plan','not available');
INSERT INTO book (ISBN, b_name, b_state) VALUES (1260452310,'basic pharmacology','available');
INSERT INTO book (ISBN, b_name, b_state) VALUES (1285740629,'calculus','available');


INSERT INTO bookAuthor (ISBN, F_author, S_author) VALUES (0201752840,'Michael','Hernandez');
INSERT INTO bookAuthor (ISBN, F_author, S_author) VALUES (1492051367,'Bill','Lubanovic');
INSERT INTO bookAuthor (ISBN, F_author, S_author) VALUES (1413325490,'Mike','Mckeever');
INSERT INTO bookAuthor (ISBN, F_author, S_author) VALUES (1260452310,'Bertram','Katzung');
INSERT INTO bookAuthor (ISBN, F_author, S_author) VALUES (1285740629,'James','Stewart');


SELECT * FROM vBookStatus;
