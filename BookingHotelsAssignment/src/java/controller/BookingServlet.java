/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import model.Account;
import model.Booking;
import model.Customer;
import model.Facilities;
import model.Homestay;

/**
 *
 * @author Tai Cao
 */
public class BookingServlet extends HttpServlet {

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
            out.println("<title>Servlet BookingServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("account");

        DAO db = new DAO();

        Customer cus = db.getCustomerById(ac.getCusID());

        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();

        int cusid = cus.getCusID();
        int id = Integer.parseInt(request.getParameter("id"));
        String date = fmt.format(now);
        String datefrom = request.getParameter("datefrom");
        String dateto = request.getParameter("dateto");
        int people = Integer.parseInt(request.getParameter("people"));
        double total = Double.parseDouble(request.getParameter("total"));
        String name = request.getParameter("facilities");

        Booking book = new Booking(cusid, db.getHomestayById(id), date, datefrom, dateto, people, total, name);

        db.insertNewBooking(book);
        request.getRequestDispatcher("/discovery").forward(request, response);
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
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("account");

        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();

        if (ac != null) {
            DAO db = new DAO();

            Customer cus = db.getCustomerById(ac.getCusID());

            int cusid = cus.getCusID();
            int id = Integer.parseInt(request.getParameter("id"));
            String date = fmt.format(now);
            String datefrom = request.getParameter("datefrom");
            String dateto = request.getParameter("dateto");
            int people = Integer.parseInt(request.getParameter("people"));
            String name = request.getParameter("facilities");

            Homestay h = db.getHomestayById(id);
            List<Customer> list = db.getAllCustomer();

            LocalDate start = LocalDate.parse(datefrom);
            LocalDate end = LocalDate.parse(dateto);
            Period age = Period.between(start, end);
            int diff = age.getDays();

            Booking book = new Booking(cusid, db.getHomestayById(id), date, datefrom, dateto, people, name);

            request.setAttribute("booking", book);
            request.setAttribute("numberDate", diff);
            request.setAttribute("homestay", h);
            request.setAttribute("list", list);

            request.getRequestDispatcher("payment.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login").forward(request, response);
        }
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
