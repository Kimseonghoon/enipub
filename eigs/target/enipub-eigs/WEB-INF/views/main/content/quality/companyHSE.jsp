<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="resources/js/DataForm.js" type="text/javascript"></script>

<div class="data-form">
	
	<p class="right_title">
		<strong>Company HSE Statistic Detail</strong>
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
		<!-- row1 --> 
		<div class="col-md-4 col-xs-4">
			<div id="calendaryear" class="form-calendar year-only">
				<div class="title">연도</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="exposureman_hours">
				<div class="title">근로자 총 작업시간</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="fatalitiesnum">
				<div class="title">치명적 사고</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>	
		
		<div class="col-md-4 col-xs-4">
			<div id="injuriesnum">
				<div class="title">주요부상</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="losttime">
				<div class="title">사고로인한 시간손실</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="danger_occurrences_num">
				<div class="title">위험한 상황 발생회수</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		
		<div class="col-md-4 col-xs-4">
			<div id="lta_frequency">
				<div class="title">LTA Frequency</div>
	
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>		
	</div>
</div>
