package com.hsbc.auction.models;

import java.time.LocalDate;

//Product required for auctioning
public class Auction {
	protected int minBidValue;
	protected LocalDate bidStartDate;
	protected LocalDate bidEndDate;
	protected int buyerUserId;
	private int soldPrice;
	private AuctionStatus auctionStatus;
	public int getMinBidValue() {
		return minBidValue;
	}
	public void setMinBidValue(int minBidValue) {
		this.minBidValue = minBidValue;
	}
	public LocalDate getBidStartDate() {
		return bidStartDate;
	}
	public void setBidStartDate(LocalDate bidStartDate) {
		this.bidStartDate = bidStartDate;
	}
	public LocalDate getBidEndDate() {
		return bidEndDate;
	}
	public void setBidEndDate(LocalDate bidEndDate) {
		this.bidEndDate = bidEndDate;
	}
	public int getBuyerUserId() {
		return buyerUserId;
	}
	public void setBuyerUserId(int buyerUserId) {
		this.buyerUserId = buyerUserId;
	}
	public int getSoldPrice() {
		return soldPrice;
	}
	public void setSoldPrice(int soldPrice) {
		this.soldPrice = soldPrice;
	}
	public AuctionStatus getAuctionStatus() {
		return auctionStatus;
	}
	public void setAuctionStatus(AuctionStatus auctionStatus) {
		this.auctionStatus = auctionStatus;
	}
	@Override
	public String toString() {
		return "Auction [minBidValue=" + minBidValue + ", bidStartDate=" + bidStartDate + ", bidEndDate=" + bidEndDate
				+ ", buyerUserId=" + buyerUserId + ", soldPrice=" + soldPrice + ", auctionStatus=" + auctionStatus
				+ "]";
	}
	
	
}
