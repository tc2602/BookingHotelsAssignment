/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Filter;
import model.Homestay;

/**
 *
 * @author Tai Cao
 */
public class DiscoveryServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DiscoveryServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DiscoveryServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String address = request.getParameter("address");
        if ("".equals(address) || address == null) {
            address = null;
        }

        String type_raw = request.getParameter("type");
        int type;
        if ("".equals(type_raw) || type_raw == null) {
            type = 0;
        } else {
            type = Integer.parseInt(type_raw);
        }

        String price_raw = request.getParameter("price");
        double price;
        if ("0".equals(price_raw)|| price_raw == null) {
            price = 0;
        }else 
        {
            price = Double.parseDouble(price_raw);
        }

        String people_raw = request.getParameter("people");
        int people;
        if ("".equals(people_raw) || people_raw == null) {
            people = 0;
        } else {
            people = Integer.parseInt(people_raw);
        }

        Filter filter = new Filter(address, type, price, people);
        request.setAttribute("filter", filter);

        DAO db = new DAO();
        List<Homestay> list = db.getAllHomestayByFilter(address, type, price, type);
        int size = list.size();
        int numPerPage = 12;
        int numPage;
        numPage = size / numPerPage + (size % numPerPage == 0 ? 0 : 1);

        int page;
        String mpage = request.getParameter("page");
        if (mpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(mpage);
        }

        int start, end;
        start = (page - 1) * numPerPage;
        if (page * numPerPage > size) {
            end = size;
        } else {
            end = page * numPerPage;
        }

        List<Homestay> arr = db.getHomestayByPage(list, start, end);

        request.setAttribute("numPage", numPage);
        request.setAttribute("page", page);
        request.setAttribute("arr", arr);
        request.setAttribute("list", list);

        String url = request.getServletPath();
        request.setAttribute("url", url);
        
        request.getRequestDispatcher("discovery.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
