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
	$sql = "SELECT * FROM productlist";
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
//查询所有用户
function suer ($conn){
	$sql2 = "SELECT * FROM user";
	$result2 = $conn->query($sql2);
	$array2 = array();
	if ($result2->num_rows > 0) {
	    // 输出数据
	    while($row2 = $result2->fetch_assoc()) {
	    	$array2[] = $row2;
	    }
	    echo json_encode($array2);
	} else {
	    echo "0 结果";
	}
}
//添加产品
function add_products($conn){
    $sql = "INSERT INTO productlist (id,name,price,jianJie,img,p_class,p_gn,kucun)
    VALUES ('{$_GET['pid']}','{$_GET['name']}','{$_GET['price']}','{$_GET['jianJie']}','{$_GET['img']}','{$_GET['p_class']}','{$_GET['p_gn']}','{$_GET['kucun']}')";
        
    if ($conn->query($sql) === TRUE) {
        echo "添加成功";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }	
	
}
function changeP($conn){
	$sql2 = "UPDATE productlist SET price='{$_GET['price']}',kucun='{$_GET['kucun']}',jianJie='{$_GET['jianJie']}' WHERE id = '{$_GET['pid']}'"; 
	if ($conn->query($sql2) === TRUE) {
	    echo json_encode(array(
            "resultCode"=>200,
            "message"=>"修改成功！",
            "data"=>[]
        ),JSON_UNESCAPED_UNICODE);

	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
//删除产品
function deleteP ($conn){
    // mysqli_query($conn,"DELETE FROM car WHERE id='{$_GET['pid']}'");
    $sql = "DELETE FROM productlist WHERE id='{$_GET['pid']}'";
    $result = $conn->query($sql);
    echo "删除成功";
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
    $sql = "DELETE FROM user WHERE userId='{$_GET['userId']}'";
    $result = $conn->query($sql);
    echo "删除成功";
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