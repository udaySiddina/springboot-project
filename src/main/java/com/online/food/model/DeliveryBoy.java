package com.online.food.model;

import jakarta.persistence.Column;
import jakarta.persistence.*;

@Entity
@Table(name="dev_table")
public class DeliveryBoy
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="dev_uname",nullable=false,unique = true,length = 30)
	private String uname;
	@Column(name="dev_email",nullable=false,unique = true,length = 30)
	private String email;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	

}
