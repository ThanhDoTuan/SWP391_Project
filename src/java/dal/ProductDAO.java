/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.Product_Test;

/**
 *
 * @author LEGION 5
 */
public class ProductDAO extends DBContext {

    PreparedStatement pstm;
    ResultSet rs;

    public ArrayList<Product_Test> getListProductPage(int index) {
        ArrayList<Product_Test> listMovie = new ArrayList<>();
        try {
            String sql = "select * from Product order by product_id OFFSET ? ROWS FETCH NEXT 7 ROWS ONLY;";
            pstm = connection.prepareStatement(sql);
            pstm.setInt(1, (index - 1) * 7);
            rs = pstm.executeQuery();
            while (rs.next()) {
                listMovie.add(new Product_Test(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),
                        rs.getString(9), rs.getDate(10).toLocalDate(),
                        rs.getString(11), rs.getString(12)));
            }
            System.out.println("get list done!");
        } catch (Exception e) {
            System.out.println("get list products error: " + e.getMessage());
        }
        return listMovie;
    }

    public boolean deleteProductById(String code) {
        try {
            String strSelect = "DELETE FROM Product WHERE product_id = ?";
            pstm = connection.prepareStatement(strSelect);
            pstm.setString(1, code);
            pstm.execute();
            return true;
        } catch (Exception e) {
            System.out.println("delete error " + e.getMessage());
        }
        return false;
    }

    public boolean addProduct(String name, String original_price,
            String sale_price, String detail, String brief, String updateDate,
            String status, String quantity, String sex, String category_id, String season) {
        try {
            String sql = "insert into Product (product_name, original_prices, sale_prices, product_details, brief_infor, status, quantity, category_id, update_date, season, sex) values(?,?,?,?,?,?,?,?,?,?,?);";
            pstm = connection.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, original_price);
            pstm.setString(3, sale_price);
            pstm.setString(4, detail);
            pstm.setString(5, brief);
            pstm.setString(6, status);
            pstm.setString(7, quantity);
            pstm.setString(8, category_id);
            pstm.setDate(9, Date.valueOf(updateDate));
            pstm.setString(10, season);
            pstm.setString(11, sex);
            pstm.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("add product error: " + e.getMessage());
        }
        return false;
    }

    public void updateProductById(String code, String name, String original_price,
            String sale_price, String detail, String brief, String updateDate,
            String status, String quantity, String sex, String category_id, String season
    ) {
        try {
            String strSelect = "update Product set product_name = ?, original_prices = ?, sale_prices = ?, product_details = ?, brief_infor = ?, status = ?, "
                    + "quantity = ?, category_id = ?, update_date = ?, season = ?, sex = ? where product_id = ?";
            pstm = connection.prepareStatement(strSelect);
            pstm.setString(1, name);
            pstm.setString(2, original_price);
            pstm.setString(3, sale_price);
            pstm.setString(4, detail);
            pstm.setString(5, brief);
            pstm.setString(6, status);
            pstm.setString(7, quantity);
            pstm.setString(8, category_id);
            pstm.setDate(9, Date.valueOf(updateDate));
            pstm.setString(10, season);
            pstm.setString(11, sex);
            pstm.setString(12, code);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Update error:" + e.getMessage());
        }
    }

    public int getTotalProducts() {
        try {
            String sql = "select count(*) from Product";
            pstm = connection.prepareStatement(sql);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("get product error: " + e.getMessage());
        }
        return 0;

    }

    public int getTotalProduct(String searchKey, String categoryId, String status) {
        String sql = "Select count(product_id) from Product "
                + "where category_id " + categoryId + " and status " + status + " and product_name like N'%" + searchKey + "%'\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public Product getProductNew() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 1 * from Product order by update_date desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .original_price(rs.getInt(3))
                        .sale_price(rs.getInt(4))
                        .desciption(rs.getString(5))
                        .brief_infor(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .quantity(rs.getInt(8))
                        .category_id(rs.getInt(9))
                        .update_date(rs.getDate(10))
                        .image(getImgProduct(rs.getInt(1)))
                        .rated_star(getRatedProduct(rs.getInt(1)))
                        .build();

                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductWithPaging(int page, int PAGE_SIZE, String searchKey, String categoryId, String type, String value, String status) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product\n"
                + "where category_id " + categoryId + " and status " + status + " and product_name like N'%" + searchKey + "%'\n"
                + " order by " + value + " " + type + " offset (?-1)*? row fetch next ? row only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, page);
            st.setInt(2, PAGE_SIZE);
            st.setInt(3, PAGE_SIZE);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .original_price(rs.getInt(3))
                        .sale_price(rs.getInt(4))
                        .desciption(rs.getString(5))
                        .brief_infor(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .quantity(rs.getInt(8))
                        .category_id(rs.getInt(9))
                        .update_date(rs.getDate(10))
                        .image(getImgProduct(rs.getInt(1)))
                        .rated_star(getRatedProduct(rs.getInt(1)))
                        .build();

                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> get4ProductRandom() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 4 * from Product ORDER BY NEWID()";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .original_price(rs.getInt(3))
                        .sale_price(rs.getInt(4))
                        .desciption(rs.getString(5))
                        .brief_infor(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .quantity(rs.getInt(8))
                        .category_id(rs.getInt(9))
                        .update_date(rs.getDate(10))
                        .image(getImgProduct(rs.getInt(1)))
                        .rated_star(getRatedProduct(rs.getInt(1)))
                        .build();

                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public String getImgProduct(int id) {
        String sql = "select images from Products_Images where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public double getRatedProduct(int id) {
        String sql = "select AVG(rated_star) from Feedback where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

   public Product getProductById(int productId) {
        String sql = "select * from Product where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, productId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .original_price(rs.getInt(3))
                        .sale_price(rs.getInt(4))
                        .desciption(rs.getString(5))
                        .brief_infor(rs.getString(6))
                        .status(rs.getBoolean(7))
                        .quantity(rs.getInt(8))
                        .category_id(rs.getInt(9))
                        .update_date(rs.getDate(10))
                        .season(rs.getString(11))
                        .sex(rs.getBoolean(12))
                        .size(rs.getString(13))
                        .image(getImgProduct(rs.getInt(1)))
                        .rated_star(getRatedProduct(rs.getInt(1)))
                        .build();

                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }
    public static void main(String[] args) {
        ProductDAO d= new ProductDAO();
        System.out.println(d.getProductById(23).getName());
    }
   }