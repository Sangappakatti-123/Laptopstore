package com.example.SpringProject1;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface LaptopRepo extends CrudRepository<Laptop, Integer> {
   @Query(value="select * from laptop where price<=?1",nativeQuery = true) 
	List<Laptop >findbyprice(int price);
   @Query(value="select * from laptop where processor=?1",nativeQuery = true) 
    List<Laptop >findbyprocessor(String processor);
  
}
