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
        Fornecedores fornecedor = new Fornecedores();
        FornecedoresDAO dao = new FornecedoresDAO();

        fornecedor.setRazao_Social(req.getParameter("razao_social"));
        fornecedor.setCnpj(req.getParameter("cnpj"));
        fornecedor.setEndereco(req.getParameter("endereco"));
        fornecedor.setBairro(req.getParameter("bairro"));
        fornecedor.setCidade(req.getParameter("cidade"));
        fornecedor.setUf(req.getParameter("uf"));
        fornecedor.setCep(req.getParameter("cep"));
        fornecedor.setTelefone(req.getParameter("telefone"));
        fornecedor.setEmail(req.getParameter("email"));

        dao.saveOrUpdate(fornecedor);
        req.getRequestDispatcher("/WEB-INF/cadastro_fornecedor.jsp").forward(req, resp);
    }

}
