package com.govt.banksystem.dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.govt.banksystem.entity.Customer;
import com.govt.banksystem.repository.BankRepository;

@Component
public class BankDaoImp implements BankDao 
{
  
	@Autowired
	private BankRepository repo;
	
	@Override
	public void applyAccount(Customer customer) 
	{
		repo.save(customer);

	}
	@Override
	public Customer getDetails(long cardnumber)
	{
		Customer cst = repo.findById(cardnumber).get();
		return cst;
	}
	@Override
	public Customer depositeAmount(int pin, double amount) 
	{
		   
		    Optional<Customer> opt = repo.findByPin(pin);
		    if(opt.isPresent())
		    {
		    	
		       Customer cst = opt.get();
		
				cst.setAmount(cst.getAmount()+amount);
				repo.save(cst);
			
			   return cst;
		    }
		    else
		    {
		    	return null;
		    }
	}
	@Override
	public Customer withdrawAmount(int pin, double amount)
	{
		Customer cst = repo.findByPin(pin).get();
		if(cst.getAmount()>amount)
		{
			cst.setAmount(cst.getAmount()-amount);
			repo.save(cst);
			
		}
		return cst;
	}
	@Override
	public Customer getBalance(int pin) 
	{
		Customer cst = repo.findByPin(pin).get();
		return cst;
	}
	
	@Override
	public Customer updatePin(int pin,int pin1, int pin2) 
	{
		Customer customer = repo.findByPin(pin).get();
		if(pin1==pin2)
		{
			customer.setPin(pin1);
			repo.save(customer);
		}
		return customer;
	}
	
	@Override
	public Customer validateCustomer(int pin,long cardnumber) 
	{
		Optional<Customer> opt = repo.findByPin(pin);
		if(opt.isPresent())
		{
			Customer customer = opt.get();
			if(customer.getCardnumber()==cardnumber)
			{
			   return customer;
			}
			else
			{
				return null;
			}
		}
		return null;
		
	}

}
