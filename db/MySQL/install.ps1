# init mysql database
$startPath = $args[0]
if ($startPath -eq $null) {
    $startPath = "Z:\src\Longbow\Novus\db\SqlServer"
}

mysql  -e "drop database if exists Novus; create database Novus;" -uroot
mysql -hlocalhost -uroot -DNovus < $startPath\install.sql
mysql -hlocalhost -uroot -DNovus < $startPath\initData.sql
