<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Notícias</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .btn {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <h1>Notícias Cadastradas</h1>
    <table>
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
                        <form action="noticia" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="delete" />
                            <input type="hidden" name="id" value="${noticia.id}" />
                            <input type="submit" value="Excluir" class="btn" onclick="return confirm('Tem certeza que deseja excluir esta notícia?');" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="cadastrarNoticia.jsp">Cadastrar Nova Notícia</a>
</body>
</html>
