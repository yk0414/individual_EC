package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartBuyAction extends ActionSupport implements SessionAware{

	ArrayList<BuyItemHistoryDTO> cartList = new ArrayList<BuyItemHistoryDTO>();
	ArrayList<String> messageList = new ArrayList<String>();
	private Map<String,Object> session;
	private String stock;
	BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
	CartDAO dao = new CartDAO();
	BuyItemCompleteDAO dao2 = new BuyItemCompleteDAO();
	private String message;
//	private String address;

	@Override
	public String execute() throws SQLException{

		String result = SUCCESS;

		String userMasterId = session.get("loginId").toString();
		cartList = dao.CartListSelect(userMasterId);

//		address = session.get("address").toString();

		for(int i=0; i<cartList.size(); i++) {
			dto = cartList.get(i);
			stock = dao2.selectStock(dto.getId());

			if(Integer.parseInt(stock) >=
					Integer.parseInt(dto.getTotalCount())){

				result = SUCCESS;
				return result;
			}else {
				message = dto.getItemName() + "の在庫が不足しています";
				messageList.add(message);
			}
		}
		return result;

	}

	public Map<String,Object> getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
//	public String getAddress() {
//		return address;
//	}
//	public void setAddress(String address) {
//		this.address = address;
//	}

}
