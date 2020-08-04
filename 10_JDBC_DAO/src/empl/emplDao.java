package empl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class emplDao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "jspid";
	String pw = "jsppw";
	ResultSet rs = null;
	Connection con = null;
	PreparedStatement ps = null;
	public emplDao() {
		try {
			Class.forName(driver);
			System.out.println("드라이버 로드 성공");
		}catch(Exception e){
		}
	}
	public void getCon() {
		try {
			con=DriverManager.getConnection(url,user,pw);
			System.out.println("커넥션 객체 생성 성공");

		}catch(Exception e){

		}
	}
	public ArrayList<emplBean> getAllempl(){
		getCon();
		System.out.println("getAllempl()");

		ArrayList<emplBean> list = new ArrayList<emplBean>();
		String sql = "select * from empl";
		try {
			ps = con.prepareStatement(sql);			
			rs = ps.executeQuery();
			while(rs.next()) {
				int mid = rs.getInt("mid");
				String name= rs.getString("name");
				int did=rs.getInt("did");
				int salary = rs.getInt("salary");
				emplBean eb = new emplBean();
				eb.setMid(mid);
				eb.setName(name);
				eb.setDid(did);
				eb.setSalary(salary);
				/* emplBean eb = new emplBean(mid, name, did, salary); */
			list.add(eb);
			}
		}catch(Exception e) {

		}finally {
			if(rs!=null) {
				try{rs.close();
				}catch(Exception e) {

				}
			}
				try{
					if(con!=null) {
					con.close();}	
				}catch(Exception e) {
				}
			
				try{
					if(ps!=null) {
					ps.close();}
				}catch(Exception e) {

				}
			}
		System.out.println("getAll lists.size()" + list.size());

	return list;
	}
	public int insertData(emplBean bean) {
		getCon();
		String sql = "insert into empl values(e_seq.nextval,?,?,?)";
		int cnt=-1;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, bean.getName());
			ps.setInt(2, bean.getDid());
			ps.setInt(3, bean.getSalary());
			cnt=ps.executeUpdate();
		}catch(Exception e) {
			
		}finally {
			try{
				if(rs!=null) {
				rs.close(); }}
				catch(Exception e) {

				}
			
				try{
					if(con!=null) {
					con.close();}	
				}catch(Exception e) {
				}
			
				try{
					if(ps!=null) {
					ps.close();}
				}catch(Exception e) {

				}
		}
		return cnt;
	}
}



