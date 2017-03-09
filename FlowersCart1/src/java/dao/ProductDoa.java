package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;
import Entities.Product;
import oracle.jdbc.OracleDriver;
//import oracle.sql.DATE;

/**
 *
 * @author Moamenovic
 */
public class ProductDoa {

    Product oneProduct;
    ArrayList<Product> productList;

    public boolean insertProduct(Product product)  {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO PRODUCT (NAME, PRICE, QUANTITY, DESCRIPTION, RATING) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, product.getName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getRating());
            ps.executeUpdate();

            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return false;
        }
    }

    public ArrayList<Product> selectAllProducts() {
        productList = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setID(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                productList.add(product);
                System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return productList;
    }

    public ArrayList<Product> selectProductsByCategory(int id)  {
        productList = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where PRODUCT.id  in (select product_id from  cat_pro where cat_pro.category_id = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setID(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                productList.add(product);
                System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return productList;
    }

    public Product selectOneProduct(int id) {
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setID(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));

                System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return oneProduct;
    }

    public boolean updateProduct(Product product)  {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("update PRODUCT set (NAME, PRICE, QUANTITY, DESCRIPTION, RATING) VALUES (?, ?, ?, ?, ?) where id = ?");
            ps.setString(1, product.getName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getRating());
            ps.setInt(6, product.getID());
            ps.executeUpdate();

            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return false;
        }
    }

    public boolean deleteProduct(int id)  {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("DELETE FROM PRODUCT WHERE  id = ?");
            ps.setInt(1, id);

            ps.executeUpdate();

            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return false;
        }
    }

}
