<%@ page contentType="text/html; charset=UTF-8" language="java" %>

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
        <ul>
          <li>
            <span class="coffee-name">아메리카노</span>
            <span class="coffee-price">3,000원</span>
            <button class="btn-add" data-name="아메리카노" data-price="3000">장바구니에 담기</button>
          </li>
          <li>
            <span class="coffee-name">카페라떼</span>
            <span class="coffee-price">3,500원</span>
            <button class="btn-add" data-name="카페라떼" data-price="3500">장바구니에 담기</button>
          </li>
          <li>
            <span class="coffee-name">카푸치노</span>
            <span class="coffee-price">3,800원</span>
            <button class="btn-add" data-name="카푸치노" data-price="3800">장바구니에 담기</button>
          </li>
          <!-- 메뉴 추가 가능 -->
        </ul>
      </div>

      <div class="cart-section">
        <h2>장바구니</h2>
        <table id="cart-table">
          <thead>
            <tr>
              <th>상품명</th>
              <th>가격</th>
              <th>수량</th>
              <th>합계</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody>
            <!-- 자바스크립트로 항목 추가 -->
          </tbody>
        </table>

        <div class="cart-total">
          <strong>총 합계: </strong><span id="total-price">0</span>원
        </div>

        <button id="order-button" disabled>주문하기</button>
      </div>

    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

  <script>
    const cart = {};
    const cartTableBody = document.querySelector('#cart-table tbody');
    const totalPriceEl = document.getElementById('total-price');
    const orderButton = document.getElementById('order-button');

    // 수량, 합계 계산 함수
    function updateCartTable() {
      cartTableBody.innerHTML = '';
      let total = 0;
      Object.keys(cart).forEach(key => {
        const item = cart[key];
        const itemTotal = item.price * item.quantity;
        total += itemTotal;

        const tr = document.createElement('tr');
        tr.innerHTML = `
          <td>${item.name}</td>
          <td>${item.price.toLocaleString()}원</td>
          <td>${item.quantity}</td>
          <td>${itemTotal.toLocaleString()}원</td>
          <td><button class="btn-remove" data-name="${item.name}">삭제</button></td>
        `;
        cartTableBody.appendChild(tr);
      });

      totalPriceEl.textContent = total.toLocaleString();
      orderButton.disabled = total === 0;
    }

    // 장바구니에 담기 버튼 클릭 이벤트
    document.querySelectorAll('.btn-add').forEach(button => {
      button.addEventListener('click', () => {
        const name = button.getAttribute('data-name');
        const price = parseInt(button.getAttribute('data-price'), 10);

        if (cart[name]) {
          cart[name].quantity += 1;
        } else {
          cart[name] = { name, price, quantity: 1 };
        }
        updateCartTable();
      });
    });

    // 삭제 버튼 이벤트 (이벤트 위임)
    cartTableBody.addEventListener('click', (e) => {
      if(e.target.classList.contains('btn-remove')) {
        const name = e.target.getAttribute('data-name');
        delete cart[name];
        updateCartTable();
      }
    });

    // 주문하기 버튼 클릭 시 (주문 목록 페이지로 이동)
    orderButton.addEventListener('click', () => {
      // 주문 정보는 서버에 보내는 게 일반적이나,
      // 여기서는 그냥 주문 목록 페이지로 이동한다고 가정
      // 실제 구현시엔 POST 요청 등 서버 연동 필요

      // 임시로 장바구니 데이터를 세션이나 서버에 저장하는 처리가 필요합니다.
      // 여기서는 단순 이동 처리
      window.location.href = '${pageContext.request.contextPath}/orderList';
    });

  </script>

</body>
</html>
