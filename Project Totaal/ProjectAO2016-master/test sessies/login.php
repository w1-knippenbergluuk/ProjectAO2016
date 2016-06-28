<?php 

// We gaan sessies gebruiken 
session_start(); 

// Gebruikersnaam en wachtwoord instellen 
$sGebruikerControle = 'admin'; 
$sWachtwoordControle = 'voorbeeld'; 

// Controle of het formulier verzonden is 
if($_SERVER['REQUEST_METHOD'] == 'POST') 
{ 
    // Controle of benodigde velden wel ingevuld zijn 
    if(isset($_POST['user'], $_POST['pass'])) 
    {     
        // Overbodige spaties verwijderen 
        $sGebruiker = trim($_POST['user']); 
        $sWachtwoord = trim($_POST['pass']); 
         
        // Gebruikersnaam en wachtwoord controleren 
        if($sGebruiker == $sGebruikerControle && $sWachtwoord == $sWachtwoordControle) 
        { 
            // Juiste gebruikersnaam en wachtwoord: inloggen! 
            $_SESSION['logged_in'] = true; 
            $_SESSION['gebruiker'] = $sGebruiker; 
             
            // Doorsturen en melding geven 
            header('Refresh: 3; url=index.php'); 
            echo 'Je bent succesvol ingelogd. Je wordt doorgestuurd.'; 
        } 
        else 
        { 
            // Terugsturen en foutmelding geven 
            header('Refresh: 3; url=login.php'); 
            echo 'Deze combinatie van gebruikersnaam en wachtwoord is niet juist!'; 
        } 
    } 
    else 
    { 
        header('Refresh: 3; url=login.php'); 
        echo 'Een vereist veld bestaat niet!'; 
    } 
} 
else 
{ 
    // Terug naar het formulier 
    header('Location: login.php'); 
    exit(); 
} 
?>