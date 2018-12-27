package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	ItemListDAO itemListDAO = new ItemListDAO();
	ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();

	public String execute() throws SQLException{
		String result = "login";

		itemList = itemListDAO.getItemListInfo();
		session.put("itemList", itemList);

		if(session.containsKey("login_user_id")) {
			BuyItemDAO buyItemDAO = new BuyItemDAO();
			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());

			result = SUCCESS;
		}
		return result;
	}
	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}

}
