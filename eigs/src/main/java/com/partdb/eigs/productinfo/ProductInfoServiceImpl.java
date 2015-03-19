package com.partdb.eigs.productinfo;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.HelperClass;

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
	@Override
	public void updateCompanySupply(Map<String, Object> paraMap) {
		productInfoDao.updateCompanySupply(HelperClass.PARAMCREATE(paraMap));		
	}
	@Override
	public void updateCompanyProduct(Map<String, Object> paraMap) {
		productInfoDao.updateCompanyProduct(HelperClass.PARAMCREATE(paraMap));			
	}
	@Override
	public void deleteCompanySupply(Map<String, Object> paraMap) {
		productInfoDao.deleteCompanySupply(paraMap);	
	}
	@Override
	public void deleteCompanyProduct(Map<String, Object> paraMap) {
		productInfoDao.deleteCompanyProduct(paraMap);	
	}
}
