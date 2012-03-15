package com.cmu.sv.travel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmu.sv.travel.model.TravelExpert;

public class TravelServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

			TravelExpert te = new TravelExpert();
			req.setAttribute("months", te.getMonths());
			req.setAttribute("years", te.getYears());
			req.setAttribute("passengers", te.getPassengers());
			req.setAttribute("times", te.getTimes());
			RequestDispatcher view = req.getRequestDispatcher("requestform.jsp");
			view.forward(req, resp);

	}
}
