package com.test.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.domain.AuthDTO;
import com.test.domain.MemberDTO;
import com.test.mapper.TestMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTest {

	@Autowired
	private TestMapper mapper;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Test
	public void testInsertMember() {
		
		MemberDTO dto1 = new MemberDTO();
		dto1.setUserid("sla");
		dto1.setUsername("이슬아");
		dto1.setUserpw(encoder.encode("1234"));
		mapper.add(dto1);
		
		MemberDTO dto2 = new MemberDTO();
		dto2.setUserid("ssj");
		dto2.setUsername("신수정");
		dto2.setUserpw(encoder.encode("1234"));
		mapper.add(dto2);
		
		MemberDTO dto3 = new MemberDTO();
		dto3.setUserid("lhj");
		dto3.setUsername("이혜진");
		dto3.setUserpw(encoder.encode("1234"));
		mapper.add(dto3);
		
		
	}
	
	@Test
	public void testInsertAuth() {
		
		AuthDTO dto1 = new AuthDTO();
		dto1.setUserid("sla");
		dto1.setAuth("ROLE_MEMBER");
		mapper.addAuth(dto1);
		
		AuthDTO dto2 = new AuthDTO();
		dto2.setUserid("ssj");
		dto2.setAuth("ROLE_MEMBER");
		mapper.addAuth(dto2);
		
		AuthDTO dto3 = new AuthDTO();
		dto3.setUserid("lhj");
		dto3.setAuth("ROLE_MEMBER");
		mapper.addAuth(dto3);
		AuthDTO dto4 = new AuthDTO();
		dto4.setUserid("lhj");
		dto4.setAuth("ROLE_ADMIN");
		mapper.addAuth(dto4);
	}
	
}
