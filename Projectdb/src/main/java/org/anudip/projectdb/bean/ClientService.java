package org.anudip.projectdb.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ClientService {
	@Id
	private Long serialNumber; 
    private Long clientId; 
    private String serviceType;
    private String date;
    private double amount;
	public ClientService() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClientService(Long serialNumber) {
		super();
		this.serialNumber = serialNumber;
	}
	public ClientService(Long serialNumber, Long clientId, String serviceType, String date, double amount) {
		super();
		this.serialNumber = serialNumber;
		this.clientId = clientId;
		this.serviceType = serviceType;
		this.date = date;
		this.amount = amount;
	}
	public Long getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(Long serialNumber) {
		this.serialNumber = serialNumber;
	}
	public Long getClientId() {
		return clientId;
	}
	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	

}
