<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	<p class="right_title">
		<strong>Company Structure</strong>
	</p>
			
	<div id="dg-row" class="row">
		<div class="col-md-4 col-xs-4">
			<div id="company_type">
				<div class="title">기업형태</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="reg_country">
				<div class="title">등록국가</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="reg_name">
				<div class="title">감사기관</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="reg_num">
				<div class="title">법인번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="reg_year" class="form-calendar">
				<div class="title">설립일</div>
	
				<div class="value">
					<input id="form-calendar" class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="vat_reg_num">
				<div class="title">사업자번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="stock" class="form-radio">
				<div class="title">주식공개</div>
	
				<div class="value" style="margin-top:10px;">
					<input style="width:40px;" type="radio" name="optradio">예
				</div>
				<div class="value" style="margin-top:10px;">
					<input style="width:40px;" type="radio" name="optradio">아니요
				</div>
			</div>
		</div>
			
		<div class="col-md-4 col-xs-4">
			<div id="parent_company">
				<div class="title">모기업</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="subsidiary">
				<div class="title">자회사</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="bankers_name">
				<div class="title">주거래은행</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-8 col-xs-8">
			<div id="bank_add">
				<div class="title">주거래은행주소</div>
	
				<div class="value">
					<input class="form-control input-sm" style="width:485px;" type="text" />
				</div>
<!-- 				<div class="value">
					<input class="form-control input-sm" style="width:280px;" type="text" />
				</div> -->
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="auditors_name">
				<div class="title">감사기관</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-8 col-xs-8">
			<div id="auditors_add">
				<div class="title">감사기관주소</div>
				
				<div class="value">
					<input class="form-control input-sm" style="width:485px;" type="text" />
				</div>
				<!-- <div class="value">
					<input class="form-control input-sm" style="width:280px;" type="text" />
				</div> -->
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="shareholder_1">
				<div class="title">대주주1</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="shareholder_2">
				<div class="title">대주주2</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="shareholder_3">
				<div class="title">대주주3</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="shareholder_4">
				<div class="title">대주주4</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="staff_num">
				<div class="title">종업원수</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="office_capacity">
				<div class="title">사무실크기</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="workshop_capacity">
				<div class="title">작업장크기</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="yard_capacity">
				<div class="title">야드크기</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="authorisation_num">
				<div class="title">세관등록번호</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="other_customs_info">
				<div class="title">추가세관정보</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id=authorising_country>
				<div class="title">등록국가</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="duns_num">
				<div class="title">D&B등록번호</div>
	
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
