package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

public interface iQualityActivityDao {
	public List<?> selectInnoImprove(Map<String, Object> paraMap);

	public List<?> selectCompanyQualityTable(Map<String, Object> paraMap);

	public List<?> selectCompanyQuality(Map<String, Object> paraMap);

	public List<?> selectCompanyHSETable(Map<String, Object> paraMap);

	public List<?> selectCompanyHSE(Map<String, Object> paraMap);

	public List<?> selectCompanyHRTable(Map<String, Object> paraMap);

	public List<?> selectCompanyHR(Map<String, Object> paraMap);

	public List<?> selectCompanySkill(Map<String, Object> paraMap);

	public List<?> selectCompanySkillTable(Map<String, Object> paraMap);

	public void updateInnoImprove(Map<String, String> paramcreate);

	public void updateCompanyQuality(Map<String, String> paramcreate);

	public void updateCompanyHSE(Map<String, String> paramcreate);

	public void updateCompanySkill(Map<String, String> paramcreate);

	public void updateCompanyHR(Map<String, String> paramcreate);
}
