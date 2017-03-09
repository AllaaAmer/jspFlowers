/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Client;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class ClientDao {

//private Connection getConnection()
//{
//// Connection con=DriverManager.getConnection("jdbc:ora")
    public boolean deleteClientById(Client client)
    {
        try (Connection con = new ConnectionManager().getConnection()) {
             PreparedStatement ps=con.prepareStatement("delete from client where id=?");
             ps.setInt(1,client.getId());
             int num=ps.executeUpdate();
             if(num!=0)
             {
                 return true;
             }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean deleteClientByMail(Client client)
    {
        try (Connection con = new ConnectionManager().getConnection()) {
             PreparedStatement ps=con.prepareStatement("delete from client where mail=?");
             ps.setString(1,client.getMail());
             int num=ps.executeUpdate();
             if(num!=0)
             {
                 return true;
             }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean updateClient(Client client) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("update client set fname=?,lname=?,mail=?,password=?"
                    + ",job=?,address=?,cridetlimit=?,birthday=?,phone=? where id=?");
            ps.setString(1, client.getFname());
            ps.setString(2, client.getLname());
            ps.setString(3, client.getMail());
            ps.setString(4, client.getPassword());
            ps.setString(5, client.getJob());
            ps.setString(6, client.getAddress());
            ps.setInt(7, client.getCridetlimit());
            Date date=new  SimpleDateFormat("yyyy-MM-dd").parse(client.getBirthday());
            ps.setDate(8, new java.sql.Date(date.getTime()));
            ps.setString(9, client.getPhone());
            ps.setInt(10, client.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean insertClient(Client client) {
        try {
            Connection con = new ConnectionManager().getConnection();
            PreparedStatement ps = con.prepareStatement("insert into client(fname,lname,mail,password,job,address,"
                    + "cridetlimit,birthday,phone) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, client.getFname());
            ps.setString(2, client.getLname());
            ps.setString(3, client.getMail());
            ps.setString(4, client.getPassword());
            ps.setString(5, client.getJob());
            ps.setString(6, client.getAddress());
            ps.setInt(7, client.getCridetlimit());
            Date date=new  SimpleDateFormat("yyyy-MM-dd").parse(client.getBirthday());
            ps.setDate(8, new java.sql.Date(date.getTime()));
            ps.setString(9, client.getPhone());
            int num = ps.executeUpdate();
            if (num != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public List<Client> selectAll() {

        List<Client> clients = new LinkedList<Client>();
        Client client;
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from client");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                client = new Client();
                client.setFname(rs.getString("fname"));
                client.setLname(rs.getString("lname"));
                client.setPassword(rs.getString("password"));
                client.setMail(rs.getString("mail"));
                client.setJob(rs.getString("job"));
                client.setAddress(rs.getString("address"));
                client.setPhone(rs.getString("phone"));
                client.setCridetlimit(rs.getInt("cridetlimit"));
                client.setBirthday(rs.getDate("birthday").toString());
                client.setId(rs.getInt("id"));
                clients.add(client);
            }
            return clients;
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean validclient(Client client) {

        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from client where mail=? and password=?");
            ps.setString(1, client.getMail());
            ps.setString(2, client.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean existMail(Client client) {

        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from client where mail=? ");
            ps.setString(1, client.getMail());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public Client selectById(Client client) {
        try (Connection conn = new ConnectionManager().getConnection()) {
            PreparedStatement ps = conn.prepareStatement("select * from client where id=?");
            ps.setInt(1, client.getId());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Client clientById = new Client();
                clientById.setFname(rs.getString("fname"));
                clientById.setLname(rs.getString("lname"));
                clientById.setPassword(rs.getString("password"));
                clientById.setMail(rs.getString("mail"));
                clientById.setJob(rs.getString("job"));
                clientById.setAddress(rs.getString("address"));
                clientById.setPhone(rs.getString("phone"));
                clientById.setCridetlimit(rs.getInt("cridetlimit"));
                clientById.setBirthday(rs.getDate("birthday").toString());
                clientById.setId(rs.getInt("id"));
                return clientById;
            }
//            return null;
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
