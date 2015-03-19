<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%;">
	<p class="right_title">
		<strong>Company HSE Statistic</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:300px;"></div>
</div>

<script type="text/javascript">
UUID_NAME = "hseuuid";
var getColGroup = function(){
    return [
        {key : "hseuuid", 	label: "hseuuid", 	align: "center", width:"150", display: false},
        {key : "calendaryear",  label: "CALENDAR YEAR",  align: "center", width:"150"},
        {key : "exposureman_hours", 	label: "EXPOSUREMAN HOURS", 	align: "center", width:"150"},
        {key : "fatalitiesnum", 		label: "FATALITIES NUM", 		align: "center", width:"150"}        
    ];
};
</script>

<script src="resources/js/DataGrid.js" type="text/javascript"></script>