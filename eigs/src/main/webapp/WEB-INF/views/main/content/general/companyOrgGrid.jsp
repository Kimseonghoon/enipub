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
        {key : "orguuid", 	label: "orguuid", 	align: "center", width:"150", display: false},
        {key : "division",  label: "DIVISION",  align: "center", width:"150"},
        {key : "jobtitle", 	label: "JOB TITLE", 	align: "center", width:"150"},
        {key : "name", 		label: "NAME", 		align: "center", width:"150"},
        {key : "title", 	label: "TITLE", 	align: "center", width:"150"}
    ];
};
</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>