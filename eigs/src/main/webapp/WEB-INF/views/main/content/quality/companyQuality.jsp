<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	
	<p class="right_title">
		<strong>Company Quality Detail</strong>
	</p>
	
	<div id="dg-row" class="row">	
		<div class="col-md-4 col-xs-4">
			<div id="certification">
				<div class="title">인증</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="cer_authority">
				<div class="title">인증기관</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="cer_scope">
				<div class="title">인증범위</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="cer_num">
				<div class="title">인증번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="expiry_date" class="form-calendar">
				<div class="title">만기일</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="awrded">
				<div class="title">수상정보</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="vilocation_law">
				<div class="title">법률위반</div>
	
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

