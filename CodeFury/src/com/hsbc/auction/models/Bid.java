package com.hsbc.auction.models;

//Bid information
public class Bid extends Product{
	
	protected int bidUniqueId;
	protected int userId;
	protected int bidValue;
	protected BidStatus bidStatus;
	
	public int getBidUniqueId() {
		return bidUniqueId;
	}
	public void setBidUniqueId(int bidUniqueId) {
		this.bidUniqueId = bidUniqueId;
	}
	public int getBidUserId() {
		return userId;
	}
	public void setBidUserId(int bidUserId) {
		this.userId = bidUserId;
	}
	public int getBidValue() {
		return bidValue;
	}
	public void setBidValue(int bidValue) {
		this.bidValue = bidValue;
	}
	public BidStatus getStatus() {
		return bidStatus;
	}
	public void setStatus(BidStatus status) {
		this.bidStatus = status;
	}
	@Override
	public String toString() {
		return "Bid [bidUniqueId=" + bidUniqueId + ", bidUserId=" + userId + ", bidValue=" + bidValue + ", status="
				+ bidStatus + "]";
	}
	
}
