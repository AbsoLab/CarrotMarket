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
	ContentDao contentDao;
	
	@Autowired
	ReplyDao rDao;
	
	@Override
	public List<String> boardList(){
		// TODO Auto-generated method stub 
		return boardDao.getBoardList();
	}
	 @Override
	 public List<ContentDto> contentList(int bid) {
		 
	     return contentDao.getList(bid);
	 }
	
	@Override
	public ContentDto content(int cid) {
		// TODO Auto-generated method stub
		return contentDao.getContent(cid);
	}

	@Override
	public boolean writeContent(ContentDto dto) {
		// TODO Auto-generated method stub
		int count = contentDao.addContent(dto);
		return count>0?true:false;
	}

	@Override
	public boolean updateContent(ContentDto dto) {
		// TODO Auto-generated method stub
		int count = contentDao.updateContent(dto);
		return count>0?true:false;
	}
	
	@Override
	public boolean deleteContent(int cid) {
		// TODO Auto-generated method stub
		int count = contentDao.deleteContent(cid);
		return count>0?true:false;
	}
	
	//------------리플--------------------------------------
	
	@Override
	public List<ReplyDto>getReplyList(int cid){
		
		return rDao.getReplyList(cid);
	}


	@Override
	public boolean writeReply(ReplyDto dto) {
		int count = rDao.addReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean updateReply(ReplyDto dto) {
		// TODO Auto-generated method stub
		int count = rDao.updateReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean deleteReply(int rid) {
		// TODO Auto-generated method stub
		int count = rDao.deleteReply(rid);
		return count > 0 ?true:false;
	}
	@Override
	public ReplyDto getReply(int rid) {
		// TODO Auto-generated method stub
		return null;
	}

}
