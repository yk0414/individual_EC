package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware{

	public Map<String,Object>session;
	private String flg;

	public String execute() {
		session.clear();
		flg = "false";

		return SUCCESS;
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
