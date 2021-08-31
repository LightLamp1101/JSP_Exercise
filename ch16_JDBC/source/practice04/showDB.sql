CREATE TABLE IF NOT EXISTS Student(
	num int NOT NULL,
	depart VARCHAR(20),
	name VARCHAR(30),
	address VARCHAR(50),
	phone VARCHAR(20),
	PRIMARY KEY (num)
);

select * from Student;

insert into student values('2018200002', '영어과', '김다운', '서울시', '010-3002-0101');

delete from student;