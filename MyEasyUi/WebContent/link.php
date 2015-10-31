<?php
	require 'config.php';
	$page = $_POST['page'];
	$pageSize = $_POST['rows'];
	$first = $pageSize * ($page - 1);
	
	$order = $_POST['order'];
	$sort = $_POST['sort'];
	
	$sql = '';
	$linkName = '';
	$date_from = '';
	$date_to = '';
	
	if(isset($_POST['linkName']) && !empty($_POST['linkName'])){
		$linkName = "linkName LIKE '%{}%' AND ";
		$sql .= $linkName;
	}
	
	if(isset($_POST['date_from']) && !empty($_POST['date_from'])){
		$date_from = "date>='{$_POST['date_from']}' AND ";
		$sql .= $date_from;
	}
	
	if(isset($_POST['date_to']) && !empty($_POST['date_to'])){
		$date_to = "date<='{$_POST['date_to']}' AND ";
		$sql .= $date_to;
	}
	
	if(!empty($sql)){
		$sql = 'WHERE '.substr($sql, 0, -4);
	}
	
	
	
	
	
	$query = mysql_query("SELECT linkName,link,date FROM blog $sql ORDER BY $sort $order limit $first,$pageSize") or die('SQL ´íÎó£¡');
	$total = mysql_num_rows(mysql_query("SELECT linkName,link,date FROM blog $sql"));
	
	$json = '';
	while(!!$row = mysql_fetch_array($query,MYSQL_ASSOC)){
		$json .= json_encode($row).',';
	}
	
	
	
	$json = substr($json, 0, -1);
	echo'{"total":'.$total.',"rows":['.$json.']}';
	
	mysql_close();
?>