Mister Spy bot Mailer V1
<?php
$to = $_POST["to"];
$subject= $_POST["subject"]. $dataHora = rand(100000000,100000000000000000);;
$message= $_POST["message"]. $dataHora = rand(100000000,100000000000000000);;

$headers = 'From: NoReply' . "\r\n" .
    'Reply-To: tst@tst.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
$headers  = "MIME-Version: 1.0\n";
$headers .= "Content-type: text/html; charset=iso-8859-1\n";

mail($to, $subject, $message, $headers);
?>