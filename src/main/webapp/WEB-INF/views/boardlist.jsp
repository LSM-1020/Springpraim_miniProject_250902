<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <a href="${pageContext.request.contextPath}/bwrite" class="btn-write">글쓰기</a>
      </div>
    </div>
    <!-- 게시글 목록 테이블 -->
    <table class="board-table">
     <thead>
		  <tr>
		    <th>번호</th>
		    <th>제목</th>
		    <th>아이디</th>
		    <th>글쓴이</th>
		    <th>조회수</th>
		    <th>등록일</th>
		  </tr>
	</thead>
		<tbody>
  <c:forEach items="${list}" var="board" varStatus="status">
    <tr>
      <td>${boardCount - status.index}</td>
      <td>
     <c:choose>
            <c:when test="${fn:length(board.btitle) > 10}">
              <a href="contentview?bnum=${board.bnum}" class="board-link">${fn:substring(board.btitle, 0, 10)}...</a>
            </c:when>
            <c:otherwise>
              <a href="contentview?bnum=${board.bnum}" class="board-link">${board.btitle}</a>
            </c:otherwise>
          </c:choose>
      </td>
      
      <td>${board.bwriter}</td>
      <td>${board.memberDto.membername}</td>
      <td>${board.bhit}</td>
      <td><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd HH:mm" /></td> 
    </tr>
  </c:forEach>
</tbody>
	</table>


 <div class="pagination">
  <!-- 처음 / 이전 블럭 -->
  <c:if test="${startPage > 1}">
    <a href="boardlist?pageNum=1" class="page-link">&laquo;</a>
    <a href="boardlist?pageNum=${startPage - 1}" class="page-link">&lsaquo;</a>
  </c:if>

  <!-- 페이지 번호 출력 -->
  <c:forEach var="i" begin="${startPage}" end="${endPage}">
    <a href="boardlist?pageNum=${i}" class="page-link ${i == pageNum ? 'active' : ''}">${i}</a>
  </c:forEach>

  <!-- 다음 블럭 / 마지막 -->
  <c:if test="${endPage < totalPage}">
    <a href="boardlist?pageNum=${endPage + 1}" class="page-link">&rsaquo;</a>
    <a href="boardlist?pageNum=${totalPage}" class="page-link">&raquo;</a>
  </c:if>
</div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
