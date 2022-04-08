<?php
include '../config.php';

//获取前端传值-----------------------------------------------------------------------------------



//逻辑调用-----------------------------------------------------------------------------------
if( !empty($_GET['search']) && $_GET['search'] == 'search'){
	search($conn);
}
if(!empty($_GET['add']) && $_GET['add'] == 'add'){
	add($conn);
}
if(!empty($_GET['depj']) && $_GET['depj'] == 'depj'){
	depj($conn);
}
//逻辑编写函数-----------------------------------------------------------------------------------


//查询所有
function search ($conn){
	$sql = "SELECT * FROM review WHERE productId='{$_GET['productId']}'";
	$result = $conn->query($sql);
	$array = array();
	if ($result->num_rows > 0) {
	    // 输出数据
	    while($row = $result->fetch_assoc()) {
	    	$array[] = $row;
	    }
	    echo json_encode(array(
            "resultCode"=>200,
            "message"=>"successful query!",
            "data"=>$array
        ),JSON_UNESCAPED_UNICODE);
	} else {
	    echo json_encode(array(
            "resultCode"=>200,
            "message"=>"no data found",
            "data"=>[]
        ),JSON_UNESCAPED_UNICODE);
	}
}

function add($conn){
	$sql = "INSERT INTO review (userName,reviewText,reviewDate,productId,review_id)
	VALUES ('{$_GET['userName']}', '{$_GET['reviewText']}','{$_GET['reviewDate']}','{$_GET['productId']}','{$_GET['review_id']}')"; 
	if ($conn->query($sql) === TRUE) {
	    echo json_encode(array(
            "resultCode"=>200,
            "message"=>"commented successfully!",
            "data"=>[]
        ),JSON_UNESCAPED_UNICODE);

	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
 //删除
function depj ($conn){
    // mysqli_query($conn,"DELETE FROM car WHERE id='{$_GET['pid']}'");
    $sql = "DELETE FROM review WHERE review_id='{$_GET['review_id']}'";
    $result = $conn->query($sql);
    echo json_encode(array(
		"resultCode"=>200,
		"message"=>"deleted successfully",
		"data"=>[]
	),JSON_UNESCAPED_UNICODE);
    
}
$conn->close();
?>