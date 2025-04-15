<?php require_once __DIR__ .'/../partials/header.html.php'; 

?>
<div class='container'> 


<h1>Nos 3 dernieres offres </h1>

<div class="">
<?php
foreach($jobs as $job){

    echo '
<div class="card m-3">
  <div class="card-body">
    <h4 class="card-title">'.$job["title"].'</h4>
    <h6 class="card-subtitle mb-2 text-muted">'.$job['category'].'</h6>
    <p class="card-text">'.$job['description'].'</p>
   
    <a href="offre.php?id='.$job["id"].'" class="card-link">Détails</a>
  </div>
</div>
';



}


?>
</div>


    
    

    

</div>

<?php require_once __DIR__ . '/../partials/footer.html.php';?>