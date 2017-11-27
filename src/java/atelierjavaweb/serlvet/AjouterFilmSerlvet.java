/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.serlvet;

import atelierjavaweb.entity.Film;
import atelierjavaweb.entity.Genre;
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
@WebServlet(name = "AjouterFilmServlet", urlPatterns = {"/ajouter_film"})
public class AjouterFilmSerlvet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManagerFactory MyPersistence = Persistence.createEntityManagerFactory("PU");
        EntityManager em = MyPersistence.createEntityManager();

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT g FROM Genre g ORDER BY g.nom");
        List<Genre> genres = (List<Genre>) query.getResultList();

        req.setAttribute("listeGenre", genres);
        req.getRequestDispatcher("ajouterFilm.jsp").forward(req, resp);

        em.getTransaction().commit();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();

        Film f = new Film();

        f.setTitre(req.getParameter("titre"));
        f.setSynopsis(req.getParameter("synopsis"));
        f.setAnnee(Integer.valueOf(req.getParameter("annee")));
        f.setDuree(Integer.valueOf(req.getParameter("duree")));

        Genre g = em.find(Genre.class, Long.valueOf(req.getParameter("genre_id")));
        f.setGenre(g);
        g.getFilms().add(f);
        em.persist(f);
        em.getTransaction().commit();

        // on pourrait faire un 
        // req.getRequestDispatcher("lister_films").forward(req, resp);
        // mais ca part en post sur la servlet lister_films
        // envoi vers la servlet
        resp.sendRedirect("lister_films");

    }

}
