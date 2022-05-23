<?php

define('DB_NAME','register');
define('DB_USER','root');
define('DB_PASSWORD','');
define('DB_HOST','localhost');

try{
    $conn=new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

    mysqli_set_charset($conn,'utf8');
}
catch (Exception $ex)
{
    print "An Exception occurred. Message: ". $ex->getMessage();
}
catch(Error $e)
{
    print "The system is busy please try later";
}
?>