package bean;

import java.io.Serializable;

public class User implements Serializable {
	private int admin;
	private String name;
	private String pass;
	private int billing;

	public User(String name,String pass){
		this.name = name;
		this.pass = pass;
	}

	public User(int admin,String name, String pass,int billing){
		this.admin = admin;
		this.name = name;
		this.pass = pass;
		this.billing = billing;
	}

	public int getAdmin() {
		return admin;
	}

	public String getName() {
		return name;
	}

	public String getPass() {
		return pass;
	}

	public int getBilling() {
		return billing;
	}


}
