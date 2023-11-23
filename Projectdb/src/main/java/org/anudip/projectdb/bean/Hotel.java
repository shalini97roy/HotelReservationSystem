package org.anudip.projectdb.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hotel {
	@Id
	private String hotelId;  
    private String hotelName;
	public Hotel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hotel(String hotelId, String hotelName) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
	}
	
	public Hotel(String hotelId) {
		super();
		this.hotelId = hotelId;
	}
	public String gethotelId() {
		return hotelId;
	}
	public void sethotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String gethotelName() {
		return hotelName;
	}
	public void sethotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	@Override
	public String toString() {
		return "hotelId=" + hotelId + ", hotelName=" + hotelName + " ";
	}
    

}