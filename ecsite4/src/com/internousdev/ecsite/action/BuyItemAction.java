package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private int count;
	private String pay;
	private String selectItemName;
	private String selectItemPrice;
	private int selectId;

	public String execute() {
		String result = SUCCESS;
		session.put("select_id", selectId);
		session.put("select_item_name", selectItemName);
		session.put("select_item_price", selectItemPrice);
		session.put("total_count",count);
		int intCount = Integer.parseInt(session.get("total_count").toString());
		int intPrice = Integer.parseInt(session.get("select_item_price").toString());
		session.put("total_price",intCount * intPrice);
		String payment;
		if(pay.equals("1")){
			payment = "現金払い";
			session.put("pay", payment);
		}else {
			payment = "クレジットカード";
			session.put("pay", payment);
		}
		return result;
	}

	public void setSelectItemName(String selectItemName) {
		this.selectItemName = selectItemName;
	}
	public void setSelectItemPrice(String selectItemPrice) {
		this.selectItemPrice = selectItemPrice;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public void setSelectId(int selectId) {
		this.selectId = selectId;
	}

	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}


}
