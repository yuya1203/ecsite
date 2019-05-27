package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.CartInfoDAO;
import com.internousdev.ecsite.dto.CartInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class AdminCartInfoAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	private List<CartInfoDTO> cartInfoDtoList = new ArrayList<CartInfoDTO>();
	public String execute(){


		//全カート情報を取得します
		CartInfoDAO cartInfoDao = new CartInfoDAO();
		cartInfoDtoList = cartInfoDao.getCartInfoDtoListByAdmin();
		Iterator<CartInfoDTO> iterator = cartInfoDtoList.iterator();
		if(!(iterator.hasNext())){
			cartInfoDtoList = null;
		}
		session.put("cartInfoDtoList", cartInfoDtoList);

		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public Map<String,Object> getSession(){
		return session;
	}
}
