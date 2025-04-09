<?php

//create short variable names
$document_root = $_SERVER['DOCUMENT_ROOT'];
$name=$_POST['name'];
$email=$_POST['email'];
$feedback=$_POST['feedback'];
$toaddress = "thacker.han0353@stu.stech.edu";

if (preg_match('/^[a-zA-Z0-9_\-\.]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/',$email) === 0) {
  echo "<p>That is not a valid email address.</p>".
      "<p>Please return to the previous page and try again.</p>";
    exit;
}

$mailcontent = "Customer name: ".filter_var($name)."\n".
               "Customer email: ".$email."\n".
               "Customer comments:\n".$feedback."\n";

$fromaddress = "From: webserver@example.com";
$subject = "Feedback from web site";

//invoke mail() function to send mail
mail($toaddress, $subject, $mailcontent, $fromaddress);

?>

<!DOCTYPE html>
<html>
  <head>
    <title>Feedback Submitted</title>
  </head>
  <body>

    <h1>Feedback submitted</h1>
    <p>Your feedback has been sent.</p>

  </body>
</html>