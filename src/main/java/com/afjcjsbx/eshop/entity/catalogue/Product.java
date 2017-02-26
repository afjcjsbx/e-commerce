package com.afjcjsbx.eshop.entity.catalogue;

import com.afjcjsbx.eshop.entity.Entity;
import com.afjcjsbx.eshop.entity.login.AbstractUser;
import com.afjcjsbx.eshop.entity.feedback.Review;

import java.util.List;


public class Product extends Entity{

	private String name;
	private String description;
	private String picture;
	private Float price;
	private Integer discountPercentage;
	private Float shipmentCost;
	private AbstractUser producer;
	private Category category;
	private String manufacturer;
    private List<Keyword> keywords;
    private List<Review> reviews; // TODO traiamo qualche vantaggio ad implementare l'aggregazione anche in memoria oltre che nel db? Secondo me no, aumenta solo il coupling
    private boolean isCharitable;
    private boolean availability;


	public Product() {}

	public Product(int id, String name, String description, String picture, Float price, Integer discountPercentage, Float shipmentCost, AbstractUser producer, Category category, String manufacturer, List<Keyword> keywords, List<Review> reviews, boolean isCharitable, boolean availability) {
		super(id);
		this.name = name;
		this.description = description;
		this.picture = picture;
		this.price = price;
		this.discountPercentage = discountPercentage;
		this.shipmentCost = shipmentCost;
		this.producer = producer;
		this.category = category;
		this.manufacturer = manufacturer;
		this.keywords = keywords;
		this.reviews = reviews;
		this.isCharitable = isCharitable;
		this.availability = availability;

	}

	public Product(String name, String description, String picture, Float price, Integer discountPercentage, Float shipmentCost, AbstractUser producer, Category category, String manufacturer, List<Keyword> keywords, List<Review> reviews, boolean isCharitable, boolean availability) {
		this.name = name;
		this.description = description;
		this.picture = picture;
		this.price = price;
		this.discountPercentage = discountPercentage;
		this.shipmentCost = shipmentCost;
		this.producer = producer;
		this.category = category;
		this.manufacturer = manufacturer;
		this.keywords = keywords;
		this.reviews = reviews;
		this.isCharitable = isCharitable;
		this.availability = availability;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getDiscountPercentage() {
		return discountPercentage;
	}

	public void setDiscountPercentage(Integer discountPercentage) {
		this.discountPercentage = discountPercentage;
	}

	public Float getShipmentCost() {
		return shipmentCost;
	}

	public void setShipmentCost(Float shipmentCost) {
		this.shipmentCost = shipmentCost;
	}

	public AbstractUser getProducer() {
		return producer;
	}

	public void setProducer(AbstractUser producer) {
		this.producer = producer;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public List<Keyword> getKeywords() {
		return keywords;
	}

	public void setKeywords(List<Keyword> keywords) {
		this.keywords = keywords;
	}

	public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}

	public boolean isCharitable() {
		return isCharitable;
	}

	public void setCharitable(boolean charitable) {
		isCharitable = charitable;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
}
