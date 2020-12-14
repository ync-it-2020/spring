package kr.ync.mapper;

import kr.ync.domain.MemberVO;
import kr.ync.domain.SignupAuthVO;
import kr.ync.domain.SignupVO;

public interface MemberMapper {

	public MemberVO read(String userid);
	
	public void signup(SignupVO member_id);
	
	public void signupAuth(SignupAuthVO signupAuth);
	
}
