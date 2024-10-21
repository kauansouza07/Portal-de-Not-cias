<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editar Notícia</title>
</head>
<body>
    <h1>Editar Notícia</h1>
    <form action="noticia" method="post">
        <input type="hidden" name="id" value="${noticia.id}" />
        <label>Título:</label>
        <input type="text" name="titulo" value="${noticia.titulo}" required /><br>

        <label>Conteúdo:</label>
        <textarea name="conteudo" required>${noticia.conteudo}</textarea><br>

        <label>Autor:</label>
        <input type="text" name="autor" value="${noticia.autor}" required /><br>

        <label>Data de Publicação:</label>
        <input type="date" name="dataPublicacao" value="${noticia.dataPublicacao}" required /><br>

        <label>Categoria:</label>
        <input type="text" name="categoria" value="${noticia.categoria}" required /><br>

        <input type="submit" value="Salvar" />
    </form>
    <a href="noticia">Voltar</a>
</body>
</html>
