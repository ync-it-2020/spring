package kr.ync.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.SignupVO;
import kr.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SignupServiceImpl implements SignupService {
 
    @Autowired
    private MemberMapper mapper;
 
    @Override
    public void insertMember(SignupVO member_id) {
    	
    	log.info("register......" + member_id);
    	
    	mapper.signup(member_id);
    }
}

