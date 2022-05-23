<?php
function validate_input_text($textvalue)
{
    if(!empty($textvalue))
    {
        $trim_text=trim($textvalue);
        $saninitze_str=filter_var($trim_text,FILTER_SANITIZE_STRING);
        return $saninitze_str;
    }
    return '';
}

function validate_input_email($emailvalue)
{
    if(!empty($emailvalue))
    {
        $trim_text=trim($emailvalue);
        $saninitze_str=filter_var($trim_text,FILTER_SANITIZE_EMAIL);
        return $saninitze_str;
    }
    return '';
}

function upload_profile($path,$file)
{
    $targetDir=$path;
    $default= "beard.png";

    $filename=basename($file['name']);
    $targetFilePath=$targetDir.$filename;
    $fileType=pathinfo($targetFilePath,PATHINFO_EXTENSION);

    if(!empty($filename))
    {
        $allowType=array('jpg','png','jpeg','gif','pdf');
        if(in_array($fileType,$allowType))
        {
            if(move_uploaded_file($file['tmp_name'],$targetFilePath))
            {
                return $targetFilePath;
            }
        }
    }

    return $path . $default;
}

function get_user_info($conn,$userID)
{
    $query="SELECT firstName, lastName, email, profileImage FROM user WHERE userID=?";
    $q=mysqli_stmt_init($conn);
    mysqli_stmt_prepare($q,$query);

    mysqli_stmt_bind_param($q,'i',$userID);
    mysqli_stmt_execute($q);

    $result=mysqli_stmt_get_result($q);
    $row=mysqli_fetch_array($result);
    return empty($row)? false : $row;
}
?>