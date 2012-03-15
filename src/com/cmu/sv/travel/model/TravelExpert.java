package com.cmu.sv.travel.model;

import java.util.List;

import com.cmu.sv.travel.dao.RequestDataDAO;
import com.cmu.sv.travel.dao.RequestDataDAOImpl;
import com.cmu.sv.travel.data.ItineraryDO;

public class TravelExpert {
	public List<String> getMonths(){
		RequestDataDAO dao = new RequestDataDAOImpl();
		return dao.getMonths();
	}

	public List<String> getYears(){
		RequestDataDAO dao = new RequestDataDAOImpl();
		return dao.getYears();
	}

	public List<Integer> getPassengers(){
		RequestDataDAO dao = new RequestDataDAOImpl();
		return dao.getPassengers();
	}

	public List<String> getTimes(){
		RequestDataDAO dao = new RequestDataDAOImpl();
		return dao.getTimes();
	}

	public boolean saveItinerary(ItineraryDO it){
		RequestDataDAO dao = new RequestDataDAOImpl();
		return dao.saveItinerary(it);
	}
}
