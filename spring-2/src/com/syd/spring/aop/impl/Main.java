package com.syd.spring.aop.impl;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		AtithmeticCalculator atit = ctx.getBean(AtithmeticCalculator.class);
		int i = atit.add(5, 6);
		System.out.println(i);
		int o = atit.div(10, 0);
		System.out.println(o);
	}

}
