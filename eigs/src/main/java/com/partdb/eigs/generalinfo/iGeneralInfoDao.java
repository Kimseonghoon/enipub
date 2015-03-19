package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

public interface iGeneralInfoDao {
	public List<?> selectCompanyData(Map<String, Object> paraMap);

	public List<?> selectCompanyOrg(Map<String, Object> paraMap);

	public List<?> selectCompanyOrgTable(Map<String, Object> paraMap);

	public List<?> selectCompanyStr(Map<String, Object> paraMap);

	public List<?> selectCompanyFinanceTable(Map<String, Object> paraMap);

	public List<?> selectCompanyFinance(Map<String, Object> paraMap);

	public void updateCompanyData(Map<String, String> paraMap);

	public void updateCompanyOrg(Map<String, String> paraMap);

	public void updateCompanyStr(Map<String, String> paraMap);

	public void updateCompanyFinance(Map<String, String> paraMap);

	public void deleteCompanyData(Map<String, Object> paraMap);

	public void deleteCompanyOrg(Map<String, Object> paraMap);

	public void deleteCompanyStr(Map<String, Object> paraMap);

	public void deleteCompanyFinance(Map<String, Object> paraMap);
}
