package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.ReplyDto;

@Repository
public class ReplyDaoImpl implements ReplyDao {

    private final static String NAMESPACE = "Reply.";

    private final static String NAMESPACE_GET_REPLY_LIST = NAMESPACE + "getReplyList";
    private final static String NAMESPACE_ADD_REPLY = NAMESPACE + "addReply";
    private final static String NAMESPACE_UPDATE_REPLY = NAMESPACE + "updateReply";
    private final static String NAMESPACE_DELETE_REPLY = NAMESPACE + "deleteReply";
    
    @Autowired
    private SqlSession session;

    @Override
    public List<ReplyDto> getReplyList(int cid) {
        
        return session.selectList(NAMESPACE_GET_REPLY_LIST, cid);
    }

    @Override
    public int addReply(ReplyDto dto) {
        
        return session.insert(NAMESPACE_ADD_REPLY, dto);
    }

    @Override
    public int updateReply(ReplyDto dto) {
        
        return session.update(NAMESPACE_UPDATE_REPLY, dto);
    }

    @Override
    public int deleteReply(int rid) {

        return session.delete(NAMESPACE_DELETE_REPLY, rid);
    }
}