package com.hcl.Model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Customer")

	@SecondaryTables({
        @SecondaryTable(name="secondTable",pkJoinColumns={@PrimaryKeyJoinColumn(name="secId",referencedColumnName="cid")}),
        @SecondaryTable(name="thirdTable",pkJoinColumns={@PrimaryKeyJoinColumn(name="thiId",referencedColumnName="cid")}),
        @SecondaryTable(name="fourthTable",pkJoinColumns={@PrimaryKeyJoinColumn(name="fourId",referencedColumnName="cid")})
	})

public class Customer  implements Serializable{
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int cid;
	private String firstName;
	private String lastName;
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private LocalDate dOB;
	private String addressLine1;
	private String addressLine2;
	@Column(table="secondTable")
	private String city;
	@Column(table="secondTable")
	private String state;
	@Column(table="secondTable")
	private int pincode;
	@Column(table="secondTable")
	private int mobileNumber;
	@Column(table="secondTable")
	private String email;
	@Column(table="secondTable")
	private int aadhar;
	@Column(table="secondTable")
	private int pan;
	@Column(table="secondTable")
	private String userName;
	@Column(table="secondTable")
	private String password;
	@Column(table="thirdTable")
	private String dobProof;
	@Column(table="thirdTable")
	private String addressProof;
	@Column(table="thirdTable")
	private String aadharProof;
	@Column(table="thirdTable")
	private String panProof;
	@Column(table="fourthTable")
    private long accountNo;
    @Column(table="fourthTable")
    private String accountType;
    @Column(table="fourthTable")
    private long balance;
    @Column(table="fourthTable")
    private LocalDate createdDate;

	public long getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public LocalDate getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(LocalDate createdDate) {
		this.createdDate = createdDate;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public LocalDate getdOB() {
		return dOB;
	}
	public void setdOB(LocalDate dOB) {
		this.dOB = dOB;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAadhar() {
		return aadhar;
	}
	public void setAadhar(int aadhar) {
		this.aadhar = aadhar;
	}
	public int getPan() {
		return pan;
	}
	public void setPan(int pan) {
		this.pan = pan;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public String setPassword(String password) {
		return this.password = password;
	}
	public String getDobProof() {
		return dobProof;
	}
	public void setDobProof(String dobProof) {
		this.dobProof = dobProof;
	}
	public String getAddressProof() {
		return addressProof;
	}
	public void setAddressProof(String addressProof) {
		this.addressProof = addressProof;
	}
	public String getAadharProof() {
		return aadharProof;
	}
	public void setAadharProof(String aadharProof) {
		this.aadharProof = aadharProof;
	}
	public String getPanProof() {
		return panProof;
	}
	public void setPanProof(String panProof) {
		this.panProof = panProof;
	}
}	
	
	


                

                
               
                
                

              
         
         