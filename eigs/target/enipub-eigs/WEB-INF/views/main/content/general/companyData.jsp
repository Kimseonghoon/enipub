<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	<p class="right_title">
		<strong>Company Data</strong>
	</p>
	
	<div id="dg-row" class="row">
		<div class="col-md-4 col-xs-4">
			<div id="companyname">
				<div class="title">회사명현재</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="previousname"> 
				<div class="title">회사명과거</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="commonname">
				<div class="title">회사명약식</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>		
		
		<div class="col-md-4 col-xs-4">
			<div id="postcode">
				<div class="title">본사우편번호</div>
				<div class="value">
					<input class="form-control input-sm" style="width:114px;" type="text" />
				</div>
				<div class="value">
					<button class="btn btn-info btn-sm" style=""><i class="fa fa-search"></i>검색</button>
				</div>
			</div>
		</div>	
		
		<div class="col-md-8 col-xs-8">
			<div id="address_line1">
				<div class="title">본사주소</div>
				<div class="value">
					<input class="form-control input-sm" style="width:200px;" type="text" />
				</div>
				<div class="value">
					<input class="form-control input-sm" style="width:280px;" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="country">
				<div class="title">국가</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
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
		
		<div class="col-md-4 col-xs-4">
			<div id="fax" class="form-tel">
				<div class="title">팩스</div>
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
				<div class="title">대표메일</div>
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
		
		<div class="col-md-4 col-xs-4">
			<div id="homepage">
				<div class="title">홈페이지</div>
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

