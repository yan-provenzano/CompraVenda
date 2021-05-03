package controller.administrador;

import dao.UsuarioDAO;
import enums.TipoUsuario;
import model.Usuario;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro_vendedores")
public class CadastroVendedorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cadastro_vendedores.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario usuario = new Usuario();
        UsuarioDAO dao = new UsuarioDAO();

        usuario.setCpf(req.getParameter("cpf"));
        usuario.setNome(req.getParameter("nome"));
        usuario.setSenha(req.getParameter("senha"));
        usuario.setTipo("1");
        usuario.setTipoUsuario(TipoUsuario.VENDEDOR);
        
        dao.saveOrUpdate(usuario);
        req.getRequestDispatcher("/WEB-INF/cadastro_vendedores.jsp").forward(req, resp);
    }

}
