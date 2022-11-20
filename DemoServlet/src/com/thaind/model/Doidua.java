package com.thaind.model;

public class Doidua {
	private int id;
	private String ten,hang,mota;
	public Doidua() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getHang() {
		return hang;
	}
	public void setHang(String hang) {
		this.hang = hang;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Doidua(int id, String ten, String hang, String mota) {
		super();
		this.id = id;
		this.ten = ten;
		this.hang = hang;
		this.mota = mota;
	}
	
	
}
