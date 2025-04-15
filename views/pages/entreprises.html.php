<?php require_once __DIR__ .'/../partials/header.html.php'; 

?>

<h1>Liste des entreprises </h1>


<div class='container'> 
    <div class="card-group entreprise">
<?php
        foreach($companies as $company){
           // '.$company[""].'
            echo '
                <a href="entreprise.php?id='.$company["id"].'"><div class="card mb-3 mx-1">
  <h4 class="card-header">'.$company["name_company"].'</h4>

  <img src="'.$company["logo"].'" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
    <rect width="100%" height="100%" fill="#868e96"></rect>
    <text x="50%" y="50%" fill="#dee2e6" dy=".3em"></text>
  </img>
  
</div>
 </a>
            ';
            
        }            
?>
</div>
    </div>
    

    



<?php require_once __DIR__ . '/../partials/footer.html.php';?>