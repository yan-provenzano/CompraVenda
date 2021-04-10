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

import dao.VendasDAO;
import model.Vendas;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_vendas")
public class ListaVendasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VendasDAO dao = new VendasDAO();
        List<Vendas> vendas;
        vendas = dao.listAll();

//        for (Produtos a : produtos) {
//            a.setComentarios(comentarioDAO.findByArtigoId(post.getId()));
//        }

        req.setAttribute("vendas", vendas);
        req.getRequestDispatcher("/WEB-INF/lista_vendas.jsp").forward(req, resp);
    }

}
