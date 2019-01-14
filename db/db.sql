
CREATE USER training IDENTIFIED BY training;
GRANT ALL PRIVILEGES TO training;


CREATE TABLE student (
  id NUMBER NOT NULL,
  first_name varchar(45) DEFAULT NULL,
  last_name varchar(45) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
 CONSTRAINT STUDENT_PK PRIMARY KEY (ID)
);

CREATE SEQUENCE student_id_seq;
 
CREATE OR REPLACE TRIGGER student_i_br
  BEFORE INSERT ON student
  FOR EACH ROW
BEGIN
  SELECT student_id_seq.nextval
  INTO :new.id
  FROM dual;
END;
/

INSERT 
  INTO student 
VALUES (null,'Mary','Public','mary@luv2code.com');

INSERT 
  INTO student 
VALUES (null,'John','Doe','john@luv2code.com');

INSERT 
  INTO student 
VALUES (null,'Ajay','Rao','ajay@luv2code.com');

INSERT 
  INTO student 
VALUES (null,'Bill','Neely','bill@luv2code.com');

INSERT 
  INTO student 
VALUES (null,'Maxwell','Dixon','max@luv2code.com');


