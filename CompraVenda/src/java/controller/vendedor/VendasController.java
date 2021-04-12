/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.vendedor;

import dao.VendasDAO;
import dao.ClienteDAO;
import dao.ProdutosDAO;
import dao.UsuarioDAO;
import model.Vendas;

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
import model.Cliente;
import model.Produtos;
import model.Usuario;

/**
 *
 * @author Yan
 */
@WebServlet("/cadastro_vendas")
public class VendasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClienteDAO dao = new ClienteDAO();
        List<Cliente> cliente;
        cliente = dao.listAll();
        
        ProdutosDAO produtosDao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = produtosDao.listAll();
        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        List<Usuario> vendedores;
        vendedores = usuarioDao.findAllVendedores();
        
        req.setAttribute("vendedores", vendedores);
        req.setAttribute("produtos", produtos);
        req.setAttribute("listAll", cliente);
        req.getRequestDispatcher("/WEB-INF/cadastro_vendas.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Vendas vendas = new Vendas();
        VendasDAO dao = new VendasDAO();
        
        ClienteDAO clienteDAO = new ClienteDAO();
        List<Cliente> cliente;
        cliente = clienteDAO.listAll();
        
        ProdutosDAO produtosDao = new ProdutosDAO();
        List<Produtos> produtos;
        produtos = produtosDao.listAll();
        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        List<Usuario> vendedores;
        vendedores = usuarioDao.findAllVendedores();

        vendas.setQuantidade_Venda(Integer.valueOf(req.getParameter("quantidade_venda")));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date data = (Date) formatter.parse(req.getParameter("data_venda"));
            vendas.setDate(data);
        } catch (ParseException ex) {
            Logger.getLogger(VendasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        vendas.setValor_Venda(Double.valueOf(req.getParameter("valor_venda")));
        vendas.setId_Cliente(Integer.valueOf(req.getParameter("id_cliente")));
        vendas.setId_Produto(Integer.valueOf(req.getParameter("id_produto")));
        vendas.setId_Vendedor(Integer.valueOf(req.getParameter("id_vendedor")));
        dao.saveOrUpdate(vendas);
        req.setAttribute("vendedores", vendedores);
        req.setAttribute("listAll", cliente);
        req.setAttribute("produtos", produtos);
        req.getRequestDispatcher("/WEB-INF/cadastro_vendas.jsp").forward(req, resp);
    }
}
