package com.syd.spring.beans.autowrie;

public class Address {
	private String city;
	private String street;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStreet() {
		return street;
	}
	@Override
	public String toString() {
		return "Address [city=" + city + ", street=" + street + "]";
	}
	public void setStreet(String street) {
		this.street = street;
	}
	
}
