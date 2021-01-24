# 가상환경 구축



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





![3](C:\Users\morph\Pictures\3.png)

(이 사진 같은 경우에는 수업시간에 한 내용으로 템플릿을 연결해준것이다.)

![6](C:\Users\morph\Pictures\6.png)



* views 에다가 함수를 입력해준다. 리퀘스트를 요청을 하고 html 을 받아 화면에 출력시키는 것을 해준다.
* 함수를 만들고 출력시킬 준비가 끝났으니 이제 url 을 통해서 입력을 받았을 때 보여주는 연결을 해줄 것이다.



![5](C:\Users\morph\Pictures\5.png)



* path 를 추가해서 url을 띄어주는 것이고!!! 경로를 설정해주는 것이다.



## 간단하게 이미지 추가하는 법!!!

![4](C:\Users\morph\Pictures\4.png)



* 우선 project 밑에다가 static 이라는 폴더를 추가한 후에 위 사진 처럼 경로를 설정해준다.
* 또 하나 스펠링이라던가, 오타를 유심히 보자 이것 때문에 20분 정도 날렸다.



# HTML



* HTML 기본 태그들은 이미 공부를 했으니 파일만 따로 저장해두겠다.

![image_20210122_160941](C:\Users\morph\Desktop\image_20210122_160941.png)



![image_20210122_160942](C:\Users\morph\Desktop\image_20210122_160942.png)



![image_20210122_160945](C:\Users\morph\Desktop\image_20210122_160945.png)



![image_20210122_160947](C:\Users\morph\Desktop\image_20210122_160947.png)