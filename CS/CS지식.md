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



## 5강



### 메모리

* 16진수 : 0~9, A~F 으로 16 진수를 표현한다.
  * 0x 을 앞에 붙혀줌으로써 16진수를 구분한다.



```c
#include <stdio.h>

int main(void)
{
    int i = 50;
    printf("%p\n", &n); & = 주소를 부르고, 주소를 출력하는 문법, * = 주소로 이동
}

int main(void)
{
    int i = 50;
    printf("%i\n", *&n); & = 주소를 부르고, 주소를 출력하는 문법, * = 주소로 이동
}
```



* 예제 : CS50을 16진수로 표현
  * C : 0x43
  * S : 0x53
  * 5 : 0x35
  * 0 : 0x30



* 포인터



* 변수의 주소를 저장하는 것을 말한다.

```c
#include <stdio.h>

int main(void)
{
    int i = 50;
    int *p = &n; = int의 주소를 알려준다
    printf("%p\n", p);
}
```



* 문자열
  * 문자열의 char의 첫 번째 주소를 알려주는 것이다. 즉 

```c
string s = "EMMA" 라고 한다면
    
    왜 그러냐 하면 사실 문자열이라는 것은 없다. 그저 포인터(S)가
    "E"의 주소를 저장하고 있고 이를 순환하고 NULL 종단문자가 있는 곳에서 멈춘다.
    
char *s = "EMMA" 인것이다.
    
    
#include <stdio.h>
    
int main(void)
{
    char *s = "EMMA";
    printf("%s\n", s);
    printf("%p\n", s);
    printf("%p\n", &[0])
}


int main(void)
{
    char *s = "EMMA";
    printf("%c\n", *s); = "E"
    printf("%c\n", *(s+1)); = "M"
    printf("%c\n", *(s+2)); = "M"
    printf("%c\n", *(s+3)); = "A"
}
```



* 문자열의 비교



```c
#include <stdio.h>


int main(void)
{
    char *s = get_string("s: ");
    char *t = get_string("t: ");
    
    printf("%p\n", s);
    printf("%p\n", t);
}
```



* 문자열 복사



```c
#include <stdio.h>
#include <string.h>

int main(void)
{
    char *s = get_string("s: ");
    char *t = s;
    
	t[0] = toupper(t[0]);
    
    printf("%s\n", s);
    printf("%s\n", t);
}

int main(void)
{
    char *s = get_string("s: ");
    
    char *t = malloc(strlen(s)+1);
    
    for (int i=0, n = strlen(S); i <= n; i++)
    {
        t[i] = s[i]
    }
    
    t[0] = toupper(t[0]);
    
    printf("%s\n", s);
    printf("%s\n", t);
}

int main(void)
{
    char *s = get_string("s: ");
    
    char *t = malloc(strlen(s)+1); = 메모리를 할당하는 함수
    
 	strcpy(t, s);
    
    t[0] = toupper(t[0]);
    
    printf("%s\n", s);
    printf("%s\n", t);
}
```



* 메모리 누수 = malloc 같은 함수를 계속 사용하다보면 메모리가 누적되고 그렇게 되면 메모리가 가득 차게 된다.
  * free 라는 함수를 통해서 변수를 초기화 시켜준다. 메모리를 초기화 시켜준다.
  * 10개의 메모리에서 11개의 자리에다가 값을 저장하면 버퍼 오버플로우가 발생한다.
* 메모리 교환



```c
void swap(int a, int b)
{
    int tmp = a;
    a = b;
    b = tmp;
} >>> 동작 x
    
#include <stdio.h>

int main(void)
    
```



* 힙 : 메모리를 할당 받을 수 있는 영역 - 힙 오버플로우
* 스택 : 함수가 호출될 때 지역 변수가 쌓이는 곳 - 스택 오버플로우



```c
#include <stdio.h>

int main(void)
{
    int x;
    printf("x: ");
    scanf("%i", &x);
    printf("x : %i\n", x)
}
```



```c
#include <stdio.h>

int main(void)
{
	char s[5];
    printf("s: ");
    scanf("%s", s);
    printf("s: %s\n", s)
}
```



```c
#include <stdio.h>
#include <cs50.h>

int main(void)
{
	FILE *file = fopen("phonebook.csv", "a");
    
    char *name = get_string("Name: ");
    char *number= get_string("Number: ");
    
    fprintf(file, "%s,%s\n", name, number);
}
```



```c
#include <stdio.h>

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        return 1;
    }
    
    FILE *file = fopen(argv[1], "r");
    if (file == NULL)
    {
        return 1;
    }
    
    unsigned char bytes[3];
    fread(bytes, 3, 1, file);
    
    if (bytes[0] == 0xff &&  bytes[1] == 0xd8 && bytes[2] == 0xff)
    {
        printf("Maybe\n");
    }
    else
    {
        printf("No\n");
    }
}
```



## 6강



### 자료구조

* insert = O(n) , search = O(log n)



```c
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int list[3];

    list[0] = 1;
    list[1] = 2;
    list[2] = 3;

    for (int i = 0; i < 3 ; i++)
    {
        printf("%i\n", list[i]);
    }
}
= 동적인 코드가 아니다
    
int main(void)
{
    int *list = malloc(3 * sizeof(int));
    if (list == NULL)
    {
        return 1;
    }

    list[0] = 1;
    list[1] = 2;
    list[2] = 3;
    
    int *tmp = realloc(4 * size(int));
    if (tmp == NULL)
    {
        return 1;
    }
	
    list = tmp;
    
    tmp[3] = 4;
    


    for (int i = 0; i < 4 ; i++)
    {
        printf("%i\n", list[i]);
    }
} = 더 쉬운 코드로 짜보자

realloc 을 이용한다.
```



### 연결 리스트



* search, insert  = O(n)

```c
typedef struct node
{
    int number;
    struct node *next
    
}
node;

=노드란 메모리의 영역을 직사각형으로 이루어진 뭐 그런것들
    
```



* 연결리스트란 흩어져 있는 메모리에다가 바로 다음에  추가 메모리를 설정해 주고 포인터를 지정해줌으로써 다른 데이터와 연결을 해준다.
  * 따라서 새로운 자료를 추가할 때 상당히 간편하다.



```c
node *list = NULL;

node *n = malloc(sizeof(node));
(*n).number = 2;
	= n -> number = 2;

if (n != NULL)
{
    n -> number = 2;
    n -> next
}
node *tmp = list;
while (tmp -> next != NULL)
{
    tmp = tmp
}
// 이것은 뭔가 잘못된 코드인데 즉 메모리 누수가 나는 코드이다.//


```



* 트리
  * 이진 탐색 트리 = 왼쪽이 더 작고 오른쪽이 더 크다.  O(n), Omega(1)



### 해시 테이블

* 배열과 연결 리스트를 조합한 것 =  O(1), O(n)



### 트라이

* 어떤 자원 절약하기 위해 다른 자원을 소비하는 패턴 = O(1),  많은 양의 메모리를 사용한다.



### 그 외 자료구조

* 큐 = 줄 서기, 선입 선출의 특징을 가진 자료 구조 = 엔큐, 디큐 - 엔큐는 들어가는 것, 디큐는 나오는 것
* 스택 = 후입선출의 방식 = 푸시와 팝
* 딕셔너리 = 해시 테이블과 거의 같은 구조의 자료구조



# 운영체제



## 1강 



### 운영체제

* 컴퓨터 하드웨어 바로 위에 설치되어 사용자 및 다른 모든 소프트웨어와 하드웨어를 연결하는 소프트웨어 계층
  *  컴퓨터 시스템을 편리하게 사용할 수 있는 환경을 제공
    * 컴퓨터 시스템의 자원을 효율적으로 관리
      * 프로세서, 기억장치, 입출력 장치 등의 효율적 관리
        * 사용자간의 형평성 있는 자원 분배
        * 주어진 자원으로 최대한의 성능을 내도록
      * 사용자 및 운영체제 자신의 보호
      * 프로세스, 파일, 메시지 등을 관리
    * 운영체제는 동시 사용자/프로그램들이 각각 독자적 컴퓨터에서 수행되는 것 같은 환상을 제공
    * 하드웨어를 직접 다루는 복잡한 부분을 운영체제가 대행



* 협의의 운영체제(커널)
  * 운영체제의 핵심 부분으로 메모리에 상주하는 부분
* 광의의 운영체제
  * 커널 뿐 아니라 각종 주변 시스템 유틸리티를 포함한 개념



### 운영체제의 분류

#### 동시작업 가능 여부

* 단일 작업
  * 한 번에 하나의 작업만 처리
* 다중 작업
  * 동시에 두 개 이상의 작업 처리

#### 사용자의 수

* 단일 사용자
* 다중 사용자

#### 처리방식

* 일괄 처리
  * 작업 요청의 일정량을 모아서 한꺼번에 처리
  * 작업이 완전 종료될 때까지 기다려야 함
* 시분할 처리
  * 여러 작업을 수행할 때 컴퓨터 처리 능력을 일정한 시간 단위로 분할하여 사용
  * 일괄 처리 시스템이 비해 짧은 응답 시간을 가짐
  * interactive 한 방식
  * 현재 우리가 사용하는 방식
* 실시간
  * 정해진 시간 안에 어떠한 일이 반드시 종료됨이 보장되어야 하는 실시간 시스템을 위한 OS
  * 미사일 제어, 반도체 장비, 로보트 제어
    * 경성 실시간 시스템
    * 연성 실시간 시스템 



### 용어

* multitasking - 여러 작업을 동시에 수행하는 것
* multiprogramming - 여러 프로그램이 메모리에 올라가 있음을 강조
* time sharing -  cpu의 시간을 분할하여 나누어 쓴다는 의미
* multiprocessor - 하나의 컴퓨터에 cpu 가 여러 개 붙어 있음을 의미



### 운영체제의 예

#### UNIX

* 코드의 대부분을 c언어로 작성
* 높은 이식성
* 최소한의 커널 구조
* 복잡한 시스템에 맞게 확장 용이
* 소스 코드 공개
* 프로그램 개발에 용이
* 다양한 버전
* linux



#### MS-DOS, WINDOWS

* MS사의 다중 작업용 GUI 기반 운영 체제
* Plug and Play, 네트워크 환경 강화
* DOS용 응용 프로그램과 호환성 제공
* 풍부한 지원 소프트웨어



### 운영체제의 구조

* CPU 스케줄링 -  메모리 관리 - 파일 관리 - 입출력 관리 - 프로세스 관리



## 2강



### System structure

* CPU - Memory - I/O device
  * interrupt, timer, os
  * os 와 cpu 의 관계 
  * interrupt 를 거는 이유
  * timer 가 있는 이유
* mode bit
  * 1 사용자 모드 : 사용자 프로그램 수행
  * 0 모니터 모드 : OS 코드 수행
* timer
  * 정해진 시간이 흐른 뒤 운영체제에게 제어권이 넘어가도록 인터럽트를 발생시킴
* device controller
  * 해당 I/O 장치유형을 관리하는 일종의 작은 CPU > hardware
* device driver
  * OS코드 중 각 장치별 처리루틴 > software
* DMA controller
  * 직접 메모리를 접근할 수 있는 컨트롤러
* 인터럽트(interrupt)
  * 하드웨어 인터럽트 : 하드웨어가 일으킨 인터럽트
* 인터럽트 벡터
  * 해당 인터럽트의 처리 루틴 주소를 가지고 있음
* 인터럽트 처리 루틴
  * 