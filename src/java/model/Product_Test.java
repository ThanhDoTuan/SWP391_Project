/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author LEGION 5
 */
public class Product_Test {

    private int product_id;
    private String product_name;
    private String original_prices;
    private String sale_prices;
    private String product_detail;
    private String brief_info;
    private String status;
    private String quantity;
    private String category_id;
    private LocalDate update_date;
    private String season;
    private String sex;
    private String image;

    public Product_Test() {
    }

    public Product_Test(int product_id, String product_name, String original_prices, String sale_prices, String product_detail, String brief_info, String status, String quantity, String category_id, LocalDate update_date, String season, String sex, String image) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.original_prices = original_prices;
        this.sale_prices = sale_prices;
        this.product_detail = product_detail;
        this.brief_info = brief_info;
        this.status = status;
        this.quantity = quantity;
        this.category_id = category_id;
        this.update_date = update_date;
        this.season = season;
        this.sex = sex;
        this.image = image;
    }

    public Product_Test(int product_id, String product_name, String original_prices, String sale_prices, String product_detail, String brief_info, String status, String quantity, String category_id, LocalDate update_date, String season, String sex) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.original_prices = original_prices;
        this.sale_prices = sale_prices;
        this.product_detail = product_detail;
        this.brief_info = brief_info;
        this.status = status;
        this.quantity = quantity;
        this.category_id = category_id;
        this.update_date = update_date;
        this.season = season;
        this.sex = sex;
    }

   

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getOriginal_prices() {
        return original_prices;
    }

    public void setOriginal_prices(String original_prices) {
        this.original_prices = original_prices;
    }

    public String getSale_prices() {
        return sale_prices;
    }

    public void setSale_prices(String sale_prices) {
        this.sale_prices = sale_prices;
    }

    public String getProduct_detail() {
        return product_detail;
    }

    public void setProduct_detail(String product_detail) {
        this.product_detail = product_detail;
    }

    public String getBrief_info() {
        return brief_info;
    }

    public void setBrief_info(String brief_info) {
        this.brief_info = brief_info;
    }

    public LocalDate getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(LocalDate update_date) {
        this.update_date = update_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getSeason() {
        return season;
    }

    public void setSeason(String season) {
        this.season = season;
    }

}
