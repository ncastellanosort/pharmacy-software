/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Nicolas
 */
@Entity
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    private String code;
    private String provider;
    private String name;
    private String brand;
    private String description;
    private String category;
    private int stock;
    private double price;

    public Product() {
    }

    public Product(int id, String code, String provider, String name, String brand, String description, String category, int stock, double price) {
        this.id = id;
        this.code = code;
        this.provider = provider;
        this.name = name;
        this.brand = brand;
        this.description = description;
        this.category = category;
        this.stock = stock;
        this.price = price;
    }

    public Product(String code, String provider, String name, String brand, String description, String category, int stock, double price) {
        this.code = code;
        this.provider = provider;
        this.name = name;
        this.brand = brand;
        this.description = description;
        this.category = category;
        this.stock = stock;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
