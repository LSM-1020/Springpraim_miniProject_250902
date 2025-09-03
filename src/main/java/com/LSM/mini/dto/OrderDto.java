package com.LSM.mini.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter

public class OrderDto {
	private String product;
	private int price;
	private int onum;
	private int amount;
	private String oid;

	private MemberDto memberDto;

	public OrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDto(String product, int price, int onum, int amount, MemberDto memberDto) {
		super();
		this.product = product;
		this.price = price;
		this.onum = onum;
		this.amount = amount;
		this.memberDto = memberDto;
	}

	public OrderDto(String product, int price, int onum, int amount) {
		super();
		this.product = product;
		this.price = price;
		this.onum = onum;
		this.amount = amount;
	}

	public OrderDto(String product, int price, int onum, int amount, String oid) {
		super();
		this.product = product;
		this.price = price;
		this.onum = onum;
		this.amount = amount;
		this.oid = oid;
	}
	
	
	
}
