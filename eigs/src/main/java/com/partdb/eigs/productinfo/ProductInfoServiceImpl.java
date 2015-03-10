package com.partdb.eigs.productinfo;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.generalinfo.iGeneralInfoService;
import com.partdb.eigs.generalinfo.iGeneralInfoDao;

public class ProductInfoServiceImpl implements iProductInfoService{
	private iProductInfoDao productInfoDao;
	
	public void setProductInfoDao(iProductInfoDao productInfoDao){
		this.productInfoDao = productInfoDao;
	}
	@Override
	public List<?> selectCompanyProduct(Map<String, Object> paraMap) {		
		return productInfoDao.selectCompanyProduct(paraMap);
	}
	@Override
	public List<?> selectCompanyProductTable(Map<String, Object> paraMap) {
		return productInfoDao.selectCompanyProductTable(paraMap);
	}
	@Override
	public List<?> selectCompanySupplyTable(Map<String, Object> paraMap) {
		return productInfoDao.selectCompanySupplyTable(paraMap);
	}
	@Override
	public List<?> selectCompanySupply(Map<String, Object> paraMap) {
		return productInfoDao.selectCompanySupply(paraMap);
	}
}
