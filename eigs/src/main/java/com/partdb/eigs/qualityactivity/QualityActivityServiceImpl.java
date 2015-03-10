package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.qualityactivity.iQualityActivityService;
import com.partdb.eigs.qualityactivity.iQualityActivityDao;

public class QualityActivityServiceImpl implements iQualityActivityService{
	private iQualityActivityDao qualityActivityDao;
	
	public void setQualityActivityDao(iQualityActivityDao qualityActivityDao){
		this.qualityActivityDao = qualityActivityDao;
	}
	
	@Override
	public List<?> selectInnoImprove(Map<String, Object> paraMap) {		
		return qualityActivityDao.selectInnoImprove(paraMap);
	}

	@Override
	public List<?> selectCompanyQualityTable(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyQualityTable(paraMap);
	}

	@Override
	public List<?> selectCompanyQuality(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyQuality(paraMap);
	}

	@Override
	public List<?> selectCompanyHSETable(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyHSETable(paraMap);
	}

	@Override
	public List<?> selectCompanyHSE(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyHSE(paraMap);
	}

	@Override
	public List<?> selectCompanyHRTable(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyHRTable(paraMap);
	}

	@Override
	public List<?> selectCompanyHR(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanyHR(paraMap);
	}
}
