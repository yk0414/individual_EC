package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class ProfileRegistrationConfirmAction extends ActionSupport{

	private String phoneNumber;
	private String mailAddress;
	private String domain;
	private String mail;
	private String address;

	public String execute() throws SQLException{
		String result = SUCCESS;

		mail = mailAddress + domain;

		return result;


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
