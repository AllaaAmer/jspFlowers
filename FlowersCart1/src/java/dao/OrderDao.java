package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import Entities.Order;
import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class OrderDao {

    Order oneOrder;
    ArrayList<Order> OrderList;

    public ArrayList<Order> selectOrdersByClientID(int id) {
        OrderList = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from orders where CLIENT_ID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setID(rs.getInt(1));
                order.setClientId(rs.getInt(2));
                order.setStamp(rs.getTimestamp(3));
                order.setPrice(rs.getInt(4));
                OrderList.add(order);
                System.out.println(order.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return OrderList;
    }

    public boolean insertOrder(Order order) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO ORDERS (CLIENT_ID, DATEORDERED, PRICE) VALUES (?,?,?)");
            ps.setInt(1, order.getClientId());
            ps.setTimestamp(2, order.getStamp());
            ps.setFloat(3, order.getPrice());
            ResultSet rs = ps.executeQuery();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
