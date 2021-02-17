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



## 컨텐츠 모델



* 컨텐츠 모델 : 가지고 있는 성격에 따라 요소를 구분 시켜놓은 것
  * METADATA : 콘텐츠의 스타일, 스크립트를 설정 하거나 다른 문서와의 관계 등의 정보를 포함하는 요소 (주로 head 태그)
  * FLOW : 문서에 사용되는 대부분의 요소 (태그의 대부분)
  * SECTIONING : 헤딩과 푸터의 범위를 결정 하는 요소
  * HEADING : 섹션의 헤더를 정의하는 요소
  * PHRASING : 문서의 텍스트이며 문단 내부 레벨로 마크업 하는 요소
  * EMBEDDED : 이미지, 비디오, 플래시 등 외부 콘텐츠를 문서내에 표시하는 요소
  * INTERACTIVE : 사용자와 상호작용을 하는 요소
* 시멘틱 : 의미론적인 마크업? = 기계가 잘 이해할 수 있는 코드
  * 의미에 맞는 요소를 사용
  * 문서의 구조화
  * 인간과 기계가 모두 이해할 수 있는 것이 목표
* BLOCK & INLINE LEVEL
  * BLOCK : 한 줄에 하나의 요소 표시
  * INLINE : 한 줄에 여러개의 요소 표시
  * 인라인 레벨 요소는 블록 레벨요소를 품을 수 없다.



# CSS

* CASCADING STYLE SHEETS = HTML 을 꾸며주는 언어
* CSS는 HTML을 보기 좋게 디자인 하는 역할



## CSS 문법

* 선택자 
* 속성 
* 값
* 선언
* 선언부
* 규칙
* 주석 = /* 주석 */



## CSS 적용방식

* INLINE

```css
<p style="color: gray;"></p>
```



* INTERNAL

```css
<style>
	p{
    	color:gray;
	}
</style>
```



* External

```css
<link rel="stylesheet" href="css의경로">
```



## 선택자



* 요소 선택자 : 선택자의 부분에 태그가 들어간다. 그룹화가 가능 (* = 전체 선택자, 사용 지양)

* class 선택자 : class 라는 속성을 부여해 선택자를 지정한다. "."를 앞에 찍어주고 클래스명을 적어준다. 다중 클래스 지정이 가능하다.
* id 선택자 : id 속성을 선택자로 지정한다. 앞 "#"을 붙여주고 사용한다.
  * 둘의 차이점 : id 는 문서내에 유일하게 사용이 되어야 한다.

```html
<style>
    .html{
        color: purple:
    }
    .css{
        text-decoration: underline;
    }
    #face{
        color:gray;
    }
</style>
<dl>
    <dt class="html">HTML</dt>
    <dd><span class="html">html</span></dd>
    <dt class="css">css</dt>
    <dd><span class="css">css</span></dd>
    <dt class "html css">js<dt>
    <dd id="face">니얼</dd>
</dl>
```



* 선택자의 조합
  * 요소와 클래스의 조합
  * 다중 클래스
  * 아이디와 클래스의 조합

```html
<style>
    .html{
        color: purple:
    }
    .css{
        text-decoration: underline;
    }
    #face{
        color:gray;
    }
    .html.css{
        border: 1px solid;
    }
</style>
<dl>
    <dt class="html">HTML</dt>
    <dd><span class="html">html</span></dd>
    <dt class="css">css</dt>
    <dd><span class="css">css</span></dd>
    <dt class "html css">js<dt>
    <dd id="face">니얼</dd>
</dl>
```



* 속성 선택자
  * 단순 속성으로 선택 = p[class] 이런식으로도 사용이 가능하다. 처음 알았다.
  * 정확한 속성값으로 선택 = p[class="클래스명"]
  * 부분 속성값으로 선택
    * [class~="클래스명"] - class 속성의 값이 공백으로 구분한 "클래스명" 단어가 포함되는 요소 선택
    * [class^="클래스명"] - class 속성의 값이 "클래스명" 로 시작하는 요소 선택
    * [class$="클래스명"] - class 속성의 값이 "클래스명" 로 끝나는 요소 선택
    * [class*="클래스명"] - class 속성의 값이 "클래스명" 문자가 포함되는 요소 선택



* 문서 구조 관련 선택자
  * 부모와 자식 관계 이해하기 , 조상과 자손 요소, 형제 요소
* 문서 구조를 이용한 선택자
  * 자손 선택자 = div span { color:red; }
  * 자식 선택자 = div > span { color:red; } 
  * 인접 형제 선택자 = div + span { color:red; }

* 가상 선택자 = 문서에 존재하지 않는 요소에 성격을 부여
  * 가상 클래스 - 미리 정의해놓은 상황에 적용이 되도록 약속되어있는 보이지 않는 클래스 = :pseudo-class{ property: value; }
    * 문서 구조와 관련된 가상 클래스
      * :first-child : 첫 번째 자식 요소 선택
      * :last-child : 마지막 자식 요소 선택
    * 링크 관련된 가상 클래스
      * :link : 하이퍼링크이면서 아직 방문하지 않은 앵커
      * :visited : 이미 방문한 하이퍼링크를 앵커
    * 사용자 동작 관련 클래스
      * :focus : 현재 입력 포커스를 갖고 있는 요소에 적용
      * :hover : 마우스 포인터가 위치해 있는 요소에 적용
      * :active : 사용자 입력에 의해 활성화된 요소에 적용
  * 가상 요소 - 미리 정의해놓은 위치에 삽입이 되도록 약속되어있는 보이지 않는 요소
    * :before : 가장 앞에 요소를 삽입
    * :after : 가장 뒤에 요소를 삽입
    * :first-line : 요소의 첫 번째 줄에 있는 텍스트
    * :first-letter : 블록 레벨 요소의 첫 번째 문자



## 구체성

* 선택자를 얼마나 명시적으로 선언했느냐를 수치화 한 것
  1. id 0,1,0,0
  2. class, 기타속성, 가상 클래스0,0,1,0
  3. 선택자에 있는 모든 요소, 가상 요소 0,0,0,1
  4. 전체 선택자는 0,0,0,0 
  5. 인라인 스타일 : 1,0,0,0
  6. !important = 모든 구체성을 무시하고 우선권을 갖는다.



## 상속

* 박스 모델 속성들은 상속되지 않는다.
* 상속된 값의 구체성은 아무런 값을 갖지 못한다.



## 캐스케이딩

* 중요도 & 출처
  * 기본적으로 !important로 선언된 모든 규칙은 그렇지 않은 규칙보다 우선한다.
  * 출처는 제작자, 사용자, 사용자 에이전트로 구분한다.
    * 우선 순위
      1. 사용자 !important 스타일
      2. 제작자 !important 스타일
      3. 제작자 스타일
      4. 사용자 스타일
      5. 사용자 에이전트 스타일
* 구체성
* 선언 순서 - 나중에 선언한 스타일이 우선한다.



## 단위

* 절대길이
  * px - pixel
  * pt - points
* 상대길이
  * % - percentage
  * em - font size of the element
  * rem - font size of the root element
  * vw



## 색상

* COLOR
  * 색상명으로 선언
  * 16진수 법으로 선언 (RGB = #00 00 00 ), EX. #ff0000
  * RGB 값으로 선언 - 0 에 가까울수록 검정색이다.
  * RGBA 값으로 선언 A=는 알파값으로 투명도를 설정 (0~1 사이로 설정)



## 배경

* BACKGROUND
  * background-color: 배경색상
  * background-image: url(경로)
  * background-repeat: repeat-x, repeat-y, no-repeat
  * background-position : left top, left bottom~~~~왼쪽이 x축, 오른쪽 값이 y축
  * background-attachment : 뒤에 배경이 고정적으로 나오게 할 것인지, 플렉스하게 움직이게 할 것인지
  * 여러개를 동시에 선언 가능



## 박스 모델

* box model
  * content = 요소
  * padding = 컨텐츠의 보더 사이의 영역 (안쪽 여백)
  * border = 테두리
  * margin = 바깥의 영역
* border
  * border-width = 두께
  * border-style = 스타일
  * border-color = 테두리 색상
  * 이것도 한번에 설정 가능
* padding
  * 안쪽 여백
  * top , right, bottom, left 순으로 설정 가능
* margin
  * 바깥 여백
  * auto 선언 가능, 정렬을 할 때 많이 사용이 된다. + width 값을 기준으로 하기 때문에 width는 필수다.
  * margin collaps :margin 값이 충돌할때는 큰 값을 사용한다.
* margin, padding



|         | +    | -    | auto | 단위    |
| ------- | ---- | ---- | ---- | ------- |
| margin  | o    | o    | o    | px ,  % |
| padding | o    | x    | x    | px , %  |



* width = 요소의 가로값을 결정
  * auto = 기본값
  * % 
  * px
  * 자식요소는 부모의 값에 영향을 받는다.
* height = 요소의 높이값을 결정
  * auto = 기본값
  * px
  * % 
* width, height = padding, margin을 포함한 값으로 계산하기 때문에 박스를 잘 계산해야 한다.





## 폰트

* 소문자 x 를 기준으로 밑에는 디센더, 위에는 어센더라고 한다.



* 폰트 패밀리
  * font-family : 지정순서로 폰트의 우선순위 결정
  * generic-family : family-name 으로 지정한 폰트가 사용자의 컴퓨터에 없을 시 적절한 폰트를 선택할 수 있도록 함, sans-serif;
* LINE-HEIGHT = 줄 간격
  * 숫자만 입력 가능하다. 폰트 사이즈와 상대적으로 반응한다. px로 했을 때는 고정값으로 들어간다.
  * 2; , 20px; , 20%; , normal

* FONT-SIZE : 글꼴 크기
  * 기본 값 미지정 시 글꼴의 기본크기는 16px
* FONT-WEIGHT : 글꼴 굵기
  * bolder, lighter = 부모의 값을 상속받기 때문에 지양하는 편이다.
* FONT-STYLE : 글꼴 스타일 지정
  * normal, italic, oblique
* FONT-VARIANT : 소문자를 작은 대문자 형태로 표현 - small-caps
* FONT : 실무에서는 지양했지만, 글꼴 속성의 축약형
* 웹 폰트 - 시스템 폰트, 이미지 폰트, 웹 폰트
  * 사용자의 로컬환경에 글꼴을 다운로드 받아 적용
* VERTICAL-ALIGN : 수직 정렬
* TEXT-ALIGN : 수평 정렬 - 블록 요소안에 인라인 레벨요소에 적용
* TEXT-INDENT : 텍스트 들여쓰기
* TEXT-DECORATION : 텍스트 장식
* 단어 관련 속성
  * white-space : 공백 관련 속성 -nowrap
  * letter-spacing : 자간
  * word-spacing : 단어 간 간격
  * word-break : 단어를 어디서 자를지에 대한 속성
  * word-wrap : 영역 바깥으로 나갈것을 어떻게 조정할지, 안으로 넣을지에 대한 속성



## 레이아웃

* display : 요소의 렌더링 박스 유형을 결정 - inline, block, inline-block = 배치는 inline 처럼 된다, none ...

| display      | width | height | margin | padding | border |
| ------------ | ----- | ------ | ------ | ------- | ------ |
| block        | o     | o      | o      | o       | o      |
| inline       | x     | x      | 좌/우  | 좌/우   | 좌/우  |
| inline-block | o     | o      | o      | o       | o      |



* visibility = 요소를 어떻게 숨길 것인지 결저
  * visible = 기본
  * hidden = 숨김 , 해당 element의 영역을 유지
  * collapse = 테이블 태그에서만 적용 (익스플로러, 파폭에서만 적용)

* float =요소를 보통의 흐름에서 벗어나게 함, 주변 텍스트나 인라인요소가 주위를 감싸는 특징이 있음, 대부분의 요소에 display 값을 block 으로 변경함
  * none = 기본값
  * left 
  * right 

* clear = floating 된 요소의 영향에서 벗어나 다음 행으로 이동 , block-level 요소만 적용가능
* position = 요소의 위치를 원하는 곳으로 이동 시킬 때 사용
  * top, right , bottom, left = offset 값
  * static = 기본 값 , 좌표설정 안됨
  * relative = 관계적인 값
  * absolute = 절대적인 위치로 갖는다. 블록 요소가 된다. 부모 요소를 기준으로 한다.
  * fixed = 고정위치 , 브라우저의 좌표값을 기준으로 고정되어있다. 부모요소를 무시한다.

* z- index = 박스가 겹치는 순서를 지정, position 값이 static이 아닌 경우 지정 가능, 순서값이 없을 경우 생성순서에 따라 쌓임, 부모가 z-index 값이 있을 경우 부모안에서만 의미있음, 큰 값이 가장 위쪽, 음수 사용 가능
  * auto : 기본값 
  * 나머지는 숫자로 지정



# 미디어 쿼리



## 미디어 쿼리

* 각 미디어 매체에 따라 다른 스타일 시트를 적용할 수 있게 만드는 것



## 미디어 쿼리 구문

* @media(media queries){...} = 쿼리문 참이냐, 거짓이냐
  * 미디어 타입 = 미디어 매체 - all, print, screen
  * 미디어 특성 = 미디어 타입을 더 세분화 한 것 - width, orientation

```html
표현식

S* = 공백 표시
[] = 있을 수도 OR 없을 수도
| = A OR B
? : 0 OR 1
* : 0 OR 1 OR N


media_query_list
	: S* [media_quert [',' S* media query] *]?
media_query
	: [ONLY | NOT]? S* media_type S* [AND S* expression]*
	| expression [AND S* expression] *
expression
	: '(' S* media_feature S* [':' S* expr]? ')' S*

1. 여러 개의 미디어 쿼리로 이루어진 리스트로 작성할 수 있다.
2. 미디어 타입 또는 표현식 단독으로도 작성할 수 있다.
3. 표현식은 값이 없이 특성 이름만으로 작성할 수 있다.
```





* @media screen{...}
  * 미디어 타입이 screen 이면 적용
* @media screen and (min-width:768 px){...}
  * width = 길이
  * orientation = 세로 : portrait, 가로: landscape
  * 미디어 타입 screen 이고 width 가 768px 이상이면 적요
* @media(min-widht: 768px) and (max-width: 1024px){...}
  * and는 연결된 모든 표현식이 참이어야 적용
* @media(color-index)
  * 미디어 장치가 color-index를 지원하면 적용
* @media screen and (min-width: 768px), screen and(orientation:portrait),..
  * 쉼표로 연결된 미디어 쿼리 중 하나라도 참이면 적용
* @media not screen and (min-width:768px)
  * not 키워드는 하나의 media_query 전체를 부정



* 선언 방법
  * 1. @media
    2. <link media="">
    3. @import

## 실습

```html
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <title>Media Queries</title>
        <style>
            /* 백그라운드 컬러 변경 */
            /*@media screen and (max-width: 767px) {
                body { background-color: goldenrod;}
            }
            @media screen and (min-width: 768px) and (max-width: 1024px) {
                body { background-color: lightblue;}
            }
            @media screen and (min-width: 1025px) {
                body { background-color: lightcoral;}
            }*/
            body{
                background-color: gold;
            }
            @media screen and (min-width: 768px) and (max-width: 1024px) {
                body {background-color: lightblue;}
            }
            /* 페이지 인쇄하는 경우의 스타일 추가*/
            @media print{
                a { text-decoration: none;}
                a::after{
                    display: inline;
                    content: "("attr(href)")";
                }
            }
        </style>
    </head>
    <body>
        <p>
            w3c는<a href="https://www.w3.org/TR/css3-mediaqueries">CSS3 미디어쿼리 문서</a>를 제정하였다.
        </p>
        <P>
            또한 어쩌구저쩌구
            <a href="https://www.w3.org/TR/css3-mediaqueries">레벨4</a>권고안
        </P>
    </body>
</html>
```





# JS (javascript)



## js란?



* 사용자와 상호작용하면서 동적으로 움직이게 하는 프로그래밍 언어

* <body>
      <script> 태그를 이용해서 js를 사용한다.
  		
      </script>
  

</body>

* 이벤트 핸들러

```html
<input type="button" value="hi" onclick="alert('hi')">
<input type="text" onchange="alert('changed')">
<input type="button" onkeydown="alert('key down!')">
<input type="button" value="warning" onmouseover="alert('warning')">
```



* console (콘솔)
  * 개발자 도구를 이용해서 javascript 를 실행할 수 있다.

```javascript
alert('kljwlkjflk'.length)
```



## 데이터 타입

* 문자열
  * " ", ' ' 로 끝낸다
* 숫자 - 사칙연산이 가능하다.
  * +, -, *, / - 산술 연산자
  * 이항 연산자
  *  =  - 대입 연산자



## 변수



* 변수와 상수
* 정보의 수정이 편리하다.



## 웹 브라우저 제어



* css 를 통해 스타일 속성을 줄 수 있으며, 또한 javascript를 이용해서도 줄 수 있다.



```html
<input type="button" value="night" onclick="document.querySelector('body').style.backgroundColor='black';"
```



## program, programming, programmer

* 시간의 순서에 따라 프로그램을 진행시키는 것, 즉 순서가 있어야 프로그램 언어라고 할 수 있다.
* HTML은 프로그램 언어가 아닌데, 왜냐하면 순서가 없기 때문이다.



## 조건문

* 조건에 따라 프로그램을 다르게 실행시키는 것

```html
<script>
	document.write(1===1); boolean 표현
</script>

<script>
	<, > 
</script>


비교연산자
```



* html 에서 < , >  을 표현할 때 쓰는 방법
  * < - &lt, > - &gt



```html
<script>
	document.write("1<br>");
    if(false){
       document.write("2<br>");
       }else{
           document.write("3<br>");
       }
</script>

<script>
	document.write("1<br>");
    if(true){
       document.write("2<br>");
       }else{
           document.write("3<br>");
       }
</script>
```



```html
<input id="night_day" type="button" value="night">
if(document.querySelector('#night_day').value==='night'){
	document.querySelector('body').style.backgroundColor='black';
	document.querySelector('body').style.color='white';
	document.querySelector('#night_day').value='day';
}
else{
	document.querySelector('body').style.backgroundColor='white';
	document.querySelector('body').style.color='black';
	document.querySelector('#night_day').value='night';
}
```



## 리팩토링

* 코딩의 비효율성을 개선하는 과정, 중복제거, 가독성 올리기



```html
<input id="night_day2" type="button" value="night" onclick="
if(this.value==='night'){
	var target= document.querySelector('body')	
                                                             			                     target.style.backgroundColor='black';
	target.style.color='white';
	this.value='day';
}
else{
	target.style.backgroundColor='white';
	target.style.color='black';
	this.value='night';
}
">


```



* this 를 통해 코드를 간결하게 만들기.
* 변수를 설정하기



## 반복문



### 배열

```html
<script>
	var name = ["han","sang","beom"];
    document.write(name[0]);
    document.write(name[1]);
    document.write(name[2]);
    document.write(name.length); - 갯수
    name.push("jjang"); -추가
    name.splice(0, 1); - 삭제 (0번째 인덱스에서 1개 아이템 삭제)
    name.splice(0, 1, "moon") - (0번째 인덱스에서 1개 아이템 삭제 후 moon을 추가)
</script>
```



```html
<script>
	documnet.write('<li>1</li>');
    var i = 0;
    while(i < 3){
        documnet.write('<li>2</li>');
        documnet.write('<li>3</li>');
    	i = i+1;
          }
    documnet.write('<li>4</li>');
</script>
```



## 배열과 반복문



```html
<script>
	var name = ["h", "b", "c", "a"];
    var i = 0;
    while(i < name.length){
        document.write('<li>' +name[i]+ '</li>');
    	i = i+1;
          }
</script>

예제
<ol>
    <script>
        var fruits = ["apple", "banana", "coconut"]
        var i = 0;
        while(i < fruits.length){
            document.write('<li>'+fruits[i]+'</li>');
            i = i+1
            }
    </script>
</ol>
```



## 배열과 반복문 응용

```html
<script>
	var alist = document.querySelectorAll('a');
    var i = 0;
    while(i < alist.length){
        alist[i].style.color = 'powderblue';
        i++;
    }
</script>
```



## 함수

* 코드를 더 효율적으로 사용하기 위한 문법(function)

```html
<script>
    function two(){
        document.write('<li>2-1</li>');
    	document.write('<li>2-3</li>');
    }
	document.write('<li>1</li>');
    document.write('<li>2-1</li>');
    document.write('<li>2-3</li>');
    two();
</script>
```



### 매개변수와 인자

```html
<script>
    function two(){
        document.write('<li>2-1</li>');
    	document.write('<li>2-3</li>');
    }
	document.write('<li>1</li>');
    document.write('<li>2-1</li>');
    document.write('<li>2-3</li>');
    two();
</script>

<script>
	function onePlusOne(){
        document.write(1+1);
    }
    function sum(left, right){
        document.write(left + right+'<br>');
    }
    onePlusOne();
    sum(2,3);
</script>
```



### 리턴

* 다양한 용도로 함수를 사용이 가능하다.

```html
<script>
	function sum(left, right){
        return left + right;
    };
    document.write(sum(2,3) + '<br>');
</script>
```



## 객체



* 서로 연관된 함수와 서로 연관된 변수를 그룹핑 하여 처리하는 것



```html
<script>
    
	function LinksSetColor(color){
        var alist = document.querySelectorAll('a');
        var i = 0;
        while(i < alist.length){
            alist[i].style.color = color;
            i = i + 1;
        }
    };
    fuction BodySetColor(color){
        document.querySelector('body').style.color = color;
    };
</script>

setColor('black')
BodySetColor('white')
```



### 객체(읽기, 쓰기)

```html
<script>
	var coworkers = {
      "programmer" : "sangbeom",
        "designer" : "han"
    };
    document.write("programmer" : "+coworkers.programmer+"<br>");
    coworkers.bookkeeper = "park"
    coworkers["data scientist"] = "kim"; > 띄어쓰기를 사용할 때
</script>


예제

<scripit>
	var countries = {
    	"asia" : "korea",
    	"europe" : "england"
    };
    contries.except = "china"
</scripit>

<script>
	var countries = {};
    countries.asia = "korea";
    countries["europe"] = "england"
    
    for(var key in countries){
        document.write(key+"<br>");
    };
</script>
```



### 객체 순회

```html
<script>
	var coworkers = {
      "programmer" : "sangbeom",
        "designer" : "han"
    };
    document.write("programmer" : "+coworkers.programmer+"<br>");
    coworkers.bookkeeper = "park"
    coworkers["data scientist"] = "kim"; > 띄어쓰기를 사용할 때
    
    for(var key in coworkers){
        document.write(key+'<br>');
        document.write(key + ":" + coworkers[key] + '<br>');
    }
</script>
```



### 객체와 프로퍼티, 메소드

```html
<script>
	coworkers.showAll = function(){
        for(var key in this){
            if(key === "programmer"){
            	document.write(key+ ";" + this[key] + "<br>");
           }else{
                document.write("<p>none</p>")
           }
        }
    };
    coworkers.showAll();
</script>
```



### 활용

```html
<script>
	var Body = {
        setColor:function (color){
            document.querySelector('body').style.color = color;
        },
        setBackgroundColor:function(color){
            document.querySelector('body').backgroundColor = color;
        }
    };
    
</script>

	Body.setColor('black');
```



## 파일



* 서로 연관된 코드들을 그룹핑 하여 정리하는 것
  * 파일을 만들어 스크립트 코드를 넣는다.

```html

<script src="colors.js"></script>
```



## 라이브러리, 프레임워크



* 라이브러리 : 내가 사용할 프로그램의 부품을 가져와서 사용하는 것, jquery를 사용하는데(지금은 안씀)
* 프레임워크 : 안에 들어가서 작업하는 것



## UI, API



* UI : User Interface
  * 사용자들이 시스템을 제어하기 위해서 조작하는 장치
* API : Application Programming Interface
  * 웹 브라우저가 가지고 있는 기능을 프로그래밍 언어를 통해 사용하는 것(개발자)



### 번외

* DOM : document object ... 문서객체
* ajax, cookie