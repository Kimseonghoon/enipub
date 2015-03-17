<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%;">
	<p class="right_title">
		<strong>Company HR</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:300px;"></div>
</div>

<script type="text/javascript">
UUID_NAME = "productcode";
var getColGroup = function(){
    return [
        {key : "productcode", 	label: "projectcode", 	align: "center", width:"150", display: false},
        {key : "productname",  label: "PRODUCT NAME",  align: "center", width:"150"},
        {key : "manufacturername", 		label: "MANUFACTURER", 		align: "center", width:"150"}
    ];
};
</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>