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
import java.util.ArrayList;
import model.Product_Test;

/**
 *
 * @author LEGION 5
 */
public class EditProductsServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String index = req.getParameter("index");
        if (index == null) {
            index = "1";
        }
        int indexPage = Integer.parseInt(index);
        ArrayList<Product_Test> listProduct = dao.getListProductPage(indexPage);
        
        int totalProduct = dao.getTotalProducts();
        int endPage  = totalProduct/7;
        if (totalProduct % 7 != 0){
            endPage++;
        }
        System.out.println(listProduct.size());
        req.setAttribute("endPage", endPage);
        req.setAttribute("totalProduct",totalProduct);
        req.setAttribute("listProduct", listProduct);
        req.getRequestDispatcher("edit_products.jsp").forward(req, resp);
    }

}
