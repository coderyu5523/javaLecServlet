

<%
    //1.파싱
    //톰캣이 파싱하는 메서드를 제공
    String username = request.getParameter("username"); //버퍼에 있는 값을 스플릿 해서 키 값을찾아줌
    String password = request.getParameter("password");
    String email = request.getParameter("email");

    System.out.println("username :" + username);
    System.out.println("password :" + password);
    System.out.println("email :" + email);
    if(username.length() <3 || username.length() >10){
        response.getWriter().println("<h1>username 글자수가 3~10 사이여야 합니다.");
        return ;
    }


    //리다이렉트 코드로 만들어보기
    //내가 앱을 만들면 프로토콜을 적용시켜야 됨.
//    response.setStatus(302);
//    response.setHeader("Location" ,"WEB-INF/board/main.jsp"); //헤더에 데이터 실음, 근데 발동은 안됨. status code 가 200 이어서 안읽음

    response.sendRedirect("/main.do");
%>