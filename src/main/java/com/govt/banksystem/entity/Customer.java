package com.govt.banksystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@ToString
@Entity
public class Customer 
{
	
   private String custname;
   private String custfathername;
   private String dob;
   private String gender;
   private String aadhar;
   private String pan;
   private String email;
   private String mobile;
   private String maritalstatus;
   private String address;
   private String city;
   private int pincode;
   private String state;
   private String religion;
   private String category;
   private String qualification;
   private String seniorcitizen;
   private String existingaccount;
   private String accounttype;
  @Id
   private Long cardnumber = NumberGenerator.autoGenerate();
   private int pin = NumberGenerator.pinGenerate();
   private String services;
   private String income;
   private String occupation;
   private double amount;
  
   
  
   
   
}
