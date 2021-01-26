# 가상환경 구축

* 가상환경을 구축하는 이유
  * 여러 패키지를 사용하다 보면, 패키지의 버전차이, 또는 각종 이유로 충돌이 발생하게 된다. 따라서 최소한의 기능을 가진 깨끗한 공간이 필요하기에 가상환경을 구축한다.

* 가상환경을 구축하기 위해서는 우선 내 기준으로 설명하자면 다른 번잡스러운 것들을 없애기 위해서 바탕화면을 기준으로 시작한다
* python 터미널에서 python -m venv 폴더이름을 생성
* 폴더이름을 project라고 가정 후
* project 폴더로 이동 : cd project
* Scripts 폴더로 이동 : cd Scripts
* activate 명령어를 통해 가상환경 실행
* pip install django 를 통해 장고 설치
* 가상환경 구축 완료



#  장고를 시작해보자



* 프로젝트를 만들어보자 : django-admin startproject myproject(project 이름)
* 여기서 잠깐 - 서버를 실행시킬때에는 myproject 에서 실행시킨다.
* 앱을 생성하자 - 앱을 생성하기 전에 myproject로 이동 : cd myproject
* python manage.py startapp (앱 이름) 으로 앱 생성
* 자 여기까지는 쉽다.
* 이제 연결작업을 해보자



![1](C:\Users\morph\Pictures\1.png)





![2](C:\Users\morph\Pictures\2.png)



* settings.py 에서 INSTALLED_APPS 에서 내가 만든 앱을 확인시켜준다. 등록을 해준다. 연결을 해준다



![7](C:\Users\morph\Pictures\7.png)



* user폴더는 안보인다고 생각을 하고 html 파일 만들기 위해 templates 라는 폴더를 만들어주고 그 안에 html 파일을 생성한다.
* templates 폴더는 우선 앱 밑에 생성한다.





![3](C:\Users\morph\Pictures\3.png)

(이 사진 같은 경우에는 수업시간에 한 내용으로 템플릿을 연결해준것이다.)

![6](C:\Users\morph\Pictures\6.png)



* views 에다가 함수를 입력해준다. 리퀘스트를 요청을 하고 html 을 받아 화면에 출력시키는 것을 해준다.
* 함수를 만들고 출력시킬 준비가 끝났으니 이제 url 을 통해서 입력을 받았을 때 보여주는 연결을 해줄 것이다.



![5](C:\Users\morph\Pictures\5.png)



* path 를 추가해서 url을 띄어주는 것이고!!! 경로를 설정해주는 것이다.
* 정리를 해보자면 , 해당 url로 접근 시, views.py 에 있는 함수를 실행시키고, 그 함수가 html 파일을 화면에 보여주는 것이다.



## 간단하게 이미지 추가하는 법!!!

![4](C:\Users\morph\Pictures\4.png)



* 우선 project 밑에다가 static 이라는 폴더를 추가한 후에 위 사진 처럼 경로를 설정해준다.
* 또 하나 스펠링이라던가, 오타를 유심히 보자 이것 때문에 20분 정도 날렸다.





![8](C:\Users\morph\Pictures\8.png)



* 이미지를 추가했다면, 그 이미지를 html로 불러와야 한다.

```html
/* django 문법과 html 문법 */
{% load static %}

<img src="{% static '폴더경로/사진이름.확장자' %}"
```



## 앱을 여러 개 구동 시키기



* 이 부분은 우선 넘어가자





## 글자 수 세는 프로그램 만들어보기



```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h1>글자 수 세는 프로그램</h1>
    <a href="">ABOUT</a>
    <form>
        <textarea name="fulltext" cols="40" rows="10"></textarea>
        <br>
        <input type="submit" value="제출하기">
    </form>
</body>
</html>
```



* 위 html에 대한 설명
  * ABOUT 이라는 것에 링크를 걸어둔 것이고
  * form 은 사용자로부터 텍스트를 입력 받는 것이다.
  * input type 을 보면 submit 은 그 즉시 제출하는 것이기 때문에 따로 이름을 설정 안해준 것이고 제출하기를 누르면 바로 서버로 간다.
* ![](C:\Users\morph\Pictures\django1.png)

![django5](C:\Users\morph\Pictures\django5.png)

![django2](C:\Users\morph\Pictures\django2.png)![django4](C:\Users\morph\Pictures\django4.png)![django3](C:\Users\morph\Pictures\django3.png)



* 맨 위에서부터 설명을 하자면 우선 urls에 경로 설정을 해준다.  about 페이지와 result 페이지를 만들기 때문에 두 가지 경로 설정을 해준것이다.
* 경로를 설정했으니 경로에서 불러올 함수를 생성을 해주는 데 full 이라는 것은 fulltext라는 이름을 가진 것에서 get 가져온다. 그리고 return 값을 줄 때 딕셔너리 형태로 저장된 값을 리턴을 해주는 것을 볼 수 있다.
* html 파일을 보면 한 가지 특징이 있는데 {{}} 이것으로 감싸진 녀석들을 볼 수가 있다. 이는 템플릿 언어라고도 하며 장고에서 쓰이는 언어다.
* 템플릿 언어는 다음 장에서 알아보도록 하자.



## 템플릿 언어



* 장고에서 제공해주는 언어

  * 변수 : {{변수}} , 와 같은 형태로 표현이 된다.  또한 .(콤마) 를 통해서 변수의 속성으로 접근 할 수도 있다.

  * 필터 : | (파이프) 를 통해서 적용할 수 있는데, 대표적으로 {{변수 | length}}

  * 태그 : {% tag %} 

  * 반복문

    * {% for blog in blog_list %}

        {{blog. title}}

      {% endfor %}

    * {% if blog_list %}

      ​     {{blot_list | length}}

      {% else %}

  * 상속과 블록 : {% extends base.html %} 베이스를 상속받는다. html  이 길어질 때 사용하면 굉장히 효율적이다.

    * 블록 {% block %}, {% endblock %}



## model 과 admin



* model : 원하는 데이터 등록, class를 이용





![django6](C:\Users\morph\Pictures\django6.png)



* 블로그 class 정의 (클래스를 정의할때 첫 문자는 대문자)
* 모델의 필드를 받아온다.

![django7](C:\Users\morph\Pictures\django7.png)



* model을 데이터베이스와 연동한다.
  * 연동하기 위해서는 명령어를 terminal 에서 등록시켜줘야한다
  * python manage.py makemigrations
  * python manage.py migrate



* admin 계정 생성하기
* python manage.py createsuperuser

![django8](C:\Users\morph\Pictures\django8.png)

* name 을 입력
* email 입력
* password 계속 빈칸으로 유지가 되니 유의하여 비밀번호 입력
  * 생성 후 서버 구동 시키고 /admin 계정으로 이동

* admin page 에서 블로그를 작성하기 위해서는 admin.py 에 블로그를 등록시킨다.

![django9](C:\Users\morph\Pictures\django9.png)



* 블로그에서 글을 작성하게 되면 제목이 보이지 않고 object로 나오게 되는데 이를 제목으로 확인하기 위해서는 



![django10](C:\Users\morph\Pictures\django10.png)



* str 함수를 이용해서 제목을 보이게 한다.