package com.partdb.eigs.productinfo;

import java.util.List;
import java.util.Map;

public interface iProductInfoDao {
	public List<?> selectCompanySupplyTable(Map<String, Object> paraMap);

	public List<?> selectCompanySupply(Map<String, Object> paraMap);
	
	public List<?> selectCompanyProduct(Map<String, Object> paraMap);

	public List<?> selectCompanyProductTable(Map<String, Object> paraMap);
}