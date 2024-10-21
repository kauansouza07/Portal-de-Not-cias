<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastrar Notícia</title>
</head>
<body>
    <h1>Cadastrar Nova Notícia</h1>
    <form action="noticia" method="post">
        <label>Título:</label>
        <input type="text" name="titulo" required /><br>

        <label>Conteúdo:</label>
        <textarea name="conteudo" required></textarea><br>

        <label>Autor:</label>
        <input type="text" name="autor" required /><br>

        <label>Data de Publicação:</label>
        <input type="date" name="dataPublicacao" required /><br>

        <label>Categoria:</label>
        <input type="text" name="categoria" required /><br>

        <input type="submit" value="Cadastrar" />
    </form>
    <a href="noticia">Voltar</a>
</body>
</html>
