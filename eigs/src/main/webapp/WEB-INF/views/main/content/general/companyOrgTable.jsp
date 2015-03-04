<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%">
	<p class="right_title">
		<strong>Company Organization</strong>
	</p>
	
	<div class="content" style="height:100%;">
		<table id="DataTable" class="table table-bordered table-hover" cellspacing="0" style="cursor:pointer;"></table>
	</div>
</div>

<script type="text/javascript">
/* var request = $.ajax({
	url : "/eigs/getData.do",
	type : "POST",
	data : {
		companyId : companyId,
		viewName : "general/companyOrg"
	},
	dataType : "json"
});

request.done(function(result) {
	// 테이블의 헤더 생성.
	var titleSet = [];
	
	$.each(result[0], function(k, v) {
		titleSet.push({						
			title: k.toUpperCase()
		});	
	});			
	
	// 테이블의 데이터 생성.
	var dataSet = [];
	
	for(var i=0; i < result.length; i++) {
		var tmpDataSet = [];
		$.each(result[i], function(k, v) {
			tmpDataSet.push(v);
		});			
		dataSet.push(tmpDataSet);
	}
					
	// 테이블에 주입.
	var dtable = $("#DataTable").dataTable({					
		"searching":false,
		"paginate":false,
		"autoWidth":false,
		"data": dataSet,
		"columns": titleSet
	});

	// 컬럼중에서 uuid라는 키워드가 들어간 컬럼을 숨긴다.
	$.each(titleSet, function(k, v) {
		if((v.title).indexOf("UUID")!=-1) {					
			dtable.fnSetColumnVis(k, false);
		}
	});
	
	// 테이블 상단의 서치박스 위치..
	$("#DataTable > thead").attr("align","center");
	$(".dataTables_filter").css("float","right");
	$(".dataTables_filter > label > input").css("margin-left","8px");
	
	// 슬라이드 애니메이션.
	$("#r-pane").show("slide", {direction:"right"}, 400);
	
					
	
	$("#DataTable tbody tr").click(function() {
		$("#DataTable tbody tr").not(this).removeClass("selRow");
		$(this).addClass("selRow");
							
		// 아래 부분 이전꺼 지우고 새로운것만 들어오도록 
		$("<div></div>").load("/eigs/getView.do", {"viewName":"general/companyOrg", "start":null}, function() {
			$("#r-pane .data-form").detach();
			$("#r-pane").append($(this).html()); 
			
			var request = $.ajax({
				url : "/eigs/getData.do",
				type : "POST", 
				data : {
					companyId : companyId,
					viewName : "general/companyOrg"
				},
				dataType : "json"
			});

			request.done(function(result) {
				Data.input(result);
				$("#r-pane").show("slide", {direction:"right"}, 400);
			});

			request.fail(function(jqXHR, textStatus) {
				alert("Request failed: " + jqXHR.status);
			});
			
		});
	});
});
request.fail(function(jqXHR, textStatus) {
	alert("Request failed: " + jqXHR.status);
}); */
</script>