<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	<p class="right_title">
		<strong>Company Product & Services Detail</strong>
	</p>
		
	<div id="dg-row" class="row">	
		<div class="col-md-4 col-xs-4">
			<div id="productcode">
				<div class="title">제품코드</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="productname">
				<div class="title">제품명</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="description">
				<div class="title">제품상세내역</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="manufacturername">
				<div class="title">제조사</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="supplyarea">
				<div class="title">공급범위</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="contackname">
				<div class="title">담당자</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="contacktel">
				<div class="title">전화</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="standard">
				<div class="title">적용표준</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="certificationnum">
				<div class="title">인증번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="expirydate">
				<div class="title">인증만기</div>
	
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
			<div id="patent">
				<div class="title">특허정보</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="capacityfrom">
				<div class="title">최소수량</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div> 
	
		<div class="col-md-8 col-xs-8">
			<div id="capacityto">
				<div class="title">최대수량</div>
	
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