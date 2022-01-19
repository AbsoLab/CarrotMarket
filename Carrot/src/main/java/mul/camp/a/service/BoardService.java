package mul.camp.a.service;

import java.util.List;

<<<<<<< HEAD
=======
import mul.camp.a.dto.BoardDto;
>>>>>>> NoticeBoard
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

public interface BoardService {

    // 게시판 이름 목록 반환
    public List<String> boardList();

    // bid(게시판)에 해당하는 글 목록 반환
<<<<<<< HEAD
    public List<ContentDto> boardList(int bid);
=======
    public List<ContentDto> contentList(int bid);
    
    // cid(글)에 해당하는 댓글 데이터 반환
    public List<ReplyDto> replyList(int cid);
>>>>>>> NoticeBoard

    // cid(글)에 해당하는 글 데이터 반환
    public ContentDto content(int cid);
    
    // rid(댓글)에 해당하는 댓글 데이터 반환
    public ReplyDto getReply(int cid);

    // 글 작성
    public boolean writeContent(ContentDto dto);

    // 글 수정
    public boolean updateContent(ContentDto dto);

    // 글 삭제
    public boolean deleteContent(int cid);
    // 글삭제 시 안에있는댓글도 삭제
    public boolean deleteContentReply(int cid);
    
    // 댓글 작성
    public boolean writeReply(ReplyDto dto);

    // 답글 작성
    public boolean writeReplyAnswer(ReplyDto dto);

    // 댓글 수정
    public boolean updateReply(ReplyDto dto);

    // 댓글 삭제
    public boolean deleteReply(int rid);
    
    // DB로부터 qna 목록 내용 리스트로 반환
    public List<BoardDto> qnalist();
    public List<ContentDto> qnaCont(int bid, String search);
    
    
    
}
