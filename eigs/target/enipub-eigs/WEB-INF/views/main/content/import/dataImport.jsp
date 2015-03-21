<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<p class="right_title">
	<strong>Company Data Import</strong>
</p>
<form name="ImportForm" id="ImportForm" method="post" enctype="multipart/form-data" action="/eigs/dataImport.do" style="width: 100%;">
	<div style="flaot:left;padding-bottom:6px;">
		<select id="SheetList" style="height:30px;" name="SheetList" tabindex="12">
			<option value="All Item">All Item</option>
			<option value="Company_Data_ERP">Company_Data_ERP</option>
			<option value="Company_Organization_ERP">Company_Organization_ERP</option>
			<option value="Company_Structure_ERP">Company_Structure_ERP</option>
			<option value="Company_Finance_ERP">Company_Finance_ERP</option>
			<option value="Company_Quality_ERP">Company_Quality_ERP</option>
			<option value="Company_Inno">Company_Inno&Improve_ERP</option>
			<option value="Company_HSE_Statistic">Company_HSE_Statistic</option>
			<option value="Company_Skill">Company_Skill&TrainG</option>
			<option value="Company_HR_ERP">Company_HR_ERP</option>
			<option value="Company_Supply_History_ERP">Company_Supply_History_ERP</option>
			<option value="Company_Products">Company_Products&Services_ERP</option>
		</select>
	</div>
	<div class="col-md-4 col-xs-4">
	<input class="filestyle" style="float:left;width:300px;" type="file" name="file"/>
	</div>	
	<button type="submit" class="btn btn-danger btn-sm" style="margin-left:10px;"><i class="axi axi-upload2"></i> 데이터 임포트</button>
</form>

<script type="text/javascript">
$(function(){
	$(".filestyle").filestyle({
		buttonText: " 찾아보기",
		buttonName: "btn-info",
		size: "sm",
		badge: true
	});
    $("#SheetList").bindSelect({
    	onChange: function(){
    	}
    });
    
    $('#ImportForm').ajaxForm({
      	success: function(data){
	        //alert(data);        
	        if(data=="true")
	     	{               	   
				alert("임포트 완료.");
				location.reload();
	     	}
      	}       
    });
 });

</script>