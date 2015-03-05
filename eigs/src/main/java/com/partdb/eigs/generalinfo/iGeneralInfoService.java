package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

public interface iGeneralInfoService {
	public List<?> selectCompanyData(Map<String, Object> paraMap);

	public List<?> selectCompanyOrg(Map<String, Object> paraMap);

	public List<?> selectCompanyOrgTable(Map<String, Object> paraMap);

	public List<?> selectCompanyStr(Map<String, Object> paraMap);

	public List<?> selectCompanyFinanceTable(Map<String, Object> paraMap);

	public List<?> selectCompanyFinance(Map<String, Object> paraMap);
}
