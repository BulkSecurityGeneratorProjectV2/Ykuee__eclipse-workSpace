package com.syd.springmvc.handlers;

public class User {
	private String username;
	private String password;
	private String email;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private Address address;

	public String getUsername() {
		return username;
	}


	public User(String username, String password, String email, int id) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.id = id;
	}

	public User(String username, String email, int id) {
		super();
		this.username = username;
		this.email = email;
		this.id = id;
	}

	public User() {
		super();
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", id=" + id + "]";
	}

}
