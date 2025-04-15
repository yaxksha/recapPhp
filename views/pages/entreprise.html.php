<?php 
    require_once __DIR__ .'/../partials/header.html.php'; 

?>



<h1><?= $company["name_company"]?></h1>


<div class="py-5 mx-5">
    <img src="<?= $company['logo']?>" alt="">
    <p><?= $company['presentation'] ?></p>
    <div id="map"></div>
    <?php
    $geoloc = $company["positionLongLat"];


$parts = explode(',', $geoloc);

$latitude = trim($parts[0]);
$longitude = trim($parts[1]);


    ?>
    <script>
        var map = L.map('map').setView([<?=$latitude?>, <?=$longitude?>], 13);
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);
    var marker = L.marker([<?=$latitude?>, <?=$longitude?>]).addTo(map);
    </script>
    <span>Adresse : <?= $company["address"]?></span>
    <span>Domaine d'activité : <?= $company["domainActivity"]?></span>
    
<h3>Liste des offres : </h3>
<ul class="list-group">
    <?php

    foreach($jobs as $job){
        echo'
         <li class="list-group-item d-flex justify-content-between align-items-center">
            '.$job['title'].'
            <a href="offre.php?id='.$job['id'].'" ><span class="badge bg-primary rounded-pill">Details</span></a>
        </li>
        ';
    }
    

    ?>

 
  
</ul>


    
    


</div>

<?php require_once __DIR__ . '/../partials/footer.html.php';?>