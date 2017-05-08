<?php
/* put license here */

$dbtype = 'mysql';
$host = 'localhost';
$dbname = 'ivolunteer';
$username = 'root';
$passwd = '';

// Override with developer settings
if(file_exists('config-dev.php')){
	include('config-dev.php');
}

?>