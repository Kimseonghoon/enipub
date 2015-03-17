<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="data-form">
	<p class="right_title">
		<strong>Company Organization Detail</strong>
	</p>
	
	<div class="row" style="padding-bottom:8px;">	
		<div class="col-md-12 col-xs-12">
			<div style="float:right;">
				<button id="updateBtn" style="" type="button" class="btn btn-primary btn-sm">수정</button>
				<button style="" type="button" class="btn btn-primary btn-sm">삭제</button>
			</div>
		</div>
	</div>
		
	<div id="dg-row" class="row">
		<div class="col-md-4 col-xs-4">
			<div id="division">
				<div class="title">부서</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="title">
				<div class="title">타이틀</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="name">
				<div class="title">이름</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
				
		<div class="col-md-4 col-xs-4">
			<div id="jobtitle">
				<div class="title">직책</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-8 col-xs-8">
			<div id="country">
				<div class="title">국적</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="postcode">
				<div class="title">우편번호</div>
				<div class="value">
					<input class="form-control input-sm" style="width:123px;" type="text" />
				</div>
				<div class="value">
					<button class="btn btn-primary btn-sm" style="">검색</button>
				</div>
			</div>
		</div>	
		
		<div class="col-md-8 col-xs-8">
			<div id="address_line1">
				<div class="title">상세주소</div>
				<div class="value">
					<input class="form-control input-sm" style="width:200px;" type="text" />
				</div>
				<div class="value">
					<input class="form-control input-sm" style="width:280px;" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="tel" class="form-tel">
				<div class="title">전화</div>
				<div class="value">
					<input class="form-control input-sm form-tel-1" style="width:42px;" type="text" />
				</div>
				<div class="value">
					<label>-</label>
				</div>
				<div class="value">
					<input class="form-control input-sm form-tel-2" style="width:42px;" type="text" />
				</div>
				<div class="value">
					<label>-</label>
				</div>
				<div class="value">
					<input class="form-control input-sm form-tel-3" style="width:51px;" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-8 col-xs-8">
			<div id="email" class="form-email">
				<div class="title">이메일</div>
				<div class="value">
					<input class="form-control input-sm form-email-1" style="width:110px;" type="text" />
				</div>
				<div class="value">
					<label>@</label>
				</div>
				<div class="value">
					<input class="form-control input-sm form-email-2" style="width:170px;" type="text" />
				</div>
				<div class="value">
					<select class="form-control input-sm" style="width:172px;">
						<option>직접입력</option> 
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>hanmail.com</option>
						<option>nate.com</option>
					</select>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="resources/js/DataForm.js" type="text/javascript"></script>