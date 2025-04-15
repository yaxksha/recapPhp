<?php  

require_once 'includes/functions.php';
?>


<?php 
    $id = $_GET['id'];
    $company= getCompanyById($id);
    $jobs=getJobsListOfThisCompany($id);
    
    require_once('views/pages/entreprise.html.php');
?>

