package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemEditAction extends ActionSupport implements SessionAware{

	private String itemName;
	private int itemPrice;
	private int itemStock;
	private int itemId;
	private Map<String,Object> session;

	public String execute() throws SQLException{
		String result = SUCCESS;

		if(itemId == 0) {
			itemName = session.get("editName").toString();
			itemPrice = Integer.parseInt(session.get("editPrice").toString());
			itemStock = Integer.parseInt(session.get("editStock").toString());
			itemId = Integer.parseInt(session.get("editId").toString());
			return result;
		}else {
			return result;
		}

	}


	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getItemStock() {
		return itemStock;
	}
	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
