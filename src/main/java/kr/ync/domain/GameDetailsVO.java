package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GameDetailsVO {

	
	private int appids;
	private String gametitle;
	private Date regdate;
	private String thumbnail;
}
