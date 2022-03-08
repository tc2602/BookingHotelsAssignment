/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Filter;

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
        if("".equals(type_raw)|| type_raw == null) {
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
        if ("".equals(people_raw)|| people_raw == null) {
            people = 0;
        } else {
            people = Integer.parseInt(people_raw);
        }
        
        Filter filter = new Filter(address, type, price, people);
        request.setAttribute("filter", filter);
        
        
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
