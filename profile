<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile</title>
    <link href="favicon.png" rel=icon>
    <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
<!--     <link href="css/styles.css" rel="stylesheet">
 --></head>

<body>
    <div class="content">
        <Div class="top" style="background-color: white">
                <div class="info">
                        <div class="D">
                        <h1>

                                <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "accounts";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT first_name, last_name  FROM users WHERE id='1'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo $row["first_name"]." ". $row["last_name"];
    }
} else {
    echo "0 results";
}
$conn->close();
?>

                        </h1>
                        <div class="rt">
                                <h4>skill</h4>
                                <p><span>

                                                                 <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "accounts";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT skill  FROM users WHERE id='1'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo $row["skill"];
    }
} else {
    echo "0 results";
}
$conn->close();
?>

                                </span> </p>
                        </div>
                        <div class="rt">
                                <h4>Country</h4>
                                <p>US</p>
                        </div>
                    </div>
                      <img id="avatar" src="img/img-profile.jpg" alt=""/>
                </div>
        </Div> 

        <!-- - -->

        <Div class="down" style="background-color: white">
                <div class="info2">
                        <h3>Bio</h3>
                        <p> ممثل, كوميدي، كاتب، موسيقي، ومخرج إنجليزي. أصبح معروفً في وسائل الإعلام باعتباره واحد من ثنائي فراي ولوري الكوميدي، جنبا إلى جنب مع صديقه وشريكه الكوميدي ستيفن فراي</p>
                        <h3> experience </h3>
                        <p>
                            <ul>
                                <li>2006 – أفضل ممثل في مسلسل درامي</li>
                                <li>2008 – أفضل ممثل في مسلسل درامي</li>
                                <li>2009 – أفضل ممثل في مسلسل درامي</li>
                            </ul>

                        </p>
                </div>
        </Div> 
    </div>


</body>

</html>
