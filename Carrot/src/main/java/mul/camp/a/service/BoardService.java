package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

public interface BoardService {

    // bid(게시판)에 해당하는 글 목록 반환
    public List<ContentDto> boardList(int bid);

    // cid(글)에 해당하는 글 데이터 반환
    public ContentDto content(int cid);

    // 글 작성
    public boolean writeContent(ContentDto dto);

    // 글 수정
    public boolean updateContent(ContentDto dto);

    // 글 삭제
    public boolean deleteContent(int cid);
    
    //댓글 리스트
    public List<ReplyDto> replyList(int cid);
    
    //rid에 해당하는 댓글 데이터 반환
    public ReplyDto getReply(int rid);
    // 댓글 작성
    public boolean writeReply(ReplyDto dto);

    // 댓글 수정
    public boolean updateReply(ReplyDto dto);

    // 댓글 삭제
    public boolean deleteReply(int rid);
    // 답글 
    public void reply(ReplyDto dto) ;
}
