<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html><html><head><meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>EIGS</title>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="resources/css/default.css" rel="stylesheet">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- axisj css block -->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/axisj/css/cocker/AXJ.min.css" rel="stylesheet">
<link href="resources/axisj/css/cocker/AXGrid.css" rel="stylesheet">

<style type="text/css">
</style>
</head>
<body>
<div class="container" style="max-width: none !important;width:1200px;margin-left:20px;margin-right:0;">
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
			    	<li id="general/companyOrg" class="DataGrid">　·　Company Organization</li>
			    	<li id="general/companyStr">　·　Company Structure</li>
			    	<li id="general/companyFinance" class="DataGrid selectedItem">　·　Company Finance</li>			      		
			    </ul>
		      </li>			      	
		      
		      <li>
		      	<a href="#">품질활동</a>
		      	<ul class="list-unstyled">
			    	<li id="quality/companyInno">　·　Company Inno＆Improve</li>
			    	<li id="quality/companyQuality" class="DataGrid">　·　Company Quality</li>
			    	<li id="quality/companyHSE" class="DataGrid">　·　Company HSE Statistic</li>
			    	<li id="quality/companySkill" class="DataGrid">　·　Company Skill＆TrainG</li>			      		
			    	<li id="quality/companyHR" class="DataGrid">　·　Company HR</li>
			    </ul>
		      </li>
		      <li>
		      	<a href="#">제품정보</a>
		      	<ul class="list-unstyled">
			    	<li id="product/companySupply" class="DataGrid">　·　Company Supply History</li>
			    	<li id="product/companyProduct" class="DataGrid">　·　Company Product＆Services</li> 
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

<div id="loading_container" style="height:100%;width:100%;top:0;position:absolute;background-color:#eee;opacity:0.8;z-index:999;display: none;">
	<div style="maring: 0;background: white;position:absolute;top:50%;left:50%;margin-right:-50%;transform: translate(-50%,-50%);width:150px;height:50px; border:2px solid #4D6F94; ">
		<img style="margin:12px 0 0 18px" src="resources/img/ajax-loader.gif"/>
		<div style="float:right;margin-top:16px;margin-right:22px; font-size: 13px;color:4D6F94">Loading.. </div>
	</div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.3/jquery-ui.min.js"></script>
<script src="resources/jquery/ajaxForm/jquery.form.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

<!-- axisj js block -->
<script src="resources/axisj/js/AXJ.min.js"></script>
<script src="resources/axisj/js/AXGrid.js"></script>

<script type="text/javascript">	

// 임시 ID
var COMPANY_ID = "${id}";
var UUID_NAME = "";
var UUID = "";
var VIEW_NAME  = "";
var VIEW_TYPE  = "";

var SideBar = {
	addEvent: function() {
		$('#nav-sidebar li ul li').on('click', function() {
			var $selMenu = $(this);
			
			//좌측 패널 초기화.
			$("#r-pane").children().detach();
			
			// 좌측 메뉴 active 클래스 주입
			$selMenu.parent().parent().parent().find('.active').removeClass('active');
			$selMenu.addClass('active');

			// *** VIEW_NAME 변경 ***
			VIEW_NAME = $selMenu.attr("id");			

			if($selMenu.hasClass("DataGrid")) {
			// *** VIEW_TYPE 변경 ***
				VIEW_TYPE = "DataGrid";
			} else {
			// *** VIEW_TYPE 변경 ***
				VIEW_TYPE = "DataForm";
			}
			LoadView();
				    
		});
	}	
};

var LoadView = function() {
	$("<div>").load("/eigs/getView.do", {"viewName":VIEW_NAME, "type":VIEW_TYPE}, function() {
		/* $(this).html()에 뷰가 담겨있고 뷰를 초기화하는 소스코드가 있다. */
		$("#r-pane").append($(this).html());
	});
};


$(document).ready(function() {
	SideBar.addEvent();
	$("#nav-sidebar li ul li").first().click();
});

$(document).ajaxStart(function() {
	$("#loading_container").show();
	
});

$(document).ajaxComplete(function() {
	setTimeout(function() {
		$("#loading_container").hide();	
	}, 500);
});
</script>
</body>
</html>
