package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ProfileRegistrationCompleteDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public void ProfileRegistration(String phoneNumber,String mailAddress,
			String domain,String address,String loginId) throws SQLException{

		try {
			String sql = "UPDATE login_user_transaction SET phone_number = ? , mail_address = ? , domain = ? , address = ? WHERE id = ?";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, phoneNumber);
			ps.setString(2, mailAddress);
			ps.setString(3, domain);
			ps.setString(4, address);
			ps.setString(5, loginId);
			ps.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}
}
