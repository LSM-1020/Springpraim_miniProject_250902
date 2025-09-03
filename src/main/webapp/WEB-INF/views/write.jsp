<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>글쓰기 - 우리카페 게시판</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/write.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="write-section">
    <div class="write-container">
      <h1 class="write-title">게시글 작성</h1>

      <form action="bwriteOk" method="post" class="write-form">
        <div class="form-group">
          <label for="title">제목</label>
          <input type="text" id="title" name="btitle" required />
        </div>

        <div class="form-group">
          <label for="author">글쓴이</label>
          <input type="text" id="author" name="bwriter" value="${sessionScope.sessionId}" required readonly="readonly" />
        </div>

        <div class="form-group">
          <label for="content">내용</label>
          <textarea id="content" name="bcontent" rows="10" required></textarea>
        </div>

        <div class="form-actions">
          <button type="submit" class="btn-submit">등록</button>
         <a href="${pageContext.request.contextPath}/boardlist" class="btn-cancel">취소</a>
        </div>
      </form>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
