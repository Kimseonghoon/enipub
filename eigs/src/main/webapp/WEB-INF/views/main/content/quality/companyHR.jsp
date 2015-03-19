<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	<p class="right_title">
		<strong>Company HR Detail</strong>
	</p>
		
	<div id="dg-row" class="row">
		<div class="col-md-4 col-xs-4">
			<div id="empnum">
				<div class="title">사원번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="name">
				<div class="title">성명</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="entrydate" class="form-calendar">
				<div class="title">입사일자</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="department">
				<div class="title">부서</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="job_title">
				<div class="title">직급</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="education">
				<div class="title">학력</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="certi1">
				<div class="title">자격1</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="certi2">
				<div class="title">자격2</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="certi3">
				<div class="title">자격3</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="traing1">
				<div class="title">교육1</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="traing2">
				<div class="title">교육2</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="traing3">
				<div class="title">교육3</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>		
	</div>
	
	<div class="row" style="padding-top:8px;">	
		<div class="col-md-12 col-xs-12">
			<div style="float:right;">
				<button id="updateBtn" style="" type="button" class="btn btn-warning btn-sm">
					<i class="fa fa-pencil fa-lg"></i>수정
				</button>
				<button id="deleteBtn" style="" type="button" class="btn btn-danger btn-sm">
					<i class="fa fa-trash-o fa-lg"></i>삭제
				</button>
			</div>
		</div>
	</div>
</div>