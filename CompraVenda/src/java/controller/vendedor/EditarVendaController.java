package controller.vendedor;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import dao.VendasDAO;
import enums.TipoUsuario;

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
 * @author Yan
 */
@WebServlet("/vendedor/editar_venda")
public class EditarVendaController extends HttpServlet {

    VendasDAO dao = new VendasDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("id");

        if (param != null) {
            Long id = Long.valueOf(param);
            dao.listById(id).ifPresent(i -> {
                req.setAttribute("vendas", i);
            });
        }

        req.getRequestDispatcher("/WEB-INF/vendedor/editar_venda.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        VendasDAO vendasDAO = new VendasDAO();
        Usuario user = (Usuario) req.getSession().getAttribute("user");

        if (req.getParameter("id") != null) {

            Vendas v = new Vendas();
            v.setId(Long.valueOf(req.getParameter("id")));
            v.setQuantidade_Venda(Integer.valueOf(req.getParameter("quantidade_venda")));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date data = (Date) formatter.parse(req.getParameter("data_venda"));
                v.setDate(data);
            } catch (ParseException ex) {
                Logger.getLogger(VendasController.class.getName()).log(Level.SEVERE, null, ex);
            }
            v.setValor_Venda(Double.valueOf(req.getParameter("valor_venda")));
            v.setId_Cliente(Integer.valueOf(req.getParameter("id_cliente")));
            v.setId_Produto(Integer.valueOf(req.getParameter("id_produto")));
            v.setId_Vendedor(Integer.valueOf(req.getParameter("id_vendedor")));
            vendasDAO.saveOrUpdate(v);
        }

        if (user.getTipoUsuario().equals(TipoUsuario.VENDEDOR)) {
            //se for adm
            resp.sendRedirect("/lista_vendas");
        }
    }
}
