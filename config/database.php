<?php

 $pdo = null;
function connexionDB(){
    $dsn = "mysql:host=localhost;dbname=job_portal;charset=utf8";
    $username="root";
    $password="";

    
    
    try {
        // tente si ca marche
        $pdo = new PDO( $dsn, $username, $password);
     
        // var_dump($pdo);
        // echo "connexion réussie !";
        return $pdo;
    
    } 
    catch(PDOException $e){
        // si jamais ca casse tu fait ca (intercepte l'erreur)
        return $e->getMessage();
    } 
}

?>