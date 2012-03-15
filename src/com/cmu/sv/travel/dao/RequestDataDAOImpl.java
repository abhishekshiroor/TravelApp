package com.cmu.sv.travel.dao;

import java.util.ArrayList;
import java.util.List;

import com.cmu.sv.travel.data.ItineraryDO;

public class RequestDataDAOImpl implements RequestDataDAO {

	@Override
	public List<String> getMonths() {
		List<String> months = new ArrayList<String>();
		months.add("January");
		months.add("February");
		months.add("March");
		months.add("April");
		months.add("May");
		months.add("June");
		months.add("July");
		months.add("August");
		months.add("September");
		months.add("October");
		months.add("November");
		months.add("December");
		return months;
	}

	@Override
	public List<String> getYears() {
		List<String> years = new ArrayList<String>();
		years.add("2012");
		years.add("2013");
		years.add("2014");
		years.add("2015");
		return years;
	}

	@Override
	public List<Integer> getPassengers() {
		List<Integer> passengers = new ArrayList<Integer>();
		for (int i = 0; i < 10; i++) {
			passengers.add(i+1);
		}
		return passengers;
	}

	@Override
	public List<String> getTimes() {
		List<String> times = new ArrayList<String>();
		times.add("any time");
		times.add("morning");
		times.add("noon");
		times.add("evening");
		times.add("late night");
		return times;
	}

	@Override
	public boolean saveItinerary(ItineraryDO it) {
		// save data
		return true;
	}

}
