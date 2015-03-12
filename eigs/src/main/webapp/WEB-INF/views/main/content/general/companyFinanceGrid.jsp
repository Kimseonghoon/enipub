<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%;">
	<p class="right_title">
		<strong>Company Organization</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:300px;"></div>
</div>

<script type="text/javascript">
var getColGroup = function(){
    return [
        {key : "financeuuid", 	label: "financeuuid", 	align: "center", width:"150", display: false},
        {key : "accounts_year",  label: "ACCOUNT YEAR",  align: "center", width:"150"},
        {key : "base_currency", 	label: "BASE CURRENCY", 	align: "center", width:"150"}
    ];
};

</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>
