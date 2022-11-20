package com.thaind.model;

import java.io.Serializable;
import java.util.Date;

public class Thanhvien implements Serializable {
	private int id;
	private  String ten,taikhoan,matkhau,sodt,vaitro;
	private  Date ngaysinh;
	
	
	public Thanhvien(int id, String ten, String taikhoan, String matkhau, Date ngaysinh ,String sodt,String vaitro) {
		super();
		this.id = id;
		this.ten = ten;
		this.taikhoan = taikhoan;
		this.matkhau = matkhau;
		this.sodt = sodt;
		this.ngaysinh = ngaysinh;
		this.vaitro= vaitro;
	}
	public Thanhvien() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getVaitro() {
		return vaitro;
	}
	public void setVaitro(String vaitro) {
		this.vaitro = vaitro;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getSodt() {
		return sodt;
	}
	public void setSodt(String sodt) {
		this.sodt = sodt;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
