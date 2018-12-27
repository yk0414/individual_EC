package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.util.DBConnector;

public class LoginDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private LoginDTO loginDTO = new LoginDTO();

	public LoginDTO getLoginUserInfo(String loginUserId,String loginPassword) {

		String sql="SELECT * FROM login_user_transaction where login_id=? AND login_pass=?";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1,loginUserId);
			ps.setString(2,loginPassword);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				loginDTO.setId(rs.getString("id"));
				loginDTO.setLoginId(rs.getString("login_id"));
				loginDTO.setLoginPassword(rs.getString("login_pass"));
				loginDTO.setUserName(rs.getString("user_name"));
				loginDTO.setAddress(rs.getString("address"));

				if(!(rs.getString("login_id").equals(null))) {
					loginDTO.setLoginFlg(true);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return loginDTO;
	}
	public LoginDTO getloginDTO() {
		return loginDTO;
	}

}
