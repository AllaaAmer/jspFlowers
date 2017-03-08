/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.CartDetails;
import dto.CartProductDetails;
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
public class CartDetailDao {

    public List<CartDetails> selectAll() {
        LinkedList<CartDetails> cartDetailses = new LinkedList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from cart_details");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartDetails cartDetails = new CartDetails();
                cartDetails.setCartId(rs.getInt("CART_ID"));
                cartDetails.setProductId(rs.getInt("PRODUCT_ID"));
                cartDetails.setQuantity(rs.getInt("QUANTITY"));
                cartDetailses.add(cartDetails);
            }
            return cartDetailses;
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<CartProductDetails> selectCartProductsDetailById(CartDetails cartDetails) {
        LinkedList<CartProductDetails> details = new LinkedList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from cart_details where CART_ID=?");
            ps.setInt(1, cartDetails.getCartId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartProductDetails cartProductDetails = new CartProductDetails();
                cartProductDetails.setProductId(rs.getInt("PRODUCT_ID"));
                cartProductDetails.setProductId(rs.getInt("QUANTITY"));
                details.add(cartProductDetails);
            }
            return details;

        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean insertCartDetail(CartDetails cartDetails) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("insert into cart_details(CART_ID,PRODUCT_ID,QUANTITY)"
                    + "values(?,?,?)");
            ps.setInt(1, cartDetails.getCartId());
            ps.setInt(2, cartDetails.getProductId());
            ps.setInt(3, cartDetails.getQuantity());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean deleteByCartId(CartDetails cartDetails) {
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("delete from cart_details where CART_ID=?");
            ps.setInt(1, cartDetails.getCartId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateCartDetails(CartDetails cartDetails) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps=con.prepareStatement("update cart_details set quantity=? where cart_id=? and PRODUCT_ID=?");
            ps.setInt(1, cartDetails.getQuantity());
            ps.setInt(2, cartDetails.getCartId());
            ps.setInt(3, cartDetails.getProductId());
            int num=ps.executeUpdate();
            if(num!=0)
            {
                return  true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
