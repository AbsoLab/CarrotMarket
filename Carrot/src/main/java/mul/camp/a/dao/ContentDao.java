package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.ContentDto;

public interface ContentDao {
    
    // bid(게시판)에 해당하는 게시글 데이터 배열 반환
    public List<ContentDto> getList(int bid);

    // cid(게시글)에 해당하는 게시글 데이터 반환
    public ContentDto getContent(int cid);

    // 입력받은 내용을 DB에 추가
    public int addContent(ContentDto dto);

    // 입력받은 내용으로 DB에 수정
    public int updateContent(ContentDto dto);

    // cid(게시글)에 해당하는 게시글을 DB에서 제거
    public int deleteContent(int cid);
}
