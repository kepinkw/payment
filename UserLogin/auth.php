<?php
// SET HEADER
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// INCLUDING DATABASE AND MAKING OBJECT
require '../database.php';
$db_connection = new Database();
$conn = $db_connection->dbConnection();

// GET DATA FORM REQUEST
$data = json_decode(file_get_contents("php://input"));

//CHECKING, IF ID AVAILABLE ON $data
if(isset($data->email) && isset($data->password)){
    
    $apiResponse['success']=true;
    $apiResponse['code']=200;
    $apiResponse['messages']="";
    $apiResponse['content']=null;
    $email = $data->email;
    $password = $data->password;
    
    //GET POST BY ID FROM DATABASE
    $get_post = "SELECT * FROM `tbluser` WHERE emailuser=:email AND pwduser=:password";
    $get_stmt = $conn->prepare($get_post);
    $get_stmt->bindValue(':email', $email,PDO::PARAM_STR);
    $get_stmt->bindValue(':password', $password,PDO::PARAM_STR);
    $get_stmt->execute();

    //CHECK WHETHER THERE IS ANY POST IN OUR DATABASE
    if($get_stmt->rowCount() > 0){
		$apiResponse['success']=true;
        $apiResponse['message'] = 'User Logged';
        echo $get_stmt->execute();
    }
    else{
		$apiResponse['success']=true;
        $apiResponse['message'] = 'Invalid Email or Password';
    }  
    
    echo  json_encode($apiResponse);
    
}
?>