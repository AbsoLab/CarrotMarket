package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.ReplyDto;

@Repository
public class ReplyDaoImpl implements ReplyDao {

    
    
    private SqlSession session;

    @Override
    public List<ReplyDto>getReplyList(int cid) {
    	
        return session.selectList("Reply.getReplyList", cid);
    }
    @Override
	public ReplyDto getReply(int rid) {
		
		return session.selectOne("Reply.getReply", rid);
	}
    @Override
    public int addReply(ReplyDto dto) {
        
        return session.insert("Reply.addReply", dto);
    }

    @Override
    public int updateReply(ReplyDto dto) {
        
        return session.update("Reply.updateReply", dto);
    }

    @Override
    public int deleteReply(int rid) {

        return session.delete("Reply.deleteReply", rid);
    }
}