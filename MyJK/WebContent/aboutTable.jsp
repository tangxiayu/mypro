<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js制作可编辑表格</title>
<script>
window.onload = function(){
	//dom创建文本框
	var input = document.createElement("input");
	input.type="text" ;	
	 
	//得到当前的单元格
	var currentCell ; 
	function editCell(event)
	{
	    if(event==null)
	   {
	        currentCell=window.event.srcElement;
	    }
	    else
	    {
	        currentCell=event.target;
	    }
	    //根据Dimmacro 的建议修定下面的bug 非常感谢
	    if(currentCell.tagName=="TD"){

	    //用单元格的值来填充文本框的值
	    input.value=currentCell.innerHTML;
	    //当文本框丢失焦点时调用last
	    input.onblur=last;
	    input.ondblclick=last;
	    currentCell.innerHTML="";
	    //把文本框加到当前单元格上.
	    currentCell.appendChild(input);
	     //根据liu_binq63 的建议修定下面的bug 非常感谢
	    input.focus();

	    }

	}

	function last()
	{
	    //充文本框的值给当前单元格
	    currentCell.innerHTML = input.value;
	}





	//最后为表格绑定处理方法.
	document.getElementById("editTable").ondblclick=editCell;
};
</script>
</head>
<body>
    <table id="editTable" border="1">
        <tr>
            <td>aaaaaaa</td>
            <td>bbbbbbb</td>
            <td>ccccccc</td>
        </tr>
        <tr>
            <td>ddddddd</td>
            <td>eeeeeee</td>
            <td>fffffff</td>
        </tr>
        <tr>
            <td>gggggggg</td>
            <td>hhhhhhhh</td>
            <td>iiiiiiii</td>
        </tr>
    </table>
</body>
</html>