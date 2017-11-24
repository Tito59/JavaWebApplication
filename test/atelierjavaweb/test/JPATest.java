/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.test;

import atelierjavaweb.entity.Film;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.Test;

/**
 *
 * @author Tito
 */
public class JPATest {

    EntityManagerFactory factory = Persistence.createEntityManagerFactory("PU");
    EntityManager em = factory.createEntityManager();

    @Test
    public void test() {

        em.getTransaction().begin();// Démarre transaction: nécessaire si écritures

        Film film = new Film();

        em.getTransaction().commit();// Valide en DB modifs
    }
}
