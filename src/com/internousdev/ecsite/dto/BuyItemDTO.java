package com.internousdev.ecsite.dto;

import java.util.List;

public class BuyItemDTO {
	public int id;
	public String itemName;
	public int itemPrice;
	public int itemStock;
	public List<Integer> itemStockList;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName=itemName;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice=itemPrice;
	}
	public int getItemStock() {
		return itemStock;
	}
	public void setItemStock(int itemStock) {
		this.itemStock=itemStock;
	}
	public List<Integer> getItemStockList() {
		return itemStockList;
	}
	public void setItemStockList(List<Integer> itemStockList) {
		this.itemStockList = itemStockList;
	}

}
