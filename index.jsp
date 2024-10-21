<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Portal de Notícias</title>
</head>
<body>
    <h1>Últimas Notícias</h1>
    <ul>
        <c:forEach var="noticia" items="${noticias}">
            <li>${noticia.titulo} - ${noticia.autor} (${noticia.dataPublicacao})</li>
        </c:forEach>
    </ul>
    <a href="cadastrarNoticia.jsp">Cadastrar Nova Notícia</a>
</body>
</html>
