<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	<p class="right_title">
		<strong>Company Finance Detail</strong>
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
			<div id="accounts_year" class="form-calendar year-only">
				<div class="title">회계년도</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="base_currency">
				<div class="title">기준통화</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="end_year" class="form-calendar year-only">
				<div class="title">마감년도</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="end_month" class="form-calendar month-only">
				<div class="title">마감월</div>
	
				<div class="value">
					<input id="form-calendar" class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="state">
				<div class="title">상태</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="submitted_date" class="form-calendar month-only">
				<div class="title">국세청신고일정</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="annual_turnover" class="form-money">
				<div class="title">매출액</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="pre_tax_profit" class="form-money">
				<div class="title">세전이익</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="current_assets" class="form-money">
				<div class="title">현재자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="total_stl" class="form-money">
				<div class="title">단기유동부채</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="total_assets" class="form-money">
				<div class="title">전체자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="tangibleasset" class="form-money">
				<div class="title">유형자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="netcurrentasset" class="form-money">
				<div class="title">순유동자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="netcash" class="form-money">
				<div class="title">순현금자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="totalnetassets" class="form-money">
				<div class="title">전체순자산</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="netprofit" class="form-money">
				<div class="title">당기순이익</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="issuedshare_capital" class="form-money">
				<div class="title">주식자본금</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="authorized_capital" class="form-money">
				<div class="title">수권자본금</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		<div class="col-md-12 col-xs-12">
			<div id="invest_capital" class="form-money">
				<div class="title">투입자본금</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
	</div>
</div>
