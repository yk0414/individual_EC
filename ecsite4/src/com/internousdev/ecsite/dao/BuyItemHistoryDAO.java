package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.internousdev.ecsite.util.DBConnector;


public class BuyItemHistoryDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection con = dbConnector.getConnection();

	public ArrayList<BuyItemHistoryDTO> getMyPageUserInfo(String user_master_id)throws SQLException{

		ArrayList<BuyItemHistoryDTO>myPageDTO = new ArrayList<BuyItemHistoryDTO>();

		String sql = "SELECT ubit.id,iit.item_name,ubit.total_price,ubit.total_count,ubit.pay,ubit.insert_date "
				+ "FROM user_buy_item_transaction ubit "
				+ "LEFT JOIN item_info_transaction iit "
				+ "ON ubit.item_transaction_id=iit.id "
				+ "WHERE ubit.user_master_id=? "
				+ "ORDER BY insert_date DESC";

		try {
			PreparedStatement preparedStatement = con.prepareStatement(sql);

			preparedStatement.setString(1, user_master_id);

			ResultSet rs = preparedStatement.executeQuery();

			while(rs.next()) {
				BuyItemHistoryDTO dto = new BuyItemHistoryDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setTotalPrice(rs.getString("total_price"));
				dto.setTotalCount(rs.getString("total_count"));
				dto.setPayment(rs.getString("pay"));
				dto.setInsert_date(rs.getString("insert_date"));
				myPageDTO.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return myPageDTO;
	}

	public int buyItemHistoryDelete(String user_master_id)throws SQLException{

		String sql ="DELETE FROM user_buy_item_transaction WHERE user_master_id=?";

		PreparedStatement ps;
		int result = 0;
		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, user_master_id);
			result = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return result;
	}

}
