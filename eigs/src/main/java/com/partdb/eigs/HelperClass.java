package com.partdb.eigs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HelperClass {
	public static  Map<String, String> PARAMCREATE(Map<String, Object> paraMap) {
		Map<String, String> updateData = new HashMap<String, String>();
		Object[] keySet = paraMap.keySet().toArray();
		
		List<String> keyList = new ArrayList<String>();
		for(int i=0; i < keySet.length; i++) {		
			if(keySet[i].toString().contains("updateData")) {
				keyList.add(paraMap.get(keySet[i]).toString());
			}
		}
		
		for(int i=0; i < keySet.length; i++) {				
			if(keySet[i].toString().contains("updateData")&&keySet[i].toString().contains("key")) {
				updateData.put(paraMap.get(keySet[i]).toString(), paraMap.get(keySet[i+1]).toString().toString());

			}
		}
		updateData.put("id", paraMap.get("id").toString());	
		
		return updateData;
	}
	
}
