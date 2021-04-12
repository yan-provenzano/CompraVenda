package controller.comprador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import dao.ComprasDAO;
import enums.TipoUsuario;
import model.Compras;

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
 * @author Isaac
 */

@WebServlet("/comprador/excluir_compra")
public class ExcluirCompraController extends HttpServlet {
    
   ComprasDAO dao = new ComprasDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
         Usuario user = (Usuario) req.getSession().getAttribute("user");

           if (param != null) { 
                dao.delete(Long.valueOf(param));
            }

           if (user.getTipoUsuario().equals(TipoUsuario.COMPRADOR)) {
            resp.sendRedirect("/lista_compras");
        }
       
    }
    
}
