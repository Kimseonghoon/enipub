package com.partdb.eigs.qualityactivity;

import java.util.List;
import java.util.Map;

public interface iQualityActivityDao {
	public List<?> selectCompanyData(Map<String, Object> paraMap);
}
