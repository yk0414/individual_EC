package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemEditCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public void itemEdit(String itemName,String itemPrice,String itemStock,String id) throws SQLException{

		try {
			String sql = "UPDATE item_info_transaction "
					+ "SET item_name=? , item_price=? , item_stock=? "
					+ "WHERE id = ?";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setString(2, itemPrice);
			ps.setString(3, itemStock);
			ps.setString(4, id);
			ps.execute();

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}

}
