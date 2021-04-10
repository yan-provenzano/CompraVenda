package controller.vendedor;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import dao.ClienteDAO;
import enums.TipoUsuario;
import model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Usuario;


/**
 *
 * @author Yan
 */
@WebServlet("/vendedor/editar_cliente")
public class EditarCadastroClienteController extends HttpServlet {
    
    ClienteDAO dao = new ClienteDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.findByUsuarioId(id).ifPresent(i -> {
                req.setAttribute("cliente", i);
            });
        }

        req.getRequestDispatcher("/WEB-INF/vendedor/editar_cliente.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ClienteDAO clienteDAO = new ClienteDAO();
        Usuario user = (Usuario) req.getSession().getAttribute("user");

        if (req.getParameter("id") != null) {
            Cliente c = new Cliente();
            c.setId(Long.valueOf(req.getParameter("id")));
            c.setNome(req.getParameter("nome"));
            c.setCpf(req.getParameter("cpf"));
            c.setEndereco(req.getParameter("endereco"));
            c.setBairro(req.getParameter("bairro"));
            c.setCidade(req.getParameter("cidade"));
            c.setUf(req.getParameter("uf"));
            c.setCep(req.getParameter("cep"));
            c.setTelefone(req.getParameter("telefone"));
            c.setEmail(req.getParameter("email"));
            clienteDAO.saveOrUpdate(c);
        }
        
       
        if (user.getTipoUsuario().equals(TipoUsuario.VENDEDOR)) {
            //se for adm
            resp.sendRedirect("/lista_cliente");
        }
    }
}
