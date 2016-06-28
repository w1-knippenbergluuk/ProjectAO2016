<?php
    include('../connectie.php');
try
                {
                    $sql = 'SELECT * FROM Artiest';
                    $result = $pdo->query($sql);
                }
                    catch (PDOException $e)
                {
                    echo 'Er is een probleem met ophalen van grappen: ' . $e->getMessage();
                    exit();
                }
                while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                    print_r($row['ArtiestFoto']);
                    header("Content-type: image/png");
                    echo $row['ArtiestFoto'];
                }

?>