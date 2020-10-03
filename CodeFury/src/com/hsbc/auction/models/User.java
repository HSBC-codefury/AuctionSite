package com.hsbc.auction.models;

import java.time.LocalDate;
import java.util.Arrays;

//Users of the system
public class User {
	
	protected int userUniqueId;
	protected String name;
	protected LocalDate dob;
	protected String email;
	protected long phoneNo;
	protected char[] password;
	protected Address[] address;
	protected UserType userType;
	protected int walletAmount;
	
	public int getUserUniqueId() {
		return userUniqueId;
	}
	public void setUserUniqueId(int userUniqueId) {
		this.userUniqueId = userUniqueId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public char[] getPassword() {
		return password;
	}
	public void setPassword(char[] password) {
		this.password = password;
	}
	public Address[] getAddress() {
		return address;
	}
	public void setAddress(Address[] address) {
		this.address = address;
	}
	public UserType getUserType() {
		return userType;
	}
	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	public int getWalletAmount() {
		return walletAmount;
	}
	public void setWalletAmount(int walletAmount) {
		this.walletAmount = walletAmount;
	}
	@Override
	public String toString() {
		return "User [userUniqueId=" + userUniqueId + ", name=" + name + ", dob=" + dob + ", email=" + email
				+ ", phoneNo=" + phoneNo + ", password=" + Arrays.toString(password) + ", address="
				+ Arrays.toString(address) + ", userType=" + userType + ", walletAmount=" + walletAmount + "]";
	}
	
	
}
