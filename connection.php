<?php


$db_name="acm_team_details";
$mysql_username="nitsurat_admin";
$mysql_password="shitHAPPENS!!";
$server_name="localhost";
$conn= mysqli_connect($server_name, $mysql_username, $mysql_password, $db_name)or die('Unable To connect');

if(!$conn)
{
	echo "connection fail";
}
?>
