<?php
$emailErr = '';
if (isset($_POST["email"])) {
    $pos = strpos($_POST['email'], '@gmail.com');
    if ($pos !== false){
    $emailErr =" Регистрация пользователей с таким почтовым адресом невозможна";
}
}?>
<!DOCTYPE html>
<html>
<head>
    <title>Обратная связь</title>
</head>
<body>
<h2>Форма обратной связи</h2>
<p>* Обязательное для заполнения поле</p>
<form method="post" name="form">
    <textarea cols="32" name="message" rows="5" >Ваш комментарий
  </textarea><br>
    <input name="name" type="text" placeholder="Ваше ФИО" required/> *<br>
    <input name="adres" type="text" placeholder="Ваш адрес" /><br>
    <input name="email" type="text" placeholder="Ваша почта" /><?php echo $emailErr;?>
    <br>
    <input name="phone" type="text" placeholder="Ваш номер телефона" required/> *<br>
    <input name="file" type="file" placeholder="Ваш файл" /><br>
    <input type="submit" value="Отправить" />
</form>

</body>
</html>