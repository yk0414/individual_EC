package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemHistoryDAO;
import com.internousdev.ecsite.dao.ProfileEditDAO;
import com.internousdev.ecsite.dto.BuyItemHistoryDTO;
import com.internousdev.ecsite.dto.ProfileEditDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemHistoryAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;
	private BuyItemHistoryDAO buyItemHistoryDAO = new BuyItemHistoryDAO();
	private ArrayList<BuyItemHistoryDTO>myPageList = new ArrayList<BuyItemHistoryDTO>();
	private String deleteFlg;
	private String message;
	ProfileEditDAO dao = new ProfileEditDAO();
	ProfileEditDTO dto = new ProfileEditDTO();
	private String mailAddress;

	public String execute()throws SQLException{
		if(!session.containsKey("id")) {
		//"id"というkeyがsessionの中に存在しない場合
			return ERROR;
		}

		if(deleteFlg == null) {
			String user_master_id = session.get("loginId").toString();
			myPageList = buyItemHistoryDAO.getMyPageUserInfo(user_master_id);
		}else if(deleteFlg.equals("1")) {
			delete();
		}

		dto = dao.ProfileSearch(session.get("loginId").toString());
		mailAddress = dto.getMailAddress();
		String result=SUCCESS;
		return result;
	}

	public void delete() throws SQLException{

		String user_master_id = session.get("loginId").toString();

		int res = buyItemHistoryDAO.buyItemHistoryDelete(user_master_id);

		if(res>0) {
			myPageList = null;
			setMessage("商品情報を正しく削除しました。");
		}else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}
	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}
	public ArrayList<BuyItemHistoryDTO> getMyPageList(){
		return this.myPageList;
	}
	public void setMyPageList(ArrayList<BuyItemHistoryDTO> MyPageList) {
		this.myPageList = MyPageList;
	}
	public String getMessage() {
		return this.message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getMailAddress() {
		return mailAddress;
	}
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}


}
