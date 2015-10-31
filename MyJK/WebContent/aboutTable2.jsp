<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js制作可编辑表格，给它加一个input输入框</title>
<style>
table{border-collapse:collapse;border:1px solid black;}
table th,td{border:1px solid black;border-collapse:collapse;}
.intro{width:80%;}
</style>
<script>
window.onload = function(){
	//dom创建文本框
	var input = document.createElement('input');
	input.type = 'text';
	
	//在input或者textarea中加上border:none
	input.style.border="none";
	//input.style.width = '99%';
	//得到当前的单元格
	var now;
	function editceil(e){
		var e = e || window.event;
		var now = e.target || e.srcElement;
		
		if(now.className == 'intro'){
			// //用单元格的值来填充文本框的值
			input.value = now.innerHTML;
			////当文本框丢失焦点时调用last
			input.onblur = last;
			input.ondblclick=last;
			now.innerHTML = "";
			//把文本框加到当前单元格上.
			now.appendChild(input);
			input.focus();
		}
	}

	function last(){
		now.innerHTML = input.value;
	}

	document.getElementById('editTable').ondblclick = editceil;
};
</script>
</head>
<body>
<table id="editTable">
	<thead>
		<tr>
			<th>姓名</th>
			<th>学号</th>
			<th>简介</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>tt</td>
			<td>01</td>
			<td class="intro">bbbbbbbbbbbbbbbbbbbbbbbb</td>
		</tr>
		<tr>
			<td>tt</td>
			<td>01</td>
			<td class="intro">bbbbbbbbbbbbbbbbbbbbbbbb</td>
		</tr>
		<tr>
			<td>tt</td>
			<td>01</td>
			<td class="intro">bbbbbbbbbbbbbbbbbbbbbbbb</td>
		</tr>
	</tbody>
</table>

</body>
</html>