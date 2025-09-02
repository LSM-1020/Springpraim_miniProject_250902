<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css" />
</head>
<body>

<header class="site-header">
  <div class="container">
    <h2 class="logo">우리카페</h2>
    <nav>
      <ul class="nav-menu">
        <li><a href="${pageContext.request.contextPath}/">홈</a></li>
        
        <c:choose>
          <c:when test="${not empty sessionScope.user}">
            <li><a href="${pageContext.request.contextPath}/board">게시판</a></li>
            <li><a href="${pageContext.request.contextPath}/order">주문하기</a></li>
            <li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
          </c:when>
          <c:otherwise>
            <li class="login-menu"><a href="${pageContext.request.contextPath}/login">로그인</a></li>
            <li><a href="${pageContext.request.contextPath}/register">회원가입</a></li>
          </c:otherwise>
        </c:choose>
        <li><a href="${pageContext.request.contextPath}/location">오시는 길</a></li>
      </ul>
    </nav>
  </div>
</header>