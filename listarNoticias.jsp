<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Notícias</title>
</head>
<body>
    <h1>Notícias Cadastradas</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Título</th>
                <th>Autor</th>
                <th>Data de Publicação</th>
                <th>Categoria</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="noticia" items="${noticias}">
                <tr>
                    <td>${noticia.titulo}</td>
                    <td>${noticia.autor}</td>
                    <td>${noticia.dataPublicacao}</td>
                    <td>${noticia.categoria}</td>
                    <td>
                        <a href="editarNoticia.jsp?id=${noticia.id}">Editar</a>
                        <a href="excluirNoticia?id=${noticia.id}">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="cadastrarNoticia.jsp">Cadastrar Nova Notícia</a>
</body>
</html>
