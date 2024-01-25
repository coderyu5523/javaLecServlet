<%@ page import="java.time.LocalDateTime" %>

<%--.jsp 파일은 파일명이지만 아파치가 자바랭귀지 인 것을 확인하고 톰캣에 위임함
톰캣은 서블롯으로 변환해서 실행--%>

<%
    LocalDateTime now = LocalDateTime.now();

%>
<html>
<head>
    <title>Title</title>
</head>
<body>


<h1>회원가입 페이지<%=now%> </h1>

<hr>
<form action="/join.do" method="post">
    <input type="text" placeholder="username" name="username">
    <input type="text" placeholder="password" name="password">
    <input type="text" placeholder="email" name="email">
    <button>회원가입</button>

</form>
</body>
</html>
