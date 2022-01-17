package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BoardDao;
import mul.camp.a.dao.ContentDao;
import mul.camp.a.dao.ReplyDao;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardDao boardDao;

    @Autowired
    private ContentDao contentDao;

    @Autowired
    private ReplyDao replyDao;

    @Override
    public List<String> boardList() {

        return boardDao.getBoardList();
    }

    @Override
    public List<ContentDto> contentList(int bid) {
        
        return contentDao.getList(bid);
    }

    @Override
    public ContentDto content(int cid) {

        ContentDto item = contentDao.getContent(cid);
        item.setReply(replyDao.getReplyList(cid));

        return item;
    }

    @Override
    public boolean writeContent(ContentDto dto) {

        return contentDao.addContent(dto) > 0;
    }

    @Override
    public boolean updateContent(ContentDto dto) {
    
        return contentDao.updateContent(dto) > 0;
    }

    @Override
    public boolean deleteContent(int cid) {
        
        return contentDao.deleteContent(cid) > 0;
    }

    @Override
    public boolean writeReply(ReplyDto dto) {
        
        return replyDao.addReply(dto) > 0;
    }

    @Override
    public boolean writeReplyAnswer(ReplyDto dto) {

        replyDao.addStepCount(dto);
        return replyDao.addReplyAnswer(dto) > 0;
    }

    @Override
    public boolean updateReply(ReplyDto dto) {
        
        return replyDao.updateReply(dto) > 0;
    }

    @Override
    public boolean deleteReply(int rid) {
        
        return replyDao.deleteReply(rid) > 0;
    }
    
}
