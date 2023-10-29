package org.anudip.projectdb.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Accommodation {
	@Id
	 private String accommodationId; 
   private String accommodationName;  
   private double farePerDay;
	public Accommodation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Accommodation(String accommodationId, String accommodationName, double farePerDay) {
		super();
		this.accommodationId = accommodationId;
		this.accommodationName = accommodationName;
		this.farePerDay = farePerDay;
	}
	public String getAccommodationId() {
		return accommodationId;
	}
	public void setAccommodationId(String accommodationId) {
		this.accommodationId = accommodationId;
	}
	public String getAccommodationName() {
		return accommodationName;
	}
	public void setAccommodationName(String accommodationName) {
		this.accommodationName = accommodationName;
	}
	public double getFarePerDay() {
		return farePerDay;
	}
	public void setFarePerDay(double farePerDay) {
		this.farePerDay = farePerDay;
	}
	@Override
	public String toString() {
		return "accommodationId=" + accommodationId + ", accommodationName=" + accommodationName
				+ ", farePerDay=" + farePerDay + "";
	}
   	}
