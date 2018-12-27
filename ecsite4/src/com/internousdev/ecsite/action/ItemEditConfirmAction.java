package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemEditConfirmAction extends ActionSupport implements SessionAware{

	private String name;
	private int price;
	private int stock;
	private int id;
	private Map<String,Object> session;

	public String execute() throws SQLException{
		String result = SUCCESS;

		session.put("editName", name);
		session.put("editPrice", price);
		session.put("editStock", stock);
		session.put("editId",id);

		return result;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
