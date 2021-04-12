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

import dao.CategoriasDAO;
import model.Categorias;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_categorias")
public class ListaCategoriaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoriasDAO dao = new CategoriasDAO();
        List<Categorias> Categorias;
        Categorias = dao.listAll();

        req.setAttribute("lista_categorias", Categorias);
        req.getRequestDispatcher("/WEB-INF/lista_categorias.jsp").forward(req, resp);
    }

}
