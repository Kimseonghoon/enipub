package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

public interface iQualityActivityService {
	public List<?> selectInnoImprove(Map<String, Object> paraMap);

	public List<?> selectCompanyQualityTable(Map<String, Object> paraMap);

	public List<?> selectCompanyQuality(Map<String, Object> paraMap);

	public List<?> selectCompanyHSETable(Map<String, Object> paraMap);

	public List<?> selectCompanyHSE(Map<String, Object> paraMap);

	public List<?> selectCompanyHRTable(Map<String, Object> paraMap);

	public List<?> selectCompanyHR(Map<String, Object> paraMap);
}
