<!DOCKTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>
    <title>
        Legal Service
    </title>
</head>
<body>
<h1>Legal Service</h1><hr>
<h4>Услуги</h4>
<form action="/" method="get">
    Поиск <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}" >Подробнее... </a></p>
    </div>
    <#else>
        <h5>Услуг нет</h5>
</#list>
<hr>
<h3>Добавить услугу</h3>
<form action="/product/create" method="post">
    Название: <input type="text" name="title"/><br><br>
    Описание: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Адвокат: <input type="text" name="lawyer"/><br><br>
    <input type="submit" value="Добавить услугу"/>
</form>
</body>
</html>