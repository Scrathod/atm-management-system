package com.govt.banksystem.entity;

import java.util.Random;

public class NumberGenerator 
{
	public static Long autoGenerate()
	{
		// Specify the number of digits you want
        long numberOfDigits = 16;

        // Calculate the minimum and maximum values based on the number of digits
        long min = (long) Math.pow(10, numberOfDigits - 1);
        long max = (long) Math.pow(10, numberOfDigits) - 1;

        // Create a Random object
        Random random = new Random();

        // Generate a random integer within the specified range
        long randomNumber = random.nextLong(max - min + 1) + min;
		return randomNumber;

	}
	
	public static Integer pinGenerate()
	{
		// Specify the number of digits you want
        int numberOfDigits = 4;

        // Calculate the minimum and maximum values based on the number of digits
        int min = (int) Math.pow(10, numberOfDigits - 1);
        int max = (int) Math.pow(10, numberOfDigits) - 1;

        // Create a Random object
        Random random = new Random();

        // Generate a random integer within the specified range
        int randomNumber = random.nextInt(max - min + 1) + min;
		return randomNumber;

	}


}
