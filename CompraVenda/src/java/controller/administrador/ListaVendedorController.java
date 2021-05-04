/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Isaac
 */
package controller;

import dao.UsuarioDAO;
import model.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_vendedores")
public class ListaVendedorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuarioDAO dao = new UsuarioDAO();
        List<Usuario> vendedores;
        vendedores = dao.findAllVendedores();

        req.setAttribute("vendedores", vendedores);
        req.getRequestDispatcher("/WEB-INF/lista_vendedores.jsp").forward(req, resp);
    }

}
