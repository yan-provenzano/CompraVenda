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

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import controller.vendedor.VendasController;
import dao.ClienteDAO;
import dao.ProdutosDAO;
import dao.UsuarioDAO;
import dao.VendasDAO;
import model.Vendas;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cliente;
import model.Produtos;
import model.Usuario;


@WebServlet("/relatorio_vendas")
public class ADMListaVendasController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VendasDAO dao = new VendasDAO();
        List<Vendas> vendas;
        vendas = dao.listAll();

        req.setAttribute("vendas", vendas);
        req.getRequestDispatcher("/WEB-INF/relatorio_vendas.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Vendas vendas = new Vendas();
        VendasDAO dao = new VendasDAO();
       
        List<Vendas> vendasDiarias = null;
         

        try {
            java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("data_venda"));
//            Date data = (Date) formatter.parse(req.getParameter("data_venda"));
            vendas.setDate(date);
        } catch (ParseException ex) {
            Logger.getLogger(VendasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
//        dao.listByDate((vendas.getDate()));
        
            if ((vendas.getDate()) != null) {
                vendasDiarias = dao.listByDate(vendas.getDate());

        }
            
        req.setAttribute("vendasDiarias", vendasDiarias);
        req.getRequestDispatcher("/WEB-INF/administrador/relatorio_diario_vendas.jsp").forward(req, resp);
    }
  
}
