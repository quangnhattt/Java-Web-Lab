/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Article;

/**
 * @author Nam Ngoc
 */
public class ArticleDAO extends BaseDAO {

    /**
     * getTopNumberArticles oder by time
     *
     * @param number
     * @return
     * @throws Exception
     */
    public ArrayList<Article> getTopNumberArticles(int number) throws Exception {
        String sql = "SELECT TOP(?) * FROM dbo.Article\n"
                + "ORDER BY [time] DESC";
        ArrayList<Article> articles = new ArrayList<>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, number);
            rs = st.executeQuery();
            while (rs.next()) {
                Article a = new Article();
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setContent(rs.getString("content"));
                a.setDescription(rs.getString("description"));
                a.setImage(getImgPath() + rs.getString("image"));
                a.setTime(rs.getTimestamp("time"));
                a.setAuthor(rs.getString("author"));
                articles.add(a);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(st);
            closeConnection(con);
        }
        return articles;
    }

    /**
     * getArticleByID
     *
     * @param id
     * @return
     * @throws Exception
     */
    public Article getArticleByID(int id) throws Exception {
        String sql = "SELECT * FROM dbo.Article WHERE id = ?";
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setInt(1, id);
            rs = st.executeQuery();
            if (rs.next()) {
                Article a = new Article();
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setContent(rs.getString("content"));
                a.setDescription(rs.getString("description"));
                a.setImage(getImgPath() + rs.getString("image"));
                a.setTime(rs.getTimestamp("time"));
                a.setAuthor(rs.getString("author"));
                return a;
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(st);
            closeConnection(con);
        }
        return null;
    }

    /**
     * get article by title or content and divide by pagesize
     *
     * @param keyword
     * @param pageIndex
     * @param pageSize
     * @return
     * @throws Exception
     */
    public ArrayList<Article> search(String keyword, int pageIndex, int pageSize)
            throws Exception {
        String sql = "WITH t AS (\n"
                + "SELECT ROW_NUMBER() OVER (ORDER BY [time] DESC) rownum,* "
                + "FROM dbo.Article \n"
                + "WHERE title LIKE '%' + ? + '%' OR content LIKE '%' + ? + '%'\n"
                + ")\n"
                + "SELECT * FROM t "
                + "WHERE t.rownum >= (? - 1) * ? + 1 AND t.rownum <= ? * ?";
        ArrayList<Article> articles = new ArrayList<>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, keyword);
            st.setString(2, keyword);
            st.setInt(3, pageIndex);
            st.setInt(4, pageSize);
            st.setInt(5, pageIndex);
            st.setInt(6, pageSize);
            rs = st.executeQuery();
            while (rs.next()) {
                Article a = new Article();
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setContent(rs.getString("content"));
                a.setDescription(rs.getString("description"));
                a.setImage(getImgPath() + rs.getString("image"));
                a.setTime(rs.getTimestamp("time"));
                a.setAuthor(rs.getString("author"));
                articles.add(a);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(st);
            closeConnection(con);
        }
        return articles;
    }

    /**
     * get number of article which has title or content like search
     *
     * @param keyword
     * @return
     * @throws Exception
     */
    public int getTotalRecords(String keyword) throws Exception {
        String sql = "SELECT COUNT(*) AS Total FROM dbo.Article \n"
                + "WHERE title LIKE '%' + ? + '%' OR content LIKE '%' + ? + '%'";
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, keyword);
            st.setString(2, keyword);
            rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(st);
            closeConnection(con);
        }
        return -1;
    }
}
