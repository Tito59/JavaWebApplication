/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.serlvet;

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
import atelierjavaweb.entity.Film;

/**
 *
 * @author Formation
 */
@WebServlet(name = "ListeFilmSerlvet", urlPatterns = {"/lister_films"})
public class ListeFilmSerlvet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    
        
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManagerFactory MyPersistence = Persistence.createEntityManagerFactory("PU");
        EntityManager myEm = MyPersistence.createEntityManager();

        myEm.getTransaction().begin();
        Query query = myEm.createQuery("SELECT f FROM Film f");
        List<Film> film = (List<Film>) query.getResultList();
        
        //String message = "Transmission de variables : OK !";
        req.setAttribute("films", film);
        req.getRequestDispatcher("liste_films.jsp").forward(req, resp);// Vers liste_films.jps
        
        myEm.getTransaction().commit();

    }

}
