/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Adel Zaid
 */
public class Product implements Serializable {

    private int id;

    private String name;

    private Double price;

    private int quantity;

    private String description;

    private int rating;
    
    private Category category;

    private CartDetails cart;

    public Product() {
    }

    public Product(int id) {
        this.id = id;
    }

    public Product(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public Category getCategoryList() {
        return category;
    }

    public void setCategoryList(Category category) {
        this.category = category;
    }

    public CartDetails getCartList() {
        return cart;
    }

    public void setCartList(CartDetails cart) {
        this.cart = cart;
    }
}
