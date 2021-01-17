# Maria DB 



## 1장.   MariaDB 설치 및 DB 구축과정 미리 실습하기



### CHAPTER 01. DBMS 개요와 MariaDB 소개



* DBMS는 데이터베이스를 관리하는 역할을 하는 소프트웨어 아마 (데이터베이스 매니지먼트 시스템? 으로 안다.)
* DBMS의 특징
  * 데이터의 무결성 : 데이터베이스 안의 데이터는 어떤 경로를 통해 들어왔든 데이터에 오류가 있어서는 안 된다. - PRIMARY KEY, 제약 조건
  * 데이터의 독립성 : 데이터베이스의 크기를 변경하거나 데이터 파일의 저장소를 변경하더라도, 기존에 작성된 응용프로그램은 전혀 영향을 받지 않아야 한다. 서로 의존적 관계가 아닌 독립적인 관계
  * 보안 : 데이터를 소유한 사람이나 데이터의 접근이 허가된 사람만이 데이터에 접근할 수 있어야 한다.
  * 데이터 중복의 최소화 : 동일한 데이터가 여러 개 중복되어 저장되는 것을 방지
  * 응용프로그램 제작 및 수정이 쉬워짐
  * 데이터의 안전성 향상
* 데이터베이스의 발전
  * 오프라인 - 파일시스템 - 데이터베이스 관리시스템
* DBMS 분류
  * 계층형 : 트리형태, 1:N 관계
  * 망형 : 1:N , 1:1, N:M
  * 관계형 : 테이블 구조, 부모와 자식의 관계로 묶을 수 있다.
* SQL : 데이터베이스를 조작하는 하나의 '언어'
  * DBMS 제작 회사와 독립적
  * 다른 시스템으로 이식성이 좋다
  * 표준이 계속 발전
  * 대화식 언어
  * 분산형 클라이언트/서버구조
* MariaDB 소개 
  * PASS

### CHAPTER 02. MariaDB 설치

* PASS



### CHAPTER 03. MariaDB 전체 운영 실습

* 정보시스템의 구축 : 분석 - 설계 - 구현 - 시험 - 유지보수
  * 분석 : 시스템 분석, 요구사항 분석
  * 설계 : 시스템 설계, 프로그램 설계
  * 구현 - 시험 - 유지보수
* 용어 설명
  * 데이터 : 정보는 있으나 아직 체계화되지 못한 상태
  * 테이블 : 회원이나 제품의 데이터를 입력하기 위해, 표 형태로 표현한 것
  * 데이터베이스 : 테이블이 저장되는 저장소
  * DBMS : 데이터베이스를 관리하는 시스템 또는 소프트웨어
  * 열 =컬럼
  * 기본 키 : 고유한 키
  * 외래 키 : 두 테이블의 관계를 맺어주는 키



## 2장. Maria DB 기본



### CHAPTER 04. 데이터베이스 모델링



* 데이터베이스 모델링 : 현 세계에서 사용되는 작업이나 사물들을 DBMS의 데이터베이스 개체로 옮기기 위한 과정
  * 개념적 모델링 - 논리적 모델링 - 물리적 모델링



### CHAPTER 05. Heid SQL 사용법



* 이 부분은 PASS



### CHAPTER 06. SQL 기본



* SELECT 기본

```mysql
SELECT ...FROM...WHERE...GROUP BY...HAVING...ORDER BY

SELECT 열 이름 FROM 테이블 이름 WHERE 조건

USE 데이터베이스_이름

SELECT * FROM employees
* : 모든 열을 의미한다.
# employees 테이블에서 모든 열을 가져와라

SELECT first_name, last_name FROM employees

# employees 테이블에서 first_name, last_name 열을 가져와라

SELECT 필드이름 FROM 테이블 이름 WHERE 조건식

SELECT * FROM userTbl WHERE name="kim"
SELECT userID, name FROM userTbl WHERE birthyear >= 1970 AND height >= 182
SELECT userID, name FROM userTbl WHERE birthyear >= 1970 OR height >= 182
SELECT name, height FROM userTbl WHERE height BETWEEN 180 AND 183
SELECT name, addr FROM userTbl WHERE addr IN ("경남","전남","경북")
SELECT name, height FROM userTbl WHERE name LIKE '김%' # 김 뒤에는 아무거나
SELECT name, height FROM userTbl WHERE name LIKE '_종신' # 한 글자 검색
SELECT name, height FROM userTbl WHERE name LIKE '_용%' # 앞에는 한 글자 뒤에는 아무거나

SELECT name, height FROM userTbl
WHERE height > (SELECT height FROM userTbl WHERE name = "김경호")

SELECT name, heighr FROM userTbl
WHERE height >= ANY (SELECT height FROM userTbl WHERE addr="경남")
# 지역이 "경남" 사람의 키보다 키가 크거나 같은 사람

SELECT name, heighr FROM userTbl
WHERE height >= ALL (SELECT height FROM userTbl WHERE addr="경남")

# ANY는 서브쿼리의 여러 개의 결과 중 한 가지만 만족해도 되며, ALL은 서브쿼리의 여러 개의 결과를 모두 만족시켜야 한다.

SELECT name, heighr FROM userTbl
WHERE height = ANY (SELECT height FROM userTbl WHERE addr="경남")

# 서브쿼리 결과와 동일한 값을 출력 =ANY 는 IN 과 동일한 의미
```



* ORDER BY

```mysql
SELECT name, date FROM userTbl ORDER BY date # 기본적으로 오름차순 정렬
SELECT name, date FROM userTbl ORDER BY date DESC # 내림차순 정렬
SELECT name, height FROM userTble ORDER BY height DESC, name ASC

# ORDER BY 는 제일 뒤에 온다

```



* DISTINCT 와 LIMIT

```mysql
SELECT DISTINCT addr FROM userTbl

SELECT emp_no, hire_date FROM employees ORDER BY hire_date ASC LIMIT 5

SELECT emp_no, hire_date FROM employees ORDER BY hire_date ASC LIMIT 0,5
SELECT emp_no, hire_date FROM employees ORDER BY hire_date ASC LIMIT 5 OFFSET 0
# 위 두개는 동일한 문장
```



* CREATE TABLE...SELECT

```mysql
CREATE TABLE 새로운테이블 (SELECT 복사할 열 FROM 기존테이블)

CREATE TABLE buyTbl2 (SELECT * FROM buyTbl1)

CREATE TABLE butTbl3 (SELECT userID, prodname FROM buyTbl1)

# PK 나 FK 등의 제약 조건은 복사되지 않는다.
```



* GROUP BY, HAVING, ROLLUP

```mysql
SELECT userID, SUM(amount) FROM butTbl GROUP BY userID

SELECT AVG(amount) FROM buyTbl

SELECT userID, AVG(amount) FROM butTbl GROUP BY userID

SELECT name, MAX(height), MIN(height) FROM userTbl GROUP BY name

SELECT name, height FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
OR height = (SELECT MIN(height) FROM userTbl)

SELECT COUNT(*) FROM userTbl
SELECT COUNT(mobile1) FROM userTbl

SELECT userID, SUM(price*amount) FROM buyTbl
GROUP BY userID
HAVING SUM(price*amount) >1000

# WHERE 와 비슷한 개념으로 조건을 제한하는 것이지만, 집계 함수에 대해서 조건을 제한하는 것, 무조건 GROUP BY 절 다음에 와야한다.

SELECT num, groupname, SUM(price*amount) FROM userTbl
GROUP BY groupname, num
WITH ROLLUP
```



* SQL 의 분류
  * DML : 데이터를 조작하는 데 사용되는 언어
  * DDL : 테이터베이스, 테이블, 뷰, 인덱스 등의 데이터베이스 개체를 생성/삭제/변경하는 역할
  * DCL : 사용자에게 어떤 권한을부여하거나 빼앗을 때 주로 사용하는 구문



* INSERT

```mysql
INSERT INTO 테이블 VALUES

CREATE TABLE testTBL1 (
    id INT
    username CHAR(10)
    age INT
)
INSERT INTO testTBL1 VALUES(1, "홍길동", 25)
INSERT INTO testTBL1(id, username) VALUES (2, "설현")
```



* AUTO_INCREMENT

```mysql
CREATE TABLE testTBL2(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username CHAR(10)
    age INT
)

ALTER TABLE testTBL2 AUTO_INCREMENT =100
INSERT INTO testTBL2 VALUES (NULL, "설현", 25)

ALTER TABLE testTBL2 AUTO_INCREMENT =100
SET @@auto_increment_increment =3 # 3씩 증가한다.
INSERT INTO testTBL2 VALUES (NULL, "설현", 25)
```



* UPDATE

```mysql
UPDATE 테이블이름 SET 열1=값1 WHERE 조건

UPDATE testTBL4
SET Lname ="없음"
WHERE Fname="kim"

UPDATE butTBL2
SET price= price*1.5
```



* DELETE

```mysql
DELETE FROM 테이블이름 WHERE 조건
DELETE FROM testTBL4 WHERE Fname="Aamer"
DELETE FROM testTBL4 WHERE Fname="Aamer" LIMIT 5

# 예외로 무시하고 데이터를 넣는 방법

INSERT IGNORE INTO 테이블 VALUES 값

# 기본 키 중복시에 데이터를 수정

INSERT INTO 테이블 VALUES ON DUPLICATE KEY UPDATE 값
```



* WITH절과 CTE
  * CTE : 기존의 뷰, 파생 테이블, 임시 테이블 등으로 사용되던 것을 대신할 수 있며, 더 간결한 식으로 보여지는 장점이 있다.
  * 비재귀적 CTE : 재귀적이지 않은 CTE

```mysql
WITH abc(userid, total) AS
(SELECT userid, SUM(price*amount) FROM buyTBL GROUP BY userid)

SELECT * FROM abc ORDER BY total DESC

SELECT addr, MAX(height) FROM userTBL GROUP BY addr

WITH cte_user(addr, maxHeight) AS
(SELECT addr, MAX(height) FROM userTBL GROUP BY addr)

SELECT AVG(maxHeight*1.0) FROM cte_user
```



### CHAPTER 07. SQL 고급

* 데이터 형식
  * 숫자 데이터 형식 : SMALLINT, INT, BIGINT, FLOAT, DOUBLEREAL, DECIMAL
  * 문자 데이터 형식 : CHAR, VARCHAR, LONGTEXT, LONGBLOB
  * 날짜와 시간데이터 형식 : DATE, DATETIME



* 변수의 사용

```mysql
SET @변수이름 = 변수의 값 #변수의 선언 및 값 대임
SELECT @변수이름 #변수의 값 출력
```



* 데이터 형식 변환 함수 : CAST(), CONVERT()

```mysql
SELECT CAST(AVG(amount)) AS SIGNED INTEGER FROM buyTBL;
SELECT CONVERT(AVG(amount)), SIGNED INTEGER FROM buyTBL;
```



* MariDB 내장 함수

```mysql
# 제어 흐름 함수

SELECT IF (110> 200, "True", "False")

SELECT IFNULL(NULL, "NULL"), IFNULL(100,"NULL")
# NULL, 100

SELECT NULLIF(100,100),NULLIF(200,100)
# 수식1과 수식2가 같으면, NULL, 다르면 수식1을 반환

SELECT		CASE 10
			WHEN 1 THEN "1"
			WHEN 5 THEN "5"
			WHEN 10 THEN "10"
			ELSE "?"
		END;
		# 케이스가 10이니까 10이 반환된다.
		
SELECT ASCII("A"),CHAR(65)
# 65, "A" 를 돌려준다.

SELECT CONCAT_WS("/","2022","01","01")
# "2022/01/01" 이 반환된다. 문자열을 이어주는 함수

SELECT ELT(2,"하나","둘","셋"), FIELD("둘","하나","둘","셋"), FIND_IN_SET("둘","하나,둘,셋"),
INSTR("하나둘셋","둘"), LOCATE("둘","하나둘셋")
# "둘",2,2,3,3 이 반환된다
# ELT는 위치 번째에 해당하는 문자열을 반환
# FIELD는 찾을 문자열의 위치를 찾아서 반환
# FIND_IN_SET은 찾을 문자열을 문자열 리스트에서 찾아서 위치를 반환
# INSTR은 기준 문자열에서 부분 문자열을 찾아서 그 시작 위치를 반환
# LOCATE는 INSTR과 동일하지만 파라미터의 순서가 반대

SELECT FORMAT(123456.123456, 4)
# 123,456.1235 숫자를 소수점 아래 자릿수까지 표현, 1000단위마다 콤마를 표시

SELECT INSERT ('abcdefghi',3,4,"@@@@")
# 기준 문자열의 위치부터 길이만큼을 지우고 삽입할 문자열을 끼워 넣는다.

SELECT LEFT("abcdefghi",3), RIGHT 도 있음
#왼쪽 또는 오른쪽에서 문자열의 길이만큼 반환한다.# "abc"

SELECT UPPER,LOWER
# 대문자, 소문자

SELECT LTRIM,RTRIM, TRIM
# 문자열의 왼쪽/오른쪽 공백을 제거/문자열의 앞뒤 공백
SELECT TRIM(BOTH"ㅋ" FROM "ㅋㅋㅋㅋ재밌어요ㅋㅋㅋㅋ")
# 재밌어요 출력

SELECT REPEAT
# 문자열을 횟수만큼 반복

SELECT REPLACE("THIS IS MARIADB", "THIS", "THAT")
# THIS를 THAT으로 바꿔줌

SELECT REVERSE
# 문자열의 순서를 거꾸로

SELECT CONCAT("THIS",SPACE(10),"MARIADB")
# 길이 만큼의 공백을 반환

SELECT SUBSTRING("대한민국만세",3,2)
# "민국" 반환, 시작위치부터 길이만큼

SELECT SUBSTRING INDEX("CAFE.NAVER.COM",".",2)
# .를 기준으로 2개

#수학 함수

ABS = 절대값

CEILING = 올림, FLOOR = 내림, ROUND = 반올림

POW(2,3) = 거듭제곱, SQRT = 제곱급

# 날짜 및 시간 함수

SELECT ADDDATE("2022-01-01", INTERVAL 31DAY)
SELECT SUBDATE("2022-01-01", INTERVAL 31DAY)
# 날짜를 기준으로 차이를 더하거나 뺀 날짜

ADDTIME, SUBTIME
# 시간을 기준으로 시간을 더하거나 뺀 결과

CURRENT_DATE = 현재 연-월-일
CURRENT_TIME = 현재 시:분:초
NOW,SYSDATE = 현재 연-월-일 시:분:초

YEAR,MONTH,DAY,HOUR,MINUTE,SECOND

SELECT DATE(NOW()), TIME(NOW())
# 현재 연-월-일, 시:분:초

DATEDIFF, TIMEDIFF
SELECT DATEDIFF("2022-01-01, NOW()", TIMEDIFF("23:23:59", "12:11:10"))
#날짜1 - 날짜2의 일수 결과, 시간은 시간 결과

DAYOFWEEK,MONTHNMAE,DAYOFYEAR
# 현재요일, 월 이름, 일년 중 몇 일이 지났는지

LAST_DAY
# 주어진 날짜의 마지막 날짜 , 그 달의 마지막 날

SELECT MAKEDATE(2022,32)
# 2022년의 32일이 지난 날짜

SELECT MAKETIME(12,11,10)
# 12:11:10

QUARTER # 분기 구하기


```



* 윈도우 함수
  * 순위 함수 : RANK,NTILE,DENSE_RANK,ROW_NUMBER
  * 분석 함수 : CUME_DIST,LEAD,FIRST_VALUE,LAG,LAST_VALUE,PERCENT_RANK



* 피벗과 JSON 
  * 피벗은 한 열에 포함된 여러 값을 출력하고, 이를 여러 열로 변환하여 테이블 반환 식을 회전하고 필요하면 집계까지 수행하는 것을 말한다.
  * JSON : 현대의 웹과 모바일 응용프로그램 등과 데이터를 교환하기 위한 개방형 표준 포맷, 속성과 값으로 쌍을 이루며 구성되어 있다.



* 조인
  * INNER JOIN(내부 조인)

```mysql
SELECT <열 목록> FROM <첫 번째 테이블> INNER JOIN <두 번째 테이블> ON <조인될 조건> WHERE 검색조건

SELECT * FROM buyTBL INNER JOIN userTBL ON buyTBL.userID = userTBL.userID
WHERE buyTBL.userID = "JYP"
```



* 외부조인 - 자주 쓰이지는 않지만 알아두자
  * 실습을 통해서 알아보도록 하자.
* CROSS JOIN (상호 조인) : 한 쪽 테이블의 모든 행들과 다른 쪽 테이블의 모든 행을 조인시키는 기능

```mysql
SELECT COUNT(*) FORM employees CROSS JOIN departments
```



* SELF JOIN : 자기 자신과 자기 자신이 조인한다는 의미



* UNION/ UNION ALL/ NOT IN /IN 
  * UNION : 두 쿼리의 결과를 행으로 합치는 것
* SQL 프로그래밍
  * IF ~ ELSE
  * CASE
  * WHILE / ITERATE / LEAVE