package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.DestinationInfoDAO;
import com.internousdev.ecsite.dto.DestinationInfoDTO;
import com.internousdev.ecsite.dto.PurchaseHistoryInfoDTO;
import com.internousdev.ecsite.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class SettlementConfirmAction extends ActionSupport implements SessionAware {

	private String categoryId;
	private Collection<String> checkList;
	private String productId;
	private String productName;
	private String productNameKana;
	private String imageFilePath;
	private String imageFileName;
	private String price;
	private String releaseDate;
	private String releaseCompany;
	private String productCount;
	private String subtotal;
	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;

		if (session.containsKey("loginId")) {
			DestinationInfoDAO dao = new DestinationInfoDAO();
			List<DestinationInfoDTO> dtoList = new ArrayList<>();
			try {
				dtoList = dao.getDestinationInfo(String.valueOf(session.get("loginId")));
				Iterator<DestinationInfoDTO> iterator = dtoList.iterator();
				if (!(iterator.hasNext())) {
					dtoList = null;
				}
				session.put("destinationInfoDtoList", dtoList);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		List<PurchaseHistoryInfoDTO> dtoList = new ArrayList<PurchaseHistoryInfoDTO>();

		CommonUtility util = new CommonUtility();
		String[] productIdList = util.parseArrayList(productId);
		String[] productNameList = util.parseArrayList(productName);
		String[] productNameKanaList = util.parseArrayList(productNameKana);
		String[] imageFilePathList = util.parseArrayList(imageFilePath);
		String[] imageFileNameList = util.parseArrayList(imageFileName);
		String[] priceList = util.parseArrayList(price);
		String[] releaseDateList = util.parseArrayList(releaseDate);
		String[] releaseCompanyList = util.parseArrayList(releaseCompany);
		String[] productCountList = util.parseArrayList(productCount);
		String[] subtotalList = util.parseArrayList(subtotal);

		for (int i = 0; i < productIdList.length; i++) {
			PurchaseHistoryInfoDTO dto = new PurchaseHistoryInfoDTO();
			dto.setUserId(String.valueOf(session.get("loginId")));
			dto.setProductId(Integer.parseInt(String.valueOf(productIdList[i])));
			dto.setProductName(String.valueOf(productNameList[i]));
			dto.setProductNameKana(String.valueOf(productNameKanaList[i]));
			dto.setImageFilePath(String.valueOf(imageFilePathList[i]));
			dto.setImageFileName(String.valueOf(imageFileNameList[i]));
			dto.setPrice(Integer.parseInt(String.valueOf(priceList[i])));
			dto.setReleaseCompany(String.valueOf(releaseCompanyList[i]));
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
				dto.setReleaseDate(sdf.parse(String.valueOf(releaseDateList[i])));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			dto.setProductCount(Integer.parseInt(String.valueOf(productCountList[i])));
			dto.setSubtotal(Integer.parseInt(String.valueOf(subtotalList[i])));
			dtoList.add(dto);
		}
		session.put("purchaseHistoryInfoDtoList", dtoList);

		if (!session.containsKey("loginId")) {
			result = ERROR;
		} else {
			result = SUCCESS;
		}
		return result;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public Collection<String> getCheckList() {
		return checkList;
	}

	public void setCheckList(Collection<String> checkList) {
		this.checkList = checkList;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductNameKana() {
		return productNameKana;
	}

	public void setProductNameKana(String productNameKana) {
		this.productNameKana = productNameKana;
	}

	public String getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getReleaseCompany() {
		return releaseCompany;
	}

	public void setReleaseCompany(String releaseCompany) {
		this.releaseCompany = releaseCompany;
	}

	public String getProductCount() {
		return productCount;
	}

	public void setProductCount(String productCount) {
		this.productCount = productCount;
	}

	public String getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
