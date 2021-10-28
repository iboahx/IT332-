CREATE VIEW vBookStatus AS
SELECT B.ISBN, B.b_name, A.F_author, A.S_author, B.b_state
FROM book B , bookAuthor A
WHERE  B.ISBN = A.ISBN AND B.b_state = 'available';

