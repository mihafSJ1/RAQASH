<html lang="en">
<!-- php -->
<?php include 'php/connectdatabase.php';?>
<?php include 'HomePage.php'; ?>
<?php 
session_start();
 if($_SESSION['username']=='' || $_SESSION['roll'] != 'Vistor'){
 
 header("Location:index.php");
 exit;
 }
  $username = $_SESSION['username'];
?>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title> HomePage</title>
  <link rel="stylesheet" type="text/css"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="bootstrap.bundle.min.js">
  <link rel="icon" href="assets/raqash
  _icon.png">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="CSS/HomePage4.CSS">


  <script src="JS/viewArtwork.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="JS/onClickButtons.js"></script>
  <link rel="stylesheet" type="text/css" href="CSS/glider.min.css">
  <script src="JS/glider.min.js"></script>

</head>


<body>
  <!-- nav bar  -->
  <header class="menu-bar">
    <nav>
      <ul>
        <li id="Gsize"><a href="VistorHomePage.php">GALLERY</a></li>

        <!-- dropdown menue -->
        <div class="drop">
          <li class="dropAccount"  onclick= "showDropdownMenu()"><a href="#">ACCOUNT▽</a></li>
          <div class="dropContent">
            <a href="FAVOURITS.php">FAVOURITS</a>
            <a href="logout.php">LOG OUT</a>
          </div>
        </div>

        <!-- logo -->
        <img src="assets/raqashlogo.png" alt="RAQASH Logo" width="100px" height="100px">

        <li id="Asize"><a href="#AboutUs">ABOUT US</a></li>
        <li id="Csize"><a href="#contactUs">CONTACT US</a></li>
      </ul>
    </nav>
  </header>

  <!-- to top button -->
  <button onclick="topFunction()" id="myBtn" title="Go to top"><img src="assets/Raqash Icon-up.svg" width="30px"
      height="30px" alt="up"></button>
  <script>//Get the button:
    mybutton = document.getElementById("myBtn");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () { scrollFunction() };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "block";
      } else {
        mybutton.style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0; // For Safari
      document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }
        
    function addfav(id){//add post to favourit
    $.ajax({
              type: "POST",
              url:'addToFav.php',
              data:{artid: id}
         });  
    $(this).attr("src", "assets/Raqash Icon-favActivated.svg");

  }
  
  function viewArt(id){
    $.ajax({
              type: "POST",
              url:'php/HomePage.php',
              data:{ViewArtID: id}
     });
  }
    
  function showDropdownMenu(){
          $(".dropContent").show();
        }
    
    </script>


  <!-- image gallery -->
  <label class="title"> <span id="dot">•</span> ARTS <span id="dot">•</span> </label>

<?php     

              $sqlFav = "SELECT Artwork_id
                         FROM Favourite 
                         WHERE Vistor_username ='$username'";
           $resultFav = mysqli_query($conn, $sqlFav);  
           $FavActivated = mysqli_fetch_array($resultFav);


           
           ?>
  <!--gallery-->
  <div class="image-gallery">
<?php for($i = 0 ; $i<5 ; $i++):?>

    <div onclick="window.location='viewArtWork1.php?id=<?php echo $artworkArray[$i]['AId']?>'" class= "<?php echo 'div'.$i.' post'?>" style='background-image :url("<?php if(!empty($artworkArray[$i])){ echo 'images/'.$artworkArray[$i]['img'];} else{ echo 'assets/raqashlogo.png';} ?> ");'>

    
    <div class= "<?php echo 'imginfo'.$i.' disable' ?>" >

      <h5><?php if(!empty($artworkArray[$i])){ echo $artworkArray[$i]['Title'];}else{ echo 'Title';} ?></h5>
        <h6><?php if(!empty($artworkArray[$i])){ echo $artworkArray[$i]['Artist_username'];}else{ echo '@username';}   ?></h6>
        <label><?php if(!empty($artworkArray[$i])){ echo $artworkArray[$i]['Number_of_dislike'] ;}else{ echo '0';}?></label><img src="assets/Raqash Icon-dislike.svg" data-row_id="<?php echo $artworkArray[$i]['AId']?>" alt="dislike icon " height="30px" width="30px" class="dislike">
        <label><?php if(!empty($artworkArray[$i])){ echo $artworkArray[$i]['Number_of_like'] ;}else{ echo '0';} ?></label><img src="assets/Raqash Icon-like.svg"  data-row_id="<?php echo $artworkArray[$i]['AId']?>" alt="like icon " height="30px" width="30px" class="like">
        <img src="assets/Raqash Icon-fav.svg" alt="fav icon " height="30px" width="30px" class ="favbutton"onclick= "addfav(<?php echo $artworkArray[$i]['AId'];?>)">
            </div>

    </div>
<?php endfor;?>

</div>

<div class="image-gallery2">
  <?php $k=0 ?>
<?php for($j = $i ; $j<10 ; $j++):?>

    <div  onclick="window.location='viewArtWork1.php?id=<?php echo $artworkArray[$j]['AId']?>'" class= "<?php echo 'div'.$k.' post'?>" style='background-image :url("<?php if(!empty($artworkArray[$j])){ echo 'images/'.$artworkArray[$j]['img'];}else{ echo 'assets/raqashlogo.png';}
?>");'>

      <div class= "<?php echo 'imginfo'.$k.' disable' ?>" >

      <h5><?php if(!empty($artworkArray[$j])){ echo $artworkArray[$j]['Title'];}else{ echo 'Title';} ?></h5>
        <h6><?php if(!empty($artworkArray[$j])){ echo $artworkArray[$j]['Artist_username'];}else{ echo '@username';}   ?></h6>
        <label><?php if(!empty($artworkArray[$j])){ echo $artworkArray[$j]['Number_of_dislike'] ;}else{ echo '0';}?></label><img src="assets/Raqash Icon-dislike.svg" data-row_id="<?php echo $artworkArray[$j]['AId']?>" alt="dislike icon " height="30px" width="30px" class="dislike">
        <label><?php if(!empty($artworkArray[$j])){ echo $artworkArray[$j]['Number_of_like'] ;}else{ echo '0';} ?></label><img src="assets/Raqash Icon-like.svg"  data-row_id="<?php echo $artworkArray[$j]['AId']?>" alt="like icon " height="30px" width="30px" class="like">
        <img src="assets/Raqash Icon-fav.svg" alt="fav icon " height="30px" width="30px" class ="favbutton"onclick= "addfav(<?php echo $artworkArray[$j]['AId'];?>)">
            </div>

    </div>
<?php $k++?>
<?php endfor;?>

</div>


  <!-- end -->
  <!-- Artist -->
  <div class="artists-box">
    <label class="title-artist "> <span id="dot">•</span> OUR ARTISTS <span id="dot">•</span> </label>
    <button role="button" class="next"><img src="assets/Raqash Icon-next.svg" height="25px" alt="next"></button>
    <div class="ourArtists">

      <div class="artistsSlider">
    <?php 
    
    $query = "SELECT * FROM Artist WHERE Approved='1'";
    $result = mysqli_query($conn,$query);

        while($row = mysqli_fetch_assoc($result)){
            $ArtistAcc = $row["ARusername"];
            $ArtistName = $row["name"];
            $ArtistBio = $row["bio"];
            $ArtistImg = 'images/'.$row["account_image"];
    ?>
        <div class="artistCard">
          <img src="<?php echo  $ArtistImg?>" >
          <a class="artist-acount " href="<?php echo 'ArtistSudioVistor.php?id='.$ArtistAcc?>"><?php echo $ArtistName?></a>
          <p><?php echo $ArtistBio?></p>
        </div>
       <?php  
          }
    ?>
        
      </div>
      <div role="tablist" class="dots"></div>
      <button role="button" class="prev"><img src="assets/Raqash Icon-prev.svg" height="25px" alt=""></button>
    </div>

    <!-- about us -->

    <div id="AboutUs" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
      <label class="title"> <span id="dot">•</span> ABOUT US<span id="dot">•</span> </label>

      <p>

        <strong>RAQASH </strong>Means in Arabic (خط), Line art is any image that consists of distinct straight or curved
        lines <br>
        placed against a (usually plain) background without gradations in shade (darkness) or hue (color) to <br>
        represent two-dimensional or three-dimensional objects. <br>
        <strong>Our website is a great place for artists to represent their work and share it with others!</strong>

      </p>

    </div>
    <!-- footer with contact us -->
   
    <div data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
      <label class="title"> <span id="dot">•</span> CONTACT US <span id="dot">•</span> </label>

      <div class="Msgcontainer">

        <div class="right">
          <div class="Msgbox">
            <input type="image" class="logoContact" src="assets/raqashlogo.png" width="250px" height="250px" alt="raqash logo">
          </div>
        </div>
        <div class="left">
          <div>

            <form class="Msgformbox" id="Msg-form" action="#">

            <ul class="list-unstyled">

            <h4>RAQASH Team </h4>
          <li class="list"> • Riham AlKhudaidi</li>
          <li class="list">• Mihaf AlJunaidel</li>

            <li class="list">•  Renad AlMusaad</li>

            <li class="list">• Latifa AlOmar</li>
<div class="contact">
          <li class="list"> <img src="assets/Raqash Icon-email.svg" alt="twitter icon" width="25px" height="25px"> <a
              href="mailto:RAQASH@gmail.com">
              Contact us</a></li>
              <li>
          <a href="https://twitter.com/RAQASH381" class="list"><img src="assets/Raqash Icon-twitter.svg" alt="twitter icon"
              width="30px" height="30px"> twitter</a>
            </li>
              </div>

        </ul>




            </form>
          </div>

        </div>
      </div>
    </div>
    <footer id="RAQASHTEAM">

    &copy;RAQASH Team 2020
    </footer>

    <div id="bg-model"></div>

<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<script>
  AOS.init({
    duration: 600, // values from 0 to 3000, with step 50ms
  });
</script>


</body>

</html>