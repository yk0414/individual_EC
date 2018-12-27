package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware{

	CartDAO dao = new CartDAO();
	private String selectItemName;
	private int selectItemPrice;
	private int count;
	private String pay;
	private String selectId;
	private int cartPrice;
	Map<String,Object> session;
	ArrayList<BuyItemHistoryDTO> cartList = new ArrayList<BuyItemHistoryDTO>();

	public String execute() throws SQLException{

		String result = SUCCESS;

		String totalPrice = String.valueOf(selectItemPrice * count);
		String userMasterId = session.get("loginId").toString();

		dao.CartInsert(selectId,selectItemName,totalPrice,String.valueOf(count),userMasterId);

		cartList = dao.CartListSelect(userMasterId);
		session.put("cartList", cartList);

		for(int i=0;i<cartList.size();i++) {
			BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
			dto = cartList.get(i);
			cartPrice += Integer.parseInt(dto.getTotalPrice());
		}

		return result;
	}

	public String getSelectItemName() {
		return selectItemName;
	}
	public void setSelectItemName(String selectItemName) {
		this.selectItemName = selectItemName;
	}
	public int getSelectItemPrice() {
		return selectItemPrice;
	}
	public void setSelectItemPrice(int selectItemPrice) {
		this.selectItemPrice = selectItemPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getSelectId() {
		return selectId;
	}
	public void setSelectId(String selectId) {
		this.selectId = selectId;
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
