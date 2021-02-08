# HTML



## HTML(Hyper Text Markup Language)

* 웹 페이를 만드는 언어
* hyper text = 링크
* markup language = 정보를 구조적으로 표현
* 확장자가 html



## HTML 문법

* 태그 = 무언가를 표시하기 위한 꼬리표, 이름표

  * EX. <h1>Hello,HTML</h1>

  * h1 = 태그의 이름

  * ```html
    <h1> = 여는 태그 , 요소
        hello, world = 내용
    </h1> = 닫는 태그 , 요소
    ```

* 속성 = 태그의 동작이나 값을 조정하는 값

  * 이름과 값
  * 공백을 허용하지 않는다.
  * 따옴표(id, class)
  * 하나의 태그에 여러 개의 속성이 사용가능하다.
  * 순서는 중요하지 않다.

* 중첩 = 태그는 중첩이 가능핟.

  * ```html
    <h1>
        <i>HTML</i>
    </h1>
    ```

    

  * 엇갈린 중첩은 올바르지 않다.

* 빈 태그 = 시작 태그만 존재하고 종료 태그가 존재하지 않는 태그

  * ```html
    <br>
    <img src=""> = 외부 리소스를 삽입하는 경우
    ```

* 공백 = HTML은 한 개 이상의 공백을 무시한다.

* 주석 = 메모의 목적

  * ```html
    <!-- 내용 -->
    주석!!!
    ```

## HTML 문서 구조

* 기본 구조

```html
<!DOCTYPE html> <!--선언문 그 어떤 태그보다 제일 위에 작성되어야 한다. -->
<html lang="ko"> <!-- 어느 언어로 작성되었는지를 나타내주는 속성-->
    <head> <!-- 브라우저 화면에 표시되지 않고 태그와 외부 파일을 연결하는 역할-->
        <meta charset="utf-8"> <!--인코딩 -->
        <title>HTML</title> <!--웹 문서의 제목-->
    </head>
    <body>
        <h1>
            hello,html
        </h1>
    </body>
</html>
```



## HTML 태그

* 제목(HEADING)

```html
<h1>
    HELLO,HTML
</h1>
<h2>
    HELLO,HTML
</h2>
<h3>
    HELLO,HTML
</h3>
<h4>
    역사
</h4>
<h5>
    사회
</h5>
<h6>
    편집
</h6>
```



* 단락(PARAGRAPH)

```html
<P>
    여기는 단락을 나타내는 태그입니다.
</P>
<p>
    여기는 두 번째 단락을 나타내는 본문입니다.
</p>

<br> 단락의 줄바꿈을 생성해주는 태그
```



* 텍스트 관련 태그

```html
<b> 글자를 굵게 표현한다.</b>
<i> 글자를 이탤릭체로 표현</i>
<u> 글자에 밑줄이 그어지게 한다.</u>
<s> 글자에 중간선을 표현한다.</s>
```



* 앵커(ANCHOR)

```html
<a href="naver.com" target="_blank">네이버</a>

<!--링크를 걸어주는 태그이며 href라는 값이 필요하며 url의 값을 설정해준다.
 	blank는 새로운 html 창을 열어서 링크를 보여준다
	self는 따로 설정해 주지 않는 이상 기본설정으로 되어있다.
-->

```



* 의미없이 요소를 묶기 위한 태그

```html
<div> <!--블록레벨 태그-->
    <span>호호호</span> <!-- 인라인태그-->
</div>
```



* 리스트

```html
<ul> <!-- 순서가 없는 리스트-->
    <li>콩</li>
    <li>나</li>
    <li>물</li>
</ul>
<ol> <!-- (앞에 숫자가 나온다)순서가 있는 리스트-->
    <li>뭐</li>
    <li>한</li>
    <li>다</li>
</ol>
<dl> <!-- 용어를 설명하는 리스트-->
    <dt>증후군</dt><!-- 용어를 구분한다.-->
    <dd>설명</dd><!-- 용어를 설명한다.-->
    <dd>또 다른 설명</dd><!--여러 설명 가능-->
</dl>


<h1>
    월드컵 조 편성
</h1>
<ol>
    <li>A 조
        <ul>
            <li>러시아</li>
            <li>페루</li>
            <li>볼리비아</li>
            <li>멕시코</li>
         </ul>
    </li>
    <li>B 조</li>
    <li>C 조</li>
    <li>D 조</li>
</ol>
```



* 이미지(IMAGE)

```html
<img src="#" alt="피자">

src = 이미지 경로를 지정 (상대경로와 절대경로)
alt = 이미지의 대체 텍스트를 입력한다.(스크린리더기 - 시각장애인이나 아니면 서버에서 이미지를 못 가져왔을 때)
```



* GIF, JPG, PNG
  * GIT = 애니메이션, 투명 이미지
  * JPG = 자연스러운 색상 표현, 일반적인 그림
  * PNG = 이미지 손실이 없고 투명과 반투명 모두 지원

* 표(TABLE
  * <td>,<th> : 데이터 셀
  * <tr> : 행

```html
<table>
    <caption>표의 제목태그</caption>
    <thead> <!--제목 행을 그룹-->
        <tr>
            <th>1</th>
            <th>2</th>
            <th>3</th>
            <th>4</th>
        </tr>
    </thead>
    <tbody> <!-- 표의 내용을 그룹-->
        <tr>
            <td>1</td>
            <td>2</td>
        </tr>
    </tbody>
    <tfoot> <!-- 표의 마지막을 그룹-->
        
    </tfoot>
</table>

colspan = 셀을 가로방향으로 병합
rowspan = 셀을 세로방향으로 병합
```



* 예제

```html
<table>
    <caption>Specifiaction values</caption>
    <thead>
		<tr>
            <th rowspan="2">Grade.</th>
            <th rowspan="2">Point.</th>
            <th colspan="2">Strength</th>
            <th rowspan="2">Percent</th>
        </tr>
        <tr>
            <th>kg/mm</th>
            <th>lb/in</th>
        </tr>
    </thead>
    <tbdody>
        <tr>
            <td>Hard</td>
            <td>0.45</td>
            <td>56.2</td>
            <td>80,000</td>
            <td>20</td>
        </tr>
        <tr>
            <td>Medium</td>
            <td>0.45</td>
            <td>49.2</td>
            <td>70,000</td>
            <td>25</td>
        </tr>
        <tr>
            <td>Soft</td>
            <td>0.45</td>
            <td>42.2</td>
            <td>60,000</td>
            <td>30</td>
        </tr>
    </tbdody>
</table>



scope = 시각적 효과가 나타나지 않지만, 스크린 리더기와 같은 곳에서 셀의 종류를 명시해준다.
col = 해당 셀이 열을 위한 헤더 셀임을 명시함
colgroup = 해당 셀이 열의 그룹을 위한 헤더 셀임을 명시함.
header = 필수 사항은 아니지만 주위 구획의 제목을 감싸기 위한 요소
```





* 폼 관련 요소(FORM)
  * 서버에 데이터를 전달하기 위한 요소들

```html
<input type="#"/>
text = 텍스트 입력 , placeholder="" 양식가이드처럼 사용 가능
password = 암호를 입력받는 용도, 값이 노출되지 않는다.
radio = radio 버튼 생성, 어느 하나를 선택하면 나머지는 취소, 상호배타적인 항목 name="" 으로 성격을 지정해줘야 한다, checked = 기본값으로 체크 설정
checkbox = 체크박스 버튼 생성, 중복 선택 가능, name= "" 으로 같은 성격으로 묶어줘야 한다.
file = 파일선택
버튼 속성 
	submit = 제출
	reset = 초기화
	button = 기본 동작도 주어지지 않는 버튼, 직접 커스텀해서 기능을 추가
	세 가지 버튼에서는  value=""을 통해 이름 변경
	image = 값을 전송하는 버튼 src , alt 속성이 반드시 필요하다.

```



* SELECT 요소 (선택 목록상자, 콤보박스)

```html
<select selected=""> = checked 와 같은 기능
    <option>서울</option>
    <option>경기</option>
    <option>강원</option>
    <option>제주</option>
</select>
```



* TEXTAREA요소 (여러 줄 텍스트 입력 상자)

```html

자기소개 :<textarea>
    		cols = 글자 수 노출 , rows = 줄 수 노출
		</textarea>
```



* BUTTON요소(사용자가 클릭 가능한 버튼)

```html
<button type="submit">
    제출
</button>
```



* LABEL 요소 (폼 컨트롤과 연결 시켜주기 위함으로 웹 접근성 향상에 도움이 된다.) - 필수적



```html
<label for="userid">아이디</label> 
<input type="text" placeholder="해주세요" id="userid">

for 값을 주게되면 클릭했을 때 동작하게 된다.
```



* FIELDSET, LEGEND 요소
  * FIELDSET = 여러 개의 폼 요소를 그룹화하여 구조적으로 만들기 위해 사용
  * LEGEND = 폼 요소의 제목으로 <fieldset> 요소 내부에 작성



```html
<fieldset>
    <legend>
        필수요소
    </legend>
</fieldset>
<fieldset>
    <legend>
        부가 정보
    </legend>
</fieldset>
```



* FORM 요소 (폼 데이터를 그룹화하여 서버에 전송한다.)
  * action = 폼 데이터를 처리하기 위한 서버의 주소
  * method = 데이터를 전송하는 방식을 지정 (get, post)
    * get = 민감한 정보를 다룰 때에는 사용하지 않는다.
    * post = 반대