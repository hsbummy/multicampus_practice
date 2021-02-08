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



##  3장. Maria DB 고급



### CHAPTER 08. 테이블과 뷰



* 테이블 : 만드는 방법보다는 어떻게 모델링 했느냐 가 훨씬 중요하다.
* 제약 조건 : 데이터의 무결성을 지키기 위한 제한된 조건
  * PRIMARY KEY 제약 조건 :  중복될 수 없으며, NULL값이 입력될 수 없다. 
  * FOREIGN KEY 제약 조건 : 두 테이블 사의 관계를 선언함으로써, 데이터의 무결성을 보장해 주는 역할
  * UNIQUE 제약 조건 : 중복되지 않는 유일한 값, NULL 값을 허용
  * CHECK 제약 조건 : 입력되는 데이터를 점검하는 기능
  * DEFAULT 제약 조건 : 값을 입력하지 않았을 때, 자동으로 입력되는 기본값
  * NULL 제약 조건
* 임시 테이블 :임시로 잠깐 사용되는 테이블 (TEMPORARY TABLE)
* 테이블 삭제 : DROP TABLE
* 테이블 수정

```mysql
# 열의 추가
ALTER TABLE userTBL
ADD homepage VARCHAR(30)
DEFAULT 'http://www.naver.com'
NULL;

# 열의 삭제
ALTER TABLE userTBL
DROP COLUMN mobile1

# 열의 이름 및 데이터 형식 변경
ALTER TABLE userTBL
CHANGE COLUMN name uName VARCHAR(20) NULL

# 열의 제약 조건 추가 및 삭제

ALTER TABLE userTBL
DROP FOREIGN KEY FK_userTBL_buyTBL

ALTER TABLE userTBL
DROP PRIMARY KEY
```



* 뷰 : 일반 사용자 입장에서는 테이블과 동일하게 사용하는 개체 = SELECT 문

```mysql
CREATE VIEW v_userTBL
```



* 뷰의 장점 
  * 테이블에 접근하지 못하도록 권한을 제한하고, 뷰에만 접근 권한을 줄 수가 있다.
  * 복잡한 쿼리를 단순화시켜줄 수 있다.



### CHAPTER 09. 인덱스



* 인덱스 = 책의 <찾아보기> 와 같다
* 인덱스의 장점
  * 검색은 속도가 무척 빨라질 수 있다.(단, 항상 그런 것은 아니다.)
  * 그 결과 해당 쿼리의 부하가 줄어들어서, 결국 시스템 전체의 성능이 향상된다.
* 인덱스의 단점
  * 인덱스가 데이터베이스 공간을 차지해서 추가적인 공간이 필요해지는데, 대략 데이터베이스 크기의 10% 정도의 추가 공간이 필요하다.
  * 처음 인덱스를 생성하는 데 시간이 많이 소요될 수 있다.
  * 데이터의 변경 작업이 자주 일어날 경우에는 오히려 성능이 많이 나빠질 수 있다.
* 인덱스의 종류
  * 클러스터형 인덱스 / 보조 인덱스 : 클러스터형 인덱스는 한 개만 생성할 수 있고, 보조 인덱스는 테이블당 여러 개를 생성할 수 있다. 또, 클러스터형 인덱스는 행 데이터를 인덱스로 지정한 열에 맞춰서 자동 정렬한다.
  * PRIMARY KEY를 설정하면 자동으로 클러스터형 인덱스가 생성이 된다. 
  * UNIQUE 도 인덱스가 생성이되나 보조 인덱스로 생성이 되며, NOT NULL 을 지정해주면 클러스터형 인덱스가 된다.
  * PRIMARY KEY 와 UNIQUE NOT NULL 이 동시에 있으면 PRIMARY KEY 로 지정한 열에 우선 클러스터형 인덱스가 생성된다.
* 인덱스의 내부 작동
  * B-TREE : 우선 노드란 구조에서 데이터가 존재하는 공간, 즉 갈라지는 부분의 마디를 뜻한다.
  * 페이지 분할 :  데이터 변경 작업이 들어왔을 때 빈공간을 확보하고 페이지를 분할해서 값을 변경한다.
* 클러스터형 인덱스와 보조 인덱스의 구조 : 이건 그림으로 파악을 해야하고 설명을 잘 보자
  * 클러스터형 인덱스
    * 클러스터형 인덱스는 인덱스 자체의 리프 페이지가 곧 데이터다. 그러므로, 인덱스 자체에 데이터가 포함되어 있다고 볼 수 있다.
    * 클러스터형 인덱스는 보조 인덱스보다 검색 속도는 더 빠르다. 하지만, 데이터의 입력/수정/삭제는 더 느리다.
    * 컬러스터 인덱스는 성능이 좋지만 테이블에 한 개만 생성할 수 있다. 그러므로, 어느 열에 클러스터형 인덱스를 생성하는지에 따라서 시스템의 성능이 달라질 수 있다.
  * 보조 인덱스
    * 보조 인덱스의 생성 시에는 데이터 페이즈는 그냥 둔 상태에서 별도의 페이지에 인덱스를 구성한다.
    * 인덱스 자체의 리프 페이지는 데이터가 아니라 데이터가 위치하는 주소 값이다. 클러스터형보다 검색 속도는 더 느리지만 데이터의 입력/수정/삭제는 덜 느리다.
    * 보조 인덱스는 여러 개 생성할 수 있다. 하지만 함부로 남용할 경우에는 오히려 시스템 성능을 떨어뜨리는 결과를 초래할 수 있으므로 꼭 필요한 열에만 생성하는 것이 좋다.
* 클러스터형 인덱스와 보조 인덱스가 혼합되어 있을 경우

```mysql
# 인덱스 생성
CREAT INDEX index_name [index_type] ON tbl_name [index_option]

# 인덱스 제거
DROP INDEX 인덱스이름 ON 테이블이름
```



* 결론
  * 인덱스는 열 단위에 생성된다.
  * WHERE 절에서 사용되는 열에 인덱스를 만들어야 한다.
  * WHERE절에 사용되더라도 자주 사용해야 가치가 있다.
  * 데이터의 중복도가 높은 열은 인덱스를 만들어도 별 효과가 없다.
  * 외래 키를 지정한 열에는 자동으로 외래 키 인덱스가 생성된다.
  * JOIN에 자주 사용되는 열에는 인덱스를 생성해 주는 것이 좋다.
  * INSERT/UPDATE/DELETE가 얼마나 자주 일어나는지를 고려해야 한다.
  * 클러스터형 인덱스는 테이블당 하나만 생성할 수 있다.
  * 클러스터형 인덱스가 테이블에 아예 없는 것이 좋은 경우도 있다.
  * 사용하지 않는 인덱스는 제거하자.



### CHAPTER 10. 스토어드 프로그램



* 스토어드 프로시저 : maria db 에서 제공되는 프로그래밍 기능
* 스토어드 프로시저의 특징
  * Maria DB 의 성능을 향상시킬 수 있다.
  * 유지관리가 간편하다.
  * 모듈식 프로그래밍이 가능하다.
  * 보안을 강화할 수 있다.

```mysql
DELIMITER $$
CREATER PROCEDURE 스토어드 프로시저이름 (IN 또는 OUT 파라미터)
BEGIN

	이 부분에 SQL 프로그래밍 코딩
	
END $$
DELIMETER
CALL 스토어드 프로시저 이름

# 스토어드 프로시저의 수정과 삭제
ALTER PROCEDURE # 수정
DROP PROCEDURE # 삭제
```



* 스토어드 함수 : 사용자가 직접 만들어서 사용하는 함수

```mysql
DELIMITER $$
CREATE FUNCTION 스토어드 함수이름
	RETURNS 반환형식
BEGIN

	이 부분에 프로그래밍 코딩
	RETURN 반환 값
	
END $$
DELIMITER
SELECT 스토어드_함수이름
```



* 스토어드 함수와 스토어드 프로시저
  * 스토어드 프로시저의 파라미터와 달리 IN, OUT 등을 사용할 수 없다. 스토어드 함수의 파라미터는 모두 입력 파라미터로 사용된다.
  * 스토어드 함수는 RETURNS문으로 반환할 값의 데이터 형식을 지정하고, 본문 안에서는 RETURN문으로 하나의 값을 반환해야 한다.
  * 스토어드 프로시저는 별도의 반환하는 구문이 없으며, 꼭 필요하다면 여러 개의 OUT 파라미터를 사용해서 값을 반환할 수 있었다.
  * 스토어드 프로시저는 CALL로 호출하지만, 스토어드 함수는 SELECT 문장 안에서 호출된다.
  * 스토어드 프로시저 안에는 SELECT문을 사용할 수 있지만, 스토어드 함수 안에서는 집합 결과를 반환하는 SELECT를 사용할 수 없다.
  * 스토어드 프로시저는 여러 SQL문이나 숫자 계산 등의 다양한 용도로 사용되지만,  스토어드 함수는 어떤 계산을 통해서 하나의 값을 반환하는 데 주로 사용된다.

* 커서 : 테이블에서 여러 개 행을 쿼리한 후에, 쿼리의 결과인 행 집합을 한 행씩 처리하기 위한 방식이다.
* 커서의 처리 순서
  * 커서의 선언
  * 반복 조건 선언
  * 커서 열기
  * 커서에서 데이터 가져오기
  * 데이터 처리
  * 커서 닫기
* 트리거 : 테이블에 삽입, 수정, 삭제 등의 작업이 발생할 때 자동으로 작동되는 개체
* 트리거의 종류
  * AFTER 트리거 : 작업이 일어났을 때 작동하는 트리거, 해당 작업 후에 작동
  * BEFORE 트리거 : 이벤트가 발생하기 전



### CHAPTER 11. 전체 텍스트 검색과 파티션



* 근데 이거 안 할거 같아서 정리는 따로 안하고 나중에 필요할 때 읽어봄