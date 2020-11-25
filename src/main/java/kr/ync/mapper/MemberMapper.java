package kr.ync.mapper;

import kr.ync.domain.MemberVO;
import kr.ync.domain.SignupVO;

public interface MemberMapper {

	public MemberVO read(String userid);
	
	public SignupVO signup(SignupVO member_id);
}
