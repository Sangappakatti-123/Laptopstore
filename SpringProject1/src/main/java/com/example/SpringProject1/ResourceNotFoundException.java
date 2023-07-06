package com.example.SpringProject1;

public class ResourceNotFoundException extends RuntimeException {
	ResourceNotFoundException(){
		super("Data Not found ......!! ");
	}
}
