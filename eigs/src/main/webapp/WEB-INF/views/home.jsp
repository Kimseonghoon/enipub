<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home</title>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
html, body{
	overflow-x:hidden;
}
a:active {
	outline:none;
}
a:focus {
	outline:none;
}
:-ms-input-placehoder.form-control {
	color: #999;
}

h4 {
	margin-top: 25px;
}

/* .row {
	margin-bottom: 20px;
} */

/* #dg-row {
	margin-top: 10px;
	margin-bottom: 0;
}
 */
 
/* [class*="col-"] {
	padding-top: 0;
	padding-bottom: 0;
	padding-left: 0;
	padding-right: 0;
	border-bottom: 1px solid #ddd;
} */

hr {
	margin-top: 40px;
	margin-bottom: 40px;
}

.row [class*="col-"] div {
	padding-top: 0;
	padding-bottom: 0;
	padding-left: 0;
	padding-right: 0;
	
	height: 47px;
}

.row [class*="col-"] div div {
	font-size: 12px;
	height: 100%;
	line-height: 47px;
	vertical-align: middle;
}

.row [class*="col-"] .title {
	width: 35%;
	background: #eee;
	float: left;
	padding-right: 10px;
	text-align: right;
}

.row [class*="col-"] .value {
	width: 65%;
	background: #F7F7F7;
	float: right;
	padding-left: 10px;
	padding-top: 9px;
}
.left_title {
	height: 32px;
	border-bottom: 2px solid #BBB;
	margin-bottom: 20px;
}

.right_title {
	height: 32px;
	margin-left: -14px;
	margin-right: -14px; 
	border-bottom: 2px solid #BBB;
	margin-bottom: 20px;
}

.right_title strong, .left_title strong {
	font-weight: normal;
	font-family: Segoe UI;
	font-size: 18px;
}

#nav-sidebar > li > a {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
	
	font-size:13px;
	color:#333;
	font-weight:bold;
}
#nav-sidebar > li.active > a, #nav-sidebar > li.active > a:focus, #nav-sidebar > li.active > a:hover {
	color:#FFF;
	background-color:#5786D6;
}   

#nav-sidebar > li > ul > li {
	color:#666;
	height: 40px; 
	line-height:30px; 
	vertical-align:middle;
	padding:5px;
	cursor:pointer;	
	border-bottom:1px solid #aaa;
	margin-left:45px;
	font-size:12px;
}

#nav-sidebar > li {
	padding-bottom:28px;
}

#nav-sidebar > li > ul > li:hover {
	background-color:#5786D6;	
	font-weight:bold;
	color:#FFF !important;
}
.active {
	background-color:#5786D6;	
	font-weight:bold;
	color:#FFF !important;
}
#DataTable thead {
	background:#EEE;
}

#DataTable thead th {
  text-align: center;
  font-weight: normal;
}

#DataTable tbody tr.selRow {
	background: #5786D6;
	color:white;	
}

#DataTable tbody tr:hover {
	background: #5786D6;
	color:white;	
}

#DataTable tbody td {
  text-align: center;
}



#dg-row { border-top:1px solid #999;}
#dg-row > div {	border-bottom:1px solid #999; }
</style>
</head>
<body>
<div class="container" style="max-width: none !important;width:1200px;">
	<div class="row" style="margin-top:30px;">
		<div class="col-md-3 col-xs-3" style="padding-right:30px;">
			<p class="left_title">
				<strong>Enterprise Information</strong>
			</p>
			
		    <ul id="nav-sidebar" class="nav nav-pills nav-stacked">
		      <li>			      
			  	<a href="#">일반정보</a>
			    <ul class="list-unstyled">
			    	<li id="general/companyData">　·　Company Data</li>
			    	<li id="general/companyOrg" class="DataTable">　·　Company Organization</li>
			    	<li id="general/companyStr">　·　Company Structure</li>
			    	<li id="general/companyFinance" class="DataTable selectedItem">　·　Company Finance</li>			      		
			    </ul>
		      </li>			      	
		      
		      <li>
		      	<a href="#">품질활동</a>
		      	<ul class="list-unstyled">
			    	<li id="quality/companyInno">　·　Company Inno＆Improve</li>
			    	<li id="quality/companyQuality" class="DataTable">　·　Company Quality</li>
			    	<li id="quality/companyHSE" class="DataTable">　·　Company HSE Statistic</li>
			    	<li id="quality/companySkill">　·　Company Skill＆TrainG</li>			      		
			    	<li id="quality/companyHR" class="DataTable">　·　Company HR</li>
			    </ul>
		      </li>
		      <li>
		      	<a href="#">제품정보</a>
		      	<ul class="list-unstyled">
			    	<li id="product/companySupply" class="DataTable">　·　Company Supply History</li>
			    	<li id="product/companyProduct" class="DataTable">　·　Company Product＆Services</li> 
			    </ul>
		      </li>
		      <li>
		      	<a href="#">Data Import</a>
		      	<ul class="list-unstyled">
		      		<li id="import/dataImport">　·　Company Data Import</li>
			    </ul>
		      </li>
		    </ul>
		</div>

		<div id="r-pane" class="col-md-9 col-xs-9" style="">
		</div>
	</div>
	<!-- <div id="log" style="position: fixed; height: 100px; right: 0; left: 0; bottom: 0; border: 1px dashed black;"></div> -->
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.3/jquery-ui.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<Script src="//cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></Script>
<Script src="//cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js"></Script>

<script src="http://malsup.github.com/jquery.form.js"></script>
<script type="text/javascript">	
// 임시 ID
var companyId = "e00cabae-6687-4d03-8d5b-0da646e4d8dc";

$(document).ready(function() {
	SideBar.addEvent();	
	
	$('#nav-sidebar li ul li:first').first().click();
	
	
});

var SideBar = {
	addEvent: function() {
		$('#nav-sidebar li ul li').on('click', function() {
			var $selMenu = $(this);
			
			//좌측 패널 초기화.
			$("#r-pane").children().detach();
			
			$("#r-pane").hide("fade", 100, function() {		
				// 좌측 메뉴 active 클래스 주입
				$selMenu.parent().parent().parent().find('.active').removeClass('active');
				$selMenu.addClass('active');
			    
			    // DataTable 클래스가 있으면 Table로 부터 시작되는 페이지가 활성화.
				if($selMenu.hasClass("DataTable")) {
					DataTable.loadPage(companyId, $selMenu.attr("id"), "DataTable");
				} else {
				    DataForm.loadPage(companyId, $selMenu.attr("id"), "DataForm"); 
				}
			});		    
		});
	}	
};

var DataTable = {
	loadPage: function(id, viewName, type) {
		$("<div>").load("/eigs/getView.do", {"viewName":viewName, "type": type}, function() {
			$("#r-pane").append($(this).html());
			DataTable.getData(id, viewName, type);
		});
	},
	getData: function(id, viewName, type) {
		var request = $.ajax({
			url : "/eigs/getData.do",
			type : "POST",
			data : {
				id : id,
				viewName : viewName,
				type : type
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
			
			// 컬럼중에서 uuid라는 키워드가 들어간 컬럼을 숨긴다.
 			var hiddenColumn;
			$.each(titleSet, function(k, v) {
				if((v.title).indexOf("UUID")!=-1 || (v.title).indexOf("PRODUCTCODE")!=-1 || (v.title).indexOf("PROJECTCODE")!=-1 || (v.title).indexOf("EMPNUM")!=-1 ) {
					hiddenColumn = k;
				}
			}); 		
				
			console.log(hiddenColumn);
			// 테이블에 주입.
			var dtable = $("#DataTable").dataTable({					
				"searching":false,
				"paginate":false,
				"autoWidth":false,
				"data": dataSet,
				"columns": titleSet, 
				"columnDefs": 
			        [{
			        	"targets": [hiddenColumn],
			        	"visible": false,
			        	"searchable" : false
			        }],
				"fnRowCallback": function(nRow, aData) {
					$(nRow).on("click", function() {
						$("#DataTable tbody tr").not(this).removeClass("selRow");
						$(this).addClass("selRow");
						
						$("#r-pane .data-form").detach();
						DataForm.loadPage(aData[hiddenColumn], viewName, "DataForm");
					});
				}
			});
						
			// 테이블 상단의 서치박스 위치..
			$("#DataTable > thead").attr("align","center");
			$(".dataTables_filter").css("float","right");
			$(".dataTables_filter > label > input").css("margin-left","8px");
			
			// 슬라이드 애니메이션.
			$("#r-pane").show("slide", {direction:"right"}, 400, function() {				
				if($("#nav-sidebar .active").hasClass("selectedItem")) {
					$("#DataTable > tbody > tr").first().click();		
				}
			});
		}); 

		request.fail(function(jqXHR, textStatus) {
			alert("Request failed: " + jqXHR.status);
		});
	}
};

var DataForm = {
	loadPage: function(id, viewName, type) {
		$("<div>").load("/eigs/getView.do", {"viewName":viewName, "type":type}, function() {
			$("#r-pane").append($(this).html());
			DataForm.getData(id, viewName, type);
		});
	},
	getData: function(id, viewName, type) {
		$("#r-pane").append($(this).html());
		var request = $.ajax({
			url : "/eigs/getData.do",
			type : "POST", 
			data : {
				id : id,
				viewName : viewName,
				type: type
			},
			dataType : "json"
		});

		request.done(function(result) {	
			
			for(var i=0; i < result.length; i++) {
				$(".value input").each(function() {
					$id = $(this).parent().parent();
					$input = $(this);

					// ajax로 부터 return된 json이 null이 아닌경우..
					if(result[i] != null) {
						$.each(result[i], function(k, v) {								
							if ($id.attr("id") == k) {
								$input.val(v);
							}
						});	
					}
					
					if ($(this).val() == "") {
						$(this).attr("placeholder",	"\"" + $(this).parent().prev().html()+ "\" required");
						$(this).parent().addClass("has-error");
					}
				});
			}
			
			$("#r-pane").show("slide", {direction:"right"}, 400, function() {

			});
						
		});

		request.fail(function(jqXHR, textStatus) {
			alert("Request failed: " + jqXHR.status);
		});
	}
};
</script>
</body>
</html>
