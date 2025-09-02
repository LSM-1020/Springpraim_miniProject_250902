<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>${post.title} - 게시글 보기</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/view.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="view-section">
    <div class="view-container">
      <h1 class="view-title">${post.title}</h1>

      <div class="view-meta">
        <span><strong>작성자:</strong> ${post.author}</span>
        <span><strong>작성일:</strong> ${post.date}</span>
        <span><strong>조회수:</strong> ${post.views}</span>
      </div>

      <div class="view-content">
        <pre>${post.content}</pre>
      </div>

      <div class="view-actions">
        <a href="/board" class="btn-view">목록</a>
        <a href="/board/edit?id=${post.id}" class="btn-view">수정</a>
        <a href="/board/delete?id=${post.id}" class="btn-view delete" onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
      </div>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>