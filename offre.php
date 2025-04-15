<?php  

require_once 'includes/functions.php';
?>


<?php 
    $id = $_GET['id'];
    $job= getJobById($id);
    if($job['id_company']!= 0){
        $company = getCompanyById($job['id_company']);
    }
    require_once('views/pages/offre.html.php');
?>


