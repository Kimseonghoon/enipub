<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%">
	<p class="right_title">
		<strong>Company Organization</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:100%;">
		
	</div>
</div>

<script type="text/javascript">
var getColGroup = function(){
    return [
        {key : "orguuid", 	label: "orguuid", 	align: "center", width:"50"},
        {key : "jobtitle", 	label: "jobtitle", 	align: "center", width:"50"},
        {key : "division",  label: "division",  align: "center", width:"50"},
        {key : "name", 		label: "name", 		align: "center", width:"50"},
        {key : "title", 	label: "title", 	align: "center", width:"50"}
    ];
};

$(document).ready(function() {
	setTimeout(function(){
		myGrid.setConfig({
            targetID : "data-grid",
			colGroup : getColGroup()
		});
		
		var request = $.ajax({
			url : "/eigs/getData.do",
			type : "POST", 
			data : {
				id : companyId,
				viewName : "general/companyOrg",
				type: "DataTable"
			},
			dataType : "json"
		});
		
		request.done(function(result) {
			$("#r-pane").show("slide", {direction:"right"}, 400, function() {
				myGrid.setList(result);
			});
						
		});
	},1000);
	
});
</script>
