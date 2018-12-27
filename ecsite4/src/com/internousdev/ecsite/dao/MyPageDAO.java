package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.MyPageDTO;
import com.internousdev.ecsite.util.DBConnector;

public class MyPageDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	MyPageDTO dto = new MyPageDTO();

	public MyPageDTO Confirmation(String loginId) throws SQLException{

		String sql = "SELECT phone_number,mail_address FROM login_user_transaction WHERE id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1,loginId);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				dto.setPhoneNumber(rs.getString("phone_number"));
				dto.setMailAddress(rs.getString("mail_address"));
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return dto;

	}

}
