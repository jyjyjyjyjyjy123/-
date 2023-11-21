<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.work.vo.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.work.dao.WorkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    info="모든 부서정보 조회"%>
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
public List<DeptVO> selectDeptInfo()throws SQLException{
	List<DeptVO> list=new ArrayList<DeptVO>();

	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try {
		con=getConnection();
		String selectDept="select deptno, dname from dept";
		
		pstmt=con.prepareStatement(selectDept);
		
		rs=pstmt.executeQuery();
		
		DeptVO dv=null;
		while(rs.next()) {
			dv=new DeptVO();
			dv.setDeptno(rs.getInt("deptno"));
			dv.setDname(rs.getString("dname"));
			list.add( dv );
		}//end while
		
	}finally {
		if( rs != null ) { rs.close(); }//end if
		if( pstmt != null ) { pstmt.close(); }//end if
		if( con != null ) { con.close(); }//end if
	}//end finally
	
	return list;
}//selectDept

%>
<%
WorkDAO wDAO=new WorkDAO();
List<DeptVO> list=null; 

JSONObject json=new JSONObject();

int recordCnt=0;
boolean resultFlag=false;

JSONArray ja=null;

try {
	list=wDAO.selectDeptInfo();
	
	recordCnt=list.size();
	resultFlag=true;
	
	ja=new JSONArray();
	JSONObject jo=null;
	
	for(DeptVO dVO : list) {
		jo=new JSONObject();
		jo.put("deptno",dVO.getDeptno());
		jo.put("dname",dVO.getDname());
		ja.add(jo);
	}//end for
} catch (SQLException e) {
	e.printStackTrace();
}//end catch

json.put("recordCnt", recordCnt );
json.put("pubDate", new SimpleDateFormat("yyyy-MM-dd").format(new Date()) );
json.put("resultFlag", resultFlag );
json.put("data", ja );

out.println(json.toJSONString());
%>  