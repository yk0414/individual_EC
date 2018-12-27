package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class BuyItemCompleteDAO {

	private DateUtil dateUtil = new DateUtil();
	private String stock;
	private int id;

	public void buyItemInfo(String item_transaction_id,String total_price,
			String total_count,String user_master_id,String pay)throws SQLException{

		String sql = "INSERT INTO user_buy_item_transaction"
				+ "(item_transaction_id,total_price,total_count,user_master_id,pay,insert_date)"
				+ "VALUES(?,?,?,?,?,?)";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {

			PreparedStatement ps;
			ps = con.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, total_price);
			ps.setString(3, total_count);
			ps.setString(4, user_master_id);
			ps.setString(5, pay);
			ps.setString(6, dateUtil.getDate());
			ps.execute();


		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}

	}

	public String selectStock(String item_transaction_id) throws SQLException{

		String sql1 = "SELECT item_stock FROM item_info_transaction WHERE id = ?";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {

			PreparedStatement ps1 = con.prepareStatement(sql1);
			ps1.setString(1,item_transaction_id);
			ResultSet rs = ps1.executeQuery();

			while(rs.next()) {
				stock = rs.getString("item_stock");
			}


		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return stock;

	}

	public void itemStockCount(String item_transaction_id,String total_count) throws SQLException{


		String sql2 = "UPDATE item_info_transaction SET item_stock = ? - ? WHERE id = ?";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();


		try {

			PreparedStatement ps2 = con.prepareStatement(sql2);
			ps2.setString(1,stock);
			ps2.setString(2,total_count);
			ps2.setString(3,item_transaction_id);
			ps2.execute();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}

	public void itemStockNull(String item_transaction_id) throws SQLException{

		String sql3 = "SELECT item_stock FROM item_info_transaction WHERE id = ?";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {
			PreparedStatement ps3 = con.prepareStatement(sql3);
			ps3.setString(1, item_transaction_id);
			ResultSet rs = ps3.executeQuery();

			while(rs.next()) {
				id = Integer.parseInt(rs.getString("item_stock"));
			}
			System.out.println(rs.getString("item_stock"));
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}


	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

}
