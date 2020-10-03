package com.hsbc.auction.models;

//Category of Products
public class Category {
	
	protected int categoryUniqueId;
	protected String categoryName;
	protected String categoryDescription;
	
	public int getCategoryUniqueId() {
		return categoryUniqueId;
	}
	public void setCategoryUniqueId(int categoryUniqueId) {
		this.categoryUniqueId = categoryUniqueId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
	@Override
	public String toString() {
		return "Category [categoryUniqueId=" + categoryUniqueId + ", categoryName=" + categoryName
				+ ", categoryDescription=" + categoryDescription + "]";
	}
	
	
}
