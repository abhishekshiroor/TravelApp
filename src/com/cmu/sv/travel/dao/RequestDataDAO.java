package com.cmu.sv.travel.dao;

import java.util.List;

import com.cmu.sv.travel.data.ItineraryDO;

public interface RequestDataDAO {
	public List<String> getMonths();
	public List<String> getYears();
	public List<Integer> getPassengers();
	public List<String> getTimes();
	public boolean saveItinerary(ItineraryDO it);
}
