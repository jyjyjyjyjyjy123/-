package com.test.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

//인터페이스 매퍼
public interface TestMapper {

	//어노테이션(SQL 구현)
	//- 장점: 편리함
	//- 단점: 불편함
	@Select("select count(*) from tblAddress")
	String getTime();
	
	String getTime2();
	
}
