package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.generalinfo.iGeneralInfoService;
import com.partdb.eigs.generalinfo.iGeneralInfoDao;

public class GeneralInfoServiceImpl implements iGeneralInfoService{
	private iGeneralInfoDao generalInfoDao;
	
	public void setGeneralInfoDao(iGeneralInfoDao generalInfoDao){
		this.generalInfoDao = generalInfoDao;
	}
	@Override
	public List<?> selectCompanyData(Map<String, Object> paraMap) {		
		return generalInfoDao.selectCompanyData(paraMap);
	}
	@Override
	public List<?> selectCompanyOrg(Map<String, Object> paraMap) {		
		return generalInfoDao.selectCompanyOrg(paraMap);
	}
	@Override
	public List<?> selectCompanyOrgTable(Map<String, Object> paraMap) {
		return generalInfoDao.selectCompanyOrgTable(paraMap);
	}

}
