package com.partdb.eigs.generalinfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.partdb.eigs.generalinfo.iGeneralInfoDao;

public class GeneralInfoDaoImpl extends SqlSessionDaoSupport implements iGeneralInfoDao{

	@Override
	public List<?> selectCompanyData(Map<String, Object> paraMap) {
		List<HashMap<String, Object>> tmpTableList = new ArrayList<HashMap<String, Object>>();
		tmpTableList = getSqlSession().selectList("GeneralInfoSqlMap.selectCompanyData", paraMap);
		return tmpTableList;
	}

}
