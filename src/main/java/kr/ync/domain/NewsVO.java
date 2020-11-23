package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NewsVO {
	
	private int content_idx;
	private int board_code;
	private String title;
	private String content;
	private String image1;
	private String image2;
	private String image3;
	private String nickname;
	private Date regdate;
	private int appids;
	private int views;
	private int board_like;
	private int board_dislike;
	
//	content_idx           NUMBER  NOT NULL ,
//	board_code            NUMBER  NOT NULL ,
//	title                 VARCHAR2(100)  NOT NULL ,
//	content               LONG  NULL ,
//	image1                VARCHAR2(100)  NULL ,
//	image2                VARCHAR2(100)  NULL ,
//	image3                VARCHAR2(100)  NULL ,
//	member_id             VARCHAR2(50)  NOT NULL ,
//	regdate               DATE   DEFAULT  SYSDATE NOT NULL ,
//	appids                NUMBER  NULL ,
//	views                 NUMBER  NULL ,
//	board_like            NUMBER   DEFAULT  0 NOT NULL ,
//	board_dislike         NUMBER   DEFAULT  0 NOT NULL 
}
