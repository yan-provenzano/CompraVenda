/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Isaac
 */
package controller.administrador;

import dao.ProdutosDAO;
import model.Produtos;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/relatorio_estoque")
public class ADMListaProdutosController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProdutosDAO dao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = dao.listAll();

//        for (Produtos a : produtos) {
//            a.setComentarios(comentarioDAO.findByArtigoId(post.getId()));
//        }

        req.setAttribute("relatorio_estoque", produtos);
        req.getRequestDispatcher("/WEB-INF/relatorio_estoque.jsp").forward(req, resp);
    }

}
