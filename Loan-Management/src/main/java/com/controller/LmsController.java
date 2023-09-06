package com.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.model.LoanApplicant;
import com.services.LoanApplicantService;

@Controller
public class LmsController {

	LoanApplicantService las;

	@Autowired
	public LmsController(LoanApplicantService las) {
		this.las = las;
	}

	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String start() {
		return "customer";
	}

	@RequestMapping(value = "/loanapplicant", method = RequestMethod.POST)
	public String Applicant(Model model, @ModelAttribute LoanApplicant lap) {
		System.out.println(1);
		System.out.println(lap.toString());
		las.add(lap);
		return "customer";
	}
	
	@RequestMapping(value = "/listApplicants", method = RequestMethod.GET)
	public String listApplicants(Model model) {
		ArrayList<LoanApplicant> llist=las.getAll();
		model.addAttribute("llist", llist);
		return "applicationlist";
	}
	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public String View() {
		return "customer";
	}


}
