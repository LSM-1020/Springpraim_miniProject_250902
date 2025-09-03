<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css" />
<section class="signup-section">
  <h1>회원가입</h1>
  <form class="signup-form" action="signupOk" method="post">
    <label for="username">아이디</label>
    <input type="text" id="username" name="memberid" required>

    <label for="fullname">이름</label>
    <input type="text" id="fullname" name="membername" required>

    <label for="password">비밀번호</label>
    <input type="password" id="password" name="memberpw" required>

    <button type="submit" class="btn-submit">가입하기</button>
  </form>
</section>

<%@ include file="include/footer.jsp" %>