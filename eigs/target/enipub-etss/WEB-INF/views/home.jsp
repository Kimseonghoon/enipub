<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
:-ms-input-placehoder.form-control {
	color:#999;
}
h4 {
	margin-top: 25px;
}

.row {
	margin-bottom: 20px;
}

.row .row {
	margin-top: 10px;
	margin-bottom: 0;
}

[class*="col-"] {
	padding-top: 0;
	padding-bottom: 0;
	padding-left: 0;
	padding-right: 0;
	border-bottom: 1px solid #ddd;
	
}

hr {
	margin-top: 40px;
	margin-bottom: 40px;
}

.row [class*="col-"] div {
	height: 47px;
}

.row [class*="col-"] div div {
	font-size: 12px;
	height: 100%;
	line-height: 47px;
	vertical-align: middle;
}

.row [class*="col-"] .title {
	width: 30%;
	background: #eee;
	float: left;
	padding-right: 10px;
	text-align: right;
}

.row [class*="col-"] .value {
	width: 70%;
	background: #F7F7F7;
	float: right;
	padding-left: 10px;
	padding-top:9px;
}
</style>
</head>
<body>
	<div class="container" style="margin-top: 30px;">
		<p>
			<strong>Company Data</strong>
		</p>
		<div class="row" style="border: 1px solid #999;">
			<!-- row1 -->
			<div class="col-md-3">
				<div id="companycode">
					<div class="title">회사명 현재</div>

					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>						
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div id="previousname">
					<div class="title">회사명 과거</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-5">
				<div id="commonname">
					<div class="title">회사명 약식</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>


			<!-- row2 -->
			<div class="col-md-4">
				<div id="County">
					<div class="title">국가</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div id="TownOrCity">
					<div class="title">도</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div id="TownOrCity">
					<div class="title">시</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div id="Address_Line1">
					<div class="title">상세주소1</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div id="Address_Line2">
					<div class="title">상세주소2</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>

			<!-- row3 -->

			<div class="col-md-3">
				<div id="PostCode">
					<div class="title">우편번호</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div id="Tel">
					<div class="title">전화</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div id="Email">
					<div class="title">대표메일</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div id="homepage">
					<div class="title">홈페이지주소</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>

			<!-- row4 -->
			<div class="col-md-4">
				<div id="Country">
					<div class="title">국가</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div id="TownOrCity">
					<div class="title">도</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div id="TownOrCity">
					<div class="title">시</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div id="">
					<div class="title">지사 상세주소1</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text"/>
					</div> 
				</div>
			</div>
			<div class="col-md-6">
				<div id="">
					<div class="title">지사 상세주소2</div>
					<div class="value">
						<input class="form-control input-sm" style="width: 90%;" type="text">						
					</div> 
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
		
	<script type="text/javascript">
	$(document).ready(function() {
		var request = $.ajax({
			url : "test.do",
			type : "POST",
			data : {
				id : id
			},
			dataType : "html"
		});

		request.done(function(msg) {

		});

		request.fail(function(jqXHR, textStatus) {
			alert("Request failed: " + textStatus);
		});
				
		$(".value input").each(function() {
			if($(this).val()=="") {
				$(this).attr("placeholder","\""+$(this).parent().prev().html()+"\" required");
				$(this).parent().addClass("has-error");
			}
		});
	});
	</script>
</body>
</html>
