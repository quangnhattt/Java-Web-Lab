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


public class ArticleViewController extends HttpServlet {


    /**
     * getlast5Articles
     * getlatestArticle
     * get article by id
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
            String articleId = request.getParameter("id");
            int id = Integer.parseInt(articleId);
            Article article = articleDB.getArticleByID(id);
            if (article == null) {
                error = "Not Found!";
                throw new Exception();
            }
            request.setAttribute("article", article);
            request.getRequestDispatcher("news.jsp").forward(request, response);
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
