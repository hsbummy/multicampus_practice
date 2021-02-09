# CS



* 문제를 해결하는 과정(INPUT > 중간과정 > OUTPUT)

## 1강

### 2진법

* 4 = 100 , 5 = 101
* 각 자릿수가 2의 거듭제곱 - 즉 4 =100 이는 각 자리수에 2의2승 X 1 + 2의 1승 X 0 + 2의0승 X 0
* 0 과 1 ,ON/OFF...
* 정보를 저장하고 연산을 수행하기 위해 비트(bit)를 사용한다.
* 한 개의 비트만으로 여러동작을 수행할 수 없기에  수 많은 비트가 있는데 비트가 8개가 모이면 1byte(바이트)가 된다.

### 정보의 표현

* 문자나 메일을 숫자로 표현 = 약속을 한다.(ASCII) 
* 다양한 문자와 이모티콘을 표현하기 위해 사용한 아스키보다 상위개념 (UNICODE)
* 색깔을 표현하기 위해 사용한 약속 (RGB)
* 예제 CS50 = 각각을 문자로 본 다면 C=67 S=83 5=ASCII(53) 0=ASCII(48)



### 알고리즘

* 문제를 해결하는 단계적 방법
* 의사코드 = 컴퓨터가 수행할 작업을 프로그램 언어가 아닌 사람이 사용하는 언어로 알고리즘의 논리적 절차를 표현한 것
* 함수, 조건, boolean code, 루프, 변수, 스레드, 이벤트
* 예제
  * 1. 숫자를 고른다 (ex. 21)
    2. 나는 100을 절반으로 나눈 50이라는 숫자를 말한다
    3. 친구가 그 숫자보다 높은지 낮은지 말해준다.
    4. 숫자가 낮다면 1~50 을 절반으로 나눈 25를 부른다.
    5. 숫자가 높다면 50~100을 절반으로 나눈 75를 부른다.
    6. 다시 3번으로 돌아간다.
    7. 정답이 맞다면 게임을 그만둔다.



### 스크래치를 통한 알고리즘 맛보기



* scratch.mit.edu 에서 이용해보기 퍼즐로 이루어져 있어 다루기 쉬움
* 블록을 통해서 코드를 더욱 간결하게 만들 수 있다.



## 2강



### C언어

```c
#include <stdio.h>

int main(void){
    printf("hello,world");
}

clang이라는 컴파일러를 통해 소스코드를 출력
a.out 이라는 머신코드 파일이 생성된다.
    
    
#include <cs50.h>    
#include <stdio.h>
    
int main(void){
    string animal = get_string("what's your favorite animal?\n");
    printf("my favorite animal is %s\n", animal);
}
$clang -o animal animal.c -lcs50
    or
$make animal
    
    
#include <stdio.h>
#include <cs50.h>


int main(void){
for(int i = 0; i<10 ; i++)
{
    printf("funny\n");
}
}

$make for
    
#include <stdio.h>
#include <cs50.h>

int main(void)
{   
    int i = 0;
    while(i < 10)
    {
        i++;
        printf("funny\n");
    }
}

$make while

    
    
#include <cs50.h>
#include <stdio.h>

int main(void)
{
    printf("you are at least %i days old.\n", get_int("What's your age?\n") * 365);
}

#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int age = get_int("What's your age?\n");
    printf("you are at least %i days old.\n", age * 365);
}

#include <stdio.h>
#include <cs50.h>

int main(void)
{
    float price = get_float("what's the price\n");
    printf("your total is %.2f.\n", price * 1.0625);
}

#include <stdio.h>
#include <cs50.h>

int main(void)
{
    int n = get_int("n: "); //n 이라는 정수값을 사용자로부터 입력받는다.

    if (n % 2 == 0) // 2로 나눈 나머지가 0이라면 짝수
    {
        printf("even\n"); //even을 출력한다.
    }
    else //나머지가 0이 아니라면
    {
        printf("odd\n"); //odd 홀수를 출력한다.
    }
}


#include <stdio.h>

void cough(int n);

int main(void)
{
    cough(3);
}

void cough(int n)
{   
    for (int i = 0; i < n; i++)
    {
        printf("cough\n");
    }

}

#include <stdio.h>
#include <unistd.h>

int main(void)
{
    for (int i = 1; ; i *=2)
    {
        printf("%i\n", i);
        sleep(1);
    }
}

```



* 이 강의에서는 sandbox를 이용

* 소스코드를 컴파일러를 통해 머신코드로 출력
* 소스코드란 우리가 아는 프로그래밍 언어를 말한다.
* 컴파일러는 소스코드를 컴퓨터가 알아듣는 언어로 변환 시켜준다.
* *= 머신코드를 의미



* 다양한 종류의 데이터
  * bool = true or false
  * char =  한 개의 값
  * int = 정수
  * long = 정수보다 더 높은 수까지 셀 수 있다.
  * float = 실수
  * double = 소수점뒤에 더 많은 수
* 포맷팅
  * %s ,%i, %f,...



###  하드웨어의 한계



* 하드웨어에는 한계가 있다. 컴퓨터의 메모리 초과 = 오버플로우(overflow)



## 3강



### 컴파일링

* 전처리 > 컴파일 > 어셈블 > 링크
  * 전처리 : 실질적인 컴파일이 이루어지기 전에 무언가를 실행
  * 컴파일 : c 코드를 어셈블리어라는 저수준 프로그래밍 언어로 컴파일 해준다.
  * 어셈블 : 어셈블리 코드를 오브젝트 코드로 변환 , 2진수로 변환
  * 링크 : 여러 개의 파일로 이루어져 있어 하나의 오브젝트 파일로 합쳐주는 과정



### 디버깅

* 오류를 찾아내는 과정을 말한다.
* 디버깅 툴을 이용한다.



### 코드의  구조화

* 가독성이 좋게 코드를 구성해야 한다.
* 또한 정확하게 구성을 해야 한다.



### 배열

* 각 자료형은 각각의 일정한 메모리를 차지한다.
* 배열 = 값들의 리스트로 변수 여러개를 한 개의 변수에 저장할 수 있다.
* 상수 - const int N = 3 (전역 변수), 변수명은 대문자로 지정해준다(관습),.



```c
float average(int length, int array[])
{
    int sum = 0;
    for (int i =0; i< length; i++)
    {
        sum +=  array[i];
    }
    return sum / length;
}
```



* 문자열과 배열
  * string 은 문자의 수만큼 메모리를 차지한다. 그러나 문자열의 끝을 알려줘야 하므로 c 에서는 null 문자를 추가하여 글자수 +1 의 용량을 차지한다.

```c
#include <stdio.h>

int main(void)
{
    string names[4];
    names[0] = "EMMA";
    names[1] = "RODRIGO";
    names[2] = "BRIAN";
    names[3] = "DAVID";
    
    printf("%s\n", names[0]);
    printf("%c%c%c%c%i\n", names[0][0], names[0][1], names[0][2], names[0][3], names[0][4]);
}

==EMMA0
```



* 문자열의 활용



```c
#include <stdio.h>


int main(void)
{
    string s = get_string("Input : ");
    printf("output: ");
    int n = strlen(s)
    for(int i = 0;i < n;,i++)
    {
        printf("%c", s[i]);
    }
    printf("\n");
}
```



* 대문자로 변환하는 과정을 보여준 것인데 ASCII 코드에서 정수를 더하거나 빼서 문자열을 변형시킨다. 근데 아래 코드를 보면 상당히 복잡하다. 따라서 다른 함수를 불러와서 사용을한다.



```c
#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string s = get_string("Before: ");
    printf("After: ");
    for (int i = 0, n = strlen(s); i < n; i++)
    {
        if (s[i] >= 'a' && s[i] <= 'z')
        {
            printf("%c", s[i] - 32);
        }
        else
        {
            printf("%c", s[i]);
        }
    }
    printf("\n");
}
```



* 명령형 인자 = 인자의 입력을 통해 
  * argc = main 함수가 받게 될 입력의 개수
  * argv = 그 입력이 포함되어 있는 배열
  * argv[0] = 기본적으로 프로그램의 이름이 저장

```c
#include <stdio.h> =프로토타입 같은 함수를 불러온다.


int main(int argc, string argv[]) = 명령형 인자.
{
    if (argc == 2)
    {
        printf("hello, %s\n", argv[1]);
    }
    else
    {
        printf("hello, world\n");
    }
}
```



## 4강



### 검색 알고리즘

* 선형 탐색 : 차례대로 하나씩 확인하는 방식
* 이진 탐색 : 중간을 찾고 그 중간 값에서 다시 중간을 찾는 방식
* 알고리즘 표기법
  * Big-o 표기법 = O(n), O(log n) - 알고리즘을 푸는 데 걸리는 시간의 상한선
  * 오메가 (omega) = 알고리즘을 푸는 데 걸리는 시간의 최소한, 최소한의 방법\



### 선형 검색



* 하나씩 차근차근 검색하는 방법



```c
#include <stdio.h>
#include <cs50.h>

int main(void)
{
    int numbers[6] = {4, 8, 15, 16, 23, 42};
    
    for (int i = 0; i < 6; i++)
    {
        if (number[i] == 50)
        {
            printf("true\n");
        }
    }
    printf("false\n");
}


or 
    
    
int main(void)
{
    string names[4] = {"emma", "rodrigo", "brian", "david"}
    
    for (int i = 0; i < 4; i++)
    {
        if (strcmp(names[i], "emma") == 0);
        {
            printf("found");
            return 0
        }
    }
    print("not found\n");
    return 1
}


or 
    
typedef struct
{
    string name;
    string number;
}
person
    
    
int main(void)
{
	person people[4];
    
    people[0].name = "emma";
    people[0].number = "617-555-0100";
    
    people[1].name = "rodrigo";
    people[1].number = "617-555-0101";
    
    people[2].name = "brian";
    people[2].number = "617-555-0102";
    
    people[3].name = "david";
    people[3].number = "617-555-0103";
    
    for (int i = 0; i < 4; i++)
    {
        if(strcmp(people[i].name, "emma") == 0)
        {
            printf("%s\n", people[i].number)
        }
    }
    print("Not found\n");
}    

```



### 버블 정렬



* repeat n-1 times
  * for i from 0 to n-2
* 영어 말고 한글로 풀어보자면 자신의 다음사람이 자신보다 크다면 가만히 있고 적으면 자리를 바꾼다.
* Big-O = O(n^2)
* Omega = Omege(n)



### 선택 정렬



* 항목 중에서 가장 작은 항목을 찾아서 첫 번째와 위치를 바꾸고 이를 반복한다. = n(n+1)/2
* Big-O = O(n^2)
* Omega = O(n^2)



### 재귀

* 재귀 함수는 자기 자신을 호출한다.

```c
#include <stdio.h>
#include <cs50.h>

void draw(int h)

int main(void)
{
    int height = get_int("height : ");
    
    draw(height);
}

void draw(int h)
{
    for (int i = 1; i <= h; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("#\n");
        }
        printf("\n");
    }
}
```



```c
#include <stdio.h>
#include <cs50.h>

void draw(int h)

int main(void)
{
    int height = get_int("height : ");
    
    draw(height);
}

void draw(int h)
{	
    if (h == 0)
    {
        return;
    }
    draw(h-1);
    
    for (int i = 0; i < h; i++)
    {
        printf("#");
    }
    print("\n")
}
```



### 병합 정렬

* 원소가 한 개가 될 때까지 계속해서 반으로 나누다가 다시 합쳐나가며 정렬을 하는 방식

* Big-O = O(n * log n)
* Omega = Omega(n * log n)
* Theta = 상한선과 하한선이 같을 때 사용하다.

