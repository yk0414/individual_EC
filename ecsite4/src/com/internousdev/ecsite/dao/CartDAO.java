package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class CartDAO {

	private DateUtil dateUtil = new DateUtil();

	public void CartInsert(String id,String itemName,String totalPrice,
			String totalCount,String userMasterId) throws SQLException{

		String sql = "INSERT INTO item_cart_transaction"
				+ "(item_transaction_id,item_name,total_price,total_count,"
				+ "user_master_id,insert_date) VALUE(?,?,?,?,?,?)";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, itemName);
			ps.setString(3, totalPrice);
			ps.setString(4, totalCount);
			ps.setString(5, userMasterId);
			ps.setString(6, dateUtil.getDate());
			ps.execute();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}

	}

	public ArrayList<BuyItemHistoryDTO> CartListSelect(String userMasterId) throws SQLException{

		String sql = "SELECT * FROM item_cart_transaction "
				+ "WHERE user_master_id = ?";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<BuyItemHistoryDTO> cartList = new ArrayList<BuyItemHistoryDTO>();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userMasterId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
				dto.setId(rs.getString("item_transaction_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setTotalPrice(rs.getString("total_price"));
				dto.setTotalCount(rs.getString("total_count"));
				dto.setUserMasterId(rs.getString("user_master_id"));
				cartList.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			con.close();
		}
		return cartList;

	}

	public void CartBuy(String id,String totalPrice,String totalCount,
			String userMasterId,String pay) throws SQLException{

		String sql = "INSERT INTO user_buy_item_transaction"
				+ "(item_transaction_id,total_price,total_count,"
				+ "user_master_id,pay,insert_date) VALUE(?,?,?,?,?,?)";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, totalPrice);
			ps.setString(3, totalCount);
			ps.setString(4, userMasterId);
			ps.setString(5, pay);
			ps.setString(6, dateUtil.getDate());
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
	}

	public void CartBuyDelete(String userMasterId) throws SQLException{

		String sql = "DELETE FROM item_cart_transaction "
				+ "WHERE user_master_id = ?";

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userMasterId);
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}

	}

}
