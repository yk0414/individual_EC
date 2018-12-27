package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoHomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	LoginDTO dto = new LoginDTO();
	private String flg ="false";

	public String execute() {
		String result = SUCCESS;
		if(session.get("loginUser") == null) {
			return result;
		}
		else if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			flg = "true";
		}
		return result;
	}

	public Map<String,Object>getSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}
	public String getFlg() {
		return flg;
	}
	public void setFlg(String flg) {
		this.flg = flg;
	}

}
