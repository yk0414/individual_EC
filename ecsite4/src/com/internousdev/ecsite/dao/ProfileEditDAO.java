package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.ProfileEditDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ProfileEditDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	ProfileEditDTO dto = new ProfileEditDTO();

	public ProfileEditDTO ProfileSearch(String loginId) throws SQLException{

		String sql = "SELECT * FROM login_user_transaction WHERE id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1,loginId);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setPhoneNumber(rs.getString("phone_number"));
				dto.setMailAddress(rs.getString("mail_address"));
				dto.setDomain(rs.getString("domain"));
				dto.setAddress(rs.getString("address"));
				dto.setInsertDate(rs.getString("insert_date"));
			}

			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				con.close();
		}
		return dto;

	}

}
