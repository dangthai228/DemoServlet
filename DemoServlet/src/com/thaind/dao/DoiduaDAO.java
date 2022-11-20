package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.thaind.model.Doidua;

public class DoiduaDAO extends DAO {

	public DoiduaDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Doidua> getDoidua(int idcd){
		ArrayList<Doidua> kq= null;
		String sql ="{call getDoidua(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1,idcd );
			ResultSet rs = cs.executeQuery();
			while(rs.next()){
				if(kq==null) {kq= new ArrayList<Doidua>();}
				Doidua cd= new Doidua();
				cd.setId(rs.getInt("id"));
				cd.setTen(rs.getString("ten"));
				cd.setHang(rs.getString("hang"));
				cd.setMota(rs.getString("mota"));
				kq.add(cd);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
}
