package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteConfirmDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int itemListHistoryDelete() throws SQLException{

		String sql ="delete from item_info_transaction";

		PreparedStatement ps;
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return result;
	}


}
