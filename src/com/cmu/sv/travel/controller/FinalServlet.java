package com.cmu.sv.travel.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmu.sv.travel.data.ItineraryDO;
import com.cmu.sv.travel.model.TravelExpert;

public class FinalServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		TravelExpert te = new TravelExpert();
		ItineraryDO it = new ItineraryDO();
		it.setPassengers(req.getParameter("passengers"));

		it.setFrom(req.getParameter("from"));
		it.setdMonth(req.getParameter("dmonth"));
		it.setdDay(req.getParameter("dday"));
		it.setdYear(req.getParameter("dyear"));
		it.setdTime(req.getParameter("dtime"));

		it.setTo(req.getParameter("to"));
		it.setrMonth(req.getParameter("rmonth"));
		it.setrDay(req.getParameter("rday"));
		it.setrYear(req.getParameter("ryear"));
		it.setrTime(req.getParameter("rtime"));


		te.saveItinerary(it);

		req.setAttribute("itinerary", it);
		RequestDispatcher view = req.getRequestDispatcher("itinerary.jsp");
		view.forward(req, resp);
	}

}
