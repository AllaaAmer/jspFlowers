/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Interests;
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
public class InterestsDao {

    public boolean insert(List<Interests> interestsList) {
        try (Connection con = new ConnectionManager().getConnection()) {
            for (Interests interests : interestsList) {
                PreparedStatement ps = con.prepareStatement("insert into CLIENT_INTERESTS(client_id,flower_Id)values(?,?)");
                ps.setInt(1, interests.getId());
                ps.setInt(2, interests.getFlowerId());
                int num = ps.executeUpdate();
                if (num == 0) {
                    return false;
                }
            }
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public List<Interests> selectAll() {
        LinkedList<Interests> interestsList = new LinkedList<>();
        Interests interests;
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("select * from CLIENT_INTERESTS");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                interests = new Interests();
                interests.setId(rs.getInt("client_id"));
                interests.setFlowerId(rs.getInt("flower_id"));
                interestsList.add(interests);
            }
            return interestsList;
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Interests> selectById(Interests interests) {
        LinkedList<Interests> interestsList = new LinkedList<>();
        Interests clientInterests;
        try (Connection con = new ConnectionManager().getConnection()) {

            PreparedStatement ps = con.prepareStatement("select * from CLIENT_INTERESTS where client_id=?");
            ps.setInt(1, interests.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                clientInterests = new Interests();
                clientInterests.setId(rs.getInt("client_id"));
                clientInterests.setFlowerId(rs.getInt("flower_id"));
                interestsList.add(clientInterests);
            }
            return interestsList;
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean deleteByName(Interests interests) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("delete from CLIENT_INTERESTS where client_id=? and flower_id=?");
            ps.setInt(1, interests.getId());
            ps.setInt(2, interests.getFlowerId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean deleteAll(Interests interests) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("delete from CLIENT_INTERESTS where client_id=? ");
            ps.setInt(1, interests.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
