package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ProfileEditConfirmDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public void ProfileEdit(String loginId,String loginPass,String userName,
			String phoneNumber,String mailAddress,String domain,String address,String id) throws SQLException{

		String sql = "UPDATE login_user_transaction "
				+ "SET login_id = ? , login_pass = ? ,"
				+ "user_name = ? , phone_number = ? ,"
				+ "mail_address = ? , domain = ? ,"
				+ "address = ? WHERE id = ?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, loginId);
			ps.setString(2, loginPass);
			ps.setString(3, userName);
			ps.setString(4, phoneNumber);
			ps.setString(5, mailAddress);
			ps.setString(6, domain);
			ps.setString(7, address);
			ps.setString(8, id);


			ps.execute();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}



}
