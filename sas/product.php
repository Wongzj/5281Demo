<?php
include '../config.php';

//获取前端传值-----------------------------------------------------------------------------------
//if( !empty($_GET['searchall']) ) $searchall = $_GET['searchall']; // 首页全部查询
if( !empty($_GET['pid']) && !empty($_GET['dele'])) {
        //delete
        deleteP ($conn);
}
if( !empty($_GET['pid']) && !empty($_GET['change_p']) && $_GET['change_p'] == "change_p") {
	//delete
	changeP ($conn);
}
if( !empty($_GET['userId']) && !empty($_GET['deleteUser'])) {
        //delete
        deleteUser ($conn);
}

//逻辑调用-----------------------------------------------------------------------------------
if( !empty($_GET['product'])) {
	products ($conn);
}


if( !empty($_GET['users'])) {
	suer ($conn);
}
if( !empty($_GET['pid']) && !empty($_GET['add'])) {
	add_products($conn);
};
//逻辑编写函数-----------------------------------------------------------------------------------


//查询所有产品
function products ($conn){
	$sql = "SELECT * FROM product";
	$result = $conn->query($sql);
	$array = array();
	if ($result->num_rows > 0) {
	    // 输出数据
	    while($row = $result->fetch_assoc()) {
	    	$array[] = $row;
	    }
	    echo json_encode($array);
	} else {
	    echo "0 data";
	}
}
//查询所有用户
function suer ($conn){
	$sql2 = "SELECT * FROM user_info";
	$result2 = $conn->query($sql2);
	$array2 = array();
	if ($result2->num_rows > 0) {
	    // 输出数据
	    while($row2 = $result2->fetch_assoc()) {
	    	$array2[] = $row2;
	    }
	    echo json_encode($array2);
	} else {
	    echo "0 data";
	}
}
//添加产品
function add_products($conn){
    $sql = "INSERT INTO product (id,name,price,description,img,p_class,p_detail,stock)
    VALUES ('{$_GET['pid']}','{$_GET['name']}','{$_GET['price']}','{$_GET['jianJie']}','{$_GET['img']}','{$_GET['p_class']}','{$_GET['p_gn']}','{$_GET['kucun']}')";
        
    if ($conn->query($sql) === TRUE) {
        echo "added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }	
	
}
function changeP($conn){
	$sql2 = "UPDATE product SET price='{$_GET['price']}',stock='{$_GET['kucun']}',description='{$_GET['jianJie']}' WHERE id = '{$_GET['pid']}'";
	if ($conn->query($sql2) === TRUE) {
	    echo json_encode(array(
            "resultCode"=>200,
            "message"=>"changed successfully!",
            "data"=>[]
        ),JSON_UNESCAPED_UNICODE);

	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
//删除产品
function deleteP ($conn){
    // mysqli_query($conn,"DELETE FROM car WHERE id='{$_GET['pid']}'");
    $sql = "DELETE FROM product WHERE id='{$_GET['pid']}'";
    $result = $conn->query($sql);
    echo "deleted successfully!";
    // $array = acrray();
	// if ($result->num_rows >= 0) {
	//     // 输出数据
	//     while($row = $result->fetch_assoc()) {
	//     	$array[] = $row;
	//     }
	//     echo json_encode($array);
	// } else {
	//     echo "0 结果";
	// }
}
 // 删除用户
 function deleteUser ($conn){
    // mysqli_query($conn,"DELETE FROM car WHERE id='{$_GET['pid']}'");
    $sql = "DELETE FROM user_info WHERE userId='{$_GET['userId']}'";
    $result = $conn->query($sql);
    echo "deleted successfully!";
    // $array = acrray();
	// if ($result->num_rows >= 0) {
	//     // 输出数据
	//     while($row = $result->fetch_assoc()) {
	//     	$array[] = $row;
	//     }
	//     echo json_encode($array);
	// } else {
	//     echo "0 结果";
	// }
}
$conn->close();
?>