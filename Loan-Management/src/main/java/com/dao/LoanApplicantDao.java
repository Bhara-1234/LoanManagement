package com.dao;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.model.LoanApplicant;

public class LoanApplicantDao {
	@PersistenceContext
	private EntityManager em;

	public void persistApplicant(LoanApplicant cus) {
		System.out.println(3);
		em.persist(cus);

	}

	public ArrayList<LoanApplicant> findAll() {
		// TODO Auto-generated method stub
		return (ArrayList<LoanApplicant>) em.createQuery("select l from LoanApplicant l").getResultList();
	}

}
