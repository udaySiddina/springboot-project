package com.online.food.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.online.food.model.DeliveryBoy;

@Repository
public interface DeliveryRepository extends JpaRepository<DeliveryBoy, Integer>
{
	@Query("select e from DeliveryBoy e where e.email=?1 and e.uname=?2")
	public DeliveryBoy checkdevlogin(String mail,String uname);
	

}
