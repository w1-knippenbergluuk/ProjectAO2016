<?php

setcookie('visits', 0, strtotime('-30 days'));

echo "cookie verwijderd...";


show_source(__FILE__);

?>
<br/><a href="index.php">Terug</a>