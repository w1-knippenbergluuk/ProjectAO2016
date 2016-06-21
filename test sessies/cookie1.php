<?php
$visits = intval($_COOKIE['visits']);

setcookie('visits', $visits + 1, strtotime('+30 days'));

?>
Code:
<hr/>
<br/>$visits = intval($_COOKIE['visits']);
<br/>
<br/>setcookie('visits', $visits + 1, strtotime('+30 days'));
<br/>
<br/>if ($visits == 0) {
<br/>        echo 'Je bent hartstikke nieuw hier';
<br/>}
<br/>else {
<br/>        echo "Welkom, Je bent hier $visits keer teruggekomen";
<br/>}
<br/>
<br/<br/>Output:
<hr/>
<?php
if ($visits == 0) {
        echo 'Je bent hartstikke nieuw hier';
}
else {
        echo "Welkom, Je bent hier $visits keer teruggekomen";
}
?>
<br/><a href="index.php">Terug</a>