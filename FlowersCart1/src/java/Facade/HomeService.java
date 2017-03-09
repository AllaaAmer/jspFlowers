/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Category;
import Entities.Product;
import dao.CategoryDao;
import java.util.ArrayList;

/**
 *
 * @author alaa
 */
public class HomeService {
    
    public ArrayList<Category> getCategories(){
        CategoryDao cDao = new CategoryDao();
        return new ArrayList<Category>(cDao.selectAll());
    }
    
//     public ArrayList<Product> getProducts(){
//        ProductDoa pDao = new ();
//        return new ArrayList<Category>(cDao.selectAll());
//    }
//     
//      public ArrayList<Category> getFlowers(){
//        CategoryDao cDao = new CategoryDao();
//        return new ArrayList<Category>(cDao.selectAll());
//    }
    
    
}
