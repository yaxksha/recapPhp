<?php require_once __DIR__ .'/../partials/header.html.php'; 

?>

<h1>Nos  offres </h1>


<div class='container'> 
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

    
    

    



<?php require_once __DIR__ . '/../partials/footer.html.php';?>