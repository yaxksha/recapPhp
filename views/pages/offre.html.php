<?php 
    require_once __DIR__ .'/../partials/header.html.php'; 

?>



<h1><?= $job['title']?></h1>
<span>Offre crée le : <?= $job['created_at']?></span>

<div class="py-5 mx-5">
    <h2>Description</h2>
    <p><?= $job['description'] ?></p>
    <?php
    if($job['id_company']!= 0){
        echo'
        <a href="entreprise.php?id='.$job["id_company"].'"><span>Entreprise : '.$company["name_company"].'</span></a></br>
        ';
    }
 
    ?>
    <span>Type de contrat : <?= $job["employment_type"]?></span></br>
    <span>Lieu : <?= $job["location"]?></span></br>
    <h2>Missions</h2>
    <p><?= $job['mission'] ?></p>
    <span>Technologies utilisées : <?= $job["technologies_used"]?></span>
    <h3>Avantages</h3>
    <p> <?= $job["benefits"]?></p>
    <?php

    

    ?>

</div>

<?php require_once __DIR__ . '/../partials/footer.html.php';?>