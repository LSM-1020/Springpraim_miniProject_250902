package com.LSM.mini.dao;

	import java.util.List;
import java.util.Map;

import com.LSM.mini.dto.OrderDto;

	public interface OrderDao {
		
		public int orderinfoDao(String amount, String product,String price);
		//public List<OrderDto> orderListDao(); 
		public void insertOrder(OrderDto dto);
		List<OrderDto> orderListByUserId(String oid);
		int deleteAllOrdersByUserId(String oid);

		
}
