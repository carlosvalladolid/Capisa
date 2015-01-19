<?php
require("PHPMailerAutoload.php");



if(ValidateForm() == false) header("Location: ../../Public/ContactNoSend.html");


$NameBox = htmlentities($_POST["NameBox"],ENT_QUOTES);
$CompanyBox = htmlentities($_POST["CompanyBox"],ENT_QUOTES);
$EmailBox = htmlentities($_POST["EmailBox"],ENT_QUOTES);
$PhoneBox = htmlentities($_POST["PhoneBox"],ENT_QUOTES);
$ExteBox = htmlentities($_POST["ExteBox"],ENT_QUOTES);
$CityBox = htmlentities($_POST["CityBox"],ENT_QUOTES);
$EstateBox = htmlentities($_POST["EstateBox"],ENT_QUOTES);
$CountryBox = htmlentities($_POST["CountryBox"],ENT_QUOTES);
$CommentBox = htmlentities($_POST["CommentBox"],ENT_QUOTES);

$mail = new PHPMailer();

$mail->IsSMTP();
$mail->Host = "mail.iydsa.com";
$mail->SMTPAuth = true;
$mail->Username = 'mail@iydsa.com';
$mail->Password = 'iydsa01';
$mail->Port = 25;

$mail->SetFrom('Contacto@capisa.com', 'CAPISA');
$mail->AddAddress("ruben.rodriguez.93@outlook.com");
$mail->AddAddress("carlos.valladolid@iydsa.com");
$mail->AddAddress("ajsilvam@iydsa.com");

$mail->Subject = "INFORMACION CONTACTO";
$mail->IsHTML(true);
$mail->AddEmbeddedImage('../../Image/Logo/CapisaLogo.jpg', 'logoimg', 'logo.jpg');
$mail->Body = "
<img src=\"cid:logoimg\" /><br/><br/>
<table border='0px'>
	<tr>
		<td bgcolor='gray' colspan='2'><h1><font color='#FFFFFF'>Informaci&oacute;n de Contacto</font></h1></td>
	</tr>
	<tr>
		<td>Nombre:</td>
		<td>".$NameBox."</td>
	<tr>
	<tr>
		<td>Empresa:</td>
		<td>".$CompanyBox."</td>
	<tr>
	<tr>
		<td>E-mail:</td>
		<td>".$EmailBox."</td>
	<tr>
	<tr>
		<td>Telefono</td>
		<td>".$PhoneBox."</td>
	<tr>
	<tr>
		<td>Ext:</td>
		<td>".$ExteBox."</td>
	<tr>
	<tr>
		<td>Ciudad:</td>
		<td>".$CityBox."</td>
	<tr>
	<tr>
		<td>Estado:</td>
		<td>".$EstateBox."</td>
	<tr>
	<tr>
		<td>Pa&iacute;s</td>
		<td>".$CountryBox."</td>
	<tr>
	<tr>
		<td>Comentarios:</td>
		<td>".$CommentBox."</td>
	<tr>
</table>";

if(!$mail->Send())
	header("Location: ../../Public/ContactNoSend.html");
else
	header("Location: ../../Public/ContactSend.html");

function ValidateForm()
{
	if(!isset($_POST["NameBox"]) ||
   	   !isset($_POST["CompanyBox"]) ||
   	   !isset($_POST["EmailBox"]) ||
   	   !isset($_POST["PhoneBox"]) ||
   	   !isset($_POST["ExteBox"]) ||
   	   !isset($_POST["CityBox"]) ||
   	   !isset($_POST["EstateBox"]) ||
   	   !isset($_POST["CountryBox"]) ||
   	   !isset($_POST["CommentBox"]))
		return false;

	if(strlen($_POST["NameBox"]) > 50) return false;
	if(strlen($_POST["CompanyBox"]) > 50) return false;
	if(strlen($_POST["EmailBox"]) > 40) return false;
	if(strlen($_POST["PhoneBox"]) > 20) return false;
	if(strlen($_POST["ExteBox"]) > 10) return false;
	if(strlen($_POST["CityBox"]) > 40) return false;
	if(strlen($_POST["EstateBox"]) > 40) return false;
	if(strlen($_POST["CountryBox"]) > 40) return false;

	return true;
}


?>