<?php
//Continue session, show that session variable no longer
//exists and then kill session.


 session_start();

 echo $_SESSION['Greeting'];
 echo "<br/>";
 echo session_id();

?>
<br/>
Code:
<hr/>
<br/> session_start();
<br/>echo $_SESSION['Greeting'];
<br/>echo session_id();
<br/><a href="index.php">Terug</a>

