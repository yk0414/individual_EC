package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ProfileEditDAO;
import com.internousdev.ecsite.dto.ProfileEditDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileEditAction extends ActionSupport implements SessionAware{

	ProfileEditDAO dao = new ProfileEditDAO();
	ProfileEditDTO dto = new ProfileEditDTO();
	private Map<String,Object> session;
	private String loginId;
	private String loginPass;
	private String userName;
	private String phoneNumber;
	private String mailAddress;
	private String domain;
	private String address;

	public String execute() throws SQLException{
		String result = SUCCESS;

		dto = dao.ProfileSearch(session.get("loginId").toString());

		loginId = dto.getLoginId();
		loginPass = dto.getLoginPass();
		userName = dto.getUserName();
		phoneNumber = dto.getPhoneNumber();
		mailAddress = dto.getMailAddress();
		domain = dto.getDomain();
		address = dto.getAddress();

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPass() {
		return loginPass;
	}
	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getMailAddress() {
		return mailAddress;
	}
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
