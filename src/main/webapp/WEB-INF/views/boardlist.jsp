<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>우리카페 게시판</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="board-section">
    <h1>게시판</h1>

     <!-- 검색 & 글쓰기 버튼 영역 -->
    <div class="board-top-bar">
      <form action="/board/search" method="get" class="search-form">
        <select name="searchType">
          <option value="title">제목</option>
          <option value="content">내용</option>
          <option value="author">글쓴이</option>
        </select>
        <input type="text" name="keyword" placeholder="검색어를 입력하세요" required />
        <button type="submit" class="btn-search">검색</button>
      </form>

      <div class="write-btn-container">
        <a href="write.jsp" class="btn-write">글쓰기</a>
      </div>
    </div>

    <!-- 게시글 목록 테이블 -->
    <table class="board-table">
      <thead>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>내용</th>
          <th>글쓴이</th>
          <th>조회수</th>
          <th>날짜</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="post" items="${posts}">
          <tr>
            <td>${post.id}</td>
            <td><a href="/board/view?id=${post.id}">${post.title}</a></td>
            <td>${post.content}</td>
            <td>${post.author}</td>
            <td>${post.views}</td>
            <td>${post.date}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>

   <div class="pagination">
  <!-- 처음 페이지 이동 -->
  <a href="?page=1" class="page-link ${currentPage == 1 ? 'disabled' : ''}">«</a>

  <!-- 이전 페이지 이동 -->
  <a href="?page=${currentPage - 1}" class="page-link ${currentPage == 1 ? 'disabled' : ''}">&lt;</a>

  <!-- 페이지 번호 -->
  <c:forEach var="i" begin="1" end="${totalPages}">
    <a href="?page=${i}" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
  </c:forEach>

  <!-- 다음 페이지 이동 -->
  <a href="?page=${currentPage + 1}" class="page-link ${currentPage == totalPages ? 'disabled' : ''}">&gt;</a>

  <!-- 마지막 페이지 이동 -->
  <a href="?page=${totalPages}" class="page-link ${currentPage == totalPages ? 'disabled' : ''}">»</a>
</div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
