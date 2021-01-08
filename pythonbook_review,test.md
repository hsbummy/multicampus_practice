# 1장. Python



## 1-1. 파이썬?(Python)

* 인터프리터 방식의 언어 : 명령어를 만날 때마다 즉시 번역해서 실행하는 방식



## 1-2. 파이썬 설치, 개발환경

* Add Python 3.6 toPATH : 이거 왜 하는 지 궁금했는데, 이 옵션을 선택하지 않으면 설치 폴더로 이동해야 파이썬을 실행해야 하기 때문이라고 한다.
* 이 부분은 패스하도록 한다. 인터넷에 훨씬 더 자세한 설명이 나와있다.



## 1-3. 파이썬 실행 모드

* 기본 파이썬을 사용하지만, 현재 파이참을 사용하고 있으므로 이 부분 또한 넘어간다.



# 2장. 변수



## 2-1. 기본구조

```python
print(3+4)
# 명령어나 함수 등은 대부분 소문자로 되어 있어 반드시 소문자로 써야한다.
# print = 출력 구문, 또한 연산도 가능하다.
print(a, b,sep=",",end="")
sep= 구분자, end=끝 문자

#입력
ex = input("How old are you?")
# input은 사용자가 입력한 값을 돌려주고 이 값은 보통 변수로 대입받는다.
# input으로 받은 값은 문자열이기에 정수가 필요할 경우 정수형으로 변환한다. = int()

```

## 2-2. 변수



* 함수나 클래스 등 고유한 명칭이 있는 경우는 변수로 사용 x

```python
score = 98
# score는 변수에 해당된다.
score = 'high'
# 문자열도 변수로 사용할 수 있다.
# 타입을 확인할 때는 type 명령을 활용
```



# 3장. 타입



## 3-1. 수치형

* 정수형: 말 그대로 정수를 나타내는 형태, 음수도 가능하다

```python
0x #를 붙이면 16진법 0~9, a~f 까지 사용가능
0o #를 붙이면 8진법  0~7
0b #를 붙으면 2진법  0,1
# 가수 E지수
9.46e12 # 9.46 * 10의 12승이라는 뜻이다. 사실 e라는 것을 아예 까먹어서 한 번 적어봤다
# 복소수형
a = 1+2j
b = 3+4j
# 복소수도 표현이 가능하다. 물론 이것도 까먹어서 적었다.
```



## 3-2. 문자열

* 문자열: 일련의 문자를 따옴표로 감싸 나열해 놓은 것

```python
print("I say")
print('I "love"you')
# 둘 다 가능
```

* 확장열: 어떤 따옴표로 감싸든 문제가 발생하는 문자

```python
\n # 줄 바꾸기
\t # 탭
\\ # \ 출력
\'," # 출력
print("I say \'Help\' to you")
# 뭐 이런식으로
​```
이거는 긴문자를 출력할 수 있답니다.
호호호호```

또는

​```이렇게 쓰다가\
하고 또 쓰면```
# ex : 이렇게 쓰다가 하고 또 쓰면 (이런 식으로 나오게 됩니다.)

s = "korea" "japan" "china"
print(s)
#koreajapanchina 출력가능 , 없이도 출력이 가능
```



## 3-3. 그 외의 타입

* 진위형 : 참 또는 거짓을 표현 (boolean)인가 암튼 그럼

```python
a = 5
b = 3
print(a > b)
# True 가 출력
```



* 컬렉션 소개: 리스트와 튜플이 있는데 뒤에 나오니 뒤에서 설명하도록 한다.



# 4장. 연산자



## 4-1. 대입 및 산술



* 대입 연산자: 자료를 가공하여 유용한 정보를 만들어 내는 도구

```python
# +,-,*,/ 이거는 기본 사칙연산
# ** = 거듭제곱
# // 정수 나누기
# % 나머지

# 복합 대입 연산자라고 하는데 눈으로 보면 된다
a += 5 # a를 5씩 증가시키고
a -= 5 # a를 5씩 감소시킨다.
```



## 4-2. 타입 변환

* 문자열 연산

```python
a = "www"
b = "http"
print(a + b) # 이거는 가능하다

print("no" * 5) #이런것도 가능하다

```

* 정수와 문자열

```python
a = "www"
b = 5
print(a + b) # 이것은 안된다 이 말이야
#그래서 쓰는게 str,int
#str = 문자형으로 변환
#int = 정수형으로 변환

그러면 실수는?

#float 함수
print(10 + float(22.5)) # 이런식으로 가능하다

#강사님이 말씀해주신 은행을 예로 들면 남는 돈을 가져간다??
print(round(2.54 , 1)) # 이런 식으로 하게 되면 값은 2.5 가 나온다. 반올림을 해주는 함수
```



# 5장. 조건문



## 5-1. if 조건문



```python
# if 조건문은 바로 눈으로 확인해보자
if 조건:
    명령
    
# ex
age = 19
if age > 15:
    print("어른")
    #이런 식으로 작성이 이뤄진다.
    #들여쓰기와 콜론을 주의할 것
    
# 비교연산자는 비교적 쉬우니 넘어가나, == 는 같다, != 는 아니다 정도만 알면 된다. 나머지는 다 배운 내용이다.
# 참고로 문자열도 비교가 가능하다.
# 논리연산자는 and, or not 이 있는데 and 그리고 or 또는 not? not 조건을 뒤집는다고 생각하면 된다.
```



##  5-2. 블록 구조



* 블록 구조 : 말이 어렵다. 적어도 나한테는 어렵게 느껴졌다. 근데 단순하게 생각해보면 한꺼번에 실행되는 명령의 묶음을 블록이라 한다. 들여쓰기 묶여진이라고 생각하면 조금 더 쉬울라나...
* else문 : 단순 if 문은 조건 진위에 따라 명령의 실행 여부를 결정한다. 조건 진위에 따라 실행할 명령을 선택하는 것이 if else 문이다.

```python
if 조건:
    명령1
else:
    명령2
```

* elif 문 : if 조건문의 완성이다. 조건이 만족하지 않을 때 elif문의 다른 세부 조건을 더 점검한다. 사실 else if랑 같다

```python
if 조건1:
    명령1
elif 조건2:
    명령2
else:
    명령3
```

* if 문 중첩이 있는데...간단하게 예시만 보고가자

```python
man = True
age = 22
if man == True:
    if age >= 19:
        print("어른")
        
        # 이런 구조를 말한다.
```

# 6장. 반복문



## 6-1. 반복문



* while 반복문은 명령을 한 번만 실행하는 것이 아니라 조건이 만족하는 동안 계속 실행한다.

```python
while 조건:
    명령
    
# ex
student = 1
while student <= 5:
    print(student, "번 학생의 성적을 처리한다.")
    student += 1
```



* for문은 컬렉션의 요소를 순서대로 반복하면서 루프의 명령을 실행하는 반복문이다.

```python
for 제어변수 in 컬렉션:
    명령
    
# ex
for student in [1,2,3,4,5]:
    print(student, "번 학생의 성적을 처리한다.")
    
# 이걸 range 함수를 이용하면
for student in range(1,6):
    print(student, "번 학생의 성적을 처리한다.")
# 으로 나오고 range 함수에서의 끝값은 처리되지 않는다.

sum = 0
for num in range(2,101,2):
    sum += num
    # 짝수의 합을 구할 수 있다. 괄호 안 마지막 수는 step
```



* 제어 변수의 활용 : 딱히 설명할 내용이 없으나 간단하게 예시를 보자면

```python
for x in range(1,6):
    print("-" * 9, end = "")
    print("+" , end = "")
    
#출력을 하면
---------+---------+--------+ 
# 이런식으로 나오게 된다.
```



* break : 반복을 중지하거나 현재 반복을 건너뛰어야 할 경우

```python
score = [92, 86, 68, 120, 56]
for s in score:
    if(s < 0 or s > 100):
        break
    print(s)
```



* continue : 이번 루프 하나만 건너뛰고 나머지는 계속 수행, 이건 넘어가자



## 6-2. 루프의 활용



* 이중 루프 : 루프끼리 중첩된 것을 말한다.

```python
# 구구단을 외자

for dan in range(2,10):
    print(dan, "단")
    for hang in range(1,10):
        print(dan, "*", hang, "=", dan * hang)
```



* 무한 루프 : 반복 횟수를 정하지 않고 무한히 반복하는 루프

```python
while True:
    명령
    if 탈출조건:
        break
        
# 간단한 예시
print("3 + 4 = ?")
while True:
    a = int(input("정답을 입력하시오...?"))
    if (a == 7):
        break
```



# 7장. 함수



## 7-1. 함수와 인수

* 함수는 일련의 코드 블록에 이름을 붙여 정의한 것

```python
def 함수명(인수 목록):
    본체
    
# ex
def calcsum(n):
    sum = 0
    for num in range(n+1):
        sum += num
    return sum

calcsum(6) # 함수를 지정한 다음 사용이 가능
```



* 인수 : 호출원에서 함수로 전달되는 작업거리이며 호출하는 쪽과 함수를 연결한다는 의미로 매개변수라고도 한다.
* 리턴값 : 출력값이랑 같다
* pass 명령은 파이썬의 모든 명령 중 가장 간단하며 아무것도 하지 않는다.

```python
def calctotal():
    pass
#주로 함수를 만들어놓고 나중에 내용을 채울 때 사용한다고 한다.
```



## 7-2. 인수의 형식



* 가변 인수 : 인수 이름 앞에 * 기호를 붙이면 자리에 여러 개의 인수가 올 수 있다.

```python
def intsum(*ints):
    sum = 0
    for num in ints:
        sum += num
    return sum

print(intsum(1,2,3,4,5,6,7,8,9))

# 가변 인수가 2개 이상은 안된다
# 그리고 일반 인수랑 가변 인수는 이런 식으로
print(s, *ints) = o
print(*ints, s) = x
```



* 키워드 인수 : 인수의 수가 많이지면 헷갈린다.

```python
def calcstep(begin, end, step):
    pass

# 키워드 가변 인수
def calcstep(**args):
    begin = args["begin"]
    end = args["end"]
    step = args["step"]
    
# 총 집합

def calcscore(name, *score, **option):
    pass
```



## 7-3. 변수의 범위

* 지역 변수 : 함수 내부에서 선언하는 변수

```python
def calcsum(n):
    sum = 0				 	#지역 변수 초기화
    for num in range(n+1):  
        sum += num			#누적
    return sum				#리턴
```



* 전역 변수 : 함수 바깥에서 선언하는 변수 (바깥에서 선언하거나, global 을 붙여준다.)
* docstring : '''이거알지'''



#  8장.문자열



## 8-1. 문자열 분리



* 첨자

```python
s = 'python'
s[2] = ?
t 
# 여기서 하나 알아둘 것 바로 슬라이스

print(s[2:5])
tho
# 이게 슬라이스다
print(s[:2])
print(s[2:])
py
thon
print(s[-1])
n
```



## 8-2. 문자열 메서드



* 검색 : 이거는 예시 보는게 훨 빠르다

```python
s = 'python programming'
print(len(s))
print(s.find("o"))
print(s.rfind("o"))
print(s.index("r"))
print(s.count("n"))
18
4
9
8
2

# 바로 조사도 가자

print("a" in s)
True

# startswinth, endswith 특정문자열로 시작되는지, 특정 문자열로 끝나는지 확인하는 !!

# 기타 : isalpha,isdecimal,isdigit ~~

# 변경

#lower, upper = 소문자 ,대문자

# strip = 공백을 제거한다.!! , lstrip = 왼쪽 공백 제거, rstrip = 오른쪽 공백 제거

# 분할

# split 이거는 예시를 보자

s1 = s.split(" ")
["python","programming"]

# join 문자열의 각 문자 사이에 다른 문자열을 삽입

# 대체

#replace, just

print(s.replace("python","java"))
java programming

print(s.rjust(30))
print(s.ljust(30))
print(s.center(30))  # 정렬이라 생각하면 더 쉽다.

```



## 8-3. 포맷팅



* 포맷팅

```python
# 이것도 빠르게 예시를 보자

price = 500
print("돈" +str(price) + "원" )
print("돈", price ,"원")
둘이 같다

또는

# %s, %d 정도면 도니느데 정수, 문자열인데 아마 %s는 정수 문자 둘 다 가능하다.

print("%d원" % (price))

# 내가 배운 방식은

print("{0} 원입니다.".format(price)) 이거다
# 아마 이게 더 많이 쓰이는 것 같다.
```



# 9장. 리스트와 튜플



## 9-1. 리스트



* 자료의 집합

```python
score = [10,20,30,40,50]
print(list("korea"))
# 슬라이스도 가능
# 추가, 삭제 가능
```



* 이중 리스트 : 그냥 리스트 안에 리스트인데

```python
s = [[1,2,3],[2,3,4]]

# print(s[1][2])
# 4가 나옴
```



## 9-2. 리스트 관리



* 여기 부분도 빠르게 예시로 보자

```python
# 삽입

nums = [1,2,3,4]
nums.append(5)
nums.insert(2,99)
print(nums)
# append 는 끝에, 인서트는 2번째 위치에 99
nums2 =[7,8]
nums.extend(nums2)
print(nums)
nums = [1,2,3,4,7,8]
# 중간식을 제외하고 이렇게 나온다.

# 삭제
nums.remove(1)
del(list[1])
print(nums)
3, 4

#pop 함수도 알아보자
# 삭제라기 보다는 안에 요소를 빼내는 거다
print(nums.pop())
1,2,3

# 검색 
# index = 특정 요소의 위치를 찾는 , count = 특정 요소값의 개수, not, not in 있는지 없는지 검사

# 정렬 
# sort, sort(reverse=True), sorted
```



## 9-3. 튜플



* 불변 자료 집합 = 튜플

```python
# 변경 삭제 불가능
score = (10,20,30,40)
# 변하지 않는 값을 사용할 때 좋다
```



# 10장. 사전



## 10-1. 사전



* 사전은 키와 값의 쌍을 저장하는 대용량의 자료구조

```python
dic = {"boy": "소년", "school" : "학교"}

# 사전 관리

del dic["boy"]
dic ["girl"] ="소녀"
결과는 예상하는대로 나온다.

print(keys())
print(values())
print(items())
```



## 10-2. 집합



* 집합은 여러 가지 값의 모임, 중복 불가

```python
asia = {"korea","china","japan"}
asia.add("vietnam") = o
# 중복 안되고
asia.remove("japan") = o
asia.update("singapore") = o
```

