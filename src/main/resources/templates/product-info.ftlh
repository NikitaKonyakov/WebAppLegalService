<!DOCKTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>
    <title>
        Legal Service
    </title>
</head>
<body>
<h1>Legal Service</h1><hr>
<h4>Подробная информация об услуги</h4>
<b>Название услуги: </b>${product.title}<br>
<b>Описание: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Адвокат: </b>${product.lawyer}<br>
<hr>

<h3>Добавить услугу</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить услугу"/>
</form>
</body>
</html>