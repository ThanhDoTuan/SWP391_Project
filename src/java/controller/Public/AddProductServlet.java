/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.Public;

import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author LEGION 5
 */
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductDAO dal = new ProductDAO();
        int total = dal.getTotalProducts();
//        String id = String.valueOf(total + 1);
        String name = req.getParameter("name");
        String original_price = req.getParameter("original_price");
        String sale_price = req.getParameter("sale_price");
        String detail = req.getParameter("detail");
        String brief = req.getParameter("brief");
        String updateDate = req.getParameter("updateDate");
        String status = req.getParameter("status");
        String sex = req.getParameter("sex");
        String categrory_id = req.getParameter("category_id");
        String season = req.getParameter("season");
        String image = req.getParameter("avatar");
        String quantity = req.getParameter("quantity");
        if (dal.addProduct(name, original_price, sale_price, detail, brief, updateDate, status, quantity, sex, categrory_id, season)) {
            req.setAttribute("message", "Add product successfully");
            resp.sendRedirect("edit_products");
        } else {
            req.setAttribute("message", "Add fail");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
