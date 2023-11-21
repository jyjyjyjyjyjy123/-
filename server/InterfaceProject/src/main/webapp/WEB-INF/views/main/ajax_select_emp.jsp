<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.sist.work.vo.DeptVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.work.vo.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.work.dao.WorkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    info="모든 사원정보 조회"%>
   <%!

  	private Connection getConnection() throws SQLException {
		Connection con=null;
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String id="scott";
		String pass="tiger";
		try {
		Class.forName("oracle.jdbc.OracleDriver");
		con=DriverManager.getConnection(url, id, pass);
		}catch(ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		}
		return con;
	}//getConnection

	public List<EmpVO> selectEmpInfo(int deptno )throws SQLException{
		List<EmpVO> list=new ArrayList<EmpVO>();
	
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con=getConnection();
			StringBuilder selectEmp=new StringBuilder();
			selectEmp.append("	select empno, ename, job, to_char(hiredate,'yyyy-mm-dd') hiredate	");
			selectEmp.append("	from emp	");
			selectEmp.append("	where deptno=?");
			
			pstmt=con.prepareStatement(selectEmp.toString());
			pstmt.setInt(1, deptno);
			
			rs=pstmt.executeQuery();
			
			EmpVO ev=null;
			while(rs.next()) {
				ev=new EmpVO();
				ev.setEmpno(rs.getInt("empno"));
				ev.setEname(rs.getString("ename"));
				ev.setJob(rs.getString("job"));
				ev.setHiredate(rs.getString("hiredate"));
				list.add( ev );
			}//end while
			
		}finally {
			if( rs != null ) { rs.close(); }//end if
			if( pstmt != null ) { pstmt.close(); }//end if
			if( con != null ) { con.close(); }//end if
		}//end finally
		
	return list;
}//selectEmp
%>
<%
	String deptno=request.getParameter("deptno");	

	int paramDeptno=0;

	try{
		paramDeptno=Integer.parseInt(deptno);	
	}catch(NumberFormatException nfe){
	}//end catch
	
	WorkDAO wDAO=new WorkDAO();
	List<EmpVO> list=null; 
	boolean resultFlag=false;
	int recordCnt=0;
	
	JSONObject json=new JSONObject();
	
	JSONArray ja=null;
	
	try {
		list=wDAO.selectEmpInfo( paramDeptno );
		recordCnt=list.size();
		resultFlag=true;
		
		ja=new JSONArray();
		
		JSONObject jo=null;
		
		for(EmpVO eVO : list) {
			jo=new JSONObject();
			jo.put("empno",eVO.getEmpno());
			jo.put("ename",eVO.getEname());
			jo.put("job",eVO.getJob());
			jo.put("hiredate",eVO.getHiredate());
			
			ja.add(jo);
		}//end for
	} catch (SQLException e) {
		e.printStackTrace();
	}//end catch
	
	Date date=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	
	json.put("searchDeptno", deptno );
	json.put("recordCnt", recordCnt );
	json.put("resultFlag", resultFlag );
	json.put("pubDate", sdf.format(date) );
	json.put("data", ja );
	
	out.println( json.toJSONString());
%>