import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/noticia")
public class NoticiaServlet extends HttpServlet {
    private List<Noticia> noticias = new ArrayList<>();
    private int nextNoticiaId = 1;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("noticias", noticias);
        req.getRequestDispatcher("listarNoticias.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String titulo = req.getParameter("titulo");
        String conteudo = req.getParameter("conteudo");
        String autor = req.getParameter("autor");
        String dataPublicacao = req.getParameter("dataPublicacao");
        String categoria = req.getParameter("categoria");

        if (id == null || id.isEmpty()) {
            Noticia noticia = new Noticia(nextNoticiaId++, titulo, conteudo, autor, dataPublicacao, categoria);
            noticias.add(noticia);
        } else {
            for (Not
