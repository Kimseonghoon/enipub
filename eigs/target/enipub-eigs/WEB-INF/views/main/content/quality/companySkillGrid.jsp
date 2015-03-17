<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%;">
	<p class="right_title">
		<strong>Company Skill＆Training</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:300px;"></div>
</div>

<script type="text/javascript">
UUID_NAME = "skilluuid";
var getColGroup = function(){
    return [
        {key : "skilluuid", 	label: "hseuuid", 	align: "center", width:"150", display: false},
        {key : "assurance_policy",  label: "ASSURANCE POLICY",  align: "center", width:"150"},
        {key : "job_req", 	label: "JOB REQ", 	align: "center", width:"150"}
    ];
};
</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>