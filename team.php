<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>NIT Surat ACM</title><meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/style.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico" />
    <!-- <script src="//use.edgefonts.net/ubuntu:n3,i3,n4,i4,n5,i5,n7,i7:all.js"></script> -->
    <script src="http://malsup.github.io/jquery.cycle.all.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="true">

<style type="text/css">
    .block {
        text-align: center;
        vertical-align: middle;
    }
    .circle {
        border-radius: 50%;
        color: white;
        height: 150px;
        font-weight: bold;
        width: 150px;
        display: table;
        position: relative;
        margin: 10px auto;
        /*background-size: contain;*/
        /*background-color: #ddd;*/
        box-shadow: 0 10px 38px rgba(0,0,0,0.30), 0px 0px 11px 0px rgba(0,0,0,0.22);
    }
    .overlay {
        border-radius: 50%;
        color: white;
        height: 150px;
        font-weight: bold;
        width: 150px;
        display: table;
        /*margin: 20px auto;*/
        position: absolute;
        /*top: -220px;
        left:0px;*/
        visibility: hidden;
        transition: 0.25s;
        transform: scale(0);
        background:no-repeat center;
        background-size: contain;
        background-color: rgba(12,38,79,0.7);
        box-shadow: 0 10px 38px rgba(0,0,0,0.30), 0px 0px 11px 0px rgba(0,0,0,0.22);
    }
    .circle:hover > .overlay{
      visibility: visible;
      transition: 0.25s;
        transform: scale(1);
    }
    .text {
        vertical-align: middle;
        display: table-cell;
    }
    .social {
      text-decoration: none;
      padding: 10px;
  </style>

    <script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
  </head>
  <body>
    <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" style="color: white; font-size: 25px"></i></button>
      <div id="thecontainer">
      <div id="logohead" class="middle">
        <div >
          <img id="acmlogo" src="img/resized_logo.png" alt="">
        </div>
        <div id="acmtext">
          Association for Computing Machinery NIT Surat Student Chapter
        </div>
        <div >
          <img  id="svnitlogo" src="img/svnit-logo.png" alt="">
        </div>
        <div class="clear"></div>
      </div>
      <div class="fullhr"></div>
      <div id="headerblock" class="middle">
        <ul id="navigationpanel">
          <li id="0" class="navitems"><a href="./index.html">Home</a></li>
          <li id="1" class="navitems"><a href="./events.html">Events</a></li><!-- place event archives here as well -->
          <li id="2" class="navitems"><a href="./team.html">Team</a></li>
          <li id="4" class="navitems"><a href="./projects.html">Projects</a></li>
          <li id="5" class="navitems"><a href="./contact.html">Contact</a></li>
        </ul>
      </div>
    </div>
    <?php
        // displaying the details
        
         if(!empty($_POST['year']))
         {
           $year=$_POST['year'];
         }
        else $year=2017;
    ?>
    <div id="titlebar">
      <div id="titlebartext">
        <?php echo "Team of ".$year." - ".($year+1); ?>
      </div>
    </div>

    <div id="selector" align='center'>
         <form action="" method="post" >
            <select class="select" name="year">
               <?php
                  /* display the selector input*/
                  include("connection.php");
                  
                  $sql= "select * from teams order by year desc";
                  
                  $result=mysqli_query($conn, $sql);
                    while($row=mysqli_fetch_array($result))
                    {?>
               <option value="<?php echo $row['year']; ?>"><?php echo $row['year']."-".($row['year']+1); ?></option>
               <?php
                  }
                  ?>
            </select>
            <input name="submit" type="submit" />
         </form>
      </div>


  <div class="container">
        
      <div class="row">
      <?php
            $sql= "select * from team_details where year='$year'";
            
            $result=mysqli_query($conn, $sql);
              while($row=mysqli_fetch_array($result))
              {
                ?>
          <div class="col-md-2 col-sm-3 block">
              <div class="circle" style="background:url(<?php echo $row['imglink']?>) no-repeat center; background-size: contain; background-color: #ddd;">
                  <div class="overlay">
                    <p class="text">
                      <a class="social" href="<?php echo $row['fblink']?>">
                      <i style="color : #ffffff; font-size: 30px;" class="fa fa-facebook-official"></i></a>
                      <a class="social" href=#>
                      <i style="color : #ffffff; font-size: 30px;" class="fa fa-envelope"></i>
                      </a>
                      <a class="social" href=#>
                      <i style="color : #ffffff; font-size: 30px;" class="fa fa-twitter"></i>
                      </a>
                    </p>
                </div>
              </div>
              <p>
                <div><?php echo $row['name']?></div>
                <div><?php echo $row['designation']?></div>
              </p>
          </div>
          <?php  
        }
        ?>
      </div>
  </div>



<div class="footer-content">
  <div class="f1">
    <h3 style="font-size: 18px; margin: 0">ACM - NIT,  SURAT</h3>
    <br>
  <hr class="hr">
    <p id="f1-data">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
    <h4>Get Social</h4>
    <a class="social" href=#>  <i style="color : #3B5998; font-size: 25px;margin-top: 20px" class="fa fa-facebook-square"></i></a>

     <a class="social" href=#><i style="color: #d34836; font-size: 25px;margin-top: 20px" class="fa fa-google"></i></a>

    <a class="social" href=#><i style="color: #4099ff; font-size: 25px;margin-top: 20px" class="fa fa-twitter"></i></a>
    </div>
  <div class="f2">
    <h3 style="font-size: 18px; margin: 0">QUICK LINKS</h3>
    <br>
    <hr class="hr">
    <ul id="tags">
      <li><a href="#">Home</a></li>
      <li><a href="#">Events</a></li>
      <li><a href="#">Team</a></li>
      <li><a href="#">Projects</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>
  <div class="f3">
    <h3 style="font-size: 18px; margin: 0">CONTACT</h3>
    <br>
    <hr class="hr">
    <i class='fa fa-map-marker' style="color: #cbd1db; margin-top: 20px"></i>
    <p>SVNIT, Ichchhanth, Surat - 395 007</p><br>
    <i class='fa fa-envelope' style="color: #cbd1db"></i>
    <p>abc@xyz.com</p><br>
    <i class='fa fa-mobile' style="color: #cbd1db"></i>
    <p>SVNIT, Ichchhanth, Surat - 395 007</p>

  </div>
</div>
<div class="copyleft"><i class="fa fa-copyright fa-flip-horizontal"></i>
  Copyleft ACM NIT SURAT
</div>




<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="js/jquery.scroll-reveal.js"></script>
<script>
$.fn.scrollReveal();
</script>
<script type="text/javascript">

window.onbeforeunload = function () {
  window.scrollTo(0, 0);
}

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
  </body>
</html>
