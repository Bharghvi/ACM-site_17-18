<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>NIT Surat ACM</title><meta charset="utf-8" />
		<link href="css/style.css" rel="stylesheet" />
		<link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico" />
		<script src="//use.edgefonts.net/ubuntu:n3,i3,n4,i4,n5,i5,n7,i7:all.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
  </head>
  <body>
    	<div id="thecontainer">
			<div id="logohead" class="middle">
				<div id="acmlogo">
				</div>
				<div id="acmtext">
					NIT Surat ACM Chapter
				</div>
				<div id="svnitlogo">
				</div>
				<div class="clear"></div>
			</div>
			<div class="fullhr"></div>
			<div id="headerblock" class="middle">
				<ul id="navigationpanel">
					<li id="0" class="navitems"><a href="./index.php">Home</a></li>
					<li id="1" class="navitems"><a href="./events.php">Events</a></li><!-- place event archives here as well -->
					<li id="2" class="navitems"><a href="./team.php">Team</a></li>
					<li id="3" class="navitems"><a href="./about.php">About</a></li>
					<li id="4" class="navitems"><a href="./projects.php">Projects</a></li>
					<li id="5" class="navitems"><a href="./contact.php">Contact</a></li>
				</ul>
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
			<option value="<?php echo $row['year']; ?>"><?php echo $row['year']; ?></option>
			<?php
			}
		?>


		</select>
		<input name="submit" type="submit" />
		
		
			 </form>
</div>			 
	  <div id="teaminfo" align="center">
	  
	  <?php
	  
	 // displaying the details
	 
		 if(!empty($_POST['year']))
		 {
			 $year=$_POST['year'];
		 }
		else $year=2017;
		
		?>
		
		<div>
		<?php echo "Team of ".$year." - ".($year+1); ?>
		</div>
		<?php
		$sql= "select * from team_details where year='$year'";

		$result=mysqli_query($conn, $sql);
			while($row=mysqli_fetch_array($result))
			{
				?>
				
				<div style="display: inline-block">
				  
				 <a href="<?php echo $row['fblink']?>">
					<div><img src="<?php echo $row['imglink']?>" alt="" style="width:304px;height:228px;"></div>
					</a>
					<div><?php echo $row['name']?></div> 
					<div><?php echo $row['designation']?></div> 
				</a>
				</div>
								
			<?php	
			}
	  ?>
	 
	  </div >
	  

    <div id="thefooter">
        <div class="middle" style="width: 800px">
          <span id="copyleft"><img src="./img/copyleft.png" alt="Copyleft symbol" title="Copyleft" width="16" height="16" style="position: relative;top: 4px;padding: 2px" />Copyleft ACM NIT Surat.</span>
          <div id="extlinks">
            External Links :<br />
            <a href="http://www.svnit.ac.in" target="_blank" title="SVNIT Surat Homepage">
              SVNIT Surat
            </a><br />
            <a href="//nitsurat.acm.org/forum" target="_blank" title="ACM SVNIT Forum">
              Forum @ ACM SVNIT
            </a><br />
            <a href="//nitsurat.acm.org/chat/a/" target="_blank" title="ACM SVNIT Forum">
              Find someone online
            </a>
          </div>

          <div id="plugins">
            <span><a id="fb" target="_blank" href="https://www.facebook.com/acmnitsurat/" title="ACM SVNIT Facebook Page"></a></span>
            <span><a id="t" target="_blank" href="https://www.twitter.com/acmnitsurat/" title="Follow ACM SVNIT on Twitter"></a></span>
            <span><a id="gp" target="_blank" href="https://plus.google.com/102663242082547358717" title="ACM SVNIT Google+ Profile"></a></span>
          </div>
        </div>
      </div>
      <noscript style="position: absolute;top: 0;height: auto; width: 100%;background: #f00;text-align: center;color: #fff">This site uses JavaScript for its normal functioning. You may experience trouble navigating at this page. Open the lite version <a href="http://nitsurat.acm.org/lite/">here</a>.
      </noscript>
      <script src="js/data.js"></script>
      <script src="js/main.js"></script>
      <script src="js/memberData.js"></script>
  </body>
</html>
