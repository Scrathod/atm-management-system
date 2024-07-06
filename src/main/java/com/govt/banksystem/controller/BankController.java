package com.govt.banksystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.govt.banksystem.dao.BankDao;
import com.govt.banksystem.entity.Customer;

@Controller

public class BankController 
{
	
		@Autowired
		BankDao dao;
		
		@RequestMapping("/displayLogin")
	   public String displayLogin()
	   {
		   return "index";
	   }
		
		@RequestMapping("/applyForAccount")
		public String applyForAccount(Customer customer,Model model)
		{
			if(customer.getExistingaccount().equalsIgnoreCase("No"))
			{
				dao.applyAccount(customer);
				Customer cst = dao.getDetails(customer.getCardnumber());
				model.addAttribute("customer",cst);
				return "RegistrationForm";
			}
			else
			{
				model.addAttribute("accountStatus","This Account already exists");
				return "RegistrationForm";
			}
		}
		
		@RequestMapping("/depositeAmount")
		public String depositeAmount(int pin,double amount,Model model)
		{
			
			Customer cst = dao.depositeAmount(pin, amount);
			if(cst!=null)
			{
			
			   model.addAttribute("amount",amount);
			   model.addAttribute("customer",cst);
			  
				return "DepositeAmount";
			}
			else
			{
				return null;
			}
			
			
		}
		
		@RequestMapping("/withdrawAmount")
		public String withdrawAmount(int pin,double amount,Model model)
		{
			Customer cst = dao.withdrawAmount(pin, amount);
			if(cst.getAmount()>=amount)
			{
				model.addAttribute("withdrawCustomer",cst);
				model.addAttribute("withdrawAmount",amount);
				return "CashWithdrawl";
			}
			else
			{
				model.addAttribute("message","Transaction failed due to insufficient balance");
				return "CashWithdrawl";
				
			}
		}
		
		@RequestMapping("/balanceEnquiry")
		public String balanceEnquiry(int pin,Model model)
		{
			Customer cst = dao.getBalance(pin);
			model.addAttribute("balanceInfo",cst);
			model.addAttribute("balance",cst.getAmount());
			return "BalanceEnquiry";
		}
		
		@RequestMapping("/pinChange")
		public String pinChange(int pin, @RequestParam("pin1") int pin1,@RequestParam("pin2") int pin2,Model model)
		{
			
			if(pin1==pin2)
			{
				Customer cst = dao.updatePin(pin,pin1, pin2);
				model.addAttribute("pinChange",cst);
				return "PinChange";
			}
			else
			{
				model.addAttribute("pinStatus","PIN Does Not Matched");
				return "PinChange";
			}
			
		}
		
		@RequestMapping("/fastCashDebit")
		public String fastCashDebit(int pin,double amount,Model model)
		{
			Customer cs = dao.withdrawAmount(pin, amount);
			if(cs.getAmount()>=amount)
			{
				model.addAttribute("fastCash",cs);
				model.addAttribute("amount",amount);
				return "FastCash";
			}
			else
			{
				model.addAttribute("message","Transaction failed due to insufficient balance");
				return "FastCash";
					
			}
			
		}
		
		@RequestMapping("/validatePin")
		public String validatePin(int pin,long cardnumber,Model model)
		{
			Customer cst = dao.validateCustomer(pin, cardnumber);
			if(cst!=null)
			{
				model.addAttribute("details",cst);
				return "TransactionDetails";
				
			}
			else
			{
				
				model.addAttribute("status","Invalid Pin Or Card Number");
				return "index";
			}
		}
		
		
}
