package com.test.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ViewDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ViewDAO() {
		this.conn = DBUtil.open();
	}

	public ArrayList<ViewDTO> get() {
		try {
			
			String sql = "select * from departments";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<ViewDTO> list = new ArrayList<ViewDTO>();
			
			while (rs.next()) {
				
				ViewDTO dto = new ViewDTO();
				
				dto.setDepartmentId(rs.getString("department_id"));
				dto.setDepartmentName(rs.getString("department_name"));
				dto.setLocationId(rs.getString("location_id"));
				dto.setManagerId(rs.getString("manager_id"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<ViewDTO> getDept(String id) {
		try {
			
			String sql = "select * from employees where department_id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,id);
			
			rs = pstat.executeQuery();
			
			ArrayList<ViewDTO> list = new ArrayList<ViewDTO>();
			
			while (rs.next()) {
				
				ViewDTO dto = new ViewDTO();
				
				dto.setEmployeeId(rs.getString("EMPLOYEE_ID"));
				dto.setFirstName(rs.getString("FIRST_NAME"));
				dto.setLastName(rs.getString("LAST_NAME"));
				dto.setJobId(rs.getString("JOB_ID"));
				dto.setHireDate(rs.getString("HIRE_DATE"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
