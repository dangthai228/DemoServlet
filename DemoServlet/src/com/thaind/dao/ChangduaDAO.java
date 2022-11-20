package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.thaind.model.Changdua;


public class ChangduaDAO extends DAO {

	public ChangduaDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Changdua> getChangdua(int idmg){
		ArrayList<Changdua> kq= null;
		String sql ="{call getChangdua(?)}";
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1,idmg );
			ResultSet rs = cs.executeQuery();
			while(rs.next()){
				if(kq==null) kq= new ArrayList<Changdua>();
				Changdua cd= new Changdua();
				cd.setId(rs.getInt("id"));
				cd.setTen(rs.getString("ten"));
				cd.setSovong(rs.getInt("sovongdua"));
				cd.setDiadiem(rs.getString("diadiem"));
				cd.setThoigian(rs.getDate("thoigian"));
				cd.setMota(rs.getString("mota"));
				cd.setMuaid(rs.getInt("idmuagiai"));
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
