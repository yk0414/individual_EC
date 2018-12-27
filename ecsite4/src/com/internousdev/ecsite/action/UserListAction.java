package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport implements SessionAware{
	private Map<String,Object>session;
	private UserListDAO dao = new UserListDAO();
	private ArrayList<UserListDTO> userList = new ArrayList<UserListDTO>();
	private String deleteFlg;
	private String message;

	public String execute() throws SQLException{

		if(deleteFlg ==null) {
			userList = dao.getUserListInfo();
		}else if(deleteFlg.equals("1")) {
			delete();
		}
		String result = SUCCESS;
		return result;
	}

	public void delete() throws SQLException{

		int res = dao.userListHistoryDelete();

		if(res>0) {
			userList = null;
			setMessage("ユーザー情報を正しく削除しました。");
		}else if(res == 0) {
			setMessage("ユーザー情報の削除に失敗しました。");
		}
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public ArrayList<UserListDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserListDTO> userList) {
		this.userList = userList;
	}

	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
}
