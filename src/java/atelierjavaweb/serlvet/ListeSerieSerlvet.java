/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.serlvet;

import atelierjavaweb.entity.Serie;
import java.io.IOException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Formation
 */
@WebServlet(name = "ListeSerieSerlvet", urlPatterns = {"/lister_series"})
public class ListeSerieSerlvet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManagerFactory MyPersistence = Persistence.createEntityManagerFactory("PU");
        EntityManager myEm = MyPersistence.createEntityManager();

        myEm.getTransaction().begin();
        Query query = myEm.createQuery("SELECT se FROM Serie se");
        List<Serie> serie = (List<Serie>) query.getResultList();
        
        //String message = "Transmission de variables : OK !";
        req.setAttribute("series", serie);
        req.getRequestDispatcher("liste_series.jsp").forward(req, resp);// Vers liste_series.jps
        
        myEm.getTransaction().commit();
    }
    
}
