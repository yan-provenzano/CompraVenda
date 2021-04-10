/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Isaac
 */
package controller.vendedor;

import dao.ClienteDAO;
import model.Cliente;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_cliente")
public class ListaClienteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClienteDAO dao = new ClienteDAO();
        List<Cliente> cliente;
        cliente = dao.listAll();

//        for (Produtos a : produtos) {
//            a.setComentarios(comentarioDAO.findByArtigoId(post.getId()));
//        }

        req.setAttribute("lista_cliente", cliente);
        req.getRequestDispatcher("/WEB-INF/lista_cliente.jsp").forward(req, resp);
    }

}
