package com.ssm.ATO.calculator.model;

public class Date {
	private int month;
	private int date;
	public Date(int month, int date) {
		super();
		this.month = month;
		this.date = date;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Date [month=" + month + ", date=" + date + "]";
	}
}
