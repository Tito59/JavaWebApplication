/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import atelierjavaweb.entity.Serie;
import atelierjavaweb.entity.Film;


/**
 *
 * @author Tito
 */
public class JPATest {
    
    @Test
    public void test() {
        
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("PU");
        EntityManager em = factory.createEntityManager();
        
        em.getTransaction().begin();// Démarre transaction: nécessaire si écritures
        
        em.getTransaction().commit();// Valide en DB modifs
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
