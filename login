<?php
session_start();
//connect to database
$db=mysqli_connect("localhost","root","","ivolunteer");
mysqli_set_charset($db,'utf8');
if(isset($_POST['Login']))
{
    $Username=$_POST['Username'];
    $Password=$_POST['Password'];
    $Password=md5($Password); //Remember we hashed password before storing last time
    $sql="SELECT * FROM volunteer WHERE Username='$Username' AND Password='$Password'";
    $result=mysqli_query($db,$sql);
    if(mysqli_num_rows($result)==1)
    {
      echo'<script type="text/javascript"> alert("You are now Logged in")</script>' ; 
        $_SESSION['Username']=$Username;
 
    }
   else
   {
     echo'<script type="text/javascript"> alert("Username and Password dont Match!")</script>' ; 
    }
}
	if(isset($_POST['LoginOrg']))
{
    $UsernameOrg=$_POST['UsernameOrg'];
    $PasswordOrg=$_POST['PasswordOrg'];
    $PasswordOrg=md5($PasswordOrg); //Remember we hashed password before storing last time
    $sqlOrg="SELECT * FROM organization WHERE UsernameOrg='$UsernameOrg' AND PasswordOrg='$PasswordOrg'";
    $resultOrg=mysqli_query($db,$sqlOrg);
    if(mysqli_num_rows($resultOrg)==1)
    {
        	   echo'<script type="text/javascript"> alert("You are now Logged in")</script>' ; 
        $_SESSION['UsernameOrg']=$UsernameOrg;
     
    }
   else
   {
               	   echo'<script type="text/javascript"> alert("Username and Password dont Match!")</script>' ; 
    }
}
?>

<html>
<head>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width-device-width,initial-scale-1">
<title> ????? ??????</title>

<style>
*,
*:before,
*:after {
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {
background-color:green;
  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration: none;
  color: #ffffff;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  color: #ffffff;
}

.form {
  background: rgba(255, 255, 255, 0.1);
  padding: 40px;
  max-width: 600px;
  margin: 40px auto;
  border-radius: 4px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);

}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 40px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  background: rgba(160, 179, 176, 0.25);
  color: #a0b3b0;
  font-size: 20px;
  float: left;
  width: 50%;
  text-align: center;
  cursor: pointer;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
.tab-group li a:hover {
  background: #179b77;
  color: #ffffff;
}
.tab-group .active a {
  background: #1ab188;
  color: #ffffff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}

label {
  position: absolute;
  -webkit-transform: translateY(6px);
          transform: translateY(6px);
  left: 13px;
  color: rgba(255, 255, 255, 0.5);
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  -webkit-transform: translateY(50px);
          transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: #ffffff;
}
.sex{
 font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
  text-align:center;
}
.sex:focus{
 outline: 0;
  border-color: #1ab188;
}
.sex-textarea{
font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
.sex-textarea:focus{
 outline: 0;
  border-color: #1ab188;
    border: 2px solid #a0b3b0;
  resize: vertical;
}

input,
textarea {
  font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus,
textarea:focus {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
  float:center;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
font-size:30px;
  font-weight: 600;
  text-transform: uppercase;

  background: #1ab188;
  color: #ffffff;
  -webkit-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}
input::-webkit-input-placeholder {
    direction: rtl;
    text-align: left;
}
		.bgvideo {
			position: fixed;
			right: 0;
			bottom: 0;
			top: 0;
			padding: 0;
			min-width: 100%;
			min-height: 100%;
			width: auto;
			height: auto;
			z-index: -1;
		}
		.Exp{
 font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
  text-align:center;
}
.Exp:focus{
 outline: 0;
  border-color: #1ab188;
}
.Exp-textarea{
font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
.Exp-textarea:focus{
 outline: 0;
  border-color: #1ab188;
    border: 2px solid #a0b3b0;
  resize: vertical;
}
*,
*:before,
*:after {
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {

  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration: none;
  color: #ffffff;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  color: #ffffff;
}

.form {
  background: rgba(255, 255, 255, 0.1);
  padding: 40px;
  max-width: 600px;
  margin: 40px auto;
  border-radius: 4px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);

}


h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}



input,
textarea {
  font-size: 22px;
  display: block;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus,
textarea:focus {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
  float:center;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
font-size:30px;
  font-weight: 600;
  text-transform: uppercase;

  background: #1ab188;
  color: #ffffff;
  -webkit-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: center;
}
input::-webkit-input-placeholder {
    direction: rtl;
    text-align: left;
}
		.bgvideo {
			position: fixed;
			right: 0;
			bottom: 0;
			top: 0;
			padding: 0;
			min-width: 100%;
			min-height: 100%;
			width: auto;
			height: auto;
			z-index: -1;
		}
</style>
</head>
<body>
	<video autoplay loop muted class="bgvideo" id="bgvideo">
		<source src="videos/636806020.mp4" type="video/mp4">
    </video>
	<br/>	<br/> 	<br/> 	<br/> 	<br/>
<div class="form">

  <ul class="tab-group">
      <li class="tab active"><a href="#login"><i class="fa fa-male fa-2x"></i></a></li>
    <li class="tab"><a href="#signup"><i class="fa fa-building fa-2x"></i></a></li>
  </ul>

  <div class="tab-content">
    <div id="login">
      <h1> ????? ???? ???????</h1>

      <form action="Login.php" method="post" accept-charset="utf-8">

        <div class="top-row">
      

          <div class="field-wrap" align="center">
     
          </div>
        </div>
         
     <div class="field-wrap" align="center" style="direction: rtl;">
           
            <input type="text" required autocomplete="off" placeholder="??? ????????" name="Username" /> 
          </div>
   
        <div class="field-wrap" align="center" style="direction: rtl;">
          
          <input type="password" required autocomplete="off"placeholder="???? ??????" name="Password" />
        </div>
		  
		     

        <button type="submit" class="button button-block" name="Login"/>????? ??????</button>

      </form>


    </div>
	

    <div id="signup">
      <h1>????? ???? ?????</h1>

      <form action="Login.php" method="post" accept-charset="utf-8" >

        <div class="top-row">
      

          <div class="field-wrap" align="center">
     
          </div>
        </div>
         
     <div class="field-wrap" align="center" style="direction: rtl;">
           
            <input type="text" required autocomplete="off" placeholder="??? ????????" name="UsernameOrg" /> 
          </div>
   
        <div class="field-wrap" align="center" style="direction: rtl;">
          
          <input type="password" required autocomplete="off"placeholder="???? ??????" name="PasswordOrg" />
        </div>
		  
		     

        <button type="submit" class="button button-block" name="LoginOrg"/>????? ??????</button>

      </form>


    </div>
	

  </div>
  <!-- tab-content -->

</div>
<!-- /form -->
</section>
<script>
$(".form").find("input, textarea").on("keyup blur focus", function(e) {
  var $this = $(this), label = $this.prev("label");

  if (e.type === "keyup") {
    if ($this.val() === "") {
      label.removeClass("active highlight");
    } else {
      label.addClass("active highlight");
    }
  } else if (e.type === "blur") {
    if ($this.val() === "") {
      label.removeClass("active highlight");
    } else {
      label.removeClass("highlight");
    }
  } else if (e.type === "focus") {
    if ($this.val() === "") {
      label.removeClass("highlight");
    } else if ($this.val() !== "") {
      label.addClass("highlight");
    }
  }
});

$(".tab a").on("click", function(e) {
  e.preventDefault();

  $(this).parent().addClass("active");
  $(this).parent().siblings().removeClass("active");

  target = $(this).attr("href");

  $(".tab-content > div").not(target).hide();

  $(target).fadeIn(600);
});

</script>
</body>
</html>
