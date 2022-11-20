package com.thaind.model;

import java.util.Date;

public class Changdua {
	private String ten,diadiem,mota;
	private int id,sovong,muaid;
	private Date thoigian;
	public Changdua() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Changdua(int id, String ten, int sovong, String diadiem, Date thoigian, String mota, int muaid) {
		super();
		this.id = id;
		this.ten = ten;
		this.sovong = sovong;
		this.diadiem = diadiem;
		this.thoigian = thoigian;
		this.mota = mota;
		this.muaid = muaid;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getDiadiem() {
		return diadiem;
	}
	public void setDiadiem(String diadiem) {
		this.diadiem = diadiem;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSovong() {
		return sovong;
	}
	public void setSovong(int sovong) {
		this.sovong = sovong;
	}
	public int getMuaid() {
		return muaid;
	}
	public void setMuaid(int muaid) {
		this.muaid = muaid;
	}
	public Date getThoigian() {
		return thoigian;
	}
	public void setThoigian(Date thoigian) {
		this.thoigian = thoigian;
	}
	
	
}
