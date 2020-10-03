package com.hsbc.auction.models;

import java.awt.Image;
import java.util.Arrays;

//Products available for bidding

public class Product {
	protected int productId;
	protected String productName;
	protected Category[] category;
	protected String description;
	protected int actualPrice;
	protected int quantity;
	protected Image image;
	protected int sellerUserId;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Category[] getCategory() {
		return category;
	}
	public void setCategory(Category[] category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getActualPrice() {
		return actualPrice;
	}
	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Image getImage() {
		return image;
	}
	public void setImage(Image image) {
		this.image = image;
	}
	public int getSellerUserId() {
		return sellerUserId;
	}
	public void setSellerUserId(int sellerUserId) {
		this.sellerUserId = sellerUserId;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", category="
				+ Arrays.toString(category) + ", description=" + description + ", actualPrice=" + actualPrice
				+ ", quantity=" + quantity + ", image=" + image + ", sellerUserId=" + sellerUserId + "]";
	}
	
	
	
	
	
	
}
