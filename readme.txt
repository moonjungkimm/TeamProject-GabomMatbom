# 프로젝트명
> 간략한 프로젝트 소개 문구를 작성합니다.

[![NPM Version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]

한 두 문단으로 프로젝트 소개 글을 작성합니다.

![](../header.png)

## 설치 방법

OS X & 리눅스:

```sh
npm install my-crazy-module --save
```

윈도우:

```sh
edit autoexec.bat
```

## 사용 예제

스크린 샷과 코드 예제를 통해 사용 방법을 자세히 설명합니다.

_더 많은 예제와 사용법은 [Wiki][wiki]를 참고하세요._

## 개발 환경 설정

모든 개발 의존성 설치 방법과 자동 테스트 슈트 실행 방법을 운영체제 별로 작성합니다.

```sh
make install
npm test
```

## 업데이트 내역

* 0.2.1
    * 수정: 문서 업데이트 (모듈 코드 동일)
* 0.2.0
    * 수정: `setDefaultXYZ()` 메서드 제거
    * 추가: `init()` 메서드 추가
* 0.1.1
    * 버그 수정: `baz()` 메서드 호출 시 부팅되지 않는 현상 (@컨트리뷰터 감사합니다!)
* 0.1.0
    * 첫 출시
    * 수정: `foo()` 메서드 네이밍을 `bar()`로 수정
* 0.0.1
    * 작업 진행 중

## 정보

이름 – [@트위터 주소](https://twitter.com/dbader_org) – 이메일주소@example.com

XYZ 라이센스를 준수하며 ``LICENSE``에서 자세한 정보를 확인할 수 있습니다.

[https://github.com/yourname/github-link](https://github.com/dbader/)

## 기여 방법

1. (<https://github.com/yourname/yourproject/fork>)을 포크합니다.
2. (`git checkout -b feature/fooBar`) 명령어로 새 브랜치를 만드세요.
3. (`git commit -am 'Add some fooBar'`) 명령어로 커밋하세요.
4. (`git push origin feature/fooBar`) 명령어로 브랜치에 푸시하세요. 
5. 풀리퀘스트를 보내주세요.

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki





# 🥄 가봄, 맛봄

![readme_mockup2](![Frame 39](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/1b361e32-9c35-475c-b7cb-401c8c58c5c6)
)

- 배포 URL : https://moond1944.cafe24.com/Team_GYMG
- Test ID : admin
- Test PW : 1234

<br>

## 프로젝트 소개

- 편리한 검색 기능을 통해 사용자들이 원하는 맛집을 쉽고 빠르게 찾을 수 있게 합니다. 
- 새로운 지역에 방문해서 식사를 해야하거나, 주변에 특정 맛집을 알고 싶을때 유용합니다.
- 원하는 식당의 위치, 메뉴, 가격, 영업시간 등의 기본 정보와 함께 다른 사용자들의 리뷰, 평점을 확인할 수 있습니다.
- 사용자의 편의성을 위해 현위치 기반으로 맛집을 추천하고, 맛집까지의 자동차 길찾기 서비스, 근처 주차장 정보를 함께 제공해주고 있습니다.
- 게시판의 맛집 공유 커뮤니티를 통해 사용자들 간의 즐거운 맛집 경험을 공유할 수 있고, 만개의 레시피 사이트 크롤링을 통해 그날의 TOP 10 인기 레시피를 함께 서비스합니다.

<br>

## 1. 개발 환경

- Front : HTML, CSS, JSP, Javascript, JQuery
- Back-end : Java -11, Spring, Springframework -4.3.8, Mybatis, 
- 버전 및 이슈관리 : Github
- 서버 / DB : Apache Tomcat, MySql, MariaDB
- 서비스 배포 환경 : cafe24, AWS
<br>

## 2. 역할 분담

### 🍓김문정

- **UI**
    - 페이지 : 게시판, 게시글 상세, 게시글 상세 댓글, 맛집 리뷰, 각 맛집 실시간 주차장 정보, 레시피 크롤링(해볼, 먹어볼)

- **기능**
    - 게시판/게시글/맛집리뷰 조회, 작성, 수정, 삭제
    - 각 맛집의 주소별 가까운 주차장의 실시간 정보 확인 가능
    - schedule, cron 사용하여 만개의 레시피 사이트 크롤링하여 TOP10의 레시피 확인 가능

<br>
    
### 🍎박예은

- **UI**
    - 페이지 : 맛집 리스트(검색 결과), 맛집 상세, 맛집 관리 
    
- **기능**
    - 

<br>

### 🥝박진우

- **UI**
    - 페이지 : sns 로그인 페이지, 로그인, 회원가입, 마이페이지, 회원 관리

- **기능**
    - sns로그인 페이지, 로그인 유효성 및 중복 검사, 회원가입 유효성 및 중복 검사

<br>


## 3. 개발 기간 및 작업 관리

### 개발 기간

- 전체 개발 기간 : 2024-01-02 ~ 2024-02-20
- 설계 : 2024-01-02 ~ 2024-01-16
- 기능 구현 : 2024-01-16 ~ 2024-02-15

<br>

### 작업 관리

- Figma 를 사용하여 기획하고, GitHub를 사용하여 진행 상황을 공유했습니다.

<br>

## 4. 페이지별 기능

### [게시판]
- 카테고리 tab 클릭시 각 게시판의 게시글 목록이 보입니다. 
- 한 페이지에 10개의 게시물이 보이고, 각 게시판 별 공지는 페이지 상관없이 상단에 고정 노출됩니다.
- <c:forEach>를 이용하여 게시글 리스트를 반복해서 출력합니다. 
- 서브쿼리를 이용하여 게시물의 작성자를 닉네임으로 보여줍니다.
- left join을 이용하여 각 게시물의 추천(좋아요)수를 보여줍니다. 
- <c:if>, <c:forEach>를 이용하여 총 5페이지씩 보여줍니다. 
- 현재 표시된 페이지 범위가 총 페이지 수보다 작을 때, 다음 페이지로 이동하는 버튼을 표시하고, 현재 페이지가 제일 작은 페이지일 때, 이전 페이지로 이동하는 버튼을 표시합니다.  
- 현재 페이지와 표시된 페이지 번호가 같으면 해당 페이지 번호에 스타일을 추가 해주었습니다.

![image 44](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/5258cf3e-15fc-4c9f-90ed-55af8841467f)

<br>

### [게시판 검색]
- 각 게시판 별로 글제목, 작성자, 글내용으로 검색이 가능합니다. 
- mybatis에서 제공하는  <choose>, <when>, <if> 태그를 이용하여 입력된 검색 조건에 따라 동적으로 쿼리문을 작성했습니다. 
- 각 검색 조건에 대해 like 연산자와, <bind>태그를 활용하여 부분 일치하는 데이터를 검색합니다. 
- jstl을 활용하여 로그인 상태에 따라 글쓰기 버튼이 활성화/비활성화 됩니다.
    - 로그인시 -> 글쓰기 페이지로 이동
    - 비로그인시-> confirm창 띄우고 로그인 페이지로 이동
- 각 게시물의 제목을 클릭하면 해당 게시물 상세페이지로 이동합니다.

![image 22](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/b2a9385c-94d6-4af4-959f-a4c2395f4b25)

<br>

### [게시글 작성]
- summernote 라이브러리를 사용한 에디터 구현하여 사용자가 편리하게 게시글 내용 작성 가능합니다.
- jstl을 활용하여 카테고리 옵션을 동적으로 생성합니다.
    - 일반회원 - 맛집, 자유 게시판
    - 관리자 - 맛집, 자유, 공지 게시판
- javascript, jquery 활용하여 유효성검사, 빈칸검사를 시행합니다.
- 서브쿼리를 이용하여 로그인한 회원의 번호를 받아서 닉네임 찾아서 닉네임을 작성자로으로 게시글을 작성합니다.

![image 33](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/76a623e1-253c-4834-9f50-d98020608ad6)

<br>

### [게시글 상세보기]
- 게시글 제목, 게시판 카테고리, 작성자, 작성 시간, 조회수를 보여줍니다. 
- ajax와 leftjoin을 이용하여 게시글의 좋아요, 댓글 수를 비동기적으로 보여줍니다. 
- 작성한 글 내용은 db에 html 태그 자체로 저장되고, 저장된 내용을 .html() 을 이용하여 사용자가 작성한 그대로 보여줍니다. 
- 공유하기 버튼을 클릭하면 javascript를 이용하여 url 을 복사해줍니다. 
- 로그인한 사용자가 좋아요를 누른적이 있는지, 없는지 확인해서 있다면 ♥로, 없다면 ♡로 표시해줍니다. 
    - 비로그인시 confirm 창 띄우고 로그인창으로 이동합니다. 
    - 로그인시 클릭하면 토글을 이용하여 게시글 좋아요 테이블에 insert, delete 를 합니다.
- 로그인한 사용자가 작성한 게시글일 경우에만 수정, 삭제 버튼이 보여집니다.
- 수정 / 삭제 버튼 클릭시
    - 수정 - 수정페이지로 이동
    - 삭제 - confirm 창 띄우고 확인 누르면 삭제 후 게시판 첫 페이지로 이동

![image 45](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/2b74270f-675e-4bf7-bd3f-233f044e7407)

<br>

### [게시글 수정]
- 해당 게시글의 카테고리는 사용자가 기존에 작성한 카테고리로 선택되어 있고, 변경이 가능합니다.
    - 일반사용자 - 일반 카테고리만 선택 가능
    - 관리자 - 공지 카테고리까지 선택 가능
- 기존 제목, 내용은 입력란에 표시되고 수정 가능하고,  작성자 정보는 읽기전용으로 표시합니다. 
- 등록 버튼 클릭시 javascript를 사용하여 빈칸 검사, 빈칸이면 알림창 띄우고, 입력칸으로 포커스를 이동하여 수정을 유도합니다. - 수정된 내용이 서버로 전송되어 게시글이 수정됩니다. 서버에서는 받은 데이터를 처리하고, 수정된 게시글 내용을 db에 반영합니다. 

![image 47](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/97de37bb-f310-4e6b-9ad2-309ddad955d5)

<br>

### [게시글 댓글]
- 댓글 등록 버튼을 클릭하면 JSTL의 c:choose를 활용하여 로그인 여부에 따라 다른 버튼을 표시합니다.
    - 비로그인시 - confirm 창
    - 로그인시 - 입력된 댓글 내용의 빈칸검사를 진행 후, 비어있지 않은 경우 ajax를 이용하여 서버에 댓글 등록 요청을 전송하고 새로운 댓글 리스트를 다시 보여줍니다.
- ajax를 사용하여 게시글 번호로 찾은 댓글을 json 형식으로 받아오고, 댓글 수를 보여줍니다.
- 댓글을 보여주는 div 자체에 empty() 함수를 통해 이전에 표시된 댓글을 모두 지운뒤, $each 함수를 사용하여 댓글 리스트를 반복하면서 각 댓글에 대한 정보를 화면에 동적으로 추가합니다.		
- 삭제 버튼은 현재 로그인한 사용자와 댓글 작성자가 동일한 경우에만 표시해 댓글을 작성한 사용자만이 자신의 댓글을 삭제할 수 있습니다. 


![image 46](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/cc3c505b-78cc-4dd7-9d80-1d557c77b049)

<br>

### [맛집 리뷰]
- 리뷰 등록 버튼을 클릭하면 JSTL의 c:choose를 활용하여 로그인 여부에 따라 다른 버튼을 표시합니다.
    - 비로그인시 - confirm 창
    - 로그인시 - 입력된 댓글 내용의 빈칸검사를 진행 후, 비어있지 않은 경우 ajax를 이용하여 사용자가 작성한 내용, 선택된 별점으로 서버에 댓글 등록 요청을 전송하고 새로운 댓글 리스트를 다시 보여줍니다.
- ajax를 이용하여 식당에 등록된 모든 리뷰 목록을 최신순으로 조회합니다. 
- 식당에 등록된 리뷰들의 평균 별점을 계산하여 표시하고, 리뷰가 없을 경우에 별점 평균은 0.0 으로, 댓글 내용은 아직 작성된 댓글이 없다고 표시합니다. 
- 각 별점에 대한 통계 ( 각별점갯수/전체별점갯수) 를 계산하여 표시하고 그에 따른 별점 그래프를 시각적으로 표현합니다. 
- 삭제 버튼은 현재 로그인한 사용자와 댓글 작성자가 동일한 경우에만 표시해 댓글을 작성한 사용자만이 자신의 댓글을 삭제할 수 있습니다. 

![image 48](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/4ba6527d-0ba6-4093-ade7-310e514c1a72)

<br>

### [만개의 레시피 크롤링]
- 매일 특정 시간에 스케줄러와 cron을 이용하여 <만개의 레시피> 웹사이트에서 그날의 <BEST 레시피 10개>를 크롤링하여, DB에 저장합니다. JSTL의 <c:forEach>를 활용하여 각 레시피를 반복하면서 화면에 표시하고, 클릭 시 레시피 상세 페이지로 이동합니다.
- 상세페이지에서는 서버에서 받아온 데이터를 left join을 이용하여 각 레시피의 재료, 조리순서를 보여줍니다. 

![image 50](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/2a749877-47a6-4455-a193-ba188382d6ca)

### [Restful API 실시간 주차장 정보]
- 각 맛집 근처의 실시간 주차 정보를 제공합니다. 
- 맛집의 상세페이지의 주소에서 첫번째, 두번째 공백을 찾아 그 사이에 있는 지역구의 정보를 찾습니다.
- 받아온 지역구 이름을 서울시 주차장 api 에 http 요청을 보내 받아온 데이터를 json으로 파싱해서 원하는 데이터 정보를 가져옵니다. 
- (현재 주차 가능 주차면 / 총 주차면)을 계산하여 비율로 보여주고, 가능 주차면이 10대 이상이면 여유, 10대 미만이면 혼잡, 만차면 주차 가능한 곳이 없다고 알려줍니다.
- 주차 시간별 주차 요금 정보를 보여줍니다. (유/무료)

![image 53](https://github.com/moonjungkimm/Gabom-Matbom/assets/152701559/7ac763b0-10e3-46a6-bc5d-27ae00d0ba0f)

<br>

</div>
