# 11장.  컬렉션 관리



## 11-1. 컬렉션 관리 함수



```python
#바로 함수로 알아보자

# enumerate  함수
score = [88,95,70,100,99]
for no, s in enumerate(score, 1):
    print(str(no) + "번 학생의 성적 :" , s)
    
# zip 함수

yoil = [1,2,3,4]
food = [5,6,7,8]
menu = zip(yoil,food)
for y, f in menu:
    print("%s 요일 메뉴 : %s" % (y,f)
```



## 11-2. 람다 함수



* filter 함수 : 거르는 역할

```python
def flunk(s):
    return s < 60

score = [45,89,72,53,97]
for s in filter(flunk,score):
    print(s)
    
45 ,53
```



* map 함수

```python
def half(s):
    return s / 2

score = [46,88,24,36,44]
for s in map(half, score):
    print(s)
23,44,12,18,22
```



* lambda 함수

```python
score = [45,89,72,53,94]
for s in filter(lambda x: x<60,score):
	print(s)
```



## 11-3. 리스트의 사본



* 같은 객체를 가르키는지, 메모리가 다른지 아는건데 뭔가 이해는 가는데 막 설명을 못하겠다.



# 12장. 표준 모듈



## 12-1. 수학



* 기본적으로 import 가 들어간다.

```python
import math
print(math.sqrt(2))

from math import sqrt

# 통계

import statistics
```



## 12-2. 시간



* time 모듈

```python
import time

print(time.time())
print(time.localtime())

import datetime
now = datetime.datetime.now()
print("%d년 %d월 %d일" % (now.year, now.month, now.day))

print("hi")
time.sleep(2)
print("bye")

# 달력

import calender

#첫 칸의 요일을 바꿀 때~

calender.setfirstweekday()
```



## 12-3. 난수



* random

```python
import random

이건 뭐 많이 했으니까

random.shuffle()
random.randint()
random.choice()
random.sample()
```



## 12-4. sys 모듈



* 시스템 정보

```python
import sys
sys.version
sys.platform

# 많이 쓰나 잘 모르겠다. 많이 쓸수도 있는데 저 두개가 뭐
# 괜찮은듯
```



# 13장. 예외처리



## 13-1. 예외처리



* 예외처리

```python
str = "89점"
try:
    score = int(str)
    print(score)
except:
    print("error")
print("작업완료")

# 예외의 종류

# ValueError
# ZeroDivisionError
# TypeError

# raise - 고의적으로 예외를 발생시킴

def calcsum(n):
    if (n < 0):
        raise valueError
```



## 13-2. 자원 정리



* finally - 예외 발생 여부와 상관없이 반드시 실행해야 할 명령을 지정한다.



# 14장. 파일



## 14-1. 파일 입출력

```python
# write

f = open("live.txt", "wt", encoding="utf8")
f.write("어쩌고 저쩌고")
f.close()

# read

try:
    f = open("live.txt", "rt", encodint="utf8")
    text = f.read()
    print(text)
except FileNotFoundError:
    print("no")
finally:
    f.close()
    
# readline, readlines

f = open("live.txt", "rt", encoding="utf8")
text = ""
line = 1
while True:
    row = f.readline()
    if not row:
        break
    text += str(line) + ":" +row
    line += 1
f.close()
print(text)
```



## 14-2. 파일 관리  함수

* 이거는 강의시간에 안 했으니까 그냥 개인적으로 읽어보도록



## 14-3. 데이터베이스

* 이거는 데이터베이스를 아직 안 배웠으니까 패스

