package com.partdb.eigs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.partdb.eigs.generalinfo.iGeneralInfoService;
import com.partdb.eigs.productinfo.iProductInfoService;
import com.partdb.eigs.qualityactivity.iQualityActivityService;
import com.partdb.eigs.dataImport.Import;

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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		String user = "postgres";
		String driver = "org.postgresql.Driver";
/*		String url = "jdbc:postgresql://localhost:5433/EIGS_DB";
		String password = "postgre";*/
		String url = "jdbc:postgresql://112.160.65.98:5432/EIGS_DB";
		String password = "1234";
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select companycode from companybaseinfo";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			model.addAttribute("id", rs.getString("companycode"));

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
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
	
	@RequestMapping(value="/deleteData.do")
	public @ResponseBody
	int deleteData(@RequestParam Map<String, Object> paraMap) {
		int returnValue = 0;
		String viewName = paraMap.get("viewName").toString();
		
		switch (viewName) {
		case "general/companyData":
			myGeneralInfoService.deleteCompanyData(paraMap);
			break;
		case "general/companyOrg":
			myGeneralInfoService.deleteCompanyOrg(paraMap);
			break;
		case "general/companyStr":
			myGeneralInfoService.deleteCompanyStr(paraMap);
			break;
		case "general/companyFinance":
			myGeneralInfoService.deleteCompanyFinance(paraMap);
			break;
			
		case "quality/companyInno":
			myQualityActivityService.deleteCompanyInno(paraMap);
			break;
		case "quality/companyQuality":
			myQualityActivityService.deleteCompanyQuality(paraMap);
			break;
		case "quality/companyHSE":
			myQualityActivityService.deleteCompanyHSE(paraMap);
			break;
		case "quality/companySkill":
			myQualityActivityService.deleteCompanySkill(paraMap);
			break;
		case "quality/companyHR":
			myQualityActivityService.deleteCompanyHR(paraMap);
			break;
			
		case "product/companySupply":
			myProductInfoService.deleteCompanySupply(paraMap);
			break;
		case "product/companyProduct":
			myProductInfoService.deleteCompanyProduct(paraMap);
			break;
		default :
			break;
		}	
		
		return returnValue;
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
