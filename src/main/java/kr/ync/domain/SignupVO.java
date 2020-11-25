package kr.ync.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class SignupVO {
	
	private String member_id;
	private String name;
	private String email;
	private String nickname;
	private String pw;
	private String profile;
	private String image;
	private Date regdate;
	private List<AuthVO> authList;
}
