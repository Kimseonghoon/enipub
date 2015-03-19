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

	public List<?> selectCompanySkill(Map<String, Object> paraMap);

	public List<?> selectCompanySkillTable(Map<String, Object> paraMap);

	public void updateInnoImprove(Map<String, Object> paraMap);

	public void updateCompanyQuality(Map<String, Object> paraMap);

	public void updateCompanyHSE(Map<String, Object> paraMap);

	public void updateCompanySkill(Map<String, Object> paraMap);

	public void updateCompanyHR(Map<String, Object> paraMap);
	
	public void deleteCompanyInno(Map<String, Object> paraMap);

	public void deleteCompanyQuality(Map<String, Object> paraMap);

	public void deleteCompanyHSE(Map<String, Object> paraMap);

	public void deleteCompanySkill(Map<String, Object> paraMap);

	public void deleteCompanyHR(Map<String, Object> paraMap);
}
