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

<!-- axisj css block -->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/axisj/css/cocker/AXJ.min.css" rel="stylesheet">
<link href="resources/axisj/css/cocker/AXGrid.css" rel="stylesheet">

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
/* 
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
*/
.row [class*="col-"] {
padding-right:0;
padding-left:0;
}
.row [class*="col-"] .title {
	width: 124px;
	background: #eee;
	float:left;
	padding-right: 5px;
	text-align: right;
	font-size:12px;
	line-height: 44px;
	vertical-align: middle;
}

.row [class*="col-"] .value {
	/* background: #F7F7F7; */
	/* width: 134px; */
	float:left;
	padding-left: 5px;
	padding-top: 7px;
	font-size:12px;
} 
.row [class*="col-"] .value input {
	width:175px;
}
.row [class*="col-"] .value label {
	/* background: #F7F7F7; */
	/* width: 134px; */
	float:left;
	padding-left: 5px;
	padding-top: 7px;
	font-size:12px;
	color:#333;
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
#dg-row { border:1px solid #999;}
#dg-row > div {	border-bottom:1px solid #CCC; }

#data-grid {
	width: 930px;
	margin-left:-14px;
	margin-bottom:20px;
}
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
var COMPANY_ID = "e00cabae-6687-4d03-8d5b-0da646e4d8dc";
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
