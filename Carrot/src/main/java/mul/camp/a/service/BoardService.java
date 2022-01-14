package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

public interface BoardService {

    // bid(게시판)에 해당하는 글 목록 반환
    public ContentDto[] boardList(int bid);

    // cid(글)에 해당하는 글 데이터 반환
    public ContentDto content(int cid);

    // 글 작성
    public boolean writeContent(ContentDto dto);

    // 글 수정
    public boolean updateContent(int uid, ContentDto dto);

    // 글 삭제
    public boolean deleteContent(int uid, int cid);

    // 댓글 작성
    public boolean writeReply(ReplyDto dto);

    // 댓글 수정
    public boolean updateReply(int uid, ReplyDto dto);

    // 댓글 삭제
    public boolean deleteReply(int uid, int rid);
    
    // DB로부터 qna 목록 내용 리스트로 반환
    public List<BoardDto> qnalist();
    public List<ContentDto> qnaCont(int bid);
    
    // 선택한 faq목록을 컨텐트 리스트로 변환 -> 위에 있는 boardList는 기본 게시판 뿌려주는 형태같아서 따로 만들었습니다.
    public List<ContentDto> qnaSel(int bid);
    
}
