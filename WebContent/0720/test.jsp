<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  h1{
    color : pink;
  }
  span{
    color : red;
    font-size : 2.0em;
  }
</style>
</head>
<body>
 <h1>JSP : Java Server Page</h1>
 <h2>서버 내에서 실행되는 스크립트 파일</h2>
 <p> html과 java코드를 혼용해서 사용할 수 있다.</p>
 <p>java코드를 쓸때는 &lt;%   %&gt; 이 기호 사이에 기술한다.</p>
 <p>java변수 값을 출력 할 때는 &lt;%=   %&gt; 사이에 기술한다.</p>
 <p>클라이언트에서 전송시 입력한 데이터를 전송하면 여기서 받는다.</p>
 <p>request.getParameter("name")</p>
 <p>String 변수 = request.getParameter("name")</p>
 <%
	//자바문장 기술, 클라이언트에서 전송시 입력한 데이터를 전송하면 여기서 받는다.
	request.setCharacterEncoding("UTF-8"); //post방식으로 전송시 한글 인코딩
	String userId=request.getParameter("id");
 	String userName=request.getParameter("name");
 	String userPass=request.getParameter("pass");
 	String userBir = request.getParameter("birth");
 %>
 <span><%=userId %>님 환영합니다.</span><br>
 <span><%=userName %> 즐거운 하루 되세요</span><br>
 당신의 생일은 <%=userBir %> 입니다.
</body>
</html>