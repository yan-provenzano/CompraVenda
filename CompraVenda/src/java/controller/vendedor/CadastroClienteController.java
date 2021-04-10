package controller.vendedor;

import dao.ClienteDAO;
import model.Cliente;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro_cliente")
public class CadastroClienteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cadastro_cliente.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cliente cliente = new Cliente();
        ClienteDAO dao = new ClienteDAO();

        cliente.setNome(req.getParameter("nome"));
        cliente.setCpf(req.getParameter("cpf"));
        cliente.setEndereco(req.getParameter("endereco"));
        cliente.setBairro(req.getParameter("bairro"));
        cliente.setCidade(req.getParameter("cidade"));
        cliente.setUf(req.getParameter("uf"));
        cliente.setCep(req.getParameter("cep"));
        cliente.setTelefone(req.getParameter("telefone"));
        cliente.setEmail(req.getParameter("email"));

        dao.saveOrUpdate(cliente);
        req.getRequestDispatcher("/WEB-INF/cadastro_cliente.jsp").forward(req, resp);
    }

}
