package com.example.SpringProject1;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Laptop {
	@Id
   private int laptopid;
   private String modelname;
   private int ramsize;
   private String processor;
   private int price;
   private String manfcompany;
   private String gpu;
   private int ratings;
public int getLaptopid() {
	return laptopid;
}
public void setLaptopid(int laptopid) {
	this.laptopid = laptopid;
}
public String getModelname() {
	return modelname;
}
public void setModelname(String modelname) {
	this.modelname = modelname;
}
public int getRamsize() {
	return ramsize;
}
public void setRamsize(int ramsize) {
	this.ramsize = ramsize;
}
public String getProcessor() {
	return processor;
}
public void setProcessor(String processor) {
	this.processor = processor;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getManfcompany() {
	return manfcompany;
}
public void setManfcompany(String manfcompany) {
	this.manfcompany = manfcompany;
}
public String getGpu() {
	return gpu;
}
public void setGpu(String gpu) {
	this.gpu = gpu;
}
public int getRatings() {
	return ratings;
}
public void setRatings(int ratings) {
	this.ratings = ratings;
}
@Override
public String toString() {
	return "Laptop [laptopid=" + laptopid + ", modelname=" + modelname + ", ramsize=" + ramsize + ", processor="
			+ processor + ", price=" + price + ", manfcompany=" + manfcompany + ", gpu=" + gpu + ", ratings=" + ratings
			+ "]";
}
   
   
}
