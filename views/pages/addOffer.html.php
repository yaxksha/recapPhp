<?php 
    require_once __DIR__ .'/../partials/header.html.php'; 

?>



<h1>Ajout d'offre</h1>
<div color="white" class="form-signin w-50 m-auto">
  <form method="POST" action="addOffer.php">

    <h1 class="h3 mb-3 fw-normal">Ajout d'offre</h1>
    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="title" name="title">
      <label for="floatingInput">Title</label>
    </div>

    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="description" name="description">
      <label for="floatingInput">description</label>
    </div>

    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="mission" name="mission">
      <label for="floatingInput">mission</label>
    </div>
    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="location" name="location">
      <label for="floatingInput">location</label>
    </div>
    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="category" name="category">
      <label for="floatingInput">category</label>
    </div>

<?php
    $entreprises = getCompaniesList();
?>
    <select class="form-select my-3" aria-label="Default select example" name="id_company">
        <option selected>Liste des entreprises</option>
        <?php 
        foreach($entreprises as $entreprise){
            echo '<option value='.$entreprise['id'].'>'.$entreprise['name_company'].'</option>'
            ;
        }
        ?>
        

    </select>

    
    <select class="form-select" aria-label="Default select example" name="employment_type">
        <option selected>Open this select menu</option>
        <option value="CDI">CDI</option>
        <option value="CDD">CDD</option>
        <option value="Freelance">Freelance</option>
        <option value="Internship">Internship</option>
    </select>
   
    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="technologies_used" name="technologies_used">
      <label for="floatingInput">technologies_used</label>
    </div>
    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="benefits" name="benefits">
      <label for="floatingInput">benefits</label>
    </div>

    <div class="form-floating my-5">
      <input type="text" class="form-control" id="floatingInput" placeholder="image_url" name="image_url">
      <label for="floatingInput">image_url</label>
    </div>
    <button class="btn btn-primary w-100 py-2" type="submit">ajout offre</button>
    <p class="mt-5 mb-3 text-body-secondary">© 2017–2024</p>
  </form>
</div>


<?php require_once __DIR__ . '/../partials/footer.html.php';?>