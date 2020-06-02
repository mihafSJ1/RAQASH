 <?php

session_start();
if($_SESSION['username']=='' || $_SESSION['roll'] != 'Artist'){

header("Location:index.php");
exit;
}


include 'php/connectdatabase.php'; 


if (isset($_POST['modify'])){

    $aid=$_POST['action'];

    // $SQLupdateArtwork = "SELECT * FROM ArtWork WHERE AId ='$aid'";
    // $resultUpdateArtwork = mysqli_query($conn, $SQLupdateArtwork);
    // $artwork = mysqli_fetch_array($resultUpdateArtwork);

    // $modTitle = $artwork['Title'];
    // $modDesc = $artwork['Art_description'];
    // $disable= $artwork['disabel_comment'];


if(!empty($_POST['Title'])){
    $modTitle= $_POST['Title'];
    $sql1 ="UPDATE ArtWork SET Title='$modTitle' WHERE  AId='$aid' ";
       
   if (mysqli_query($conn, $sql1)){

     }else {
           echo "Error: " . $sql1 . "<br>" . mysqli_error($conn);
      } 
}
if(!empty($_POST['desc'])){
    $modDesc= $_POST['desc'];
    $sql2 ="UPDATE ArtWork SET Art_description ='$modDesc' WHERE  AId='$aid' ";

    if (mysqli_query($conn, $sql2)){

     } else {
            echo "Error: " . $sql1 . "<br>" . mysqli_error($conn);
       }  echo "Error: " . $sql2 . "<br>" . mysqli_error($conn);
       
}
if(!empty($_POST['disableComment'])){
      $disable=1;
      $sql3 ="UPDATE ArtWork SET disableComment ='$disable' WHERE  AId='$aid' ";
      if (mysqli_query($conn, $sql3)){
    
         }else {
               echo "Error: " . $sql3 . "<br>" . mysqli_error($conn);
          } 

    }


    }
        
        
            
        
    




header("location:ArtistStudio.php");
 ?>