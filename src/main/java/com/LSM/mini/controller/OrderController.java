package com.LSM.mini.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.LSM.mini.dao.BoardDao;
import com.LSM.mini.dao.OrderDao;
import com.LSM.mini.dto.OrderDto;

@Controller
public class OrderController {
@Autowired
private SqlSession sqlSession;

@RequestMapping(value="/order")
public String order(HttpSession session, Model model) {
	String sid = (String)session.getAttribute("sessionId");
	if(sid==null) {
		model.addAttribute("msg","로그인한 회원만 주문이 가능합니다");
		model.addAttribute("url","login");
		return "alert/alert";
	}
	List<OrderDto> menuList = new ArrayList<OrderDto>();
    menuList.add(new OrderDto("아메리카노", 3000,0, 1));
    menuList.add(new OrderDto("카페라떼", 3500,0, 1));
    menuList.add(new OrderDto("카푸치노", 3800,0, 1));

    model.addAttribute("menuList", menuList);
    model.addAttribute("cartList", new ArrayList<OrderDto>()); // 처음엔 비어있음
    return "order";
}
	
@RequestMapping(value="/orderbox")
public String orderbox(HttpServletRequest request, Model model) {
    String clear = request.getParameter("clear");

    List<OrderDto> updatedCart = new ArrayList<OrderDto>();

    // 전체 취소 요청이면 updatedCart를 빈 리스트로 유지
    if (!"true".equals(clear)) {
        // 기존 장바구니 받기
        String[] cartProducts = request.getParameterValues("cartProduct");
        String[] cartPrices = request.getParameterValues("cartPrice");
        String[] cartAmounts = request.getParameterValues("cartAmount");

        if(cartProducts != null && cartPrices != null && cartAmounts != null) {
            for(int i = 0; i < cartProducts.length; i++) {
                String prod = cartProducts[i];
                int price = Integer.parseInt(cartPrices[i]);
                int amount = Integer.parseInt(cartAmounts[i]);
                updatedCart.add(new OrderDto(prod, price, 0, amount));
            }
        }

        // 새로 담은 메뉴 정보가 있으면 장바구니에 추가 또는 수량 증가
        String product = request.getParameter("product");
        String priceStr = request.getParameter("price");
        String amountStr = request.getParameter("amount");

        if(product != null && priceStr != null && amountStr != null) {
            int price = Integer.parseInt(priceStr);
            int amount = Integer.parseInt(amountStr);

            boolean found = false;
            for(OrderDto order : updatedCart) {
                if(order.getProduct().equals(product)) {
                    order.setAmount(order.getAmount() + amount);
                    found = true;
                    break;
                }
            }
            if(!found) {
                updatedCart.add(new OrderDto(product, price, 0, amount));
            }
        }
    }

    // 메뉴 목록 다시 세팅 (고정)
    List<OrderDto> menuList = new ArrayList<OrderDto>();
    menuList.add(new OrderDto("아메리카노", 3000, 0, 1));
    menuList.add(new OrderDto("카페라떼", 3500, 0, 1));
    menuList.add(new OrderDto("카푸치노", 3800, 0, 1));

    model.addAttribute("menuList", menuList);
    model.addAttribute("cartList", updatedCart);

    return "order";
}
@RequestMapping(value="orderOk")
public String orderOk(HttpSession session, Model model, HttpServletRequest request) {
    String sid = (String) session.getAttribute("sessionId");
    if (sid == null) {
        model.addAttribute("msg", "로그인 후 주문하세요.");
        model.addAttribute("url", "login");
        return "alert/alert";
    }
    
    String[] products = request.getParameterValues("product");
    String[] priceStrs = request.getParameterValues("price");
    String[] amountStrs = request.getParameterValues("amount");
    
    if (products == null || priceStrs == null || amountStrs == null) {
        model.addAttribute("msg", "주문할 상품이 없습니다.");
        model.addAttribute("url", "order");
        return "alert/alert";
    }
    
    OrderDao orderDao = sqlSession.getMapper(OrderDao.class);
    
    for (int i = 0; i < products.length; i++) {
        OrderDto orderDto = new OrderDto();
        orderDto.setProduct(products[i]);
        orderDto.setPrice(Integer.parseInt(priceStrs[i]));
        orderDto.setAmount(Integer.parseInt(amountStrs[i]));
        orderDto.setOid(sid);
        orderDao.insertOrder(orderDto);
    }
    
    // 로그인한 사용자 주문 내역만 조회
    List<OrderDto> orderDtos = orderDao.orderListByUserId(sid);
    model.addAttribute("orderDtos", orderDtos);

    return "orderlist";
}
@RequestMapping(value="/orderDeleteAll")
public String orderDeleteAll(HttpSession session, Model model) {
    String sid = (String) session.getAttribute("sessionId");
    if(sid == null) {
        model.addAttribute("msg", "로그인이 필요합니다.");
        model.addAttribute("url", "login");
        return "alert/alert";
    }
    
    OrderDao orderDao = sqlSession.getMapper(OrderDao.class);
    orderDao.deleteAllOrdersByUserId(sid);  // 해당 회원 주문 전체 삭제 (DAO에서 구현 필요)
    
    return "orderlist";  // 삭제 후 주문내역 페이지로 리다이렉트
}

}
