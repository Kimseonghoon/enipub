package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.qualityactivity.iQualityActivityService;
import com.partdb.eigs.qualityactivity.iQualityActivityDao;

import com.partdb.eigs.HelperClass;

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

	@Override
	public List<?> selectCompanySkill(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanySkill(paraMap);
	}

	@Override
	public List<?> selectCompanySkillTable(Map<String, Object> paraMap) {
		return qualityActivityDao.selectCompanySkillTable(paraMap);
	}

	@Override
	public void updateInnoImprove(Map<String, Object> paraMap) {		
		qualityActivityDao.updateInnoImprove(HelperClass.PARAMCREATE(paraMap));		
	}

	@Override
	public void updateCompanyQuality(Map<String, Object> paraMap) {
		qualityActivityDao.updateCompanyQuality(HelperClass.PARAMCREATE(paraMap));		
	}

	@Override
	public void updateCompanyHSE(Map<String, Object> paraMap) {
		qualityActivityDao.updateCompanyHSE(HelperClass.PARAMCREATE(paraMap));		
	}

	@Override
	public void updateCompanySkill(Map<String, Object> paraMap) {
		qualityActivityDao.updateCompanySkill(HelperClass.PARAMCREATE(paraMap));		
	}

	@Override
	public void updateCompanyHR(Map<String, Object> paraMap) {
		qualityActivityDao.updateCompanyHR(HelperClass.PARAMCREATE(paraMap));		
	}
}
