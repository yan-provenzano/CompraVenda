/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Yan
 */
package controller;

import dao.ProdutosDAO;
import model.Produtos;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/produtos")
public class ProdutosController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProdutosDAO dao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = dao.listAll();

        ProdutosDAO produtosDao = new ProdutosDAO();
        List<Produtos> produtosDisponiveis;
        produtosDisponiveis = produtosDao.listAllDisponiveis();
//        for (Produtos a : produtos) {
//            a.setComentarios(comentarioDAO.findByArtigoId(post.getId()));
//        }

        req.setAttribute("produtos", produtos);
        req.setAttribute("produtosDisponiveis", produtosDisponiveis);
        req.getRequestDispatcher("/WEB-INF/produtos.jsp").forward(req, resp);
    }

}
