package com.partdb.eigs.productinfo;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.partdb.eigs.generalinfo.iGeneralInfoDao;

public class ProductInfoDaoImpl extends SqlSessionDaoSupport implements iProductInfoDao{
	@Override
	public List<?> selectCompanySupplyTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("ProductInfoSqlMap.selectCompanySupplyTable", paraMap);
	}

	@Override
	public List<?> selectCompanySupply(Map<String, Object> paraMap) {
		return getSqlSession().selectList("ProductInfoSqlMap.selectCompanySupply", paraMap);
	}
	
	@Override
	public List<?> selectCompanyProduct(Map<String, Object> paraMap) {
		return getSqlSession().selectList("ProductInfoSqlMap.selectCompanyProduct", paraMap);
	}

	@Override
	public List<?> selectCompanyProductTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("ProductInfoSqlMap.selectCompanyProductTable", paraMap);
	}

	@Override
	public void updateCompanySupply(Map<String, String> paraMap) {
		getSqlSession().selectList("ProductInfoSqlMap.updateCompanySupply", paraMap);	}

	@Override
	public void updateCompanyProduct(Map<String, String> paraMap) {
		getSqlSession().selectList("ProductInfoSqlMap.updateCompanyProduct", paraMap);
	}

	@Override
	public void deleteCompanySupply(Map<String, Object> paraMap) {
		getSqlSession().selectList("ProductInfoSqlMap.deleteCompanySupply", paraMap);
	}

	@Override
	public void deleteCompanyProduct(Map<String, Object> paraMap) {
		getSqlSession().selectList("ProductInfoSqlMap.deleteCompanyProduct", paraMap);
	}

}
