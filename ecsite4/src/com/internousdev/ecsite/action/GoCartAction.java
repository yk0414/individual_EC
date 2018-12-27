package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoCartAction extends ActionSupport implements SessionAware{

	CartDAO dao = new CartDAO();
	Map<String,Object> session;
	ArrayList<BuyItemHistoryDTO> cartList = new ArrayList<BuyItemHistoryDTO>();
	private int cartPrice;

	public String execute() throws SQLException{

		String result = SUCCESS;

		String userMasterId = session.get("loginId").toString();

		cartList = dao.CartListSelect(userMasterId);
		session.put("cartList", cartList);

		for(int i=0;i<cartList.size();i++) {
			BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
			dto = cartList.get(i);
			cartPrice += Integer.parseInt(dto.getTotalPrice());
		}

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	public int getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}

}
