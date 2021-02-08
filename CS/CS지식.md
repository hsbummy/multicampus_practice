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