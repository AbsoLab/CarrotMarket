package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ContentSellDto;

@Repository
public class ContentDaoImpl implements ContentDao {

    private final static String NAMESPACE = "Content.";

    private final static String NAMESPACE_GET_LIST = NAMESPACE + "getList";
    private final static String NAMESPACE_GET_CONTENT = NAMESPACE + "getContent";
    private final static String NAMESPACE_ADD_CONTENT = NAMESPACE + "addContent";
    private final static String NAMESPACE_UPDATE_CONTENT = NAMESPACE + "updateContent";
    private final static String NAMESPACE_DELETE_CONTENT = NAMESPACE + "deleteContent";
    private final static String NAMESPACE_GET_IMG_LIST = NAMESPACE + "getImg";
    private final static String NAMESPACE_GET_FILE_LIST = NAMESPACE + "fileContent";
    
    @Autowired
    private SqlSession session;

    @Override
    public List<ContentDto>getList(int bid) {
    
        return session.selectList(NAMESPACE_GET_LIST, bid);
    }

    @Override
    public ContentDto getContent(int cid) {

        List<String> list = session.selectList(NAMESPACE_GET_IMG_LIST, cid);

        // 사진이 없으면
        if (list == null) {

            return session.selectOne(NAMESPACE_GET_CONTENT, cid);

        // 사진이 존재하면
        } else {

            ContentSellDto dto = new ContentSellDto(session.selectOne(NAMESPACE_GET_CONTENT, cid), list);
            return dto;
        }
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
    
    //qna 문의사항 업로드용
    @Override
    public int fileContent(ContentDto dto) {
    	return session.insert(NAMESPACE_GET_FILE_LIST, dto);
    }
    
}
