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

	@Override
	public List<?> selectCompanySkill(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanySkill", paraMap);
	}

	@Override
	public List<?> selectCompanySkillTable(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanySkillTable", paraMap);
	}

	@Override
	public void updateInnoImprove(Map<String, String> paraMap) {
		getSqlSession().selectList("QualityActivitySqlMap.updateInnoImprove", paraMap);
	}

	@Override
	public void updateCompanyQuality(Map<String, String> paraMap) {
		getSqlSession().selectList("QualityActivitySqlMap.updateCompanyQuality", paraMap);
	}

	@Override
	public void updateCompanyHSE(Map<String, String> paraMap) {
		getSqlSession().selectList("QualityActivitySqlMap.updateCompanyHSE", paraMap);
	}

	@Override
	public void updateCompanySkill(Map<String, String> paraMap) {
		getSqlSession().selectList("QualityActivitySqlMap.updateCompanySkill", paraMap);
	}

	@Override
	public void updateCompanyHR(Map<String, String> paraMap) {
		getSqlSession().selectList("QualityActivitySqlMap.updateCompanyHR", paraMap);
	}
}
