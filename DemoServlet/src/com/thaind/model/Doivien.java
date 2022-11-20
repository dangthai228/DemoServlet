package com.thaind.model;

import java.util.Date;

public class Doivien {
	private int id,tdid,ddid;
	private String mota;
	private Date batdau,ketthuc;
	public Doivien() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Doivien(int id, String mota, Date batdau, Date ketthuc, int tdid, int ddid) {
		super();
		this.id = id;
		this.mota = mota;
		this.batdau = batdau;
		this.ketthuc = ketthuc;
		this.tdid = tdid;
		this.ddid = ddid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTdid() {
		return tdid;
	}
	public void setTdid(int tdid) {
		this.tdid = tdid;
	}
	public int getDdid() {
		return ddid;
	}
	public void setDdid(int ddid) {
		this.ddid = ddid;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Date getBatdau() {
		return batdau;
	}
	public void setBatdau(Date batdau) {
		this.batdau = batdau;
	}
	public Date getKetthuc() {
		return ketthuc;
	}
	public void setKetthuc(Date ketthuc) {
		this.ketthuc = ketthuc;
	}
	
	
}
