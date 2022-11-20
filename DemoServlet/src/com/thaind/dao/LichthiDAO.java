package com.thaind.dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.thaind.model.Lichthi;

public class LichthiDAO extends DAO{

	public LichthiDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public boolean Luudangki(Lichthi lt,int iddd,int idtd)
	{
		boolean kq= false;
		String sqldv = "{call luudoivien(?,?)}";
		int idcd= lt.getCdid();
		int idbtc= lt.getBtcid();
		String sqllthi="INSERT INTO tbllichthi(trangthai,idbantochuc,iddoivien,idchangdua) VALUES(?,?,?,?)";
		try {
			this.con.setAutoCommit(false);
			//insert doivien
			CallableStatement cs = con.prepareCall(sqldv);
			cs.setInt(1, iddd);
			cs.setInt(2, idtd);
			ResultSet rs=cs.executeQuery();
			
			if(rs.next()){
				int  iddv= rs.getInt("id");
				 //insert lichthi
				 PreparedStatement pslt = con.prepareStatement(sqllthi);
				 pslt.setString(1, "coming");
				 pslt.setInt(2, idbtc);
				 pslt.setInt(3, iddv);
				 pslt.setInt(4, idcd);
				 pslt.executeUpdate();
				 kq=true;
			}
			
				
		} catch (Exception e) {
			// TODO: handle exception
			try {
				this.con.rollback(); 
			} catch (Exception ee) {
				// TODO: handle exception
				kq=false;
				ee.printStackTrace();
			}
			e.printStackTrace();
		}finally {
			try {
				this.con.setAutoCommit(true); 
			} catch (Exception e) {
				// TODO: handle exception
				kq=false;
				e.printStackTrace();
			}
		}
		return kq;
	}
}
