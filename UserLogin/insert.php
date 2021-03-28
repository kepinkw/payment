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

//CREATE MESSAGE ARRAY AND SET EMPTY
$msg['message'] = '';

// CHECK IF RECEIVED DATA FROM THE REQUEST
if(isset($data->email) && isset($data->password) && isset($data->nama) && isset($data->status) && isset($data->hp)){
    // CHECK DATA VALUE IS EMPTY OR NOT
    if(!empty($data->email) || !empty($data->password) || !empty($data->nama) || !empty($data->status) || !empty($data->hp)){
        
        $insert_query = "INSERT INTO `tbluser`(emailuser,pwduser,namauser,statuser,hpuser) VALUES(:email,:password, :nama, :status, :hp)";
        
        $insert_stmt = $conn->prepare($insert_query);
        // DATA BINDING
        $insert_stmt->bindValue(':email', htmlspecialchars(strip_tags($data->email)),PDO::PARAM_STR);
        $insert_stmt->bindValue(':password', htmlspecialchars(strip_tags($data->password)),PDO::PARAM_STR);
        $insert_stmt->bindValue(':nama', htmlspecialchars(strip_tags($data->nama)),PDO::PARAM_STR);
        $insert_stmt->bindValue(':status', htmlspecialchars(strip_tags($data->status)),PDO::PARAM_STR);
        $insert_stmt->bindValue(':hp', htmlspecialchars(strip_tags($data->hp)),PDO::PARAM_STR);
        
        if($insert_stmt->execute()){
            $msg['message'] = 'Congratulation, Account Registered!';
        }else{
            $msg['message'] = 'Registration Failed';
        } 
        
    }else{
        $msg['message'] = 'Oops! empty field detected. Please fill all the field';
    }
}
else{
    $msg['message'] = 'Please fill all the fields | Email, Password, Status';
}
//ECHO DATA IN JSON FORMAT
echo  json_encode($msg);
?>