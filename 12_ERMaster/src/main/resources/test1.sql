
/* Drop Tables */

DROP TABLE emp CASCADE CONSTRAINTS;
DROP TABLE dept CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE dept
(
	-- pk 부서번호
	dno number(4) NOT NULL UNIQUE,
	-- 부서명
	dname varchar2(30) NOT NULL UNIQUE,
	-- 부서가 있는 위치
	loc varchar2(30),
	-- 부서가 있는 나라
	country varchar2(20) NOT NULL,
	PRIMARY KEY (dno)
);


CREATE TABLE emp
(
	-- 숫자 4자리로 구성되는 사원번호
	empno number(4) NOT NULL UNIQUE,
	-- 사원이름
	empname varchar2(20) NOT NULL,
	-- 월급여
	salary number(10,2) DEFAULT 1800000 NOT NULL,
	-- pk 부서번호
	dno number(4) NOT NULL UNIQUE,
	PRIMARY KEY (empno)
);



/* Create Foreign Keys */

ALTER TABLE emp
	ADD FOREIGN KEY (dno)
	REFERENCES dept (dno)
;



/* Comments */

COMMENT ON COLUMN dept.dno IS 'pk 부서번호';
COMMENT ON COLUMN dept.dname IS '부서명';
COMMENT ON COLUMN dept.loc IS '부서가 있는 위치';
COMMENT ON COLUMN dept.country IS '부서가 있는 나라';
COMMENT ON COLUMN emp.empno IS '숫자 4자리로 구성되는 사원번호';
COMMENT ON COLUMN emp.empname IS '사원이름';
COMMENT ON COLUMN emp.salary IS '월급여';
COMMENT ON COLUMN emp.dno IS 'pk 부서번호';



