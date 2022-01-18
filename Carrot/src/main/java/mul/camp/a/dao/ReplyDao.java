package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.ReplyDto;

public interface ReplyDao {
    
    // cid(게시글)에 해당하는 댓글 데이터 배열 반환
    public List<ReplyDto> getReplyList(int cid);
    
    // rid에 해당하는 댓글 반환
    public ReplyDto getReply(int rid);

    // 입력받은 내용을 DB에 추가
    public int addReply(ReplyDto dto);

    // 입력받은 내용으로 DB에 수정
    public int updateReply(ReplyDto dto);

    // rid(댓글)에 해당하는 댓글을 DB에서 제거
    public int deleteReply(int rid);

    // 댓글의 답글 추가
    public int addReplyAnswer(ReplyDto dto);

    // Step Count 추가
    public int addStepCount(ReplyDto dto);

}
