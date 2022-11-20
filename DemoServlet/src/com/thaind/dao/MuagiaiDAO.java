package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.thaind.model.Muagiai;

public class MuagiaiDAO extends DAO {
	public MuagiaiDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Muagiai> getMuagiai(){
		ArrayList<Muagiai> kq= null;
		String sql ="{call getMuagiai()}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			ResultSet rs = cs.executeQuery();
			while(rs.next()){
				if(kq==null) kq= new ArrayList<Muagiai>();
				Muagiai mg= new Muagiai();
				mg.setId(rs.getInt("id"));
				mg.setTen(rs.getString("ten"));
				mg.setMota(rs.getString("mota"));
				mg.setTrangthai(rs.getString("trangthai"));
				kq.add(mg);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
}
