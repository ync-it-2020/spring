package kr.ync.service;

import java.util.List;

import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.GameDetailsVO;
import kr.ync.domain.GameListVO;
import kr.ync.domain.NewsListVO;
import kr.ync.domain.NewsVO;
import kr.ync.domain.SignupVO;

public interface BoardService {
	
	// 글 등록
	public void register(BoardVO board);
	
	// 글 상세보기
	public BoardVO get(Long bno);
	
	// 글 수정
	public boolean modify(BoardVO board);
	
	// 글 삭제
	public boolean remove(Long bno);
	
	// 전체 글 목록
	public List<BoardVO> getList();
	
	// 글 목록 페이징 
	public List<BoardVO> getListWithPaging(Criteria cri);

	//추가
	public int getTotal(Criteria cri);
	
	public List<GameListVO> getGameList();
	
	public List<GameListVO> getGameListInDetails();
	
	public GameDetailsVO getGameDetails(Long appids);

	public List<NewsListVO> getNewsList();
	
	public NewsVO getNews(Long content_idx);
	
	public void uploadGame(GameListVO gamelist);

	public boolean removeGame(Long appids);

	
	
	

}
