package com.online.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.food.model.DeliveryBoy;
import com.online.food.repository.DeliveryRepository;

@Service
public class DeliveryServiceImpl implements DeliveryService
{
	@Autowired
	private DeliveryRepository deliveryRepository;

	@Override
	public DeliveryBoy checkdevlogin(String mail, String uname) {
		return deliveryRepository.checkdevlogin(mail, uname);
	}
	

}
