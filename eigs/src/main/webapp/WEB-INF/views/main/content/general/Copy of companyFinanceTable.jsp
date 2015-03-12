<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="data-table" style="height:100%">
	<p class="right_title">
		<strong>Company Organization</strong>
	</p>
	
	<div id="data-grid" class="content" style="height:100%;">
		
	</div>
</div>

<script type="text/javascript">
var getColGroup = function(){
    return [
        {key:"no", label:"번호", width:"50", align:"right"},
        {key:"title", label:"제목", width:"200"
            , tooltip:function(){
                return this.item.no + "." + this.item.title + "/" + this.key + "/" + this.value;
            },
        },
        {key:"writer", label:"작성자", align:"center", width:"100"},
        {key:"regDate", label:"작성일", align:"center", width:"100"},
        {key:"price", label:"가격", width:"100", align:"right", formatter:"money"},
        {key:"amount", label:"수량", width:"80", align:"right", formatter:"money"},
        {key:"cost", label:"금액", width:"100", align:"right", formatter:function(){
            return (this.item.price.number() * this.item.amount.number()).money();
        }},
        {key:"desc", label:"비고", width:"200"}
    ];
};

var list = [
    {no:1, title:"AXGrid 첫번째 줄 입니다.", writer:"김기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:1709401, amount:10}, // item
    {no:2, title:"AXGrid 두번째 줄 입니다.", writer:"정기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:12300.00, amount:7},
    {no:3, title:"AXGrid 세번째 줄 입니다.", writer:"한기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:12000, amount:5},
    {no:4, title:"AXGrid 세번째 줄 입니다.", writer:"박기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:13000, amount:4},
    {no:5, title:"AXGrid 세번째 줄 입니다.", writer:"곽기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:3000, amount:3},
    {no:6, title:"AXGrid 세번째 줄 입니다.", writer:"문기영", regDate:"2013-01-18", desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:123000, amount:2}
];

$(document).ready(function() {
	DataGrid.grid.bind();
	setTimeout(function(){
		myGrid.setConfig({
            targetID : "data-grid",
			colGroup : getColGroup()
		});
		myGrid.setList(list);
	},1000);
	
});
</script>
