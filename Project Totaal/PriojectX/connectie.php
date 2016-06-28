<?php
try
{
    $pdo = new PDO("sqlsrv:server=.\SQLEXPRESS;database=Project_2",'','');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOexception $e)
{
    echo 'Unable to connect to the database server.' . $e->getMessage();
    exit;
}
    //echo "zeker geconnect ";

?>