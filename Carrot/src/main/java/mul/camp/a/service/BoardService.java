package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

public interface BoardService {

    // bid(게시판)에 해당하는 글 목록 반환
	public List<String>boardList();

    // cid(글)에 해당하는 글 데이터 반환
    public ContentDto content(int cid);

    // 글 작성
    public boolean writeContent(ContentDto dto);

    // 글 수정
    public boolean updateContent(ContentDto dto);

    // 글 삭제
    public boolean deleteContent(int cid);
    
    //댓글 목록
    public List<ReplyDto>getReplyList(int cid);
    
    // 댓글 작성
    public boolean writeReply(ReplyDto dto);

    // 댓글 수정
    public boolean updateReply(ReplyDto dto);

    // 댓글 삭제
    public boolean deleteReply(int rid);

    public ReplyDto getReply(int rid);

    public List<ContentDto> contentList(int bid);


}
