package com.govt.banksystem.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.govt.banksystem.entity.Customer;


public interface BankRepository extends JpaRepository<Customer, Long> 
{
   public Optional<Customer> findByPin(int pin);
}
