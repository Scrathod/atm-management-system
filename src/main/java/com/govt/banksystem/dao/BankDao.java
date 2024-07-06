package com.govt.banksystem.dao;

import com.govt.banksystem.entity.Customer;

public interface BankDao 
{
	
	public void applyAccount(Customer customer);
	
	public Customer getDetails(long cardnumber);
	
	public Customer depositeAmount(int pin,double amount);
	
	public Customer withdrawAmount(int pin, double amount);
	
	public Customer getBalance(int pin);
	
	public Customer updatePin(int pin,int pin1,int pin2);
	
	public Customer validateCustomer(int pin,long cardnumber);

}
