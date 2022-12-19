<?php
include('conn.php');
$userid=$_POST['userid'];
$pass=$_POST['password'];
$sql="select * from master_login where userid='$userid' and password='$pass' ";$res=mysqli_query($conn,$sql);
if($result=mysqli_fetch_assoc($res))
{
$_SESSION['userid']=$result['userid'];
header('location:main_page.php');
}
else
{
header('location:loginbank.html');
}
?>