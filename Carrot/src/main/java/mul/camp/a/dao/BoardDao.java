package mul.camp.a.dao;

import java.util.List;

public interface BoardDao {
    
    // DB로부터 게시판 이름을 문자열 배열로 반환
    public List<String> getBoardList();
}
