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
	ReplyDao rdao;
	
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
		List<ReplyDto>replylist = rdao.getReplyList(cid);
		return replylist;
	}

	@Override
	public ReplyDto getReply(int rid) {
		ReplyDto dto = rdao.getReply(rid);
		return dto;
	}

	@Override
	public boolean writeReply(ReplyDto dto) {
		int count = rdao.addReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean updateReply(ReplyDto dto) {
		// TODO Auto-generated method stub
		int count = rdao.updateReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean deleteReply(int rid) {
		// TODO Auto-generated method stub
		int count = rdao.deleteReply(rid);
		return count > 0 ?true:false;
	}

}
