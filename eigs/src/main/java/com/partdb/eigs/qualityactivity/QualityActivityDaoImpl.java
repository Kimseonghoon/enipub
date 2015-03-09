package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.partdb.eigs.qualityactivity.iQualityActivityDao;

public class QualityActivityDaoImpl extends SqlSessionDaoSupport implements iQualityActivityDao{
	@Override
	public List<?> selectCompanyData(Map<String, Object> paraMap) {
		return getSqlSession().selectList("QualityActivitySqlMap.selectCompanyData", paraMap);
	}
}
