<!DOCTYPE HTML> 
<html>
<head>
</head>
<body> 

<?php
// define variables and set to empty values
$username = $password = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $username = test_input($_POST["username"]);
   $password = test_input($_POST["password"]);
}

function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
?>

<h2>PHP Login Form</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
   Username: <input type="text" name="username">
   <br><br>
   Password: <input type="text" name="password">
   <br><br>
   <input type="submit" name="submit" value="Submit"> 
</form>


</body>
</html>
