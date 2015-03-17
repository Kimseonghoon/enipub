<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%;">
	<p class="right_title">
		<strong>Company Quality</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:300px;"></div>
</div>

<script type="text/javascript">
UUID_NAME = "qualityuuid";
var getColGroup = function(){
    return [
        {key : "qualityuuid", 	label: "qualityuuid", 	align: "center", width:"150", display: false},
        {key : "certification",  label: "CERTIFICATION",  align: "center", width:"150"},
        {key : "cer_authority", 	label: "CER AUTHORITY", 	align: "center", width:"150"},
        {key : "cer_num", 		label: "CER NUM", 		align: "center", width:"150"},
        {key : "expiry_date", 	label: "EXPIRY DATE", 	align: "center", width:"150"}
    ];
};
</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>