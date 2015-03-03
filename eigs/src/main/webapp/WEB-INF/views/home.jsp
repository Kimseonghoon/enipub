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
			    	<li id="general/companyOrg">　·　Company Organization</li>
			    	<li>　·　Company Structure</li>
			    	<li>　·　Company Finance</li>			      		
			    </ul>
		      </li>			      	
		      
		      <li>
		      	<a href="#">품질활동</a>
		      	<ul class="list-unstyled">
			    	<li>　·　Company Inno＆Improve</li>
			    	<li>　·　Company Quality</li>
			    	<li>　·　Company HSE Statistic</li>
			    	<li>　·　Company Skil＆TrainG</li>			      		
			    	<li>　·　Company HR</li>
			    </ul>
		      </li>
		      <li>
		      	<a href="#">제품정보</a>
		      	<ul class="list-unstyled">
			    	<li>　·　Company Supply History</li>
			    	<li>　·　Company Product＆Services</li> 
			    </ul>
		      </li>
		      <li>
		      	<a href="#">Data Import</a>
		      	<ul class="list-unstyled">
			    </ul>
		      </li>
		    </ul>
		</div> 
		
		<div id="r-pane" class="col-md-9 col-xs-9" style="">
		</div>
	
	</div>

	<div class="container"
		style="position: fixed; right: 0; left: 0; bottom: 0px; height: 20px;">
		<div class="row responsive-utilities-test visible-on">
			<div class="col-xs-6 col-sm-3">
				<span class="hidden-xs">매우 작은 기기</span> <span class="visible-xs">✔
					매우 작은 기기에서 <strong>보임</strong></span>
			</div>
			<div class="col-xs-6 col-sm-3">
				<span class="hidden-sm">작은 기기</span> <span class="visible-sm">✔
					작은 기기에서 <strong>보임</strong></span>
			</div>
			<div class="clearfix visible-xs"></div>
			<div class="col-xs-6 col-sm-3">
				<span class="hidden-md">중간 기기</span> <span class="visible-md">✔
					중간 기기에서 <strong>보임</strong></span>
			</div>
			<div class="col-xs-6 col-sm-3">
				<span class="hidden-lg">큰 기기</span> <span class="visible-lg">✔
					큰 기기에서 <strong>보임</strong></span>
			</div>
		</div>
	</div>
	<!-- <div id="log" style="position: fixed; height: 100px; right: 0; left: 0; bottom: 0; border: 1px dashed black;"></div> -->
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">	
// 임시 ID
var companyId = "e00cabae-6687-4d03-8d5b-0da646e4d8dc";

$(document).ready(function() {
	$('#nav-sidebar li ul li').on('click', function() {
	    $(this).parent().parent().parent().find('.active').removeClass('active');
	    $(this).addClass('active');
	    
	    Data.form($(this).attr("id"));			    
	});
	
	$('#nav-sidebar li ul li:first').click();
});

var Data = {
	form : function(viewName) {
		$("#r-pane").load("/eigs/getView.do", {"viewName":viewName}, function() {		
			var request = $.ajax({
				url : "/eigs/getData.do",
				type : "POST",
				data : {
					companyId : companyId,
					viewName : viewName
				},
				dataType : "json"
			});

			request.done(function(result) {
				Data.input(result);
			});

			request.fail(function(jqXHR, textStatus) {
				alert("Request failed: " + jqXHR.status);
			});
		});
	},
		
	input : function(result) {
		$(".value input").each(function() {
			$id = $(this).parent().parent();
			$input = $(this);

			// ajax로 부터 return된 json이 null이 아닌경우..
			if(result[0] != null) {
				$.each(result[0], function(k, v) {								
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
};
</script>
</body>
</html>
