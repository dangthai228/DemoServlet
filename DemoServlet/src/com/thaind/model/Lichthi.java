package com.thaind.model;

public class Lichthi {
	private int id,btcid,dvid,cdid;
	private String trangthai;
	public Lichthi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lichthi(int id, String trangthai, int btcid, int dvid, int cdid) {
		super();
		this.id = id;
		this.trangthai = trangthai;
		this.btcid = btcid;
		this.dvid = dvid;
		this.cdid = cdid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBtcid() {
		return btcid;
	}
	public void setBtcid(int btcid) {
		this.btcid = btcid;
	}
	public int getDvid() {
		return dvid;
	}
	public void setDvid(int dvid) {
		this.dvid = dvid;
	}
	public int getCdid() {
		return cdid;
	}
	public void setCdid(int cdid) {
		this.cdid = cdid;
	}
	public String getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	
}
