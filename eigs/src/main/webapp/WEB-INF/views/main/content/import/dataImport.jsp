<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<script type="text/javascript">
$(function(){
    $('#ImportForm').ajaxForm({
      success: function(data){
        //alert(data);        
        if(data=="true")
     	{               	   
			alert("업로드 완료.");
			location.reload();
     	}
      }       
    });
 });

</script>
<form name="ImportForm" id="ImportForm" method="post" enctype="multipart/form-data" action="/eigs/dataImport.do" style="width: 350px;">
	<select name="SheetList">
		<option>All Item</option>
		<option>Company_Data_ERP</option>
		<option>Company_Organization_ERP</option>
		<option>Company_Structure_ERP</option>
		<option>Company_Finance_ERP</option>
		<option>Company_Quality_ERP</option>
		<option>Company_Inno&Improve_ERP</option>
		<option>Company_HSE_Statistic</option>
		<option>Company_Skill&TrainG</option>
		<option>Company_HR_ERP</option>
		<option>Company_Supply_History_ERP</option>
		<option>Company_Products&Services_ERP</option>
	</select>
	<br/>
	<br/>
	<input type="file" name="file" size="20" />	
	<input type="submit" value="Upload" style="float:right;"/> 
	
	<br/>
	<br/>
	
</form>


