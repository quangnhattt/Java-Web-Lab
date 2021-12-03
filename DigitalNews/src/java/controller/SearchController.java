/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ArticleDAO;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;


public class SearchController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * getLast5Articles
     * getLastestArticles
     * pagging
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String error = "Error Occured!";
        try {
            ArticleDAO articleDB = new ArticleDAO();
            ArrayList<Article> last5Articles = articleDB.getTopNumberArticles(5);
            Article latestArticle = last5Articles.get(0);
            request.setAttribute("latestArticle", latestArticle);
            request.setAttribute("last5Articles", last5Articles);
            String keyword = request.getParameter("keyword").trim();
            if (keyword == null) {
                throw new Exception();
            }
            String page = request.getParameter("page");
            page = (page == null || page.trim().isEmpty()) ? "1" : page;
            int pageIndex = Integer.parseInt(page);
            final int pageSize = 3;
            int totalRecords = articleDB.getTotalRecords(keyword);
            if (totalRecords <= 0) {
                error = "Not Found!";
                throw new Exception();
            } else {
                ArrayList<Article> results = articleDB.search(keyword, pageIndex, pageSize);
                int totalPages = (totalRecords % pageSize == 0) ? (totalRecords / pageSize) : (totalRecords / pageSize + 1);
                request.setAttribute("keyword", keyword);
                request.setAttribute("pageIndex", pageIndex);
                request.setAttribute("results", results);
                request.setAttribute("totalPages", totalPages);
            }
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
