package com.thaind.model;

import java.util.Date;

public class Taydua {
	private int id;
	private String ten,quoctich,tieusu;
	private Date ngaysinh;
	public Taydua() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Taydua(int id, String ten, Date ngaysinh, String quoctich, String tieusu) {
		super();
		this.id = id;
		this.ten = ten;
		this.ngaysinh = ngaysinh;
		this.quoctich = quoctich;
		this.tieusu = tieusu;
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
	public String getQuoctich() {
		return quoctich;
	}
	public void setQuoctich(String quoctich) {
		this.quoctich = quoctich;
	}
	public String getTieusu() {
		return tieusu;
	}
	public void setTieusu(String tieusu) {
		this.tieusu = tieusu;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	
	
}
