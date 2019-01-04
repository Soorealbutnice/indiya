<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

function addrow(){
	var tbody = document.getElementById("tbody");
	
	var row = tbody.insertRow();
	var cell = row.insertCell();
	var tarea = "<input type=text style=width:100px; height:15px;><button id=delete onclick=javascript:delrow();>삭제</button>";
	cell.innerHTML = tarea;

}

function delrow(){
	var tbody = document.getElementById("tbody");
	
	var row = tbody.deleteRow(tbody.rows.length-1);
}

</script>
</head>
<body>

<table>
<thead>
<th>table명(실험용)</th>
</thead>
<tbody id="tbody">
</tbody>
</table>
<button id="add_row" onclick="javascript:addrow();">추가</button>
<button id="del_row" onclick="javascript:delrow();">삭제</button>

</body>
</html>