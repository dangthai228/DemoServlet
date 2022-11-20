package com.thaind.model;

import java.io.Serializable;

public class Muagiai implements Serializable {
	private int id;
	private String ten,mota,trangthai;
	public Muagiai() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Muagiai(int id, String ten, String mota, String trangthai) {
		super();
		this.id = id;
		this.ten = ten;
		this.mota = mota;
		this.trangthai = trangthai;
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
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	
}
