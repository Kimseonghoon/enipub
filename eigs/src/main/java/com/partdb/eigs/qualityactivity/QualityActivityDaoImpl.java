package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.partdb.eigs.qualityactivity.iQualityActivityDao;

public class QualityActivityDaoImpl extends SqlSessionDaoSupport implements iQualityActivityDao{
	@Override
	public List<?> selectInnoImprove(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectInnoImprove", paraMap);
	}

	@Override
	public List<?> selectCompanyQualityTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyQualityTable", paraMap);
	}

	@Override
	public List<?> selectCompanyQuality(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyQuality", paraMap);
	}

	@Override
	public List<?> selectCompanyHSETable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyHSETable", paraMap);
	}

	@Override
	public List<?> selectCompanyHSE(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyHSE", paraMap);
	}

	@Override
	public List<?> selectCompanyHRTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyHRTable", paraMap);
	}

	@Override
	public List<?> selectCompanyHR(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyHR", paraMap);
	}
}
