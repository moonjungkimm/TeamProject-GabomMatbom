<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> *.hwan 연결 성공!</h1>
<br>
web.xml 의 jihwan-appServlet 과 Servlet-mapping 연결 잘됨 !
<br><br>
com.controller.hwan.FrontController 의 @RequestMapping("/GoToTestPage.hwan") 메서드 연결 잘됨 !
<br><br>
<br><br>
<h1>${time}</h1>
↑↑↑↑↑↑↑<br>
시간 표시 되면 root-context - MyDao - TestDao - test-mapper 도 연결 잘됨 ! 

</body>
</html>