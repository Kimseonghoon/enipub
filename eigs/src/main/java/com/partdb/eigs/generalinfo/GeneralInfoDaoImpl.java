package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.partdb.eigs.generalinfo.iGeneralInfoDao;

public class GeneralInfoDaoImpl extends SqlSessionDaoSupport implements iGeneralInfoDao{

	@Override
	public List<?> selectCompanyData(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyData", paraMap);
	}

	@Override
	public List<?> selectCompanyOrg(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyOrg", paraMap);
	}

	@Override
	public List<?> selectCompanyOrgTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyOrgTable", paraMap);
	}

	@Override
	public List<?> selectCompanyStr(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyStr", paraMap);
	}

	@Override
	public List<?> selectCompanyFinanceTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyFinanceTable", paraMap);
	}

	@Override
	public List<?> selectCompanyFinance(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyFinance", paraMap);
	}

	@Override
	public void updateCompanyData(Map<String, String> paraMap) {
		getSqlSession().selectList("GeneralInfoSqlMap.updateCompanyData", paraMap);
		
	}

	@Override
	public void updateCompanyOrg(Map<String, String> paraMap) {
		getSqlSession().selectList("GeneralInfoSqlMap.updateCompanyOrg", paraMap);
	}

	@Override
	public void updateCompanyStr(Map<String, String> paraMap) {
		getSqlSession().selectList("GeneralInfoSqlMap.updateCompanyStr", paraMap);
	}

	@Override
	public void updateCompanyFinance(Map<String, String> paraMap) {
		getSqlSession().selectList("GeneralInfoSqlMap.updateCompanyFinance", paraMap);
	}

	@Override
	public void deleteCompanyData(Map<String, Object> paraMap) {
		getSqlSession().delete("GeneralInfoSqlMap.deleteCompanyData", paraMap);
	}

	@Override
	public void deleteCompanyOrg(Map<String, Object> paraMap) {
		getSqlSession().delete("GeneralInfoSqlMap.deleteCompanyOrg", paraMap);
	}
	
	@Override
	public void deleteCompanyStr(Map<String, Object> paraMap) {
		getSqlSession().delete("GeneralInfoSqlMap.deleteCompanyStr", paraMap);
	}

	@Override
	public void deleteCompanyFinance(Map<String, Object> paraMap) {
		getSqlSession().delete("GeneralInfoSqlMap.deleteCompanyFinance", paraMap);
	}
	
}
