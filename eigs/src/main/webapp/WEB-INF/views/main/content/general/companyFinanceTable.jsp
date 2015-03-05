<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="data-table" style="height:100%">
	<p class="right_title">
		<strong>Company Finance</strong>
	</p>
	
	<div class="content" style="height:100%;">
		<table id="DataTable" class="table table-bordered table-hover" cellspacing="0" style="cursor:pointer;">
			<!-- <thead>
				<tr>
					<th>회계년도</th>
					<th>기준통화</th>
					<th>마감년도</th>														
				</tr>
			</thead> -->
		</table>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#DataTable > tbody > tr").first().click();	
});
</script>