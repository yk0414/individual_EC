package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ProfileRegistrationCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileRegistrationCompleteAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	private String phoneNumber;
	private String mailAddress;
	private String domain;
	private String address;

	public String execute() throws SQLException{
		String result = SUCCESS;

		ProfileRegistrationCompleteDAO dao = new ProfileRegistrationCompleteDAO();

		dao.ProfileRegistration(phoneNumber,mailAddress,domain,address,
				session.get("loginId").toString());

		session.put("phoneNumber", phoneNumber);
		session.put("mailAddress", mailAddress);
		session.put("domain", domain);
		session.put("address", address);

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session) {
		this.session = session;
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
