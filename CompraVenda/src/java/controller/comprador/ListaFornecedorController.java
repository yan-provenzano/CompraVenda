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

import dao.FornecedoresDAO;
import model.Fornecedores;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_fornecedores")
public class ListaFornecedorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FornecedoresDAO dao = new FornecedoresDAO();
        List<Fornecedores> fornecedores;
        fornecedores = dao.listAll();

        req.setAttribute("lista_fornecedores", fornecedores);
        req.getRequestDispatcher("/WEB-INF/lista_fornecedores.jsp").forward(req, resp);
    }

}
