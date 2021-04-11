package controller.comprador;

import dao.CategoriasDAO;
import model.Categorias;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro_categoria")
public class CadastroCategoriaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cadastro_categoria.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Categorias categoria = new Categorias();
        CategoriasDAO dao = new CategoriasDAO();

        categoria.setNome_Categoria(req.getParameter("nome_categoria"));

        dao.saveOrUpdate(categoria);
        req.getRequestDispatcher("/WEB-INF/cadastro_categoria.jsp").forward(req, resp);
    }

}
