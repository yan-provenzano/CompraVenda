/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.comprador;

import dao.ComprasDAO;
import dao.FornecedoresDAO;
import dao.ProdutosDAO;
import dao.UsuarioDAO;
import model.Compras;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Fornecedores;
import model.Produtos;
import model.Usuario;

/**
 *
 * @author Isaac
 */
@WebServlet("/cadastro_compras")
public class ComprasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FornecedoresDAO dao = new FornecedoresDAO();
        List<Fornecedores> fornecedor;
        fornecedor = dao.listAll();
        
        ProdutosDAO produtosDao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = produtosDao.listAll();
        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        List<Usuario> compradores;
        compradores = usuarioDao.findAllCompradores();
        
        req.setAttribute("compradores", compradores);
        req.setAttribute("produtos", produtos);
        req.setAttribute("listAll", fornecedor);
        req.getRequestDispatcher("/WEB-INF/cadastro_compras.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Compras compras = new Compras();
        ComprasDAO dao = new ComprasDAO();
        
        FornecedoresDAO fornecedoresDAO = new FornecedoresDAO();
        List<Fornecedores> fornecedores;
        fornecedores = fornecedoresDAO.listAll();
        
        ProdutosDAO produtosDao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = produtosDao.listAll();
        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        List<Usuario> compradores;
        compradores = usuarioDao.findAllCompradores();

        compras.setQuantidade_Compra(Integer.valueOf(req.getParameter("quantidade_compra")));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date data = (Date) formatter.parse(req.getParameter("data_compra"));
            compras.setDate(data);
        } catch (ParseException ex) {
            Logger.getLogger(ComprasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        compras.setValor_Compra(Integer.valueOf(req.getParameter("valor_compra")));
        compras.setId_Fornecedor(Integer.valueOf(req.getParameter("id_fornecedor")));
        compras.setId_Produto(Integer.valueOf(req.getParameter("id_produto")));
        compras.setId_Comprador(Integer.valueOf(req.getParameter("id_comprador")));
        dao.saveOrUpdate(compras);
        req.setAttribute("compradores", compradores);
        req.setAttribute("listAll", fornecedores);
        req.setAttribute("produtos", produtos);
        req.getRequestDispatcher("/WEB-INF/cadastro_compras.jsp").forward(req, resp);
    }
}
