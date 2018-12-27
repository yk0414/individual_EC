package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemEditCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemEditCompleteAction extends ActionSupport implements SessionAware{

	ItemEditCompleteDAO dao = new ItemEditCompleteDAO();
	private Map<String,Object> session;

	public String execute() throws SQLException{

		String result = SUCCESS;

		dao.itemEdit(session.get("editName").toString(),
				session.get("editPrice").toString(),
				session.get("editStock").toString(),
				session.get("editId").toString());

		return result;

	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
