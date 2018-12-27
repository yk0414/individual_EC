package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	private ItemListDAO dao = new ItemListDAO();
	private ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();

	public String execute() throws SQLException{

		String result = SUCCESS;
		itemList = dao.getItemListInfo();
		return result;

	}

	public ArrayList<ItemListDTO> getItemList(){
		return itemList;
	}
	public void setItemList(ArrayList<ItemListDTO> itemList) {
		this.itemList = itemList;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}
