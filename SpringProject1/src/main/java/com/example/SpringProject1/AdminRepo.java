package com.example.SpringProject1;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepo extends CrudRepository<Admin, Integer> {
   
	@Query(value="select * from admin where adminname=?1 or adminemail=?2",nativeQuery = true)
	Admin validate(String adminame,String adminemail);
	
}
