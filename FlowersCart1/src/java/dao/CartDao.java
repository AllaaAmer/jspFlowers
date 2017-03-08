/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class CartDao {
///////////////////////////////////////start sherif
    public List<Cart> selectAll() {
        LinkedList<Cart> carts = new LinkedList<>();
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("select * from cart");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                cart.setCustomerId(rs.getInt("CLIENT_ID"));
                cart.setId(rs.getInt("id"));
                carts.add(cart);
            }
            return carts;
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Cart selectByCLientId(Cart cart) {

        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("select * from cart where CLIENT_ID=?");
            ps.setInt(1, cart.getCustomerId());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Cart cartById = new Cart();
                cartById.setCustomerId(rs.getInt("CLIENT_ID"));
                cartById.setId(rs.getInt("id"));
                return cartById;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public boolean insertCart(Cart cart) {
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("insert into cart (client_id)values(?)");
            ps.setInt(1, cart.getCustomerId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean deleteCartByClientId(Cart cart) {
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("delete from cart where client_id=?");
            ps.setInt(1, cart.getCustomerId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean deleteCartById(Cart cart) {
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("delete from cart where client_id=?");
            ps.setInt(1, cart.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    ///////////////////////////////////////end Sherif
    //////////////////////////////////////start allaa
    
    ///////////////////////////////////////end allaa
    //////////////////////////////////////start adel
    
    ///////////////////////////////////////end adel
    //////////////////////////////////////start moamen
    
    
    //////////////////////////////////////end moamen
}
