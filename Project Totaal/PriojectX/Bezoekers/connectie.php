<?php
    try
{
 //connectie met sql-server, is in dit geval met windows authenticatie
$pdo = new PDO('sqlsrv:server=PC-MARK\SQLSERVER2012;database=Project_2;','','');
//connectie met sql-server met gebruikersnaam en wachtwoord
//$pdo = new PDO('sqlsrv:server=.\SQLEXPRESS;database=ijdb;','gebruiker','wachtwoord');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e)
{
echo 'Kan geen verbinding maken met de server.' . $e->getMessage();

exit;
}

echo 'Database connectie ok.';
?> 