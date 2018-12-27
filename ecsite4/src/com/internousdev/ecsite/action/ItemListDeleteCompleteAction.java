package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemListDeleteConfirmDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport{

	private ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();
	private ItemListDeleteConfirmDAO dao = new ItemListDeleteConfirmDAO();
	private String message;

	public String execute() throws SQLException{

		delete();

		String result = SUCCESS;
		return result;
	}

	public void delete() throws SQLException{

		int res = dao.itemListHistoryDelete();

		if(res>0) {
			itemList = null;
			setMessage("商品情報を正しく削除しました。");
		}else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}

	public ArrayList<ItemListDTO> getItemList(){
		return itemList;
	}
	public void setItemList(ArrayList<ItemListDTO> itemList) {
		this.itemList = itemList;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
