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



# 16장. 모듈과 패키지



## 16-1. 모듈



* 모듈 : 스크립트를 여러 개의 파일로 나누어 작성할 때 나누어진 스크립트 파일 하나.

```python
INCH = 2.54

def calcsum(n):
    sum = 0
    for num in range(n+1):
        sum += num
    return sum


import util
print("1inch = ",util.INCH)
print("~10 =",util.calcsum(10))

from util import *
print("1inch = ", INCH)
print("~10 =", calcsum(10))
```



* 테스트 코드

```python
INCH = 2.54

def calcsum(n):
    sum = 0
    for num in range(n+1):
        sum += num
    return sum

if __name__ == "__main__":
    print("인치", INCH)
    print("합계=", calcsum(10))
    
    
# 모듈 경로 

import sys
sys.path.append("C:\\Temp")
import util
print("1inch = ", INCH)
print("~10 =", calcsum(10))
```



## 16-2. 패키지



* 패키지 : 모듈을 담은 디렉토리
* 외부모듈 : 알맞게 잘 사용하자
* pip 로 설치하고 삭제도 가능하다.



# 17장. 고급 문법



## 17-1. 반복자

(이 부분은 따로 수업시간에 설명하지는 않았다.)

* 쭉 읽어보니 안 한 이유를 알겠다. 한 번 읽어보면 좋다.



## 17-2. 동적코드 실행 



```python
# eval : 문자열 형태로 된 파이썬 표현식을 평가하여 그 결과를 리턴한다. 미리 작성된 소스 코드가 아닌 실행중에 만든 문자열을 넘기면 해석기가 코드르 분석 및 실행하는 방식이다.

result = eval("2 +3 +4")
print(result)

# 답은 14

a = 2 
print(eval("a + 3"))

# 답은 5

city = eval("['seoul','osan','suwon']")
for c in city:
    print(c, end=" ")
    
# seoul, osan, suwon
```



```python
# repr : 객체로부터 문자열 표현식을 생성한다. 

print(repr(1234))
print(repr(3.14))
print(repr(['seoul']))
print(repr("korea"))

#1234
#3,14
#['seoul']
#'korea'
```



# 18장. 그래픽



## 18-1. TKinter



* 이 부분은 나도코딩 강의를 통해 실습을 해보자



## 18-2. 터틀 그래픽



* 이 부분은 rurple 하고 비슷하다.



# 19장. wxPython



## 19-1. 윈도우



## 19-2. 위젯



* 19-1,19-2 두 챕터는 오늘 강의 내용에서 실습을 했고 그 실습내용을 그대로 복습하는 것이 효율적이다.

```python
import wx;

import app1
from sqlitedb import *
from userdb import *
data = []
users = app1.init()
for user in users:
    data.append("%s %s %d" % (user.id, user.name, user.age))

app = wx.App()
frame = wx.Frame(None, title='Shop Management')
panel1 = wx.Panel(frame)
panel2 = wx.Panel(frame)


panel1.SetBackgroundColour(colour='yellow')
panel2.SetBackgroundColour(colour='purple')

textId = wx.TextCtrl(panel1)
textId.SetHint("ID: ")
textPwd = wx.TextCtrl(panel1)
textPwd.SetHint("PWD: ")
textName = wx.TextCtrl(panel1)
textName.SetHint("NAME: ")
textage = wx.TextCtrl(panel1)
textage.SetHint("AGE: ")
bt = wx.Button(panel1, label='ADD')

userList = wx.ListBox(panel2, choices=data)
userList.SetBackgroundColour(colour='red')
userList.SetSize(wx.Size(120,150))

def itemselect(event):
    dataCnt = userList.GetSelection()
    wx.MessageBox(data[dataCnt],"User Information", wx.OK)

userList.Bind(wx.EVT_LISTBOX, itemselect)


def onClick(event):
    id = textId.GetValue()
    pwd = textPwd.GetValue()
    name = textName.GetValue()
    age = textage.GetValue()
    wx.MessageBox(id+"생성 완료", 'Alert', wx.OK)
    data.append((id+" , "+pwd+" , "+name+" , "+age))
    userList.Append(id+" "+name+age)
    app1.userInsert(User(id=id, pwd=pwd, name=name,age=int(age)))
    textId.SetValue('')
    textPwd.SetValue('')
    textName.SetValue('')
    textage.SetValue('')
    print(id)

bt.Bind(wx.EVT_BUTTON, onClick)

box1 = wx.BoxSizer(wx.VERTICAL)
box1.Add(textId)
box1.Add(textPwd)
box1.Add(textName)
box1.Add(textage)
box1.Add(bt)
panel1.SetSizer(box1)

grid = wx.GridSizer(1,2,10,10)
grid.Add(panel1,0,wx.EXPAND)
grid.Add(panel2,1,wx.EXPAND)

frame.SetSizer(grid)
frame.Show(True)
app.MainLoop()
```



