# 15장. 클래스



## 15-1. 클래스



* 클래스 : 관련된 속성과 동작을 하나의 범주로 묶어 실세계의 사물을 흉내 낸다.
* 모델링 : 사물을 분석하여 필요한 속성과 동작을 추출하는 것
* 캡슐화 : 모델링된 결과를 클래스로 포장하는 것
* 생성자 

```python
class Account:
    def __init__(self, balance):
        self.balance = balance
    def deposit(self, money):
        self.balance += money
    def inquire(self):
        print("잔액은 %d 원입니다." % self.balance)
```



* 상속 : 기존 클래스를 확장하여 멤버를 추가하거나 동작을 변경하는 방법

```python
class Human:
    def __init__(self, age, name):
        self.age = age
        self.name = name
        
    def intro(self):
        print(str(self.age) + "살" + self.name +"입니다.")
class Student(Human):
    def __init__(self, age, name, stunum):
        super().__init__(age, name)
		self.stunum = stunum
        
    def intro(self):
        super().intro()
        
        # 다중상속은 지양하라고 책에 나옴
```

 

* 엑세서 : 은폐기능

```python
class Date:
    def __init__(self, month):
        self.month = month
    def getmonth(self):
        return self.month
    def setmonth(self):
        return self.month
    
	property(getmonth, setmonth)    
    
class Date:
    def __init__(self, month):
        self.__month = month
        
 # __를 붙여서 히든으로 만들수도 있다.
```



## 15-2. 여러 가지 메서드



* 클래스 메서드 : 특정 객체에 대한 작업을 처리하는 것이 아니라 클래스 전체가 공유한다.

```python
class Car:
    count = 0
    def __init__(self,name):
        self.name = name
        Car.count += 1
    @classmethod
    def outcount(cls):
        print(cls.count)
```



* 정적 메서드 : 클래스에 포함되는 단순한 유틸리티 메서드

```python
class Car:
    @staticmethod
    def hello():
        print("오늘도 안전 운행")
    count = 0
    
```



* 특수 메서드

```python
class Human:
    def __init__(self, age, name):
        self.age = age
        self.name = name
    def __str__(self):
        return "이름 %s, 나이 %d" % (self.name, self.age)
    
    
    # str 문자열화 하여 출력
```



## 15-3. 유틸리티 클래스



* Decimal

```python
from decimal import Decimal

f = Decimal("0.1")
sum = 0
for i in range(100):
    sum += f
    
print(sum)
```



* Fraction

```python
from fractions import *

a = Fraction(1,3)
print(a)
b = Fraction(8, 14)
print(b)

# 1/3, 4/7
```



* array : array(타입코드, [초기값])



```python
import array

ar = array.array('i', [33,44,67,89,56])
for a in ar:
    print(a, end=" ")
```

