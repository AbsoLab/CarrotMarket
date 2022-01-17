package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.ContentDto;

@Repository
public class ContentDaoImpl implements ContentDao {

    private final static String NAMESPACE = "Content.";

    private final static String NAMESPACE_GET_LIST = NAMESPACE + "getList";
    private final static String NAMESPACE_GET_CONTENT = NAMESPACE + "getContent";
    private final static String NAMESPACE_ADD_CONTENT = NAMESPACE + "addContent";
    private final static String NAMESPACE_UPDATE_CONTENT = NAMESPACE + "updateContent";
    private final static String NAMESPACE_DELETE_CONTENT = NAMESPACE + "deleteContent";

    @Autowired
    private SqlSession session;

    @Override
    public List<ContentDto>getList(int bid) {
    	System.out.println("Dao : "+bid);
        return session.selectList(NAMESPACE_GET_LIST, bid);
    }

    @Override
    public ContentDto getContent(int cid) {

        return session.selectOne(NAMESPACE_GET_CONTENT, cid);
    }

    @Override
    public int addContent(ContentDto dto) {
        
        return session.insert(NAMESPACE_ADD_CONTENT, dto);
    }

    @Override
    public int updateContent(ContentDto dto) {
        
        return session.update(NAMESPACE_UPDATE_CONTENT, dto);
    }

    @Override
    public int deleteContent(int cid) {
        
        return session.delete(NAMESPACE_DELETE_CONTENT, cid);
    }
    
}
