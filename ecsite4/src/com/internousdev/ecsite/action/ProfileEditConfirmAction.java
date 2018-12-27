package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ProfileEditConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileEditConfirmAction extends ActionSupport implements SessionAware{

	private String loginId;
	private String loginPass;
	private String userName;
	private String phoneNumber;
	private String mailAddress;
	private String domain;
	private String mail;
	private String address;
	private Map<String,Object> session;

	ProfileEditConfirmDAO dao = new ProfileEditConfirmDAO();

	public String execute() throws SQLException{

		String result = SUCCESS;

		mail = mailAddress + domain;

		dao.ProfileEdit(loginId,loginPass,userName,phoneNumber,mailAddress,
				domain,address,session.get("loginId").toString());

		return result;
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
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getMailAddress() {
		return mailAddress;
	}
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}


}
