package PizzaProject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PizzaDAO {
	Connection conn;
	String sql;
	String sql2;
	Statement stmt;
	PreparedStatement pstmt;
	PreparedStatement pstmt2;
	ResultSet res;
	int su;
	int swId;
	int num=0;
	//===============Select=======================
	public ArrayList memlist() {
	    sql = "select * from memberT01";
	    conn = DbSet.getConnect();
	    ArrayList dtoL = new ArrayList();
	    	try {
	    		stmt = conn.createStatement();
	    		res=stmt.executeQuery(sql);       
	            while(res.next()) {
		            String vId=res.getString("mem_id");
		            String vName=res.getString("mem_name");
		            String vPwd=res.getString("mem_pwd");
		            String vEmail=res.getString("mem_email");
		            String vPhone=res.getString("mem_phone");
		            String vAddr=res.getString("mem_addr");
	                PizzaDTO dto=new PizzaDTO(vId, vName, vPwd, vEmail, vPhone, vAddr);
	                dtoL.add(dto);
	               
	              }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	    	  DbClose.close(res, stmt, conn);
	      }
	        return dtoL;
	}
	
	//================insert 회원가입 =======================
	public int memInsert(PizzaDTO dto) {
		num=0;//고객번호를 줄거임.
		sql="select max(mem_no) as num from member_pizza";
		conn = DbSet.getConnect();
		try {
			pstmt = conn.prepareStatement(sql);
			res=pstmt.executeQuery();
			while(res.next()) {
			num=res.getInt("num")+1;
			}
			sql="insert into member_pizza values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);//고객 번호를 줌.
			pstmt.setString(2, dto.getMem_name());
			pstmt.setString(3, dto.getMem_id());
			pstmt.setString(4, dto.getMem_pwd());
			pstmt.setString(5, dto.getMem_phone());
			pstmt.setString(6, dto.getMem_email());
			pstmt.setString(7, dto.getMem_addr());
			su = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
	    	  DbClose.close(res, pstmt, conn);;
	      }
		return su;
	}
	
	//====================ID체크===================
	public int memSelById(String vId) {
		sql = "select *from memberT01 where mem_id=?";
		conn = DbSet.getConnect();
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,vId);
			res=pstmt.executeQuery();
			
			while(res.next()) {
				//System.out.println("ID 있음");
				swId=1;
			}
		}catch (SQLException e) {
		}
		return swId;
	}
	//========================ID체크후 비번체크=============
	public int memSelByIdPwd(String vId, String vPwd) {
		sql = "select *from memberT01 where mem_id=? and mem_pwd=? ";
		conn = DbSet.getConnect();
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,vId);
			pstmt.setString(2,vPwd);
			res=pstmt.executeQuery();
			while(res.next()) {
				//System.out.println("ID, PWD 있음");
				swId=2;
			}
		}catch (SQLException e) {
		}
		return swId;
	}
	//=================update======================
	public int memUpdate(PizzaDTO dto) {
		int chkId = 0;
		conn = DbSet.getConnect();
		sql2="update memberT01 set mem_name =?, mem_pwd =?,mem_email =?, mem_phone =?, mem_addr =? where mem_id =?";
		try {
			chkId = memSelById(dto.getMem_id());
			if(chkId==1) {
				chkId = memSelByIdPwd(dto.getMem_id(), dto.getMem_pwd());
			}if(chkId==2) {
				pstmt2=conn.prepareStatement(sql2);
				pstmt2.setString(1, dto.getMem_name());
				pstmt2.setString(2, dto.getMem_pwd());
				pstmt2.setString(3, dto.getMem_email());
				pstmt2.setString(4, dto.getMem_phone());
				pstmt2.setString(5, dto.getMem_addr());
				pstmt2.setString(6, dto.getMem_id());
				
				pstmt2.executeUpdate();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
	    	  DbClose.close(pstmt2, conn);
	      }
		return chkId;
	}	
	
	//============================login
	public int memLog(PizzaDTO dto) {
		int chkId = 0;
		conn = DbSet.getConnect();
		chkId = memSelById(dto.getMem_id());
		if(chkId==1) {
			chkId = memSelByIdPwd(dto.getMem_id(), dto.getMem_pwd());
		}
		return chkId;
		
	}
	
	//============================delete
		public int memDelete(PizzaDTO dto) {
			int chkId = 0;
			conn = DbSet.getConnect();
			chkId = memSelById(dto.getMem_id());
			sql2="delete from memberT01 where mem_id=? and mem_pwd=?";
			try {
			if(chkId==1) {
				chkId = memSelByIdPwd(dto.getMem_id(), dto.getMem_pwd());
			}if(chkId==2) {
				pstmt2=conn.prepareStatement(sql2);
				pstmt2.setString(1, dto.getMem_id());
				pstmt2.setString(2, dto.getMem_pwd());
				pstmt2.executeUpdate();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
	    	  DbClose.close(pstmt2, conn);
	      }
			return chkId;
			
		}
}
