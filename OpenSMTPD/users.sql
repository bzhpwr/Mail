DELETE FROM valias; 
DELETE FROM vdomains; 
DELETE FROM userinfo;

INSERT INTO valias VALUES('','test@example.com', 'test');
INSERT INTO valias VALUES('','test@example1.com', 'anotheruser');
INSERT INTO valias VALUES('','@example.com', 'DropAllUser');

INSERT INTO vdomains VALUES('','example.com');
INSERT INTO vdomains VALUES('','example1.com');

# Pass: hash SHA512-CRYPT
# Use: doveadm pw -s SHA512-CRYPT 
# Or: smtpctl encrypt <password>
# Result hash must start with $6$

INSERT INTO userinfo VALUES('','test','$6$ufir7CjWf0Tn28Xj$sFre6MCRtHm.E4myd7.B6XoYvvnQYcdMO.PBQLX8jWkn1RyPaYR6hveZLWS/2biiGbGa30b/jGxEcOCEJthEj1',default,default,default);
INSERT INTO userinfo VALUES('','anotheruser','$6$ufir7CjWf0Tn28Xj$sFre6MCRtHm.E4myd7.B6XoYvvnQYcdMO.PBQLX8jWkn1RyPaYR6hveZLWS/2biiGbGa30b/jGxEcOCEJthEj1',default,default,default);
INSERT INTO userinfo VALUES('','DropAllUser','$6$ufir7CjWf0Tn28Xj$sFre6MCRtHm.E4myd7.B6XoYvvnQYcdMO.PBQLX8jWkn1RyPaYR6hveZLWS/2biiGbGa30b/jGxEcOCEJthEj1',default,default,default);


