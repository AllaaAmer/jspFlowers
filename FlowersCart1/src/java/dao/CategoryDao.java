/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Category;
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
public class CategoryDao {

    public List<Category> selectAll() {
        List<Category> categorys = new LinkedList<Category>();
        Category category;
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from category");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                categorys.add(category);
            }
            return categorys;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Category selectById(Category category) {
        Category categoryById = null;
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from category where id=?");
            ps.setInt(1, category.getId());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                categoryById = new Category();
                categoryById.setId(rs.getInt("id"));
                categoryById.setName(rs.getString("name"));
            }
            return categoryById;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean insertCategory(Category category) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("insert into category(name) values(?)");
            ps.setString(1, category.getName());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateCategory(Category category) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("update category set name=? where id=?");
            ps.setString(1, category.getName());
            ps.setInt(2, category.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean deleteCategoryByName(Category category) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("delete from category where name=?");
            ps.setString(1, category.getName());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean deleteCategoryById(Category category) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("delete from category where id=?");
            ps.setInt(1, category.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
