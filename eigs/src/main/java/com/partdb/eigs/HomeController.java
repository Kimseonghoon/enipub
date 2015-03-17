package com.partdb.eigs;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.partdb.eigs.generalinfo.iGeneralInfoService;
import com.partdb.eigs.productinfo.iProductInfoService;
import com.partdb.eigs.qualityactivity.iQualityActivityService;
import com.partdb.eigs.dataImport.Import;
import com.partdb.eigs.generalinfo.GeneralInfoModel;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private iGeneralInfoService myGeneralInfoService;
	@Autowired
	private iQualityActivityService myQualityActivityService;
	@Autowired
	private iProductInfoService myProductInfoService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );		
		return "index";
	}
	
	@RequestMapping(value="/getView.do")
	public String formviews(@RequestParam Map<String, Object> paraMap) {		
		String returnString ="";	
		
		if(paraMap.get("viewName").equals(null)) {
			returnString = "";
		} else {			
			returnString = "main/content/"+paraMap.get("viewName");			
		}
		
		if(paraMap.get("type").equals("DataGrid")) {
			returnString += "Grid";
		}		
		return returnString;		
	}
	
	@RequestMapping(value="/getData.do")
	public @ResponseBody
	List<?> selectTableData(@RequestParam Map<String, Object> paraMap) {	
		List<?> returnValue = new ArrayList<HashMap<String,Object>>();
		
		String viewName = paraMap.get("viewName").toString();		
		switch (viewName) {
		case "general/companyData":
			returnValue = myGeneralInfoService.selectCompanyData(paraMap);
			break;
		case "general/companyOrg":
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myGeneralInfoService.selectCompanyOrgTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myGeneralInfoService.selectCompanyOrg(paraMap);
			}
			break;
		case "general/companyStr":
			returnValue = myGeneralInfoService.selectCompanyStr(paraMap);
			break;
		case "general/companyFinance":
			if(paraMap.get("type").equals("DataGrid")) {				
				returnValue = myGeneralInfoService.selectCompanyFinanceTable(paraMap);			
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myGeneralInfoService.selectCompanyFinance(paraMap);
			}
			break;
		case "quality/companyInno":
			returnValue = myQualityActivityService.selectInnoImprove(paraMap);
			break;
		case "quality/companyQuality":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myQualityActivityService.selectCompanyQualityTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myQualityActivityService.selectCompanyQuality(paraMap);
			}
			
			break;
		case "quality/companyHSE":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myQualityActivityService.selectCompanyHSETable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myQualityActivityService.selectCompanyHSE(paraMap);
			}			
			break;
		case "quality/companySkill":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myQualityActivityService.selectCompanySkillTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myQualityActivityService.selectCompanySkill(paraMap);
			}			
			break;
		case "quality/companyHR":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myQualityActivityService.selectCompanyHRTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myQualityActivityService.selectCompanyHR(paraMap);
			}			
			break;			
		case "product/companySupply":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myProductInfoService.selectCompanySupplyTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myProductInfoService.selectCompanySupply(paraMap);
			}			
			break;
		case "product/companyProduct":			
			if(paraMap.get("type").equals("DataGrid")) {
				returnValue = myProductInfoService.selectCompanyProductTable(paraMap);
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myProductInfoService.selectCompanyProduct(paraMap);
			}
			
			break;
			
		default:
			break;
		}
		return returnValue;
	}
	
	@RequestMapping(value="/updateData.do")
	public @ResponseBody
	void updateTableData(@RequestParam Map<String, Object> paraMap) {
		String viewName = paraMap.get("viewName").toString();		
		switch (viewName) {
		case "general/companyData":
			myGeneralInfoService.updateCompanyData(paraMap);
			break;
		case "general/companyOrg":
			myGeneralInfoService.updateCompanyOrg(paraMap);			
			break;
		case "general/companyStr":
			myGeneralInfoService.updateCompanyStr(paraMap);
			break;
		case "general/companyFinance":
			myGeneralInfoService.updateCompanyFinance(paraMap);
			break;
			
		case "quality/companyInno":
			System.out.println(paraMap);
			myQualityActivityService.updateInnoImprove(paraMap);
			break;
		case "quality/companyQuality":			
			myQualityActivityService.updateCompanyQuality(paraMap);
			break;
		case "quality/companyHSE":			
			myQualityActivityService.updateCompanyHSE(paraMap);
			break;
		case "quality/companySkill":			
			myQualityActivityService.updateCompanySkill(paraMap);
			break;
		case "quality/companyHR":			
			myQualityActivityService.updateCompanyHR(paraMap);
			break;	
			
		case "product/companySupply":			
			myProductInfoService.updateCompanySupply(paraMap);
			break;
		case "product/companyProduct":			
			myProductInfoService.updateCompanyProduct(paraMap);
			break;
			
		default:
			break;
		}
	}
	
	@RequestMapping(value="/dataImport.do")
	public @ResponseBody
	void dataImport(@RequestParam Map<String, Object> paraMap, HttpServletRequest request, HttpServletResponse response) {		
		try {		
			Import dataImport = new Import();	
			dataImport.callImport(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
