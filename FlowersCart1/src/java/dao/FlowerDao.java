package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.Flower;

import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class FlowerDao {

    Flower oneFlower;

    ArrayList<Flower> flowertList;
    FlowerImageDao fiDao = new FlowerImageDao();

    public boolean insertProduct(Flower flower) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("INSERT INTO FLOWERS (NAME, COUNTRY) VALUES (?, ?)");
            ps.setString(1, flower.getName());
            ps.setString(2, flower.getCountry());
            ps.executeUpdate();
            con.close();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } finally {

        }
    }

    public boolean updateFlower(Flower flower)  {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("UPDATE FLOWERS SET NAME = ? , COUNTRY = ?  WHERE  id = ?");
            ps.setString(1, flower.getName());
            ps.setString(2, flower.getCountry());
            ps.setInt(3, flower.getID());
            ps.executeUpdate();
            con.close();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return false;
        }
    }

    public ArrayList<Flower> selectAllFlowers()  {
        flowertList = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Flower flower = new Flower();
                flower.setID(rs.getInt(1));
                flower.setName(rs.getString(2));
                flower.setCountry(rs.getString(3));
                flower.setImage(fiDao.selectFlowerImagesByFlowerId(flower.getID()));
                flowertList.add(flower);
                System.out.println(flower.toString());
            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return flowertList;
    }

    public Flower selectOneFlower(int f) {
        Flower flower = new Flower();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS where id = ?");
            ps.setInt(1, f);
            ResultSet rs = ps.executeQuery();
            rs.next();
            flower.setID(rs.getInt(1));
            flower.setName(rs.getString(2));
            flower.setCountry(rs.getString(3));
            System.out.println(flower.toString());
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return flower;
    }

    public boolean deleteFlower(int id) {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("DELETE FROM FLOWERS WHERE  id = ?");
            ps.setInt(1, id);

            ps.executeUpdate();
            con.close();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    public ArrayList<Flower> selectFlowerByProductId(int id)  {
       ArrayList<Flower> flowers = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS where FLOWERS.ID  in (select F_ID from  BOQUET_FLOWERS where BOQUET_FLOWERS.P_ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Flower flower = new Flower();
                flower.setID(rs.getInt(1));
                flower.setName(rs.getString(2));  
                flower.setCountry(rs.getString(3));
                flower.setImage(fiDao.selectFlowerImagesByFlowerId(flower.getID()));
                flowers.add(flower);
                System.out.println(flowers.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return flowers;
    }

}
