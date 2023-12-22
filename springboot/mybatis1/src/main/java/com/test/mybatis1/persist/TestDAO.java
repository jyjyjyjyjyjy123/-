package com.test.mybatis1.persist;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.mybatis1.domain.TestDTO;

@Repository
public class TestDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	public List<TestDTO> list() {

		return template.selectList("test.list");
	}

}
