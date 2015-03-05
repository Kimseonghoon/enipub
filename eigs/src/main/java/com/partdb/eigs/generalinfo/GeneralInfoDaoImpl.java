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
		System.out.println(getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyFinanceTable", paraMap));
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyFinanceTable", paraMap);
	}

	@Override
	public List<?> selectCompanyFinance(Map<String, Object> paraMap) {
		return getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyFinance", paraMap);
	}
}
