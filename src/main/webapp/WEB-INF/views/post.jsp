<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>${boardDto.btitle} - 게시글 보기</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/view.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="view-section">
    <div class="view-container">
      <h1 class="view-title">${boardDto.btitle}</h1>

      <div class="view-meta">
        <span><strong>작성자:</strong> ${boardDto.bwriter}</span>
        <span><strong>작성일:</strong> ${boardDto.bdate}</span>
        <span><strong>조회수:</strong> ${boardDto.bhit}</span>
      </div>

      <div class="view-content">
        <pre>${boardDto.bcontent}</pre>
      </div>

      <div class="view-actions">
        <a href="${pageContext.request.contextPath}/boardlist" class="btn-view">목록</a>     
       
     	
      <c:if test="${sessionScope.sessionId == boardDto.bwriter}">
    <a href="edit?bnum=${boardDto.bnum}" class="btn-view">수정</a>
    <a href="boarddelete?bnum=${boardDto.bnum}" class="btn-view delete" sonclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
</c:if>
      </div>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>