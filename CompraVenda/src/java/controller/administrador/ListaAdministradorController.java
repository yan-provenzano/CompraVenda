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

import dao.UsuarioDAO;
import model.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/lista_administradores")
public class ListaAdministradorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuarioDAO dao = new UsuarioDAO();
        List<Usuario> administradores;
        administradores = dao.findAllAdministradores();

        req.setAttribute("administradores", administradores);
        req.getRequestDispatcher("/WEB-INF/lista_administradores.jsp").forward(req, resp);
    }

}
