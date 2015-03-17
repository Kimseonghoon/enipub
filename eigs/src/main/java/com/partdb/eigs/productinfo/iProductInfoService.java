package com.partdb.eigs.productinfo;

import java.util.List;
import java.util.Map;

public interface iProductInfoService {
	public List<?> selectCompanyProduct(Map<String, Object> paraMap);

	public List<?> selectCompanyProductTable(Map<String, Object> paraMap);

	public List<?> selectCompanySupplyTable(Map<String, Object> paraMap);

	public List<?> selectCompanySupply(Map<String, Object> paraMap);

	public void updateCompanySupply(Map<String, Object> paraMap);

	public void updateCompanyProduct(Map<String, Object> paraMap);
}
