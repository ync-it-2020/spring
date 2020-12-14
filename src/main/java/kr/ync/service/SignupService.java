package kr.ync.service;

import kr.ync.domain.SignupAuthVO;
import kr.ync.domain.SignupVO;

public interface SignupService {
	 
    //회원가입 Service
    //public void insertMember(SignupVO signVO);
 
    public void signup(SignupVO signup);
    
    public void signupAuth(SignupAuthVO signupAuth);
    
}

