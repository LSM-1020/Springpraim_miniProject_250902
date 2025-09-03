<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>커피 주문 - 우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="order-section">
    <div class="container">
      <h1>커피 주문하기</h1>

      <div class="menu-list">
        <h2>메뉴 목록</h2>
        <c:forEach var="order" items="${menuList}">
  <li>
    <form method="post" action="${pageContext.request.contextPath}/orderbox">
      <!-- 메뉴에서 선택한 상품명, 가격만 넘김 -->
      <input type="hidden" name="product" value="${order.product}" />
      <input type="hidden" name="price" value="${order.price}" />
      <input type="hidden" name="amount" value="1" />
      
      <!-- 기존 장바구니 리스트를 hidden input으로 같이 전송 -->
      <c:forEach var="cartItem" items="${cartList}">
        <input type="hidden" name="cartProduct" value="${cartItem.product}" />
        <input type="hidden" name="cartPrice" value="${cartItem.price}" />
        <input type="hidden" name="cartAmount" value="${cartItem.amount}" />
      </c:forEach>

      <span class="coffee-name">${order.product}</span>
      <span class="coffee-price"><fmt:formatNumber value="${order.price}" type="number" />원</span>
      <button type="submit">담기</button>
    </form>
  </li>
</c:forEach>
      </div>

   <form method="post" action="${pageContext.request.contextPath}/orderOk">
  <div class="cart-section">
    <h2>담은 메뉴</h2>
    <table>
      <thead>
        <tr>
          <th>상품명</th>
          <th>가격</th>
          <th>수량</th>
          <th>합계</th>
         
        </tr>
      </thead>
      <tbody>
      <c:forEach var="item" items="${cartList}" varStatus="status">
        <tr>
          <td>${item.product}<input type="hidden" name="product" value="${item.product}" /></td>
          <td><fmt:formatNumber value="${item.price}" type="number" />원<input type="hidden" name="price" value="${item.price}" /></td>
          <td>${item.amount}<input type="hidden" name="amount" value="${item.amount}" /></td>
          <td><fmt:formatNumber value="${item.price * item.amount}" type="number" />원</td>
         
        </tr>
      </c:forEach>
    </tbody>
    </table>

    <div class="cart-total">
      <strong>총 합계: </strong>
      <span>
        <c:set var="total" value="0" />
        <c:forEach var="item" items="${cartList}">
          <c:set var="total" value="${total + (item.price * item.amount)}" />
        </c:forEach>
        <fmt:formatNumber value="${total}" type="number" />원
      </span>
    </div>

    <button type="submit">주문하기</button>
    <!-- 기존 주문하기 버튼 옆에 추가 -->
<button type="submit" formaction="${pageContext.request.contextPath}/orderbox?clear=true">전체 취소</button>
  </div>
</form>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

  

</body>
</html>
