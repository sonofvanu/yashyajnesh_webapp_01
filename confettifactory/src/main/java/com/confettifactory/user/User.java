package com.confettifactory.user;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

@Entity
public class User {

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int Id;
	private String Username;
	private String Email;
	private String Phone;
	private String Location;
	private String Password;
	@Transient
	private String CPassword;
	private int Role=1;
	private boolean Active=true;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@NotEmpty(message="Username field is mandatory.")
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	
	@NotEmpty(message="Email field is mandatory.")
	@org.hibernate.validator.constraints.Email
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	@Length(max = 10 ,min = 10 , message = "Phone number is not valid. Should be of length 10.")
	@NotEmpty(message="Phone field is mandatory.")
	@NumberFormat(style= org.springframework.format.annotation.NumberFormat.Style.NUMBER)
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	
	@NotEmpty(message="Address field is mandatory.")
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	
	@NotEmpty(message="Password field is mandatory.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	@NotEmpty(message="Re-enter the same password.")
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}
	
	
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	
	
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
	
	@Override
	public String toString(){
		return "{ID:\"" + Id + "\", Email:\"" + Email + "\", Username:\"" + Username + "\", Phone:\"" + Phone + "\", Location:\""
				+ Location + "\", Role:\"" + Role + "\", Active:" + Active + ", Delete: false}";
		
	}

}
