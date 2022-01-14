package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;

@Repository
public class BoardDaoImpl implements BoardDao {

    public final static String NAMESPACE = "Board.";

    public final static String NAMESPACE_GET_BOARD_LIST = NAMESPACE + "getBoardList";

    @Autowired
    SqlSession session;
    
    String ns = "QnaBoard.";

    @Override
    public List<String> getBoardList() {
        
        return session.selectList(NAMESPACE_GET_BOARD_LIST);
    }

 // DB로부터 qna 목록 내용 리스트로 반환
	@Override
	public List<BoardDto> qnalist() {
		
		return session.selectList(ns+"qnaList");
	}

	@Override
	public List<ContentDto> qnaCont() {
		
		return session.selectList(ns+"qnaCont");
	}
    
    
    
}
