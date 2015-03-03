package com.partdb.eigs.generalinfo;

import java.util.List;
import java.util.Map;

public interface iGeneralInfoDao {
	public List<?> selectCompanyData(Map<String, Object> paraMap);
}
