<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>text-overflow:ellipsis;显示省略号</title>
<style>
	table{
		table-layout:fixed;
		width:300px;
		border:1px solid red;
		border-collapse:collapse;
		text-align:center;
	}
	table th,td{
		border:1px solid red;
	}
	table td{
		text-overflow:ellipsis;
		white-space:nowrap;
		overflow:hidden;
	}
</style>
<script type="text/javascript">
window.onload = function(){
	var oDiv1 = document.getElementById('div1');
	console.log(oDiv1.innerHTML);
};
</script>
</head>
<body>
<div id="div1" style="width:200px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;background:red;">
d我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！</div>


<table>
	<thead>
		<tr>
			<th>姓名</th>
			<th>学号</th>
			<th>简介</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>天天</td>
			<td>09</td>
			<td title="我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！">我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！</td>
		</tr>
		<tr>
			<td>天天</td>
			<td>09</td>
			<td>我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！我们都是好孩子，一群天真的孩子！</td>
		</tr>
	</tbody>
</table>
</body>
</html>