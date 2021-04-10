package controller.vendedor;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import dao.VendasDAO;
import enums.TipoUsuario;
import model.Vendas;

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
 * @author Yan
 */

@WebServlet("/vendedor/excluir_venda")
public class ExcluirVendaController extends HttpServlet {
    
   VendasDAO dao = new VendasDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");
         Usuario user = (Usuario) req.getSession().getAttribute("user");

           if (param != null) { 
                dao.delete(Long.valueOf(param));
            }

           if (user.getTipoUsuario().equals(TipoUsuario.VENDEDOR)) {
            //se for adm
            resp.sendRedirect("/lista_vendas");
        }
       
    }
    
}
