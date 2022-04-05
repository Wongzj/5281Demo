<?php
include '../config.php';

//获取前端传值-----------------------------------------------------------------------------------
if( !empty($_GET['g_title']) && !empty($_GET['g_detele'])) {
        //delete
        deleteAnnouncement ($conn);
}

//逻辑调用-----------------------------------------------------------------------------------
if( !empty($_GET['ggallList'])) {
	AnnouncementList ($conn);
}
// 单个查询
if( !empty($_GET['checkone']) && !empty($_GET['g_title'])) {
	AnnouncementDetail ($conn);
}
if( !empty($_GET['g_title']) && !empty($_GET['g_detail']) && !empty($_GET['add']) && $_GET['add'] == "add") {
	addAnnouncement($conn);
};
if( !empty($_GET['change_gg']) && !empty($_GET['change_gg'])) {
	changeAnnouncement($conn);
};
//逻辑编写函数-----------------------------------------------------------------------------------


//查询公告
function AnnouncementList ($conn){
	$sql = "SELECT * FROM Announcement";
	$result = $conn->query($sql);
	$array = array();
	if ($result->num_rows > 0) {
	    // 输出数据
	    while($row = $result->fetch_assoc()) {
	    	$array[] = $row;
	    }
	    echo json_encode($array);
	} else {
	    echo "0 结果";
	}
}
//查询单个公告
function AnnouncementDetail ($conn){
	$sql = "SELECT * FROM Announcement WHERE a_title='{$_GET['g_title']}'";
	$result = $conn->query($sql);
	$array = array();
	if ($result->num_rows > 0) {
	    // 输出数据
	    while($row = $result->fetch_assoc()) {
	    	$array[] = $row;
	    }
	    echo json_encode($array);
	} else {
	    echo "0 结果";
	}
}

//添加公告
function addAnnouncement($conn){
    $sql = "INSERT INTO Announcement (a_title,a_detail,a_id)
    VALUES ('{$_GET['g_title']}','{$_GET['g_detail']}','{$_GET['g_id']}')";
        
    if ($conn->query($sql) === TRUE) {
        echo json_encode(array(
			"resultCode"=>200,
			"message"=>"添加成功",
			"data"=>[]
		),JSON_UNESCAPED_UNICODE);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }	
	
}

 // 删除公告
 function deleteAnnouncement ($conn){
    // mysqli_query($conn,"DELETE FROM car WHERE id='{$_GET['pid']}'");
    $sql = "DELETE FROM Announcement WHERE a_title='{$_GET['g_title']}'";
    $result = $conn->query($sql);
    if ($conn->query($sql) === TRUE) {
		echo json_encode(array(
			"resultCode"=>200,
			"message"=>"删除成功",
			"data"=>[]
		),JSON_UNESCAPED_UNICODE);
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
    
}
function changeAnnouncement($conn){
	$sql2 = "UPDATE Announcement SET a_title = '{$_GET['g_title']}',a_detail = '{$_GET['g_detail']}' WHERE a_title = '{$_GET['g_old_title']}'";
	$result = $conn->query($sql2);
	echo json_encode(array(
		"resultCode"=>200,
		"message"=>"修改成功",
		"data"=>[]
	),JSON_UNESCAPED_UNICODE);
}
$conn->close();
?>