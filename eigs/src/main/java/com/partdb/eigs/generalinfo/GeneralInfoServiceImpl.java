package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

import com.partdb.eigs.generalinfo.iGeneralInfoService;
import com.partdb.eigs.generalinfo.iGeneralInfoDao;
import com.partdb.eigs.HelperClass;

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
	@Override
	public List<?> selectCompanyStr(Map<String, Object> paraMap) {
		return generalInfoDao.selectCompanyStr(paraMap);
	}
	@Override
	public List<?> selectCompanyFinanceTable(Map<String, Object> paraMap) {
		return generalInfoDao.selectCompanyFinanceTable(paraMap);
	}
	@Override
	public List<?> selectCompanyFinance(Map<String, Object> paraMap) {
		return generalInfoDao.selectCompanyFinance(paraMap);
	}
	@Override
	public void updateCompanyData(Map<String, Object> paraMap) {
		generalInfoDao.updateCompanyData(HelperClass.PARAMCREATE(paraMap));		
	}
	@Override
	public void updateCompanyOrg(Map<String, Object> paraMap) {
		generalInfoDao.updateCompanyOrg(HelperClass.PARAMCREATE(paraMap));
	}
	@Override
	public void updateCompanyStr(Map<String, Object> paraMap) {
		generalInfoDao.updateCompanyStr(HelperClass.PARAMCREATE(paraMap));
	}
	@Override
	public void updateCompanyFinance(Map<String, Object> paraMap) {
		generalInfoDao.updateCompanyFinance(HelperClass.PARAMCREATE(paraMap));
	}

	@Override
	public void deleteCompanyData(Map<String, Object> paraMap) {
		generalInfoDao.deleteCompanyData(paraMap);
	}

	@Override
	public void deleteCompanyOrg(Map<String, Object> paraMap) {
		generalInfoDao.deleteCompanyOrg(paraMap);
	}
	
	@Override
	public void deleteCompanyStr(Map<String, Object> paraMap) {
		generalInfoDao.deleteCompanyStr(paraMap);
	}

	@Override
	public void deleteCompanyFinance(Map<String, Object> paraMap) {
		generalInfoDao.deleteCompanyFinance(paraMap);
	}
}
