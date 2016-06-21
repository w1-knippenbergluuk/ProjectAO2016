<?php
 session_start();
?>

Code:
<hr/>
 session_start();
 <br/>$_SESSION['Greeting'] = 'Hoi Abu';
 <br/>echo session_id();
 <br/>echo $_SESSION['Greeting'];
<br/><br />Output:
<hr />
<?php
 $_SESSION['Greeting'] = 'Hoi Abu';  
 echo session_id();
 echo "<br/>";
 echo $_SESSION['Greeting'];
?>
<br/><a href="index.php">Terug</a>
