import java.util.ArrayList;
import java.util.List;

public class NoticiaDAO {
    private List<Noticia> noticias;
    private int contadorId = 1;

    public NoticiaDAO() {
        this.noticias = new ArrayList<>();
    }

    public void adicionarNoticia(String nome, String titulo, String dataPublicacao, String autor) {
        Noticia noticia = new Noticia(contadorId++, nome, titulo, dataPublicacao, autor);
        noticias.add(noticia);
    }

    public List<Noticia> listarNoticias() {
        return noticias;
    }

    public Noticia buscarNoticiaPorId(int id) {
        for (Noticia noticia : noticias) {
            if (noticia.getId() == id) {
                return noticia;
            }
        }
        return null;
    }

    public void editarNoticia(int id, String nome, String titulo, String dataPublicacao, String autor) {
        Noticia noticia = buscarNoticiaPorId(id);
        if (noticia != null) {
            noticia.setNome(nome);
            noticia.setTitulo(titulo);
            noticia.setDataPublicacao(dataPublicacao);
            noticia.setAutor(autor);
        }
    }

    public void excluirNoticia(int id) {
        noticias.removeIf(noticia -> noticia.getId() == id);
    }
}
