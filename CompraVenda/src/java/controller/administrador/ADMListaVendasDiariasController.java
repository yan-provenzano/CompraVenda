package controller.administrador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import controller.vendedor.VendasController;
import dao.ProdutosDAO;
import dao.UsuarioDAO;
import dao.VendasDAO;
import enums.TipoUsuario;
import model.Produtos;

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
import model.Usuario;
import model.Vendas;

/**
 *
 * @author Isaac
 */
@WebServlet("/administrador/relatorio_diario_vendas")
public class ADMListaVendasDiariasController extends HttpServlet {

    VendasDAO dao = new VendasDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        Date data = null;
        try {
            data = formatter.parse(req.getParameter("data_venda"));
            if (data != null) {
                List<Usuario> vendaDiarias;
                vendaDiarias = dao.listByDate((java.sql.Date) data);
            }
        } catch (ParseException ex) {
            Logger.getLogger(ADMListaVendasDiariasController.class.getName()).log(Level.SEVERE, null, ex);
        }

        req.getRequestDispatcher("/WEB-INF/administrador/relatorio_diario_vendas.jsp").forward(req, resp);
    }

}
