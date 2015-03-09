package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.qualityactivity.iQualityActivityService;
import com.partdb.eigs.qualityactivity.iQualityActivityDao;

public class QualityActivityServiceImpl implements iQualityActivityService{
	private iQualityActivityDao qualityActivityDao;
	
	public void setGeneralInfoDao(iQualityActivityDao qualityActivityDao){
		this.qualityActivityDao = qualityActivityDao;
	}
	
	@Override
	public List<?> selectCompanyData(Map<String, Object> paraMap) {		
		return qualityActivityDao.selectCompanyData(paraMap);
	}
}
