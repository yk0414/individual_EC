package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{
	private Map<String,Object>session;
	private BuyItemCompleteDAO dao = new BuyItemCompleteDAO();

	public String execute()throws SQLException{

		dao.buyItemInfo(
				session.get("select_id").toString(),
				session.get("total_price").toString(),
				session.get("total_count").toString(),
				session.get("login_user_id").toString(),
				session.get("pay").toString());

		dao.selectStock(
				session.get("select_id").toString());

		dao.itemStockCount(
				session.get("select_id").toString(),
				session.get("total_count").toString());


		String result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}

}
