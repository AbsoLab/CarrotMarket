package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;

public interface BoardDao {
    
    // DB로부터 게시판 이름을 문자열 배열로 반환
    public List<String> getBoardList();
    
    // DB로부터 qna 목록 내용 리스트로 반환
    public List<BoardDto> qnalist();
    public List<ContentDto> qnaCont();
}
