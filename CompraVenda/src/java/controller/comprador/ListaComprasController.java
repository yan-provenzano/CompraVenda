/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Isaac
 */
package controller.comprador;

import dao.ComprasDAO;
import model.Compras;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_compras")
public class ListaComprasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ComprasDAO dao = new ComprasDAO();
        List<Compras> compras;
        compras = dao.listAll();

//        for (Produtos a : produtos) {
//            a.setComentarios(comentarioDAO.findByArtigoId(post.getId()));
//        }

        req.setAttribute("compras", compras);
        req.getRequestDispatcher("/WEB-INF/lista_compras.jsp").forward(req, resp);
    }

}
