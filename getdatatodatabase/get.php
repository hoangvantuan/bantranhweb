<?php
require('librarys/include.php');
require_once('librarys/makeObject.php');
 $_SESSION['makh']='1233456';
require('template/header.php');
/**
 * @author hoang
 * @copyright 2014
 */

$a = mysql_query("SELECT * FROM chitietdh");
while($b = mysql_fetch_assoc($a)){
echo $b['madh'];
echo $b['masp'];
}
mysql_close($db);

?>