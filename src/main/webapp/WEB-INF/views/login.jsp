<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"> 
<section class="login-section">
  <h1>로그인</h1>
  
  <form class="login-form" action="loginOk" method="post">
    <label for="username">아이디</label>
    <input type="text" id="username" name="memberid" required>

    <label for="password">비밀번호</label>
    <input type="password" id="password" name="memberpw" required>

    <button type="submit" class="btn-submit">로그인</button>

    <div class="signup-text">
      회원이 아니세요?
     <a href="${pageContext.request.contextPath}/signup">회원가입</a>
    </div>
  </form>
</section>

<%@ include file="include/footer.jsp" %>