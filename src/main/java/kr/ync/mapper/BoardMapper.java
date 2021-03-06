package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.GameDetailsVO;
import kr.ync.domain.GameListVO;
import kr.ync.domain.NewsListVO;
import kr.ync.domain.NewsVO;

public interface BoardMapper {

	public List<BoardVO> getList();

	public List<BoardVO> getListWithPaging(Criteria cri);

	public void insert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO read(Long bno);

	public int delete(Long bno);

	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);
	
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
	
	
	//@Select("select * from gf_game order by appids")
	//게임목록
	public List<GameListVO> getGameList();
	
	public GameDetailsVO getGameDetails(Long appids);

	public List<NewsListVO> getNewsList();

	public NewsVO getNews(Long content_idx);

	public List<GameListVO> getGameListInDetails();
	
	public void insertGame(GameListVO gamelist);

	//public Integer insertSelectKey(GameListVO gamelist);
	
	public int deleteGame(Long appids);
	
}
