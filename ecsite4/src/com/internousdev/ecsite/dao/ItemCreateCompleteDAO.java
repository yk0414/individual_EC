package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class ItemCreateCompleteDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();

	String sql ="insert into item_info_transaction(item_name,item_price,item_stock,insert_date)VALUES(?,?,?,?)";

	public void ItemCreate(String itemName,int itemPrice,int itemStock)throws SQLException{

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setInt(2, itemPrice);
			ps.setInt(3, itemStock);
			ps.setString(4,dateUtil.getDate());

			ps.execute();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}

	}

}
