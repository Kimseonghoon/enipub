<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="data-form">
	<p class="right_title">
		<strong>Company Data</strong>
	</p>
	
	<div class="row" style="padding-bottom:8px;">	
		<div class="col-md-2 col-xs-2 col-md-offset-10 col-xs-offset-10">
			<button type="button" class="btn btn-primary btn-sm">수정</button>
			<button type="button" class="btn btn-primary btn-sm">삭제</button>
		</div>
	</div>
	<div id="dg-row" class="row">		
		<div class="col-md-4 col-xs-4">
			<div id="country">
				<div class="title">국가</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-8 col-xs-8">
			<div id="townorcity">
				<div class="title">도</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />			
				</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />					
				</div>
			</div>
		</div>
		<div class="col-md-12 col-xs-12">
			<div id="townorcity">
				<div class="title" style="line-height: 70px;">시</div>
				<div class="value">
					<textarea class="form-control" rows="3" cols="130" style="padding-top:0;font-size:12px;"></textarea>
					<!-- <input class="form-control input-sm" style="" type="text" /> -->
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="address_line1">
				<div class="title">상세주소1</div>
				<div class="value">
					<input class="form-control input-sm" style="width:80px;" type="text" />
				</div>
				<div class="value">
					<button class="btn btn-primary btn-sm btn-calendar" style="">검색</button>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="address_line2">
				<div class="title">상세주소2</div>
				<div class="value">
					<label><input type="radio" name="optradio">남자</label>
				</div>
				<div class="value">
					<label><input type="radio" name="optradio">여자</label>
				</div>

			</div>
		</div>
	
		<!-- row3 -->
		<div class="col-md-4 col-xs-4">
			<div id="postcode">
				<div class="title">우편번호</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="tel">
				<div class="title">전화</div>
				<div class="value">
					<input id="datetest" class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-8 col-xs-8">
			<div id="email">
				<div class="title" style="line-height: 22px;">대표메일대표메일대표대표메일대표메일</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
				<div class="value">
					<label>@</label>
				</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
				<div class="value">
					<select class="form-control input-sm" style="width: 133px;">
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
				<div class="title">홈페이지주소</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<!-- row4 -->
		<div class="col-md-4 col-xs-4">
			<div id="country">
				<div class="title">국가</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-xs-4">
			<div id="townorcity">
				<div class="title">도</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="townorcity">
				<div class="title">시</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="">
				<div class="title">지사 상세주소1</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text" />
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4">
			<div id="">
				<div class="title">지사 상세주소2</div>
				<div class="value">
					<input class="form-control input-sm" style="" type="text">
				</div>
			</div>
		</div>
	</div>
</div>
<div id="calendarBody" style="visibility:hidden;position:fixed;z-index:99;margin:10px;width:180px;"></div>
<script type="text/javascript">

var fnCalendar = {
	pageStart: function() {		
 		/* var mycalendar = new AXCalendar();
		mycalendar.setConfig({
			targetID:"calendarBody",
			basicDate:new Date()
		});		
		mycalendar.printDayPage("2012-01-29");  */
		$("#datetest").bindDate({align:"right", valign:"bottom", separator:"/", defaultSelectType:"m", onchange:function(){
            toast.push(Object.toJSON(this));
        }});
	}
};

$(document).ready(function() {
	fnCalendar.pageStart();
	
	$(".btn-calendar").on("click", function(e) {
		$("#calendarBody").css("left",e.pageX).css("top", e.pageY).css("visibility","visible");
		
		 
	});
});
</script>