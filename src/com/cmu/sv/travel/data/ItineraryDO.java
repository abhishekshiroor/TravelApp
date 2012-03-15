package com.cmu.sv.travel.data;

public class ItineraryDO {
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getdMonth() {
		return dMonth;
	}
	public void setdMonth(String dMonth) {
		this.dMonth = dMonth;
	}
	public String getdDay() {
		return dDay;
	}
	public void setdDay(String dDay) {
		this.dDay = dDay;
	}
	public String getdYear() {
		return dYear;
	}
	public void setdYear(String dYear) {
		this.dYear = dYear;
	}
	public String getrMonth() {
		return rMonth;
	}
	public void setrMonth(String rMonth) {
		this.rMonth = rMonth;
	}
	public String getrDay() {
		return rDay;
	}
	public void setrDay(String rDay) {
		this.rDay = rDay;
	}
	public String getrYear() {
		return rYear;
	}
	public void setrYear(String rYear) {
		this.rYear = rYear;
	}
	public String getPassengers() {
		return passengers;
	}
	public void setPassengers(String passengers) {
		this.passengers = passengers;
	}
	public void setdTime(String dTime) {
		this.dTime = dTime;
	}
	public String getdTime() {
		return dTime;
	}
	public void setrTime(String rTime) {
		this.rTime = rTime;
	}
	public String getrTime() {
		return rTime;
	}
	private String from;
	private String to;
	private String dMonth;
	private String dDay;
	private String dYear;
	private String dTime;
	private String rMonth;
	private String rDay;
	private String rYear;
	private String rTime;
	private String passengers;
}
