package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.thaind.model.Taydua;

public class TayduaDAO extends DAO {

	public TayduaDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Taydua> getTaydua(int idcd){
		ArrayList<Taydua> kq= null;
		String sql ="{call getTaydua(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1,idcd );
			ResultSet rs = cs.executeQuery();
			while(rs.next()){
				if(kq== null) kq= new ArrayList<Taydua>() ;
				Taydua cd= new Taydua();
				cd.setId(rs.getInt("id"));
				cd.setTen(rs.getString("ten"));
				cd.setNgaysinh(rs.getDate("ngaysinh"));
				cd.setQuoctich(rs.getString("quoctich"));
				cd.setTieusu(rs.getString("tieusu"));
				kq.add(cd);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
	public int getsoluong(int idcd, int iddd)
	{
		int kq=0;
		String sql ="{call getSodangki(?,?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1,idcd );
			cs.setInt(2, iddd);
			ResultSet rs = cs.executeQuery();
			while(rs.next()){
				kq= rs.getInt("num");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			kq = 0;
		}
		return kq;
	}
}
