package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.test.domain.SelfsymtomDTO;

public interface SearchMapper {
	
	@Select("select * from tblselfsymtom")
	List<SelfsymtomDTO> symtomlist();

}
