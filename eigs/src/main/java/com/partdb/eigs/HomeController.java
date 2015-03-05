package com.partdb.eigs;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private iGeneralInfoService myGeneralInfoService;
		
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );		
		return "home";
	}
	
	@RequestMapping(value="/getView.do")
	public String formviews(@RequestParam Map<String, Object> paraMap) {		
		String returnString ="";	
		
		if(paraMap.get("viewName").equals(null)) {
			returnString = "";
		} else {			
			returnString = "main/content/"+paraMap.get("viewName");			
		}
		
		if(paraMap.get("type").equals("DataTable")) {
			returnString += "Table";
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
			if(paraMap.get("type").equals("DataTable")) {
				returnValue = myGeneralInfoService.selectCompanyOrgTable(paraMap);			
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myGeneralInfoService.selectCompanyOrg(paraMap);
			}
			break;
		case "general/companyStr":
			returnValue = myGeneralInfoService.selectCompanyStr(paraMap);
			System.out.println(returnValue);
			break;
		case "general/companyFinance":
			if(paraMap.get("type").equals("DataTable")) {
				returnValue = myGeneralInfoService.selectCompanyFinanceTable(paraMap);			
			} else if(paraMap.get("type").equals("DataForm")) {
				returnValue = myGeneralInfoService.selectCompanyFinance(paraMap);
			}
			break;
		default:
			break;
		}
		return returnValue;
	}
	
}
