package com.test.mybatis2.psersist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.mybatis2.domain.TestDTO;
import com.test.mybatis2.mapper.TestMapper;

@Repository
public class TestDAO {

	//기존방식 > SqlSessionTemplate
	//현재방식 > 인터페이스 매퍼
	@Autowired
	private TestMapper mapper;
	
	public List<TestDTO> list() {
			
		return mapper.list();
	}

}
