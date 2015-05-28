<?php
$dblocation = 'localhost';
$dbname = 'project_1';
$dbuser = 'root';
$dbpassword = '';

$tbl_maintext = 'maintexts';
$tbl_users = 'users';
$tbl_tovars = 'tovars';
$tbl_accounts = 'system_accounts';


$dbuse = mysql_connect(
$dblocation, $dbuser, $dbpassword
);
if(!$dbuse)
{
exit('Сервер баз данных не отвечает!');
}
$dbselectname = mysql_select_db(
$dbname,$dbuse
);
if(!$dbselectname)
{
exit('База данных не отвечает!');
}
@mysql_query("SET NAMES 'utf8'");

?>