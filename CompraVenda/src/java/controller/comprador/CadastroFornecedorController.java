package controller.comprador;

import dao.FornecedoresDAO;
import model.Fornecedores;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro_fornecedor")
public class CadastroFornecedorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cadastro_fornecedor.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Fornecedores cliente = new Fornecedores();
        FornecedoresDAO dao = new FornecedoresDAO();

        cliente.setRazao_Social(req.getParameter("razao_social"));
        cliente.setCnpj(req.getParameter("cnpj"));
        cliente.setEndereco(req.getParameter("endereco"));
        cliente.setBairro(req.getParameter("bairro"));
        cliente.setCidade(req.getParameter("cidade"));
        cliente.setUf(req.getParameter("uf"));
        cliente.setCep(req.getParameter("cep"));
        cliente.setTelefone(req.getParameter("telefone"));
        cliente.setEmail(req.getParameter("email"));

        dao.saveOrUpdate(cliente);
        req.getRequestDispatcher("/WEB-INF/cadastro_fornecedor.jsp").forward(req, resp);
    }

}
