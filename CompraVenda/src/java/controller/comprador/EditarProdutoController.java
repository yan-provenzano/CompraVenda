package controller.comprador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import dao.ProdutosDAO;
import enums.TipoUsuario;
import model.Produtos;

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
@WebServlet("/comprador/editar_produto")
public class EditarProdutoController extends HttpServlet {
    
    ProdutosDAO dao = new ProdutosDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
             Long id = Long.valueOf(param);
            dao.listById(id).ifPresent(i -> {
                req.setAttribute("produtos", i);
            });
        }

        req.getRequestDispatcher("/WEB-INF/comprador/editar_produto.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ProdutosDAO produtoDAO = new ProdutosDAO();
        Usuario user = (Usuario) req.getSession().getAttribute("user");

        if (req.getParameter("id") != null) {
            Produtos p = new Produtos();
            
        p = produtoDAO.findByProdutoId(Integer.valueOf(req.getParameter("id")));
            
        p.setId(Long.valueOf(req.getParameter("id")));
        p.setLiberado_Venda(req.getParameter("liberado_venda"));
            produtoDAO.saveOrUpdate(p);
        }
        
       
        if (user.getTipoUsuario().equals(TipoUsuario.COMPRADOR)) {
            resp.sendRedirect("/lista_produtos");
        }
    }
}
