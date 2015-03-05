package com.partdb.eigs.dataImport;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.partdb.eigs.dataImport.connectionProvider;

public class Import extends HttpServlet {
	public Import(){
		super();
	}
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        // Do nothing, just show the form.
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
	}	
	
	public void callImport(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ReturnValue = "false";		
		String root = request.getSession().getServletContext().getRealPath("/");		
		String pathname = root+File.separator + "saveFile";		
		File f = new File(pathname);		
		if(! f.exists())
			f.mkdir();
		
		String encType = "UTF-8";
		
		System.out.println(root + ", " + pathname + ", ");
		
		int maxFilesize = 5*1024*1024;		
		try 
	    {
			MultipartRequest mr = new MultipartRequest(request, pathname, maxFilesize, encType, new DefaultFileRenamePolicy());
			
			File file = mr.getFile("file");	
			
			String SelectedItem = mr.getParameter("SheetList");
        	
        	List<String> InsertList = new ArrayList<String>();
        	
        	XSSFWorkbook TemplateData = new XSSFWorkbook(new FileInputStream(new File(file.getPath())));
			
			if(SelectedItem.equals("All Item"))
			{
				String DeleteSQL = "DELETE FROM address;DELETE FROM companybaseinfo;DELETE FROM companyfinance;"
						+ "DELETE FROM companyhr;DELETE FROM companyhsestatistic;DELETE FROM companyinnonimprove;"
						+ "DELETE FROM companyorganization;DELETE FROM companyproducts;DELETE FROM companyquality;"
						+ "DELETE FROM companyskilltrain;DELETE FROM companystructure;DELETE FROM companysupplyhistory;";
				int delInt = DataDelete(DeleteSQL);
				
				String CompanyUUID = UUID.randomUUID().toString();
				
				String HistorySQL = "insert into cmhistory (content, createdate) values ('머라머라머라', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";
				
				InsertList.add(HistorySQL);
				
				InsertList = SheetDataERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetOrganizationERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetStructureERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetFinanceERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetQualityERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetInnoERP(InsertList, TemplateData, CompanyUUID);				
				InsertList = SheetHSEERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetSkillERP(InsertList, TemplateData, CompanyUUID);				
				InsertList = SheetHRERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetSupplyERP(InsertList, TemplateData, CompanyUUID);
				InsertList = SheetProductsERP(InsertList, TemplateData, CompanyUUID);
				
			}else
			{
				
				//�⺻ ȸ�� code�� ������.
				//Company_Data�� Update
				//�׿ܴ� Delete �� insert
				String Com_Code = DataSelect();
				
				if(Com_Code!=null)
				{
					System.out.println("Company Code Search : "+Com_Code);
					
					if(SelectedItem.equals("Company_Data_ERP")){
						
						String DeleteSQL = "DELETE FROM address where assignuuid = '"+Com_Code+"';";
						
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Data ERP 가 업데이트 되었습니다..', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetDataERP_Update(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Organization_ERP")){
						//Address Table���� AssignUUid�� CompanyCode�� ���� �����ϰ� ��λ���+
						String DeleteSQL = "DELETE FROM companyorganization; DELETE FROM address where assignuuid != '"+Com_Code+"';";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Organization ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetOrganizationERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Structure_ERP")){
						String DeleteSQL = "DELETE FROM companystructure";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Structure ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetStructureERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Finance_ERP")){
						String DeleteSQL = "DELETE FROM companyfinance";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Finance ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetFinanceERP(InsertList, TemplateData, Com_Code);
					}
					if(SelectedItem.equals("Company_Quality_ERP")){
						String DeleteSQL = "DELETE FROM companyquality";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Quality ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetQualityERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Inno&Improve_ERP")){
						String DeleteSQL = "DELETE FROM companyinnonimprove";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Inno&Improve ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetInnoERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_HSE_Statistic")){
						String DeleteSQL = "DELETE FROM companyhsestatistic";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company HSE Statistic 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetHSEERP(InsertList, TemplateData, Com_Code);
					}

					if(SelectedItem.equals("Company_Skill&TrainG")){
						String DeleteSQL = "DELETE FROM companyskilltrain";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Skill&TrainG 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetSkillERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_HR_ERP")){
						String DeleteSQL = "DELETE FROM companyhr";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company HR ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetHRERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Supply_History_ERP")){
						String DeleteSQL = "DELETE FROM companysupplyhistory";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Supply History ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetSupplyERP(InsertList, TemplateData, Com_Code);
					}
					
					if(SelectedItem.equals("Company_Products&Service_ERP")){
						String DeleteSQL = "DELETE FROM companyproducts";
						int delInt = DataDelete(DeleteSQL);
						
						String HistorySQL = "insert into cmhistory (content, createdate) values ('Company Products&Service ERP 가 업데이트 되었습니다.', '"+ new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime())+"');";						
						InsertList.add(HistorySQL);
						
						InsertList = SheetProductsERP(InsertList, TemplateData, Com_Code);
					}
				}
			}	
        	
        	for(int i=0; i<InsertList.size(); i++)
        	{
        		SQLWork(InsertList.get(i));
        		System.out.println(InsertList.get(i));
        	}
        	ReturnValue = "true";
        	
		}
		catch(Exception x)
    	{
        	ReturnValue = "false";
        	System.out.println(x+"**");
        	
    	}finally{
    		PrintWriter out = null;
    		//ReturnValue = "true";
    		//response.setContentType("application/x-json; charset=UTF-8"); //HttpServletResponse response
    		out=response.getWriter();	
    		out.print(ReturnValue);
    		out.flush();
    		
    		
		}	
	}
	
	public List<String> SheetDataERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){		
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Data_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 3; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				int cells  = row.getPhysicalNumberOfCells();
				
				String Data_ERP_SQL = "";
	        	String Address_SQL = "";
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					//String CompanyGuid = new  
    				Data_ERP_SQL += " INSERT INTO companybaseinfo ( companycode, companyname, previousname, commonname, homepage, branch) VALUES	(";
    				Data_ERP_SQL += "'" + ItemUuId + "',";
					Data_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
					Data_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
					Data_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
					Data_ERP_SQL += "'" + parserType(row.getCell(13)) + "',";
					Data_ERP_SQL += "'');";
					
					
					Address_SQL += " INSERT INTO address ( addresscode, address_line1, address_line2, townorcity, county, postcode, country, tel, fax, email, assignuuid) VALUES (";
					Address_SQL += "'" + UUID.randomUUID().toString() + "',";
					Address_SQL += "'" + parserType(row.getCell(4)) + "',";
					Address_SQL += "'" + parserType(row.getCell(5)) + "',";
					Address_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(7)) + "',";            				
    				Address_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(9)) + "',";            				
    				Address_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(12)) + "',";
    				Address_SQL += "'" + ItemUuId + "');";
    				
    				if(Data_ERP_SQL != "")
        			{
    					QueryList.add(Data_ERP_SQL);
    					QueryList.add(Address_SQL);	
        			}
				}
			}
		}
		
		
		return QueryList;
	}
	
	public List<String> SheetDataERP_Update(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){		
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Data_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				int cells  = row.getPhysicalNumberOfCells();
				
				String Data_ERP_SQL = "";
	        	String Address_SQL = "";
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					//String CompanyGuid = new  
    				Data_ERP_SQL += " UPDATE companybaseinfo SET companyname = ";    				
					Data_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
					Data_ERP_SQL += "previousname= '" + parserType(row.getCell(2)) + "',";
					Data_ERP_SQL += "commonname='" + parserType(row.getCell(3)) + "',";
					Data_ERP_SQL += "homepage='" + parserType(row.getCell(13)) + "'";
					Data_ERP_SQL += " where companycode = '"+ItemUuId+"'";
					
					
					Address_SQL += " INSERT INTO address ( addresscode, address_line1, address_line2, townorcity, county, postcode, country, tel, fax, email, assignuuid) VALUES (";
					Address_SQL += "'" + UUID.randomUUID().toString() + "',";
					Address_SQL += "'" + parserType(row.getCell(4)) + "',";
					Address_SQL += "'" + parserType(row.getCell(5)) + "',";
					Address_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(7)) + "',";            				
    				Address_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(9)) + "',";            				
    				Address_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(12)) + "',";
    				Address_SQL += "'" + ItemUuId + "');";
    				
    				if(Data_ERP_SQL != "")
        			{
    					QueryList.add(Data_ERP_SQL);
    					QueryList.add(Address_SQL);	
        			}
				}
			}
		}
		
		
		return QueryList;
	}
	
	public List<String> SheetOrganizationERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Organization_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 3; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					String Address_SQL = "";
                	String Org_ERP_SQL = "";
					
					String OrgUUId = UUID.randomUUID().toString();            				
				
    				//String CompanyGuid = new  
    				Org_ERP_SQL += " INSERT INTO companyorganization ( orguuid, division, title, name, jobtitle, companycode) VALUES (";
    				Org_ERP_SQL += "'" + OrgUUId + "',";
    				Org_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Org_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Org_ERP_SQL += "'" + parserType(row.getCell(4))+parserType(row.getCell(3)) + "',";
    				Org_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Org_ERP_SQL += "'" + ItemUuId + "');";            				
					
					
					Address_SQL += " INSERT INTO address ( addresscode, address_line1, address_line2, townorcity, county, postcode, country, tel, fax, email, assignuuid) VALUES (";
					Address_SQL += "'" + UUID.randomUUID().toString() + "',";
					Address_SQL += "'" + parserType(row.getCell(6)) + "',";
					Address_SQL += "'" + parserType(row.getCell(7)) + "',";
					Address_SQL += "'" + parserType(row.getCell(8)) + "',";
					Address_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(9)) + "',";            				
    				Address_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Address_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Address_SQL += "'',";     
    				Address_SQL += "'" + parserType(row.getCell(12)) + "',";            				
    				Address_SQL += "'" + OrgUUId + "');";
    				
    				if(Org_ERP_SQL != "")
        			{
    					QueryList.add(Org_ERP_SQL);
    					QueryList.add(Address_SQL);
        			}
				}
				rowD++;
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetStructureERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Structure_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 3; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				int Cells = row.getPhysicalNumberOfCells();
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					String Structure_ERP_SQL = "";
					
					//String CompanyGuid = new  
    				Structure_ERP_SQL += " INSERT INTO companystructure ( companycode, company_type, reg_country,"
    						+ "reg_name, reg_num, reg_year, vat_reg_num, stock, bankers_name, bank_add, "
    						+ "auditors_name, auditors_add, parent_company, subsidiary, shareholder_1, "
    						+ "shareholder_2, shareholder_3, shareholder_4, staff_num, office_capacity, "
    						+ " workshop_capacity, yard_capacity, authorisation_num, other_customs_info,"
    						+ "authorising_country, duns_num ) VALUES (";
    				Structure_ERP_SQL += "'" +  ItemUuId + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(4)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(7)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(9)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(12)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(13)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(14)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(15)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(16)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(17)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(18)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(19)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(20)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(21)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(22)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(23)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(24)) + "',";
    				Structure_ERP_SQL += "'" + parserType(row.getCell(25)) + "');";
    				
    				if(Structure_ERP_SQL  != "")
        			{
    					QueryList.add(Structure_ERP_SQL );						
        			}
				}
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetFinanceERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Finance_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				int Cells = row.getPhysicalNumberOfCells();
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					
					String Finance_ERP_SQL = "";
					
    				String nowdate = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(Calendar.getInstance().getTime());
    				          				
    				
    				//String CompanyGuid = new  
    				Finance_ERP_SQL += "  INSERT INTO companyfinance ( financeuuid, createdate, "
    						+ "accounts_year, base_currency , end_year, end_month, state, submitted_date, "
    						+ "annual_turnover, pre_tax_profit, current_assets, total_stl, total_assets, "
    						+ "tangibleasset, netcurrentasset, netcash, totalnetassets, netprofit, issuedshare_capital, "
    						+ "authorized_capital, invest_capital, companycode) VALUES (";
    				Finance_ERP_SQL += "'" +  UUID.randomUUID().toString() + "',";
    				Finance_ERP_SQL += "'" +  nowdate + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(4)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(7)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(9)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(12)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(13)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(14)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(15)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(16)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(17)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(18)) + "',";
    				Finance_ERP_SQL += "'" + parserType(row.getCell(19)) + "',";            				
    				Finance_ERP_SQL += "'" + ItemUuId + "');";
    				
    				if(Finance_ERP_SQL  != "")
        			{
    					QueryList.add(Finance_ERP_SQL );						
        			}
				}
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetQualityERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Quality_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					
					String Quality_ERP_SQL = "";
					
    				//String CompanyGuid = new  
    				Quality_ERP_SQL += "  INSERT INTO companyquality ( qualityuuid, companycode,"
    						+ "certification, cer_authority, cer_scope, cer_num, expiry_date, "
    						+ "awrded, vilocation_law ) VALUES (";
    				Quality_ERP_SQL += "'" +  UUID.randomUUID().toString() + "',";
    				Quality_ERP_SQL += "'" +  ItemUuId + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(4)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Quality_ERP_SQL += "'" + parserType(row.getCell(7)) + "');";
    				
    				if(Quality_ERP_SQL  != "")
        			{
    					QueryList.add(Quality_ERP_SQL );						
        			}
				}
			}
		}
		
		
		return QueryList;
	}
	
	public List<String> SheetInnoERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Inno&Improve_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					String Inno_ERP_SQL = "";
					String Firstvalue = row.getCell(0).toString();
					
					
					
    				//String CompanyGuid = new  
    				Inno_ERP_SQL += " INSERT INTO companyinnonimprove ( innouuid, companycode, own_rnd, "
    						+ "corporate_rnd, annual_rnd_exp, focal_position, focal_worktime, communication, "
    						+ "improvement_ref, performancesws, performanceswc, recent_survey, kpi_retention,"
    						+ " patents2year, products12mon, totalnewproduct) VALUES (";
    				Inno_ERP_SQL += "'" +  UUID.randomUUID().toString() + "',";
    				Inno_ERP_SQL += "'" +  ItemUuId + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(4)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(7)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(9)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(10)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(11)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(12)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(13)) + "',";
    				Inno_ERP_SQL += "'" + parserType(row.getCell(14)) + "');";
    				
    				if(Inno_ERP_SQL  != "")
        			{
    					QueryList.add(Inno_ERP_SQL );						
        			}
				}
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetHSEERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_HSE_Statistic");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					String HSE_SQL = "";
    				//String CompanyGuid = new  
    				HSE_SQL += "  INSERT INTO companyhsestatistic ( hseuuid, companycode, calendaryear,"
    						+ "exposureman_hours, fatalitiesnum, injuriesnum, losttime, "
    						+ "danger_occurrences_num, lta_frequency ) VALUES (";
    				HSE_SQL += "'" +  UUID.randomUUID().toString() + "',";
    				HSE_SQL += "'" +  ItemUuId + "',";
    				HSE_SQL += "'" + parserType(row.getCell(1)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(2)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(3)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(4)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(5)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(6)) + "',";
    				HSE_SQL += "'" + parserType(row.getCell(7)) + "');";
    				
    				if(HSE_SQL  != "")
        			{
    					QueryList.add(HSE_SQL );						
        			}
        			
				}
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetSkillERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Skill&TrainG");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(0).toString(); 
				if(value!="")
				{            		
					String Skill_ERP_SQL = "";
    				//String CompanyGuid = new  
    				Skill_ERP_SQL += "  INSERT INTO companyskilltrain ( skilluuid, companycode, "
    						+ "assurance_policy, job_req, com_records, job_training, training_needs,"
    						+ " training_record, iip, employees_cer, internal_training, ojt_time, "
    						+ "awarded) VALUES (";
    				Skill_ERP_SQL += "'" +  UUID.randomUUID().toString() + "',";
    				Skill_ERP_SQL += "'" +  ItemUuId + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(0)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(1)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(2)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(3)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(4)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(5)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(6)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(7)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(8)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(9)) + "',";
    				Skill_ERP_SQL += "'" + parserType(row.getCell(10)) + "');";
    				
    				if(Skill_ERP_SQL  != "")
        			{
    					QueryList.add(Skill_ERP_SQL );						
        			}
				}
				            				
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetHRERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_HR_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				
				
				String value = row.getCell(1).toString(); 
				if(value!="")
				{            
					String HR_SQL = "";
    				//String CompanyGuid = new  
    				HR_SQL += "  INSERT INTO companyhr ( empnum, companycode, name, entrydate,"
    						+ "department, job_title, education, certi1, certi2, certi3, traing1,"
    						+ "	traing2, traing3) VALUES (";
    				//UUID.randomUUID().toString()
    				HR_SQL += "'" + parserType(row.getCell(1)) + "',";
    				HR_SQL += "'" +  ItemUuId + "',";            				
    				HR_SQL += "'" + parserType(row.getCell(2)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(3)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(4)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(5)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(6)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(7)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(8)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(9)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(10)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(11)) + "',";
    				HR_SQL += "'" + parserType(row.getCell(12)) + "');";
    				
    				if(HR_SQL  != "")
        			{
    					QueryList.add(HR_SQL );						
        			}
				}
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetSupplyERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Supply_History_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(1).toString(); 
				if(value!="")
				{
					String History_SQL = "";
					//String CompanyGuid = new  
					History_SQL += "  INSERT INTO	companysupplyhistory ( projectcode, supplied, industry,"
							+ " project_name, primeregion, suppliedfromdate, suppliedtodate, "
							+ "indicativevalue, productdes, award, companycode) VALUES (";
					
					
					History_SQL += "'" + UUID.randomUUID().toString() + "',";
					History_SQL += "'" + parserType(row.getCell(1)) + "',";
					History_SQL += "'" + parserType(row.getCell(2)) + "',";
					History_SQL += "'" + parserType(row.getCell(3)) + "',";
					History_SQL += "'" + parserType(row.getCell(4)) + "',";
					History_SQL += "'" + parserType(row.getCell(5)) + "',";
					History_SQL += "'" + parserType(row.getCell(6)) + "',";
					History_SQL += "'" + parserType(row.getCell(7)) + "',";
					History_SQL += "'" + parserType(row.getCell(8)) + "',";
					History_SQL += "'" + parserType(row.getCell(9)) + "',";							
					History_SQL += "'" + ItemUuId + "');";
					if(History_SQL  != "")
					{
						QueryList.add(History_SQL );						
					}
				}
				            				
			}
		}
		
		return QueryList;
	}
	
	public List<String> SheetProductsERP(List<String> QueryList, XSSFWorkbook TemplateData, String ItemUuId){
		
		XSSFSheet sheet = TemplateData.getSheet("Company_Products&Services_ERP");
		int Rows = sheet.getPhysicalNumberOfRows();
		
		for(int rowD = 2; rowD<Rows; rowD++)
		{
			XSSFRow row = sheet.getRow(rowD);
			
			if(row != null)
			{
				String value = row.getCell(0).toString(); 
				if(value!="")
				{
					String Product_SQL = "";
					//String CompanyGuid = new  
					Product_SQL += "  INSERT INTO	companyproducts ( productcode, productname, description,"
							+ " manufacturername, supplyarea, contackname, contacktel, standard, "
							+ "certificationnum, expirydate, awrded, patent, capacityfrom, capacityto,"
							+ " companycode) VALUES (";							
					
					Product_SQL += "'" + parserType(row.getCell(1)) + "',";							
					Product_SQL += "'" + parserType(row.getCell(2)) + "',";
					Product_SQL += "'" + parserType(row.getCell(3)) + "',";
					Product_SQL += "'" + parserType(row.getCell(4)) + "',";
					Product_SQL += "'" + parserType(row.getCell(5)) + "',";
					Product_SQL += "'" + parserType(row.getCell(6)) + "',";
					Product_SQL += "'" + parserType(row.getCell(7)) + "',";
					Product_SQL += "'" + parserType(row.getCell(8)) + "',";
					Product_SQL += "'" + parserType(row.getCell(9)) + "',";
					Product_SQL += "'" + parserType(row.getCell(10)) + "',";
					Product_SQL += "'" + parserType(row.getCell(11)) + "',";
					Product_SQL += "'" + parserType(row.getCell(12)) + "',";
					Product_SQL += "'" + parserType(row.getCell(13)) + "',";
					Product_SQL += "'" + parserType(row.getCell(14)) + "',";
					Product_SQL += "'" + ItemUuId + "');";
					
					if(Product_SQL  != "")
					{
						QueryList.add(Product_SQL);						
					}
				}							            				
			}
		}
		
		return QueryList;
	}
	
	
	
	
	
	
	public String parserType(XSSFCell cell)
	{
		String value = null;
		if(cell != null)
		{							
			
			switch (cell.getCellType())
			{
				case XSSFCell.CELL_TYPE_FORMULA:
				//value = "FORMULA value="+ cell.getCellFormula();
				value = cell.getCellFormula();
				break;
												
				case XSSFCell.CELL_TYPE_NUMERIC:
					//value = "Numberic value="+ cell.getNumericCellValue();
					//value = ""+ cell.getNumericCellValue();
					/*if(HSSFDateUtil.isCellDateFormatted(cell))
					{
						SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
						value = format.format(cell.getDateCellValue());
					}
					else
					{*/
						value = String.valueOf((int)cell.getNumericCellValue());
					//}
					break;
				case XSSFCell.CELL_TYPE_STRING:
					value = "" + cell.getStringCellValue().replace("'", "\"");
					break;
				case XSSFCell.CELL_TYPE_BLANK:
					value = "";
					break;
				case XSSFCell.CELL_TYPE_BOOLEAN:
					
					value = ""+cell.getBooleanCellValue();
					break;
				case XSSFCell.CELL_TYPE_ERROR:
					value = ""+cell.getErrorCellValue();
					break;
				default:
			}
		}		
		
		return value;
	}
	
	public void SQLWork(String SQLQuery) throws SQLException, ClassNotFoundException
	{
		System.out.println("여기");
		Connection conn = connectionProvider.getConnection();
		PreparedStatement stmt = null;
		
		try{
			
			System.out.println("SQL Query : "+SQLQuery);
			stmt = conn.prepareStatement(SQLQuery);
			
			
			stmt.executeUpdate();
			System.out.println("업데이트 된듯함.");
			
			stmt.close();
			conn.close();
			
		}catch(Exception e){
			System.out.println(e);			
		}finally{
		
			if(conn!=null){
				conn.close();				
			}
		}		
	}
	
	public int DataDelete(String strSQL) throws SQLException, ClassNotFoundException
	{
		Connection conn = connectionProvider.getConnection();
		PreparedStatement stmt = null;
		int reInt = 1;
		
		try{
			stmt = conn.prepareStatement(strSQL);			
			
			stmt.executeUpdate();
			
			stmt.close();
			conn.close();
			
		}catch(Exception e){
			System.out.println(e);			
		}finally{
		
			if(conn!=null){
				conn.close();				
			}
		}
		
		return reInt;
	}
	
	public String DataSelect() throws SQLException, ClassNotFoundException
	{
		Connection conn = connectionProvider.getConnection();
		
		ResultSet rs = null;
		PreparedStatement stmt = null;
		String returnValue = "";
		
		try{
			stmt = conn.prepareStatement("SELECT * FROM companybaseinfo");			
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				returnValue = rs.getString("companycode");
			}
			
			stmt.close();
			conn.close();
			
		}catch(Exception e){
			System.out.println(e);			
		}finally{
		
			if(conn!=null){
				conn.close();				
			}
		}
		
		return returnValue;
	}
}
