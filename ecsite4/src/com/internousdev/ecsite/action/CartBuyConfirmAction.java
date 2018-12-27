package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartBuyConfirmAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	CartDAO dao = new CartDAO();
	BuyItemCompleteDAO dao2 = new BuyItemCompleteDAO();
	BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
	ArrayList<BuyItemHistoryDTO> cartList = new ArrayList<BuyItemHistoryDTO>();
	private String pay;

	public String execute() throws SQLException{

		String result = SUCCESS;

		String userMasterId = session.get("loginId").toString();
		cartList = dao.CartListSelect(userMasterId);

		for(int i=0; i<cartList.size() ; i++) {
			dto = cartList.get(i);
			dao.CartBuy(dto.getId(),dto.getTotalPrice(),dto.getTotalCount(),
					dto.getUserMasterId(),pay);
			dao2.selectStock(dto.getId());
			dao2.itemStockCount(dto.getId(),dto.getTotalCount());
		}

		dao.CartBuyDelete(dto.getUserMasterId());

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}

}
