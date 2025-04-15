<?php
require_once dirname(__DIR__)  .'/config/database.php';
// var_dump($pdo);


function getJobById($id){
    $pdo =  connexionDB();
    $sql ="SELECT * from job_offers WHERE id=$id";
    $statement =  $pdo->query($sql);
    return $statement->fetch();
}

function getJobsList(){
    $pdo =  connexionDB();
    $sql ="SELECT * FROM job_offers ORDER BY created_at DESC";
    $statement = $pdo->query($sql);
    return $statement->fetchAll();
}

function getJobsListLimit3(){
    $pdo =  connexionDB();
    $sql ="SELECT * FROM job_offers ORDER BY created_at DESC LIMIT 3";
    $statement = $pdo->query($sql);
    return $statement->fetchAll();
}



function addJob($newJob ){
    $pdo =  connexionDB();
    $title = $newJob['title'];
$description = $newJob['description'];
$mission = $newJob ['mission'];
$location = $newJob ['location'];
$category = $newJob ['category'];
$id_company = $newJob['id_company'];
$employment_type = $newJob['employment_type'];
$technologies_used = $newJob['technologies_used'];
$benefits = $newJob['benefits'];
$participants_count =0;
$created_at=date('Y-m-d H:i:s');
$image_url = $newJob['image_url'];

    $sql="INSERT INTO job_offers (title, description, mission, location, category, id_company, employment_type, 
 technologies_used, benefits, participants_count, created_at, image_url) 
VALUES ('$title','$description','$mission','$location','$id_company','$author','$employment_type','$technologies_used','$benefits','0','$created_at','$image_url')";

$statement = $pdo->query($sql);
// var_dump($statement);
header('Location: http://localhost/recap/offres.php');
}

function getCompanyById($id){
    $pdo =  connexionDB();
    $sql ="SELECT * from entreprises WHERE id=$id";
    $statement =  $pdo->query($sql);
    return $statement->fetch();
}

function getCompaniesList(){
    $pdo =  connexionDB();
    $sql ="SELECT * FROM entreprises";
    $statement = $pdo->query($sql);
    return $statement->fetchAll();
}

function getJobsListOfThisCompany($id_company){
    $pdo =  connexionDB();
    $sql ="SELECT * FROM job_offers WHERE id_company= '$id_company' ORDER BY created_at DESC";
    $statement = $pdo->query($sql);
    return $statement->fetchAll();
}
?>