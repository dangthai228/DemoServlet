package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;

import com.thaind.model.Thanhvien;
//kiem tra login
public class ThanhvienDAO extends DAO {
	public ThanhvienDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public boolean kiemtraDangnhap(Thanhvien tv){
		boolean kq = false;
		if(tv.getTaikhoan().contains("true") ||
				tv.getTaikhoan().contains("=")||
				tv.getMatkhau().contains("true") ||
				tv.getMatkhau().contains("=")) return false;
		String sql = "{call kiemtraDN(?,?)}"; //su dung stored procedure
		try{
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1,tv.getTaikhoan());
			cs.setString(2,tv.getMatkhau());
			ResultSet rs = cs.executeQuery();
			if(rs.next()){
				tv.setId(rs.getInt("id"));
				tv.setVaitro(rs.getString("vaitro"));
				tv.setTen(rs.getString("ten"));
				kq = true;
			}
		}catch(Exception e){
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}
