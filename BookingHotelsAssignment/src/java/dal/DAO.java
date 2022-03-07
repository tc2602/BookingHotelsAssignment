/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Booking;
import model.Customer;
import model.Homestay;
import model.HomestayType;

/**
 *
 * @author TrungLT
 */
public class DAO extends DBContext {

    PreparedStatement st = null;
    ResultSet rs = null;

    //get all homestaytype from database
    public List<HomestayType> getAllType() {
        List<HomestayType> list = new ArrayList<>();
        String sql = "select * from HomestayType";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                HomestayType h = new HomestayType();
                h.setTypeID(rs.getInt(1));
                h.setName(rs.getString(2));
                h.setAcreage(rs.getInt(3));
                h.setRooms(rs.getInt(4));
                h.setBeds(rs.getInt(5));
                h.setBathrooms(rs.getInt(6));
                h.setCapacity(rs.getInt(7));
                h.setPrice(rs.getDouble(8));
                list.add(h);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //get all homestay from database
    public List<Homestay> getAllHomestay() {
        DAO db = new DAO();
        List<HomestayType> listType = db.getAllType();

        List<Homestay> list = new ArrayList<>();
        String sql = "select * from Homestay";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Homestay h = new Homestay();
                h.setId(rs.getInt(1));
                h.setName(rs.getString(2));
                h.setAddress(rs.getString(3));
                for (HomestayType type : listType) {
                    if (rs.getInt(4) == type.getTypeID()) {
                        h.setType(type);
                    }
                }
                h.setDescription(rs.getString(5));
                h.setImage(rs.getString(6));
                list.add(h);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Pagination Homestay
    public List<Homestay> getHomestayByPage(List<Homestay> list, int start, int end) {
        List<Homestay> t = new ArrayList<>();
        for (int i = start; i < end; i++) {
            t.add(list.get(i));
        }
        return t;
    }

    //get a Homestay by id
    public Homestay getHomestayById(int id) {
        DAO db = new DAO();
        List<HomestayType> listType = db.getAllType();

        String sql = "select * from Homestay where HomestayID=?";
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, id);
            rs = st.executeQuery();
            if (rs.next()) {
                Homestay h = new Homestay();
                h.setId(rs.getInt(1));
                h.setName(rs.getString(2));
                h.setAddress(rs.getString(3));
                for (HomestayType type : listType) {
                    if (rs.getInt(4) == type.getTypeID()) {
                        h.setType(type);
                    }
                }
                h.setDescription(rs.getString(5));
                h.setImage(rs.getString(6));
                return h;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //get all Homestay by filter
    public List<Homestay> getAllHomestayByFilter(String address, int type, double price, int guest) {
        DAO db = new DAO();
        List<HomestayType> listType = db.getAllType();

        String sql = "select * from Homestay where 1=1";

        if (address != null) {
            sql += " and Address like '%" + address + "%' ";
        }

        if (type != 0) {
            sql += " and TypeID = " + type + " ";
        }

        if (price != 0) {
            sql += " and TypeID in (";
            for (HomestayType t : listType) {
                if (t.getPrice() <= price) {
                    sql += t.getTypeID() + ",";
                }
            }
            //delete last character ','
            if (sql.charAt(sql.length() - 1) == ',') {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        if (guest != 0) {
            sql += " and TypeID in (";
            for (HomestayType t : listType) {
                if (t.getCapacity() >= guest) {
                    sql += t.getTypeID() + ",";
                }
            }
            //delete last character ','
            if (sql.charAt(sql.length() - 1) == ',') {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }

        System.out.println(sql);

        List<Homestay> list = new ArrayList<>();
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Homestay h = new Homestay();
                h.setId(rs.getInt(1));
                h.setName(rs.getString(2));
                h.setAddress(rs.getString(3));
                for (HomestayType t : listType) {
                    if (rs.getInt(4) == t.getTypeID()) {
                        h.setType(t);
                    }
                }
                h.setDescription(rs.getString(5));
                h.setImage(rs.getString(6));
                list.add(h);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //get all customer from database
    public List<Customer> getAllCustomer() {
        DAO db = new DAO();

        List<Customer> list = new ArrayList<>();
        String sql = "select * from Customer";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Customer h = new Customer();
                h.setCusID(rs.getInt(1));
                h.setName(rs.getString(2));
                h.setGender(rs.getBoolean(3));
                h.setDob(rs.getString(4));
                h.setPhone(rs.getString(5));
                h.setEmail(rs.getString(6));
                list.add(h);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//    get all customer by ID
    public Customer getCustomerById(int id) {
        String sql = "select * from Customer where CustomerID=?";
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, id);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    //    get all Booking by customerID
    public List<Booking> getAllBookingByCusId(int cusID) {
        String sql = "select * from Booking where CustomerID=?";

        DAO db = new DAO();
        List<Booking> list = new ArrayList<>();
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, cusID);
            rs = st.executeQuery();
            while (rs.next()) {
                Booking b = new Booking(rs.getInt(1), rs.getInt(2), db.getHomestayById(rs.getInt(3)), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getDouble(8));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //    get all Booking
    public List<Booking> getAllBooking() {
        String sql = "select * from Booking";

        DAO db = new DAO();
        List<Booking> list = new ArrayList<>();
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Booking b = new Booking(rs.getInt(1), rs.getInt(2), db.getHomestayById(rs.getInt(3)), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getDouble(8));
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Pagination Booking
    public List<Booking> getBookingByPage(List<Booking> list, int start, int end) {
        List<Booking> t = new ArrayList<>();
        for (int i = start; i < end; i++) {
            t.add(list.get(i));
        }
        return t;
    }

    //get account from database by username and password
    public Account checkAccountExisted(String username) {
        String sql = "select * from Account where username=?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, username);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, rs.getString(2), rs.getBoolean(3), rs.getInt(4));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getAccount(String username, String password) {
        String sql = "select * from Account where username=? and password = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, password, rs.getBoolean(3), rs.getInt(4));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //insert new Customer into database
    public void insertNewCustomer(Customer cus) {
        String sql = "insert into Customer values(?,?,?,?,?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, cus.getName());
            st.setBoolean(2, cus.isGender());
            st.setString(3, cus.getDob());
            st.setString(4, cus.getPhone());
            st.setString(5, cus.getEmail());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //insert new Account into database
    public void insertNewAccount(Account ac) {
        String sql = "insert into Account values(?,?,?,?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, ac.getUsername());
            st.setString(2, ac.getPasswword());
            st.setBoolean(3, ac.isType());
            st.setInt(4, ac.getCusID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //insert new Homestay into database
    public void insertNewHomestay(Homestay h) {
        String sql = "insert into Homestay values(?,?,?,?,?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, h.getName());
            st.setString(2, h.getAddress());
            st.setInt(3, h.getType().getTypeID());
            st.setString(4, h.getDescription());
            st.setString(5, h.getImage());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //insert new Booking into database
    public void insertNewBooking(Booking b) {
        String sql = "insert into Booking values(?,?,?,?,?,?,?)";
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, b.getCusID());
            st.setInt(2, b.getHomestay().getId());
            st.setString(3, b.getDate());
            st.setString(4, b.getDatefrom());
            st.setString(5, b.getDateto());
            st.setInt(6, b.getPeople());
            st.setDouble(7, b.getTotal());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //update info of customer
    public void updateCustomerInfo(Customer cus) {
        String sql = "update Customer set Name=?, "
                + "Gender=?, "
                + "DOB=?, "
                + "Phone=?, "
                + "Email=? "
                + "where CustomerID=?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, cus.getName());
            st.setBoolean(2, cus.isGender());
            st.setString(3, cus.getDob());
            st.setString(4, cus.getPhone());
            st.setString(5, cus.getEmail());
            st.setInt(6, cus.getCusID());
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    //update info of account
    public void updateAccount(Account ac) {
        String sql = "update Account set password=?, "
                + "Type=?, "
                + "CustomerID=? "
                + "where username=?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, ac.getPasswword());
            st.setBoolean(2, ac.isType());
            st.setInt(3, ac.getCusID());
            st.setString(4, ac.getUsername());
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    //update info of Homestay
    public void updateHomestay(Homestay h) {
        String sql = "update Homestay set Name=?, "
                + "Address=?, "
                + "TypeID=?, "
                + "Description=?, "
                + "Image=? "
                + "where HomestayID=?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, h.getName());
            st.setString(2, h.getAddress());
            st.setInt(3, h.getType().getTypeID());
            st.setString(4, h.getDescription());
            st.setString(5, h.getImage());
            st.setInt(6, h.getId());
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    //delete Homestay where id = ?
    public void deleteHomestay(int id) {
        String sql = "delete from Homestay where HomestayID=?";
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    //get number of Booking by typeid
    public int getNumberOfBookingByTypeID(int typeid){
        int number = 0;
        
        DAO db = new DAO();
        List<Booking> list = db.getAllBooking();
        
        for (Booking b : list) {
            if(b.getHomestay().getType().getTypeID() == typeid){
                number++;
            }
        }     
        return number;
    }

    public static void main(String[] args) {
        DAO db = new DAO();
        List<Booking> list = db.getAllBookingByCusId(3);
        for (Booking h : list) {
            System.out.println(h.toString());
        }
//        List<Booking> listType = db.getAllType();
//
//        Homestay h = new Homestay(61, "123", "123", listType.get(3), "12345", "abc");
//        db.updateHomestay(h);
    }
}
