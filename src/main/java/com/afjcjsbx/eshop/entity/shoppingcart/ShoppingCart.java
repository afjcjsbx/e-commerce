package com.afjcjsbx.eshop.entity.shoppingcart;

import com.afjcjsbx.eshop.entity.ShopEntity;
import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.util.ArrayList;
import java.util.List;


public class ShoppingCart extends ShopEntity{

	private String message;
	private String code;
	private int quantity;
	private String total;
	private String subTotal;
	private List<Product> shoppingCartItems;

	public ShoppingCart() {
		shoppingCartItems = new ArrayList<Product>();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(String subTotal) {
		this.subTotal = subTotal;
	}

	public List<Product> getShoppingCartItems() {
		return shoppingCartItems;
	}

	public void setShoppingCartItems(List<Product> shoppingCartItems) {
		this.shoppingCartItems = shoppingCartItems;
	}
}
